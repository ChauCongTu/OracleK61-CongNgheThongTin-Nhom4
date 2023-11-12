-- Function kiem tra user co phai admin khong
CREATE OR REPLACE FUNCTION is_admin(
    i_id NUMBER
)
RETURN NUMBER
IS
    v_role VARCHAR2(50);
    execQuery VARCHAR2(5000);
    v_result NUMBER;
BEGIN
    execQuery := 'SELECT role FROM users WHERE id = '|| i_id;
    EXECUTE IMMEDIATE execQuery into v_role;
    IF v_role = 'admin' THEN
        v_result := 1;
    ELSE 
        v_result := 0;
    END IF;
    RETURN v_result;
END;


-- Procedure tim tai lieu
CREATE OR REPLACE PROCEDURE search_documents(
    p_query VARCHAR2,
    o_result OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN o_result FOR
    SELECT * FROM DOCUMENTS 
    WHERE title LIKE '%' || p_query || '%' 
    OR summary LIKE '%' || p_query || '%'
    ORDER BY CREATED_AT;
END;

-- Procedure tang view cho tai lieu duoc truyen
CREATE OR REPLACE PROCEDURE increase_document_view_count(
    p_document_id NUMBER
)
IS
BEGIN
    UPDATE documents
    SET view_count = view_count + 1
    WHERE id = p_document_id;
END;

-- Procedure lay danh sach related document
CREATE OR REPLACE PROCEDURE find_related_documents(
    p_document_id NUMBER,
    o_result OUT SYS_REFCURSOR
)
IS
BEGIN
    OPEN o_result FOR
    SELECT d.* FROM documents d
    WHERE d.id != p_document_id
    AND d.category_id = 
    (SELECT d2.category_id FROM documents d2 WHERE d2.id = p_document_id);
END;

-- Procedure update du lieu
CREATE OR REPLACE PROCEDURE update_document(
  v_id NUMBER,
  v_title NVARCHAR2,
  v_summary NVARCHAR2,
  v_file_path NVARCHAR2,
  v_type NVARCHAR2,
  v_category_id NUMBER,
  v_thumb NVARCHAR2,
  v_content NVARCHAR2
)
IS
BEGIN
  UPDATE documents
  SET title = v_title,
    summary = v_summary,
    file_path = v_file_path,
    type = v_type,
    category_id = v_category_id,
    thumb = v_thumb,
    content = v_content
  WHERE id = v_id;
END;

-- Procedure cap nhat thong tin nguoi dung
CREATE OR REPLACE PROCEDURE update_user(
    I_ID NUMBER,
    I_FIRST_NAME VARCHAR2,
    I_LAST_NAME VARCHAR2,
    I_LOGIN VARCHAR2,
    I_ROLE VARCHAR2
)
AS
BEGIN
    UPDATE users SET FIRST_NAME = I_FIRST_NAME,
                    LAST_NAME = I_LAST_NAME,
                    LOGIN = I_LOGIN,
                    ROLE = I_ROLE
    WHERE id = I_ID;
END;

-- Trigger tu dong set role cho user khi insert
CREATE OR REPLACE TRIGGER set_role
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
    IF :NEW."ROLE" IS NULL THEN 
        :NEW."ROLE" := 'user';
    END IF;
END;

-- Trigger tu dong lay thoi gian luc tao tai lieu
CREATE OR REPLACE TRIGGER set_time_create_document
BEFORE INSERT ON DOCUMENTS
FOR EACH ROW
BEGIN
  IF :NEW."CREATED_AT" IS NULL THEN
    :NEW."CREATED_AT" := SYSDATE;
  END IF;
END;

-- Trigger tu dong set time luc binh luan
CREATE OR REPLACE TRIGGER set_time_create_comment
BEFORE INSERT ON REVIEWS
FOR EACH ROW
BEGIN
  IF :NEW."CREATED_AT" IS NULL THEN
    :NEW."CREATED_AT" := SYSDATE;
  END IF;
END;

-- Kiem tra khong cho phep 2 tai lieu giong nhau trong cung 1 collection
CREATE OR REPLACE TRIGGER prevent_duplicate_documents
BEFORE INSERT OR UPDATE ON collection_details
FOR EACH ROW
DECLARE
    document_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO document_count
    FROM collection_details
    WHERE collection_id = :NEW.collection_id
    AND document_id = :NEW.document_id;

    IF document_count >= 1 THEN
        RAISE_APPLICATION_ERROR(-20001, 'A collection cannot have two identical documents');
    END IF;
END;

-- Procedure xoa tai lieu
CREATE OR REPLACE PROCEDURE delete_document(
    p_document_id IN NUMBER
) IS
BEGIN
    DELETE FROM collection_details
    WHERE DOCUMENT_ID = p_document_id;

    DELETE FROM documents
    WHERE ID = p_document_id;
END;

-- Procedure xoa bo suu tap
CREATE OR REPLACE PROCEDURE delete_collection(
    p_id IN NUMBER
) IS
BEGIN
    DELETE FROM collection_details
    WHERE collection_id = p_id;

    DELETE FROM collections
    WHERE ID = p_id;
END;
-- Tu dong cap nhat numOfDocs
create or replace TRIGGER update_num_of_docs
AFTER INSERT OR DELETE ON collection_details
FOR EACH ROW
DECLARE
    v_collection_id NUMBER;
    v_num_of_docs NUMBER;
BEGIN
    v_collection_id := :NEW."COLLECTION_ID";

    SELECT COUNT(*)
    INTO v_num_of_docs
    FROM collection_details
    WHERE collection_id = v_collection_id;

    UPDATE collections
    SET numofdocs = v_num_of_docs 
    WHERE id = v_collection_id;
END;
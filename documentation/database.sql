--------------------------------------------------------
--  File created - Saturday-September-16-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AUTO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "C##NHOM4"."AUTO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 23 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_NAME
--------------------------------------------------------

   CREATE SEQUENCE  "C##NHOM4"."SEQUENCE_NAME"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "C##NHOM4"."CATEGORIES" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"SUMMARY" VARCHAR2(500 BYTE), 
	"ICON" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COLLECTIONS
--------------------------------------------------------

  CREATE TABLE "C##NHOM4"."COLLECTIONS" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(191 BYTE), 
	"THUMB" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COLLECTION_DETAILS
--------------------------------------------------------

  CREATE TABLE "C##NHOM4"."COLLECTION_DETAILS" 
   (	"ID" NUMBER, 
	"COLLECTION_ID" NUMBER, 
	"DOCUMENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DOCUMENTS
--------------------------------------------------------

  CREATE TABLE "C##NHOM4"."DOCUMENTS" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(255 BYTE), 
	"SUMMARY" VARCHAR2(255 BYTE), 
	"FILE_PATH" VARCHAR2(255 BYTE), 
	"VIEW_COUNT" NUMBER DEFAULT 0, 
	"DOWNLOAD_COUNT" NUMBER DEFAULT 0, 
	"TYPE" VARCHAR2(100 BYTE), 
	"USER_ID" NUMBER, 
	"CATEGORY_ID" NUMBER, 
	"CREATED_AT" DATE, 
	"THUMB" VARCHAR2(100 BYTE), 
	"ISAPPROVED" NUMBER(1,0), 
	"CONTENT" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEWS
--------------------------------------------------------

  CREATE TABLE "C##NHOM4"."REVIEWS" 
   (	"ID" NUMBER, 
	"DOCUMENT_ID" NUMBER, 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"CREATED_AT" DATE, 
	"NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "C##NHOM4"."USERS" 
   (	"ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(100 BYTE), 
	"LAST_NAME" VARCHAR2(100 BYTE), 
	"LOGIN" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(191 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##NHOM4.CATEGORIES
SET DEFINE OFF;
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (1,'Báo cáo khoa h?c','Tuy?n t?p các bài lu?n báo cáo khoa h?c tham kh?o danh cho sinh viên','fa fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (6,'Công ngh? thông tin','Tuy?n t?p các bài lu?n báo cáo khoa h?c tham kh?o danh cho sinh viên','fa fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (3,'??i s? - gi?i tích','Tuy?n t?p các bài lu?n báo cáo khoa h?c tham kh?o danh cho sinh viên','fa fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (4,'Hóa h?c - V?t lý','Tuy?n t?p các bài lu?n báo cáo khoa h?c tham kh?o danh cho sinh viên','fa fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (20,'Báo cáo khoa h?c','Tuy?n t?p các bài lu?n báo cáo khoa h?c tham kh?o danh cho sinh viên','fa fa-icon');
REM INSERTING into C##NHOM4.COLLECTIONS
SET DEFINE OFF;
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (1,'?? thi HSG Tr??ng chuyên Mary Cury 2023','/public/collection/thumb/cource_piano.jpg');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (12,'B? tài li?u 10 ?i?m V?t Lý','cource_guitar.jpg');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (7,'B? tài li?u 8+ cho ban T? Nhiên','thumb');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (8,'B? tài li?u 8+ cho ban Xã H?i','about.jpg image/jpeg');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (9,'B? tài li?u 8+ cho ban Xã H?i','02Data.ppt application/vnd.ms-powerpoint');
REM INSERTING into C##NHOM4.COLLECTION_DETAILS
SET DEFINE OFF;
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (21,1,16);
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (22,1,2);
REM INSERTING into C##NHOM4.DOCUMENTS
SET DEFINE OFF;
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (2,'Tài li?u h?c t?p','?ây là m?t tài li?u h?c t?p','/path/to/file.pdf',6,0,'PDF',1,1,to_date('15-SEP-23','DD-MON-RR'),'/path/to/thumb.png',1,'N?i dung tài li?u h?c t?p');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (1,'Tài li?u h?c t?p','?ây là m?t tài li?u h?c t?p','/path/to/file.pdf',0,0,'PDF',1,1,to_date('15-SEP-23','DD-MON-RR'),'/path/to/thumb.png',1,'N?i dung tài li?u h?c t?p');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (19,'?? thi HSG V?t Lý t?nh Bình ??nh','?? thi v?t lý','/public/document/file/de-thi-vat-ly.txt',3,0,'text/plain',1,6,to_date('15-SEP-23','DD-MON-RR'),'/public/document/thumb/courses-6.jpg',1,'?? thi chia s? b?i Nh?n PRO');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (16,'?? thi HSG V?t Lý Thành ph? H? Chí Minh','?? thi v?t lý','de-thi-vat-ly.txt',0,0,'image/jpeg',1,6,to_date('15-SEP-23','DD-MON-RR'),'de-thi-vat-ly.txt',1,'?? thi chia s? b?i 100');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (17,'?? thi HSG V?t Lý Thành ph? H? Chí Minh','?? thi v?t lý','courses-6.jpg',0,0,'text/plain',1,6,to_date('15-SEP-23','DD-MON-RR'),'courses-6.jpg',1,'?? thi chia s? b?i 100');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (18,'?? thi HSG V?t Lý Thành ph? H? Chí Minh','?? thi v?t lý','/public/document/filede-thi-vat-ly.txt',0,0,'text/plain',1,6,to_date('15-SEP-23','DD-MON-RR'),'/public/document/thumbcourses-6.jpg',1,'?? thi chia s? b?i 100');
REM INSERTING into C##NHOM4.REVIEWS
SET DEFINE OFF;
Insert into C##NHOM4.REVIEWS (ID,DOCUMENT_ID,CONTENT,EMAIL,CREATED_AT,NAME) values (1,2,'Tài li?u này r?t hay, thích h?p cho nh?ng b?n m?c tiêu 8+','quenhon2002@gmail.com',to_date('16-SEP-23','DD-MON-RR'),'Nh?n Châu');
REM INSERTING into C##NHOM4.USERS
SET DEFINE OFF;
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD) values (1,'Châu','Qu? Nh?n','quenhon','$2a$10$QEySBXQdvZP9026iLDzN5Odh4.qrKUdjX/wn2.HWpU1bRdzoYijSG');
--------------------------------------------------------
--  DDL for Index DOCUMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##NHOM4"."DOCUMENTS_PK" ON "C##NHOM4"."DOCUMENTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger DOCUMENTS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##NHOM4"."DOCUMENTS_TRIGGER" 
BEFORE INSERT ON "C##NHOM4"."DOCUMENTS"
FOR EACH ROW
BEGIN
  IF :NEW."CREATED_AT" IS NULL THEN
    :NEW."CREATED_AT" := SYSDATE;
  END IF;
END;
/
ALTER TRIGGER "C##NHOM4"."DOCUMENTS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVIEWS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##NHOM4"."REVIEWS_TRIGGER" 
BEFORE INSERT ON "C##NHOM4"."REVIEWS"
FOR EACH ROW
BEGIN
  IF :NEW."CREATED_AT" IS NULL THEN
    :NEW."CREATED_AT" := SYSDATE;
  END IF;
END;
/
ALTER TRIGGER "C##NHOM4"."REVIEWS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Procedure GET_CATEGORIES_AND_DOCUMENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."GET_CATEGORIES_AND_DOCUMENTS" (
  p_categories OUT SYS_REFCURSOR
) IS
BEGIN
  OPEN p_categories FOR
  SELECT c.id, c.name, c.summary, c.icon,
         d.id, d.title, d.summary, d.content, d.file_path, d.view_count, d.download_count, d.type, d.user_id, d.category_id, d.created_at, d.thumb, d.isapproved
  FROM categories c
  LEFT JOIN documents d ON c.id = d.category_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SEARCH_DOCUMENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."SEARCH_DOCUMENTS" (
    p_query VARCHAR2
)
AS
    v_query VARCHAR2(255);
    v_cursor SYS_REFCURSOR;
    v_document DOCUMENTS%ROWTYPE;
BEGIN
    v_query := '%' || p_query || '%';

    OPEN v_cursor FOR
        SELECT
            id,
            title,
            summary,
            content,
            file_path,
            view_count,
            download_count,
            type,
            user_id,
            category_id,
            created_at,
            thumb,
            isapproved
        FROM
            DOCUMENTS
        WHERE
            title LIKE v_query;

    LOOP
        FETCH v_cursor INTO v_document;
        EXIT WHEN v_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_document.title);
    END LOOP;

    CLOSE v_cursor;
END search_documents;

/
--------------------------------------------------------
--  Constraints for Table COLLECTIONS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."COLLECTIONS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."DOCUMENTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##NHOM4"."DOCUMENTS" ADD CONSTRAINT "DOCUMENTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."CATEGORIES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COLLECTION_DETAILS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."COLLECTION_DETAILS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."USERS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."REVIEWS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COLLECTION_DETAILS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."COLLECTION_DETAILS" ADD CONSTRAINT "FK_CLT" FOREIGN KEY ("COLLECTION_ID")
	  REFERENCES "C##NHOM4"."COLLECTIONS" ("ID") ENABLE;
  ALTER TABLE "C##NHOM4"."COLLECTION_DETAILS" ADD CONSTRAINT "FK_CLT_DC" FOREIGN KEY ("DOCUMENT_ID")
	  REFERENCES "C##NHOM4"."DOCUMENTS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."DOCUMENTS" ADD CONSTRAINT "FK_DOCUMENT_USER" FOREIGN KEY ("USER_ID")
	  REFERENCES "C##NHOM4"."USERS" ("ID") ENABLE;
  ALTER TABLE "C##NHOM4"."DOCUMENTS" ADD CONSTRAINT "FK_DOCUMENT_CATEGORY" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "C##NHOM4"."CATEGORIES" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."REVIEWS" ADD CONSTRAINT "FK_DOCUMENT_REVIEW" FOREIGN KEY ("DOCUMENT_ID")
	  REFERENCES "C##NHOM4"."DOCUMENTS" ("ID") ENABLE;

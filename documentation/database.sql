--------------------------------------------------------
--  File created - Sunday-September-17-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AUTO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "C##NHOM4"."AUTO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 28 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
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
	"THUMB" VARCHAR2(255 BYTE), 
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
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (1,'Báo cáo khoa học','Tuyển tập các bài luận báo cáo khoa học tham khảo danh cho sinh viên','fa fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (25,'Xác suất thống kê','Tuyển tập xác suất thống kê','fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (6,'Công nghệ thông tin','Tuyển tập các bài luận báo cáo khoa học tham khảo danh cho sinh viên','fa fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (3,'Đại số - giải tích','Tuyển tập các bài luận báo cáo khoa học tham khảo danh cho sinh viên','fa fa-icon');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (4,'Hóa học - Vật lý','Tuyển tập các bài luận báo cáo khoa học tham khảo danh cho sinh viên','fa fa-icon');
REM INSERTING into C##NHOM4.COLLECTIONS
SET DEFINE OFF;
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (1,'Đề thi HSG Trường chuyên Mary Cury 2023','/public/collection/thumb/cource_piano.jpg');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (12,'Bộ tài liệu 10 điểm Vật Lý','cource_guitar.jpg');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (7,'Bộ tài liệu 8+ cho ban Tự Nhiên','thumb');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (8,'Bộ tài liệu 8+ cho ban Xã Hội','about.jpg image/jpeg');
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB) values (9,'Bộ tài liệu 8+ cho ban Xã Hội','02Data.ppt application/vnd.ms-powerpoint');
REM INSERTING into C##NHOM4.COLLECTION_DETAILS
SET DEFINE OFF;
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (21,1,16);
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (22,1,2);
REM INSERTING into C##NHOM4.DOCUMENTS
SET DEFINE OFF;
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (2,'Tài liệu học tập','Đây là một tài liệu học tập','/path/to/file.pdf',8,0,'PDF',null,null,to_date('15-SEP-23','DD-MON-RR'),'/path/to/thumb.png',1,'Nội dung tài liệu học tập');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (1,'Tài liệu học tập','Đây là một tài liệu học tập','/path/to/file.pdf',0,0,'PDF',1,1,to_date('15-SEP-23','DD-MON-RR'),'/path/to/thumb.png',1,'Nội dung tài liệu học tập');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (23,'Đề thi HSG Trường chuyên Mary Cury 2023','Mô tả','/public/document/file/02Data.ppt',0,0,'application/vnd.ms-powerpoint',1,1,to_date('17-SEP-23','DD-MON-RR'),'/public/document/thumb/cource_piano.jpg',1,'Nội dung');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (24,'Đề thi HSG Trường chuyên Mary Cury 2024','Mô tả','/public/document/file/banner.jpg',0,0,'image/jpeg',1,1,to_date('17-SEP-23','DD-MON-RR'),'/public/document/thumb/ego-vegeta.jpg',1,'Nội dung');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (26,'Tài liệu học tập','Đây là một tài liệu học tập','/path/to/file.pdf',0,0,'pdf',1,1,to_date('17-SEP-23','DD-MON-RR'),'/path/to/thumb.png',1,'Nội dung tài liệu học tập');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (27,'Tài liệu học tập 1','Đây là một tài liệu học tập','/path/to/file.docx',0,0,'docx',1,1,to_date('17-SEP-23','DD-MON-RR'),'/path/to/thumb.png',1,'Nội dung tài liệu học tập');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (19,'Đề thi HSG Vật Lý tỉnh Bình Định','Đề thi vật lý','/public/document/file/de-thi-vat-ly.txt',4,0,'text/plain',1,6,to_date('15-SEP-23','DD-MON-RR'),'/public/document/thumb/courses-6.jpg',1,'Đề thi chia sẻ bởi Nhơn PRO');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (16,'Đề thi HSG Vật Lý Thành phố Hồ Chí Minh','Đề thi vật lý','de-thi-vat-ly.txt',0,0,'image/jpeg',1,6,to_date('15-SEP-23','DD-MON-RR'),'de-thi-vat-ly.txt',1,'Đề thi chia sẻ bởi 100');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (18,'Đề thi HSG Vật Lý Thành phố Hồ Chí Minh','Đề thi vật lý','/public/document/filede-thi-vat-ly.txt',0,0,'text/plain',1,6,to_date('15-SEP-23','DD-MON-RR'),'/public/document/thumbcourses-6.jpg',1,'Đề thi chia sẻ bởi 100');
REM INSERTING into C##NHOM4.REVIEWS
SET DEFINE OFF;
Insert into C##NHOM4.REVIEWS (ID,DOCUMENT_ID,CONTENT,EMAIL,CREATED_AT,NAME) values (1,2,'Tài liệu này rất hay, thích hợp cho những bạn mục tiêu 8+','quenhon2002@gmail.com',to_date('16-SEP-23','DD-MON-RR'),'Nhơn Châu');
REM INSERTING into C##NHOM4.USERS
SET DEFINE OFF;
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD) values (1,'Châu','Quế Nhơn','quenhon','$2a$10$QEySBXQdvZP9026iLDzN5Odh4.qrKUdjX/wn2.HWpU1bRdzoYijSG');
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

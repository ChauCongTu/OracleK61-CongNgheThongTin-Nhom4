--------------------------------------------------------
--  File created - Sunday-November-12-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AUTO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "C##NHOM4"."AUTO_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 71 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
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
	"THUMB" VARCHAR2(255 BYTE), 
	"NUMOFDOCS" NUMBER
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
	"SUMMARY" VARCHAR2(1000 BYTE), 
	"FILE_PATH" VARCHAR2(255 BYTE), 
	"VIEW_COUNT" NUMBER DEFAULT 0, 
	"DOWNLOAD_COUNT" NUMBER DEFAULT 0, 
	"TYPE" VARCHAR2(100 BYTE), 
	"USER_ID" NUMBER, 
	"CATEGORY_ID" NUMBER, 
	"CREATED_AT" DATE, 
	"THUMB" VARCHAR2(255 BYTE), 
	"ISAPPROVED" NUMBER(1,0), 
	"CONTENT" VARCHAR2(4000 BYTE)
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
	"PASSWORD" VARCHAR2(191 BYTE), 
	"ROLE" VARCHAR2(191 BYTE) DEFAULT 'USER'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##NHOM4.CATEGORIES
SET DEFINE OFF;
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (1,'Luận Văn & Đề Tài','Chia sẻ các bài luận, các đồ án, đề tài tốt nghiệp. Các công trình nghiên cứu.','fa-document');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (25,'Khoa Học Tự Nhiên','Tài liệu, đề thi, đề cương, ôn tập dành cho các môn học tự nhiên như: Toán, Lý, Hóa, Sinh, ...','fa-math');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (40,'Khoa Học Xã Hội','Tài liệu, đề thi, đề cương, ôn tập dành cho các môn học xã hội như: Văn, Sử, Địa, Công Dân, ...','fa-pages');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (6,'Giáo Trình - Sách Điện Tử','Các sách điện tử, giáo trình chính thứ về các kiến thức tổng hợp','fa-science');
Insert into C##NHOM4.CATEGORIES (ID,NAME,SUMMARY,ICON) values (3,'Ngoại Ngữ','Tài liệu ôn tập, luyện thi các môn ngoại ngữ học như: Tiếng Anh, Tiếng Nhật, Tiếng Trung, ...','fa-translate');
REM INSERTING into C##NHOM4.COLLECTIONS
SET DEFINE OFF;
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB,NUMOFDOCS) values (1,'Bộ 20 đề thi mục tiêu 9+ Toán','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-toan-thpt-2023-105-1699772947018.png',1);
Insert into C##NHOM4.COLLECTIONS (ID,NAME,THUMB,NUMOFDOCS) values (31,'Bộ đề luyện Toiec','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/cÃ¢Ãº-trÃºc-cÃ¢u-cáº£m-thÃ¡n-5-600x550-1699674362947.png',1);
REM INSERTING into C##NHOM4.COLLECTION_DETAILS
SET DEFINE OFF;
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (64,31,61);
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (52,1,46);
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (65,31,62);
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (63,31,60);
Insert into C##NHOM4.COLLECTION_DETAILS (ID,COLLECTION_ID,DOCUMENT_ID) values (53,1,47);
REM INSERTING into C##NHOM4.DOCUMENTS
SET DEFINE OFF;
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (61,'Đề thi thử Toiec 2024 - Test 2','Tài liệu luyện ngữ pháp tiếng Anh','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/toiec-test-2-1699781037289.pdf',0,0,'pdf',null,3,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/toiec-test-2-1699781036595.png',1,'Đề thi thử TOEIC, hay còn được biết đến với tên gọi là "TOEIC Practice Test," là một tài liệu giáo trình giúp học viên chuẩn bị và làm quen với định dạng và cấu trúc của bài kiểm tra TOEIC chính thức. Được thiết kế để cung cấp trải nghiệm thực tế nhất có thể, đề thi thử TOEIC thường bao gồm các phần như Listening (Nghe) và Reading (Đọc), tương tự như trong bài kiểm tra chính.

Đề thi thử TOEIC có nhiều ưu điểm. Đầu tiên, nó giúp học viên làm quen với các dạng câu hỏi, từ vựng, và ngữ pháp mà họ có thể gặp trong bài kiểm tra thực tế. Thứ hai, việc làm các đề thi thử giúp học viên đánh giá khả năng hiện tại của mình, xác định những điểm mạnh và điểm yếu, từ đó họ có thể tập trung vào những kỹ năng cần cải thiện. Cuối cùng, làm đề thi thử TOEIC là một cách hiệu quả để làm quen với áp lực thời gian và tăng cường khả năng quản lý thời gian trong quá trình làm bài.

Có nhiều nguồn tài liệu và sách hướng dẫn luyện thi TOEIC cung cấp đề thi thử, cung cấp cho học viên sự tự tin và chuẩn bị tốt nhất trước khi tham gia vào bài kiểm tra TOEIC chính thức.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (60,'Đề thi thử Toiec 2024 - Test 1','Tài liệu luyện ngữ pháp tiếng Anh','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/toiec-test-1-1699780952195.pdf',0,0,'pdf',null,3,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/toiec-test-1-1699780950231.png',1,'
Đề thi thử TOEIC, hay còn được biết đến với tên gọi là "TOEIC Practice Test," là một tài liệu giáo trình giúp học viên chuẩn bị và làm quen với định dạng và cấu trúc của bài kiểm tra TOEIC chính thức. Được thiết kế để cung cấp trải nghiệm thực tế nhất có thể, đề thi thử TOEIC thường bao gồm các phần như Listening (Nghe) và Reading (Đọc), tương tự như trong bài kiểm tra chính.

Đề thi thử TOEIC có nhiều ưu điểm. Đầu tiên, nó giúp học viên làm quen với các dạng câu hỏi, từ vựng, và ngữ pháp mà họ có thể gặp trong bài kiểm tra thực tế. Thứ hai, việc làm các đề thi thử giúp học viên đánh giá khả năng hiện tại của mình, xác định những điểm mạnh và điểm yếu, từ đó họ có thể tập trung vào những kỹ năng cần cải thiện. Cuối cùng, làm đề thi thử TOEIC là một cách hiệu quả để làm quen với áp lực thời gian và tăng cường khả năng quản lý thời gian trong quá trình làm bài.

Có nhiều nguồn tài liệu và sách hướng dẫn luyện thi TOEIC cung cấp đề thi thử, cung cấp cho học viên sự tự tin và chuẩn bị tốt nhất trước khi tham gia vào bài kiểm tra TOEIC chính thức.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (62,'Đề thi thử Toiec 2024 - Test 3','Tài liệu luyện ngữ pháp tiếng Anh','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/toiec-test-3-1699781063337.pdf',0,0,'pdf',null,3,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/toiec-test-3-1699781062402.png',1,'Đề thi thử TOEIC, hay còn được biết đến với tên gọi là "TOEIC Practice Test," là một tài liệu giáo trình giúp học viên chuẩn bị và làm quen với định dạng và cấu trúc của bài kiểm tra TOEIC chính thức. Được thiết kế để cung cấp trải nghiệm thực tế nhất có thể, đề thi thử TOEIC thường bao gồm các phần như Listening (Nghe) và Reading (Đọc), tương tự như trong bài kiểm tra chính.

Đề thi thử TOEIC có nhiều ưu điểm. Đầu tiên, nó giúp học viên làm quen với các dạng câu hỏi, từ vựng, và ngữ pháp mà họ có thể gặp trong bài kiểm tra thực tế. Thứ hai, việc làm các đề thi thử giúp học viên đánh giá khả năng hiện tại của mình, xác định những điểm mạnh và điểm yếu, từ đó họ có thể tập trung vào những kỹ năng cần cải thiện. Cuối cùng, làm đề thi thử TOEIC là một cách hiệu quả để làm quen với áp lực thời gian và tăng cường khả năng quản lý thời gian trong quá trình làm bài.

Có nhiều nguồn tài liệu và sách hướng dẫn luyện thi TOEIC cung cấp đề thi thử, cung cấp cho học viên sự tự tin và chuẩn bị tốt nhất trước khi tham gia vào bài kiểm tra TOEIC chính thức.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (44,'Luận án Phát triển kinh tế vùng ven biển tỉnh Thanh Hóa theo hướng hiện đại','Trong bối cảnh thế giới đang đứng trước cơ hội lớn mang lại từ cuộc cách mạng 4.0, internet kết nối vạn vật, dữ liệu lớn, trí tuệ nhân tạo, hội nhập kinh tế quốc tế, việc nghiên cứu phát triển theo hướng hiện đại càng có ý nghĩa quan trọng.','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/luan-van-kinh-te-bien-1699694692245.docx',22,0,'docx',null,1,to_date('11-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/luan-an-kinh-te-bien-hien-dai-1699694692111.png',1,'Trong bối cảnh thế giới đang đứng trước cơ hội lớn mang lại từ cuộc cách mạng 4.0, internet kết nối vạn vật, dữ liệu lớn, trí tuệ nhân tạo, hội nhập kinh tế quốc tế, việc nghiên cứu phát triển theo hướng hiện đại càng có ý nghĩa quan trọng. Việt Nam là một quốc gia ven biển, với 28 tỉnh, thành phố giáp biển, dân số chiếm hơn 50% dân số của cả nước, trong đó, dân số khu vực các huyện, thị xã, thành phố ven biển chiếm hơn 22% dân số chung của cả nước. Việt Nam đã xây dựng Chiến lược biển đến năm 2020, Chiến lược phát triển bền vững kinh tế biển đến năm 2030, tầm nhìn đến năm 2045, đã có quy hoạch phát triển hệ thống hải đảo, quy hoạch phát triển các vùng ven biển, có nhiều đề tài khoa học cấp nhà nước về điều tra tài nguyên biển, phát triển mô hình kinh tế - xã hội dải ven biển; đã quy hoạch phát triển các khu kinh tế ven biển, xây dựng nhiều cảng biển Tuy nhiên, việc khai thác những tiềm năng, thế mạnh của vùng ven biển nước ta vẫn còn tồn tại những hạn chế nhất định, chưa có nhiều giải pháp đột phá để phát triển kinh tế vùng ven biển thật sự hiện đại tương xứng với những tiềm năng, thế mạnh sẵn có; nhiều vấn đề lý luận về phát triển kinh tế vùng ven biển theo hướng hiện đại chưa được nghiên cứu làm rõ.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (47,'Đề thi toán THPT Quốc Gia 2023 - Đề 115','Sau khi các em hoàn thành xong bài thi toán vào chiều ngày 28/6/2023, Tài Liệu Học Tập cập nhật nhanh đề thi cho các em học sinh, phụ huynh tham khảo. Mọi người  có thể tham khảo đề 115 hoặc tải về bằng cách click nút tải xuống','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-toan-thpt-2023-115-1699762920013.pdf',62,0,'pdf',null,25,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-toan-thpt-2023-105-1699763324569.png',1,'Đề thi toán thpt quốc gia 2023 có đáp án và file pdf sẽ được TaiLieuVN cập nhanh nhất một số mã đề sau khi các em học sinh hoàn thành xong bài thi của mình. Điểm thi của bài thi toán là căn cứ để các trường xét tốt nghiệp và căn cứ xét tuyển đại học, cao đẳng 2023. Nào hãy cùng TaiLieuVN tham khảo đề thi tốt nghiệp môn toán thpt quốc gia 2023 dưới đây để xem nó có khó hơn đề thi toán tốt nghiệp thpt quốc gia 2022 không nhé.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (50,'Đề thi Hóa Học THPT Quốc Gia 2023 - Có Đáp Án','Sau khi các em hoàn thành xong bài thi Vật Lý vào chiều ngày 29/6/2023, Tài Liệu Học Tập cập nhật nhanh đề thi cho các em học sinh, phụ huynh tham khảo. Mọi người  có thể tham khảo đề hoặc tải về bằng cách click nút tải xuống','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-toan-thpt-2023-115-1699764259300.pdf',2,0,'pdf',null,25,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-thi-hoa-hoc-1699764258935.png',1,'Đề thi Hóa học thpt quốc gia 2023 có đáp án và file pdf sẽ được TaiLieuVN cập nhanh nhất một số mã đề sau khi các em học sinh hoàn thành xong bài thi của mình. Điểm thi của bài thi Hóa Học là căn cứ để các trường xét tốt nghiệp và căn cứ xét tuyển đại học, cao đẳng 2023. Nào hãy cùng TaiLieuVN tham khảo đề thi tốt nghiệp môn toán thpt quốc gia 2023 dưới đây để xem nó có khó hơn đề thi Vật Lý tốt nghiệp thpt quốc gia 2022 không nhé.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (49,'Đề thi Vật Lý THPT Quốc Gia 2023 - Có Đáp Án','Sau khi các em hoàn thành xong bài thi Vật Lý vào chiều ngày 29/6/2023, Tài Liệu Học Tập cập nhật nhanh đề thi cho các em học sinh, phụ huynh tham khảo. Mọi người  có thể tham khảo đề hoặc tải về bằng cách click nút tải xuống','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-toan-thpt-2023-115-1699763683503.pdf',5,0,'pdf',null,25,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-thi-THPT-vat-ly-2023-1699763683157.png',1,'Đề thi Vật Lý thpt quốc gia 2023 có đáp án và file pdf sẽ được TaiLieuVN cập nhanh nhất một số mã đề sau khi các em học sinh hoàn thành xong bài thi của mình. Điểm thi của bài thi Vật Lý là căn cứ để các trường xét tốt nghiệp và căn cứ xét tuyển đại học, cao đẳng 2023. Nào hãy cùng TaiLieuVN tham khảo đề thi tốt nghiệp môn toán thpt quốc gia 2023 dưới đây để xem nó có khó hơn đề thi Vật Lý tốt nghiệp thpt quốc gia 2022 không nhé.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (54,'Luận án Nghiên cứu cải tiến mạch san bằng, mạch khôi phục dữ liệu và xung đồng hồ trong máy thu quang','Máy phát xử lý và khuếch đại tín hiệu điện.','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/luan-van-cai-tien-mach-san-bang-1699773529216.docx',2,0,'docx',null,1,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/luan-van-cai-tien-mach-san-bang-1699773529105.png',1,'Máy phát xử lý và khuếch đại tín hiệu điện. Tín hiệu điện tại đầu ra máy phát được chuyển đổi thành tín hiệu quang bằng laze hoặc đi-ốt phát quang trước khi được truyền qua cáp sợi quang. Trong đó, laze thường được sử dụng làm bộ phát quang vì công suất đầu ra cao hơn và phổ sạch hơn so với đi-ốt phát quang. Tuy nhiên, với các ứng dụng giá rẻ thì đi-ốt phát quang có thể được sử dụng làm bộ phát quang. Dữ liệu quang được chuyển đổi lại thành tín hiệu điện ở đầu vào máy thu bằng photodiode. Sau đó, tín hiệu điện sẽ được xử lý, khuếch đại, khôi phục lại tại máy thu và đưa đến các thiết bị đầu cuối. Trong phạm vi nghiên cứu, luận án tập trung vào trình bày về kiến trúc của máy thu quang. Máy thu quang điểu hình gồm photodiode, mạch Front-end và mạch Deserializer như được thể hiện trên Hình 1.2 [40]. Photodiode chuyển đổi công suất quang từ máy phát thành dòng điện cho mạch front-end làm việc. Mạch Front-end cơ bản bao gồm một mạch khuếch đại dòng điện-điện áp (TIA: Transimpedance) để chuyển đổi dòng điện thành điện áp, mạch san bằng (EQ: Equalizer) để bù ảnh hưởng giới hạn băng thông gây ra bởi kênh truyền hoặc khi photodiode được tích hợp bằng CMOS, mạch khuếch đại POST để tăng dải động điện áp đến mức logic cho mạch xử lý số phía sau làm việc. Mạch khuếch đại POST có thể bao gồm một chuỗi các mạch khuếch đại đơn giản xếp chồng như mạch khuếch đại hạn biên, hoặc bao gồm một số mạch khác để điều khiển hệ số khuếch đại như mạch tự động điều chỉnh hệ số khuếch đại máy thu. Bộ Deserializer gồm hai nhiệm vụ chính là khôi phục dữ liệu, xung đồng hồ (CDR: Clock and Data Recovery) và giải ghép kênh. Đầu tiên, từ tín hiệu thu được, nó khôi phục lại tín hiệu xung đồng hồ. Sau đó, tín hiệu thu sẽ được khôi phục nhờ xung đồng hồ đã khôi phục thông qua mạch quyết định (FF). Cuối cùng, tín hiệu đã khôi phục được giải ghép kênh (DEMUX) để tạo ra các luồng dữ liệu số tại đầu ra.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (55,'Luận án Nâng cao hiệu năng phân lớp dữ liệu trên cơ sở cải tiến thuật toán SVM','Áp dụng SVM cho bài toán phân lớp dữ liệu không cân bằng','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/luan-van-cai-tien-mach-san-bang-1699776575193.docx',0,0,'docx',null,1,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/luan-an-cai-tien-svm-1699776575043.png',1,'Đối với cộng đồng học thuật, có nhiều hướng nghiên cứu, phát triển và ứng dụng SVM [51, 6]. Có thể kể đến một số hướng nghiên cứu như: Áp dụng SVM cho bài toán phân lớp dữ liệu không cân bằng [9, 2, 26]; Như đã đề cập tới ở Chương 1, giải SVM tương đương với việc giải bài toán QP lồi được đặc trưng bởi một ma trận dày đặc mà số hàng bằng số lượng điểm dữ liệu huấn luyện, do đó SVM bị hạn chế khi tập dữ liệu lớn. Giảm thiểu độ phức tạp của SVM cũng là một hướng nghiên cứu được cộng đồng quan tâm [13, 29, 60]; Bên cạnh đó là các kĩ thuật giảm chiều dữ liệu, giảm số lượng điểm dữ liệu, trích chọn đặc trưng nhằm thực thi SVM với tập dữ liệu lớn [7, 53]. Ngoài ra, có thể kể tới các công trình nghiên cứu gần đây như: Weighted svm algorithm for efficient classification and prediction of binary response data [5], Twin structural weighted relaxed svm (TS-WRSVM) [36]. Tuy nhiên, các hướng nghiên cứu này sẽ không được phân tích trong luận án, bởi vì luận án tập trung vào cải tiến SVM cho dữ liệu đa cấu trúc, nơi mà mỗi lớp bao gồm nhiều cụm, mỗi cụm có xu hướng phân phối riêng biệt. Các biến thể của SVM được trình bày trong chương này là những tiền đề cho Chương 3 và Chương 4. Cụ thể trong chương này, một số biến thể tiêu biểu của SVM được đề cập, với cách tiếp cận tìm hai siêu phẳng song song hoặc không nhất thiết song song để tách hai lớp dữ liệu như: SVM xấp xỉ (PSVM) [16, 18, 30], SVM xấp xỉ thông qua trị riêng suy rộng (GEPSVM) [32, 33, 15, 21], SVM song sinh (TSVM) [20, 22, 37, 57], SVM song sinh dùng bình phương tối thiểu (LSTSVM) [27, 28, 44, 58, 35, 42], SVM song sinh có cấu trúc (S-TSVM) [43, 55, 56].');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (46,'Đề thi toán THPT Quốc Gia 2023 - Đề 105','Sau khi các em hoàn thành xong bài thi toán vào chiều ngày 28/6/2023, Tài Liệu Học Tập cập nhật nhanh đề thi cho các em học sinh, phụ huynh tham khảo. Mọi người  có thể tham khảo đề 105 hoặc tải về bằng cách click nút tải xuống','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-toan-thpt-2023-105-1699762709492.pdf',4,0,'pdf',null,25,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/de-toan-thpt-2023-105-1699762709199.png',1,'Đề thi toán thpt quốc gia 2023 có đáp án và file pdf sẽ được TaiLieuVN cập nhanh nhất một số mã đề sau khi các em học sinh hoàn thành xong bài thi của mình. Điểm thi của bài thi toán là căn cứ để các trường xét tốt nghiệp và căn cứ xét tuyển đại học, cao đẳng 2023. Nào hãy cùng TaiLieuVN tham khảo đề thi tốt nghiệp môn toán thpt quốc gia 2023 dưới đây để xem nó có khó hơn đề thi toán tốt nghiệp thpt quốc gia 2022 không nhé.');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (56,'Đồ án Xây dựng hệ thống giao việc theo hợp đồng','Xây dựng hệ thống giao việc theo hợp đồng  với mục đích là nghiên cứu tìm hiểu và xây dựng ứng quản quản lý giao việc trên website','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/he-thong-giao-viec-1699777045881.pdf',0,0,'pdf',null,1,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/he-thong-giao-viec-1699777045642.png',1,'Hiện nay công nghệ thông tin thông tin vô cùng phát triển. Internet dần trở thành thứ không thể thiếu trong cuộc sống. Trước kia thì mất điện mất nước là những thứ quan trọng nhất và đến nay vẫn vậy. Nhưng cho tới bây giờ thì mất mạng Internet cũng là vấn đề cũng khá là đáng được quan tâm trong cuộc sống hàng ngày. Càng ngày mọi người dùng mạng nó dần như trở thành công việc mỗi ngày. Việc đăng ký và tìm kiếm thông tin trên mạng dần phổ biến trong những năm gần đây. Đây là một lợi thế cho các doanh nghiệp có thể giúp người quản lý giao công việc cho từng nhân viên bằng một cái website để quản lý có thể quản lý và giao việc thay vì như trước đến tận nơi. Và nhu cầu thiết yếu là khi quản lý muốn giao việc cho nhân viên không qua giấy tờ hoặc nhân viên không phải qua gặp trực tiếp để nhận công việc. Từ thực tế đó chúng ta có thể nhìn thấy việc xây dựng hệ thống quản lý giao việc trên nền tảng website là rất quan trọng và cần thiết. Vì thế nên em chọn đề tài: “ Xây dựng hệ thống giao việc theo hợp đồng “ với mục đích là nghiên cứu tìm hiểu và xây dựng ứng quản quản lý giao việc trên website. Giúp các doanh nghiệp, các cấp quản lý có thể dễ dàng giao việc cho nhân viên mà không cần gặp trực tiếp. Tối ưu chi phí, công sức và quản lý dễ dàng tiện lợi');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (57,'Bí kíp chinh phục 8+ môn Văn thi THPT QG - Phần 1','Mục tiêu giúp các bạn đạt điểm cao môn văn, chia sẻ kinh nghiệm từ chính những người có chuyên môn.','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/bi-kip-ngu-van-phan-1-1699778049555.pdf',0,0,'pdf',null,40,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/bi-kip-ngu-van-phan-1-1699778049305.png',1,'Làm thế nào để các bạn có thể ôn thi THPT Quốc gia môn Ngữ Văn 2023 đạt hiệu quả cao từ đó tự tin bước vào phòng thi? Những bí kíp được BUTBI chia sẻ dưới đây không chỉ dành cho kỳ thi năm 2024, mà chắc chắn sẽ còn hữu ích dành cho các năm tiếp theo, các bạn cùng theo dõi nhé!');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (58,'Bí kíp chinh phục 8+ môn Văn thi THPT QG - Phần 2','Mục tiêu giúp các bạn đạt điểm cao môn văn, chia sẻ kinh nghiệm từ chính những người có chuyên môn.','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/bi-kip-ngu-van-phan-2-1699778066196.pdf',1,0,'pdf',null,40,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/bi-kip-ngu-van-phan-2-1699778065918.png',1,'Làm thế nào để các bạn có thể ôn thi THPT Quốc gia môn Ngữ Văn 2023 đạt hiệu quả cao từ đó tự tin bước vào phòng thi? Những bí kíp được BUTBI chia sẻ dưới đây không chỉ dành cho kỳ thi năm 2024, mà chắc chắn sẽ còn hữu ích dành cho các năm tiếp theo, các bạn cùng theo dõi nhé!');
Insert into C##NHOM4.DOCUMENTS (ID,TITLE,SUMMARY,FILE_PATH,VIEW_COUNT,DOWNLOAD_COUNT,TYPE,USER_ID,CATEGORY_ID,CREATED_AT,THUMB,ISAPPROVED,CONTENT) values (59,'Luyện tập Ngữ Pháp Tiếng Anh dành cho Sinh Viên','Tài liệu luyện ngữ pháp tiếng Anh','https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/grammar-1-1699780551624.pdf',0,0,'pdf',null,3,to_date('12-NOV-23','DD-MON-RR'),'https://shopee-fake-bucket.s3.ap-southeast-1.amazonaws.com/grammar-1-1699780551438.png',1,'
"Grammar Practice for Elementary Students with Key" của tác giả Elaine Walker và Steve Elsworth là một cuốn sách luyện ngữ pháp tiếng Anh chất lượng cao, chủ yếu dành cho học viên ở trình độ cơ bản. Cuốn sách này cung cấp một phương pháp học hiệu quả thông qua việc thực hành ngữ pháp một cách chủ động và có đáp án chi tiết giúp độc giả tự kiểm tra và tự đánh giá kết quả học tập của mình.

Với sự biên soạn kỹ lưỡng từ hai tác giả uy tín, cuốn sách không chỉ tập trung vào việc giải thích các quy tắc ngữ pháp một cách rõ ràng mà còn cung cấp nhiều bài tập thực hành đa dạng, từ những bài tập cơ bản đến những thách thức phức tạp hơn. Điều này giúp học viên xây dựng và củng cố kiến thức ngữ pháp một cách có hệ thống và linh hoạt. Cuối cùng, việc có đáp án chi tiết ở cuối sách giúp học viên tự học một cách độc lập và hiệu quả. "Grammar Practice for Elementary Students with Key" là một công cụ học tuyệt vời để nâng cao kỹ năng ngữ pháp và góp phần đưa học viên tiến bộ một cách mạnh mẽ trong việc sử dụng tiếng Anh.');
REM INSERTING into C##NHOM4.REVIEWS
SET DEFINE OFF;
Insert into C##NHOM4.REVIEWS (ID,DOCUMENT_ID,CONTENT,CREATED_AT,NAME) values (51,47,'Cho em hỏi là file đáp án ở đâu ạ',to_date('12-NOV-23','DD-MON-RR'),'Châu Quế Nhơn');
REM INSERTING into C##NHOM4.USERS
SET DEFINE OFF;
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD,ROLE) values (38,'Hà','Duy Kiên','kane','$2a$10$pmIn2WpDm77h2uXVGZ3/MeSsSPdj6lccjjg1gR9/kpiMmnjBr1qjq','user');
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD,ROLE) values (67,'Bùi','Nhật Huy','huy','$2a$10$08z5u91dW7gHLbdkLi3K9eSVVUI8djamuXVRZ4O8xxKl3V0WM1JVS','user');
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD,ROLE) values (68,'Võ','Văn Trọng','trong','$2a$10$fVvUK3r2HCi2zrNR77nYE.eSPrjCVM0nqicv9VuDTvrqNdHhvY4Q6','admin');
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD,ROLE) values (69,'Võ','Khắc Mạnh','manh','$2a$10$.8n.fzFGaw8Lf.pCrda/dOlPA0MXupZRVV5683VEJcjvondYDdjgm','user');
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD,ROLE) values (70,'Nguyễn','Cao An','caoan','$2a$10$Zgy1Sm/hGgI2v3awQ0qX0O7bfsQo9kbaLCGkn0yJ2HbhXtUCN5alG','user');
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD,ROLE) values (1,'Châu','Quế Nhơn','quenhon','$2a$10$QEySBXQdvZP9026iLDzN5Odh4.qrKUdjX/wn2.HWpU1bRdzoYijSG','admin');
Insert into C##NHOM4.USERS (ID,FIRST_NAME,LAST_NAME,LOGIN,PASSWORD,ROLE) values (66,'Lưu','Nhật Thành','thanh','$2a$10$y.BnNqezJdyo3Enx8xmKPOA6nUb64fQBUyNNkeiziclqenahKoSQ6','user');
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
--  DDL for Index DR$INDEX_NAME$X
--------------------------------------------------------

  CREATE INDEX "C##NHOM4"."DR$INDEX_NAME$X" ON "C##NHOM4"."DR$INDEX_NAME$I" ("TOKEN_TEXT", "TOKEN_TYPE", "TOKEN_FIRST", "TOKEN_LAST", "TOKEN_COUNT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS COMPRESS 2 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DR$INDEX_NAME$KR
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##NHOM4"."DR$INDEX_NAME$KR" ON "C##NHOM4"."DR$INDEX_NAME$K" ("TEXTKEY", "DOCID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DR$INDEX_NAME$KD
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##NHOM4"."DR$INDEX_NAME$KD" ON "C##NHOM4"."DR$INDEX_NAME$K" ("DOCID", "TEXTKEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INDEX_NAME
--------------------------------------------------------

  CREATE INDEX "C##NHOM4"."INDEX_NAME" ON "C##NHOM4"."DOCUMENTS" ("TITLE") 
   INDEXTYPE IS "CTXSYS"."CONTEXT" ;
--------------------------------------------------------
--  DDL for Trigger PREVENT_DUPLICATE_DOCUMENTS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##NHOM4"."PREVENT_DUPLICATE_DOCUMENTS" 
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
/
ALTER TRIGGER "C##NHOM4"."PREVENT_DUPLICATE_DOCUMENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SET_ROLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##NHOM4"."SET_ROLE" 
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
    IF :NEW."ROLE" IS NULL THEN 
        :NEW."ROLE" := 'user';
    END IF;
END;
/
ALTER TRIGGER "C##NHOM4"."SET_ROLE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SET_TIME_CREATE_COMMENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##NHOM4"."SET_TIME_CREATE_COMMENT" 
BEFORE INSERT ON REVIEWS
FOR EACH ROW
BEGIN
  IF :NEW."CREATED_AT" IS NULL THEN
    :NEW."CREATED_AT" := SYSDATE;
  END IF;
END;
/
ALTER TRIGGER "C##NHOM4"."SET_TIME_CREATE_COMMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SET_TIME_CREATE_DOCUMENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##NHOM4"."SET_TIME_CREATE_DOCUMENT" 
BEFORE INSERT ON DOCUMENTS
FOR EACH ROW
BEGIN
  IF :NEW."CREATED_AT" IS NULL THEN
    :NEW."CREATED_AT" := SYSDATE;
  END IF;
END;
/
ALTER TRIGGER "C##NHOM4"."SET_TIME_CREATE_DOCUMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UPDATE_NUM_OF_DOCS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##NHOM4"."UPDATE_NUM_OF_DOCS" 
BEFORE INSERT ON collection_details
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
    SET numofdocs = v_num_of_docs + 1
    WHERE id = v_collection_id;
END;
/
ALTER TRIGGER "C##NHOM4"."UPDATE_NUM_OF_DOCS" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_DOCUMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."ADD_DOCUMENT" (
  v_id NUMBER,
  v_title NVARCHAR2,
  v_summary NVARCHAR2,
  v_file_path NVARCHAR2,
  v_type NVARCHAR2,
  v_category_id NUMBER,
  v_user_id NUMBER,
  v_thumb NVARCHAR2,
  v_content NVARCHAR2
)
AS
BEGIN
  INSERT INTO documents (id, title, summary, file_path, view_count, download_count, type, user_id, category_id, created_at, thumb, isapproved)
  VALUES (v_id, v_title, v_summary, v_file_path, 0, 0, v_type, v_user_id, v_category_id, NULL, v_thumb, 1);
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_COLLECTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."DELETE_COLLECTION" (
    p_id IN NUMBER
) IS
BEGIN
    DELETE FROM collection_details
    WHERE collection_id = p_id;

    DELETE FROM collections
    WHERE ID = p_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_DOCUMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."DELETE_DOCUMENT" (
    p_document_id IN NUMBER
) IS
BEGIN
    DELETE FROM collection_details
    WHERE DOCUMENT_ID = p_document_id;
    
    DELETE FROM reviews
    WHERE DOCUMENT_ID = p_document_id;
    
    DELETE FROM documents
    WHERE ID = p_document_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure FIND_RELATED_DOCUMENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."FIND_RELATED_DOCUMENTS" (
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

/
--------------------------------------------------------
--  DDL for Procedure GET_REVIEW_LIST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."GET_REVIEW_LIST" (
    doc_id NUMBER,
    v_reviews OUT SYS_REFCURSOR
)IS
BEGIN
    OPEN v_reviews FOR
    SELECT * FROM Reviews 
    WHERE document_id = doc_id 
    ORDER BY created_at DESC;
END;

/
--------------------------------------------------------
--  DDL for Procedure INCREASE_DOCUMENT_VIEW_COUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."INCREASE_DOCUMENT_VIEW_COUNT" (
    p_document_id NUMBER
)
IS
BEGIN
    UPDATE documents
    SET view_count = view_count + 1
    WHERE id = p_document_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SEARCH_DOCUMENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."SEARCH_DOCUMENTS" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_DOCUMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."UPDATE_DOCUMENT" (
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

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##NHOM4"."UPDATE_USER" (
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

/
--------------------------------------------------------
--  DDL for Function CHANGE_PASSWORD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##NHOM4"."CHANGE_PASSWORD" (
    user_id NUMBER,
    old_password VARCHAR2,
    new_password VARCHAR2
)
RETURN BOOLEAN
IS
    result BOOLEAN;
    password_current CLOB;
BEGIN
    SELECT password
    INTO password_current
    FROM users
    WHERE id = user_id;

    IF old_password IS NULL OR password_current <> old_password THEN
        result := FALSE;

    ELSE 
        UPDATE users
        SET password = new_password
        WHERE id = user_id;
        result := TRUE;
    END IF;
    RETURN result;
END;

/
--------------------------------------------------------
--  DDL for Function IS_ADMIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##NHOM4"."IS_ADMIN" (
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
--  Constraints for Table DR$INDEX_NAME$U
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$U" ADD PRIMARY KEY ("RID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
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
--  Constraints for Table DR$INDEX_NAME$I
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$I" MODIFY ("TOKEN_TEXT" NOT NULL ENABLE);
  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$I" MODIFY ("TOKEN_TYPE" NOT NULL ENABLE);
  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$I" MODIFY ("TOKEN_FIRST" NOT NULL ENABLE);
  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$I" MODIFY ("TOKEN_LAST" NOT NULL ENABLE);
  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$I" MODIFY ("TOKEN_COUNT" NOT NULL ENABLE);
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
--  Constraints for Table DR$INDEX_NAME$N
--------------------------------------------------------

  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$N" MODIFY ("NLT_MARK" NOT NULL ENABLE);
  ALTER TABLE "C##NHOM4"."DR$INDEX_NAME$N" ADD PRIMARY KEY ("NLT_DOCID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
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

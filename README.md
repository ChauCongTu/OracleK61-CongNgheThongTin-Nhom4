# Trang web chia sẻ tài liệu học tập

## Hướng dẫn cài đặt
- ___Clone repo dự án về máy:___
 ```
 https://github.com/ChauCongTu/OracleK61-CongNgheThongTin-Nhom4.git
 ```


- ___Database:___
  - Cài đặt Oracle Database. [[Tham khảo]](https://www.sql.edu.vn/oracle-database/oracle-database-sql-developer/)
  - Cấu hình Oracle Database trong ``SQL * Plus``.
  - Cài ``Sql Developer`` để có GUI trang quản lý Oracle Database.
  - Tạo User mới và cấp quyền CONNECT, RESOURCE, DBA (trong ``SQL * Plus``).
  - Tạo kết nối đến User vừa tạo (trong ``SQL Developer``).
  - Chạy file data.sql trong thư mục ``Documentation``.
  
- ___Server:___
  - Cài đặt ``IntelliJ`` để hỗ trợ code Java Spring Boot.
  - Mở thư mục ``backend`` từ repo vừa clone.
  - Kiểm tra, cập nhật Maven.
  - Cấu hình lại kết nối CSDL trong ``src\main\resources\application.properties``.
  - Nhấn tổ hợp Ctrl + Shift + F10 để bắt đầu build project.
  
- ___Client:___
  - Cài đặt ``VS Code`` để hỗ trợ code giao diện.
  - Cài đặt ``Node``: [[tham khảo]](https://stackjava.com/nodejs/huong-dan-cai-dat-cau-hinh-nodejs-npm-tren-windows.html).
  - Mở thư mục ``frontend`` từ repo vừa clone.
  - Tạo file ``.env.local`` ở thư mục gốc, thêm dòng code:

  ```
  VITE_API_URL=http://localhost:8080
  VITE_UPLOAD_URL=http://18.138.234.4:8080/api/v1
  ```
  - Mở terminal, chạy 2 câu lệnh:
  ```
  npm install
  npm run dev
  ```

## Nhóm 4
- Châu Quế Nhơn
- Lưu Nhật Thành
- Võ Khắc Mạnh
- Võ Văn Trọng
- Bùi Nhật Huy
- Nguyễn Cao An

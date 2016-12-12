CodeAcademy
--------------------------------------------------
- Đây là một trang e-learning cho lập trình viên là https://codeacademy.vn

Demo
---------------------------------------------------------------------------
- Demo module Login-Logout-Signup cho website https://codeacademy.vn
- Hiện tại phiên bản Demo chỉ có màn hình home, login và logout đã hoàn thiện, các màn hình còn lại đang được phát triển tiếp :) 

Mô tả chức năng của module
--------------------------------------------------------------------------
- Thực hiện đăng ký tài khoản và mã hóa thông tin tài khoản đăng ký, cụ thể ở đây là mã hóa mật khẩu
- Cụ thể mật khẩu được hashing bằng thuật toán hashing BCrypt ( có thể sử dụng SHA hoặc MD5 tuy nhiên BCrypt là thuật toán mã hóa mạnh hơn ) với độ dài là 60 , sử dụng chuỗi salt ngẫu nhiên
- Tài khoản đã mã hóa sau đó được lưu vào database
- Khi thực hiện đăng nhập sẽ thực hiện hashing mật khẩu để xác nhận tài khoản đăng nhập có chính xác hay không, và kiểm tra quyền của tài khoản và thực hiện cấp quyền cho user để truy cập vào màn hình 

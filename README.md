# Dự Án Xác Thực OTP và Đăng Nhập Bằng Google

## Mô Tả
Dự án này cung cấp chức năng xác thực người dùng thông qua mã OTP (One-Time Password) được gửi qua email. Người dùng có thể yêu cầu gửi lại mã OTP nếu cần thiết. Ngoài ra, dự án cũng hỗ trợ đăng nhập bằng tài khoản Google. Dự án sử dụng Java, Servlet, và các thư viện như Gson để xử lý JSON.

## Các Thành Phần Chính
- **GoogleUtils.java**: Xử lý việc lấy mã truy cập từ Google OAuth và thông tin người dùng.
- **EmailSender.java**: Gửi email chứa mã OTP đến người dùng.
- **SHA256WithSalt.java**: Băm mật khẩu với salt để bảo mật.
- **UserDAO.java**: Quản lý các thao tác liên quan đến người dùng, bao gồm đăng nhập, đăng ký, và xác thực OTP.
- **LoginGoogleServlet.java**: Xử lý yêu cầu đăng nhập bằng tài khoản Google.
- **VerifyOTPServlet.java**: Xử lý yêu cầu xác thực OTP từ người dùng.
- **VerifyOTP.jsp**: Giao diện người dùng để nhập mã OTP.
- **ForgotPassword.jsp**: Giao diện để người dùng yêu cầu gửi mã OTP.

## Cài Đặt
1. Clone repository về máy của bạn:
   ```bash
   git clone https://github.com/gk182/CNPM_GROUP4.git
   ```
2. Cài đặt các thư viện cần thiết (nếu có) trong file `pom.xml` (nếu bạn sử dụng Maven).
3. Cấu hình thông tin email trong `EmailSender.java` để gửi email thành công.
4. **Thay đổi Google Client ID**: Mở file `GoogleUtils.java` và thay thế giá trị của `GOOGLE_CLIENT_ID` bằng Client ID của bạn.
5. **Thay đổi Google CLIENT SECRET**: Mở file `GoogleUtils.java` và thay thế giá trị của `GOOGLE_CLIENT_SECRET` bằng Client Secret của bạn.
   
## Sử Dụng
1. Chạy ứng dụng trên máy chủ servlet (như Apache Tomcat).
2. Để đăng nhập bằng Google, truy cập vào trang đăng nhập và làm theo hướng dẫn.

## Tính Năng
- Gửi mã OTP qua email.
- Xác thực mã OTP nhập vào.
- Gửi lại mã OTP nếu cần thiết.
- Đăng nhập bằng tài khoản Google.
- Tạo tài khoản mới bằng tài khoản Google nếu chưa tồn tại.

## Lưu Ý
- Đảm bảo rằng bạn đã cấu hình đúng thông tin email và mật khẩu ứng dụng trong `EmailSender.java`.
- Mã OTP sẽ hết hạn sau một khoảng thời gian nhất định.

## Giấy Phép
Dự án này được cấp phép theo Giấy phép MIT. Vui lòng tham khảo file LICENSE để biết thêm chi tiết.

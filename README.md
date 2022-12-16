
//===================================
HƯỚNG DẪN SỬ DỤNG VÀ CHỨC NĂNG HỆ THỐNG 
//===================================


Ngôn ngữ cho Front-End
- HTML, CSS, BOOSTRAP, JQUERY, AJAX

Ngôn ngữ cho Back-End
- PHP + MySQL + MVC CodeIgniter Framework ver 3.1.10

File database : shoppingmall.sql
- Cấu hình đường dẫn trong application/config/config.php ($config['base_url'] = 'đường dẫn của máy hoặc đường dẫn host')
- Cấu hình database trong application/config/database.php 

Đường dẫn vào trang quản trị /admin
- tài khoản quản trị:
    - username: admin
    - password: 123456

Liên hệ hỗ trợ: https://www.facebook.com/vtruong.it

//===================================
//===================================

CHỨC NĂNG CHÍNH CỦA HỆ THỐNG

//===================================
//===================================


FRONT-END
-   Giao diện chuẩn
-	Đăng ký, đăng nhập thành viên
-	Hiển thị sản phẩm mới, khuyến mãi, bán chạy...
-	Hiển thị danh sách tin tức và tin tức mới nhất...
-	Hiển thị danh mục các loại sản phẩm
-	Tìm tiếm theo từ khóa
-	Hiển thị nhiều ảnh mô tả và thông tin chi tiết sản phẩm 
-	Hiển thị gợi ý sản phẩm cùng loại
-	Đóng góp ý kiến, phản hồi trong trang liên hệ chúng tôi
-	Gửi email đơn hàng khi mua hàng từ hệ thống
-	Thêm sản phẩm, cập nhật số lượng, xóa sản phẩm
-	Đặt hàng không cần tài khoản hoặc có tài khoản
-	Chức năng nhập mã giảm giá giảm trực tiếp khi mua hàng
-	Thông báo và theo dõi trạng thái đơn đặt hàng đã mua trong tài khoản cá nhân
-	Hỗ trợ Lấy lại mật khẩu, Đổi mật khẩu có gửi email xác nhận
-	Quản lý theo thông tin tài khoản, đơn hàn
-	Theo dõi tình trạng đơn hàng, hủy đơn hàng 
-	Đăng ký tài khoản sẽ nhận được 1 mã giảm giá , nhận bằng email
(mã giảm giá này chỉ được nhập 1 lần, hạn dùng sau 30 ngày kể từ khi đăng ký tài khoản)

//===================================
BACK-END
-	Quản lý nhà cung tấp (Cập nhật Trạng thái, Thêm, Sửa, Xóa, Nhập hàng)
-	Quản lý sản phẩm (Cập nhật Trạng thái, Thêm, Sửa, Xóa, Nhập hàng)
-	Quản lý bài viết (Cập nhật Trạng thái, Thêm, Sửa, Xóa)
-	Quản lý Liên hệ (Xem, Xóa)
-	Quản lý đơn hàng (Xem chi tiết đơn hàng, Trạng thái đơn hàng, Hủy đơn, Lưu đơn)
-	Quản lý mã giảm giá (Thêm, Sửa, Xóa)
-	Quản lý thông tin khách hàng (Xem, Xóa)
-	Quản lý nhân viên (Thêm, Sửa, Xóa, Lấy lại mật khẩu)
-	Quản lý Slider (Xem, Sửa, Xóa)
-	Cấu hình phí giao hàng (Sửa)
-	Cập nhật số lượng sản phẩm trong kho theo từng đơn hàng bán thành công
-	Cập nhật lần nhập mã giảm giá còn lại của 1 mã khi khách đặt hàng

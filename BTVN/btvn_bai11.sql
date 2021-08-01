-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 01, 2021 lúc 03:05 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoc python thay nghia`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btvn_bai11`
--

CREATE TABLE `btvn_bai11` (
  `ID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `btvn_bai11`
--

INSERT INTO `btvn_bai11` (`ID`, `Title`, `Link`) VALUES
(1, 'test', 'test'),
(2, 'Hà nội trà và mưa.', 'https://nghiahsgs.com/ha-noi-tra-va-mua/'),
(3, 'Những mâu thuẫn', 'https://nghiahsgs.com/nhung-mau-thuan/'),
(4, 'Tâm lý trading, phần khó nhất trong giao dịch', 'https://nghiahsgs.com/tam-ly-khi-giao-dich/'),
(5, 'Là gì khi ubuntu khởi động mãi không vào được', 'https://nghiahsgs.com/la-gi-khi-ubuntu-khoi-dong-mai-khong-vao-duoc/'),
(6, '2 bài học từ người thầy đáng quý của tôi', 'https://nghiahsgs.com/2-bai-hoc-tu-nguoi-thay-dang-quy-cua-toi/'),
(7, 'Review sách : “đi tìm lẽ sống” tác giả “Viktor E. Frankl”', 'https://nghiahsgs.com/review-sach-di-tim-le-song-tac-gia-viktor-e-frankl/'),
(8, 'Tính cùng Nghĩa: 10 năm theo phương pháp đầu tư theo phương pháp trung bình giá', 'https://nghiahsgs.com/tinh-cung-nghia-10-nam-theo-phuong-phap-dau-tu-theo-phuong-phap-trung-binh-gia/'),
(9, 'Vài suy nghĩ về tài chính hiện tại (25 tuổi)', 'https://nghiahsgs.com/vai-suy-nghi-ve-tai-chinh-hien-tai-25-tuoi/'),
(10, 'Ngồi nhớ lại hành trình 7 năm code (part 5, part cuối)', 'https://nghiahsgs.com/ngoi-nho-lai-hanh-trinh-7-nam-code-part-5-part-cuoi/'),
(11, 'Ngồi nhớ lại hành trình 7 năm code (part 4)', 'https://nghiahsgs.com/ngoi-nho-lai-hanh-trinh-7-nam-code-part-4/'),
(12, 'Hà nội trà và mưa.', 'https://nghiahsgs.com/ha-noi-tra-va-mua/'),
(13, 'Những mâu thuẫn', 'https://nghiahsgs.com/nhung-mau-thuan/'),
(14, 'Tâm lý trading, phần khó nhất trong giao dịch', 'https://nghiahsgs.com/tam-ly-khi-giao-dich/'),
(15, 'Là gì khi ubuntu khởi động mãi không vào được', 'https://nghiahsgs.com/la-gi-khi-ubuntu-khoi-dong-mai-khong-vao-duoc/'),
(16, '2 bài học từ người thầy đáng quý của tôi', 'https://nghiahsgs.com/2-bai-hoc-tu-nguoi-thay-dang-quy-cua-toi/'),
(17, 'Review sách : “đi tìm lẽ sống” tác giả “Viktor E. Frankl”', 'https://nghiahsgs.com/review-sach-di-tim-le-song-tac-gia-viktor-e-frankl/'),
(18, 'Tính cùng Nghĩa: 10 năm theo phương pháp đầu tư theo phương pháp trung bình giá', 'https://nghiahsgs.com/tinh-cung-nghia-10-nam-theo-phuong-phap-dau-tu-theo-phuong-phap-trung-binh-gia/'),
(19, 'Vài suy nghĩ về tài chính hiện tại (25 tuổi)', 'https://nghiahsgs.com/vai-suy-nghi-ve-tai-chinh-hien-tai-25-tuoi/'),
(20, 'Ngồi nhớ lại hành trình 7 năm code (part 5, part cuối)', 'https://nghiahsgs.com/ngoi-nho-lai-hanh-trinh-7-nam-code-part-5-part-cuoi/'),
(21, 'Ngồi nhớ lại hành trình 7 năm code (part 4)', 'https://nghiahsgs.com/ngoi-nho-lai-hanh-trinh-7-nam-code-part-4/'),
(22, 'Ngồi nhớ lại hành trình 7 năm code (part 3)', 'https://nghiahsgs.com/ngoi-nho-lai-hanh-trinh-7-nam-code-part-3/'),
(23, 'Ngồi nhớ lại hành trình 7 năm code (part 2)', 'https://nghiahsgs.com/ngoi-nho-lai-hanh-trinh-7-nam-code-part-2/'),
(24, 'Ngồi nhớ lại hành trình 7 năm code (part 1)', 'https://nghiahsgs.com/ngoi-nho-lai-hanh-trinh-7-nam-code-part-1/'),
(25, 'Nay tôi khủng hoảng tí thôi', 'https://nghiahsgs.com/nay-toi-khung-hoang-ti-thoi/'),
(26, 'Cách cài đặt openssh server trên ubuntu', 'https://nghiahsgs.com/cach-cai-dat-openssh-server-tren-ubuntu/'),
(27, 'Command line cài đặt teamview, chrome, telegram trên unbuntu', 'https://nghiahsgs.com/command-line-cai-dat-teamview-chrome-telegram-tren-unbuntu/'),
(28, 'Cách thay đổi màu sắc cho terminal windows', 'https://nghiahsgs.com/cach-thay-doi-mau-sac-cho-terminal-windows/'),
(29, 'Cách xóa các process đang sleep trong mysql server', 'https://nghiahsgs.com/cach-xoa-cac-process-dang-sleep-trong-mysql-server/'),
(30, 'Cách xem có bao nhiêu luồng đang kết nối đến mysql server', 'https://nghiahsgs.com/cach-xem-co-bao-nhieu-luong-dang-ket-noi-den-mysql-server/'),
(31, 'Cách xem phân bố dung lượng file và thư mục trên ubuntu', 'https://nghiahsgs.com/cach-xem-phan-bo-dung-luong-file-va-thu-muc-tren-ubuntu/'),
(32, '2 câu lệnh linux mình hay dùng để xem file visual manager', 'https://nghiahsgs.com/2-cau-lenh-linux-minh-hay-dung-de-xem-file-visual-manager/'),
(33, 'Cách cài đặt golang trên ubuntu 18.04', 'https://nghiahsgs.com/cach-cai-dat-golang-tren-ubuntu-18-04/'),
(34, 'Khắc phục terminal không lên trong ubuntu 20', 'https://nghiahsgs.com/khac-phuc-terminal-khong-len-trong-ubuntu-20/'),
(35, 'Cách xem youtube tivi trên laptop', 'https://nghiahsgs.com/cach-xem-youtube-tivi-tren-laptop/'),
(36, 'Cách cài đặt cloudfare loại trừ wordpress admin', 'https://nghiahsgs.com/cach-cai-dat-cloudfare-loai-tru-wordpress-admin/'),
(37, 'Cách fix The link you followed has expired. trên wordpress', 'https://nghiahsgs.com/cach-fix-the-link-you-followed-has-expired-tren-wordpress/'),
(38, 'Cách cài đặt wp super cache', 'https://nghiahsgs.com/cach-cai-dat-wp-super-cache/'),
(39, 'Cách tạo cron job linux auto reboot', 'https://nghiahsgs.com/cach-tao-cron-job-linux-auto-reboot/'),
(40, 'Cách replace chuỗi trong mysql', 'https://nghiahsgs.com/cach-replace-chuoi-trong-mysql/'),
(41, 'Cách xóa 100 file random trong 1 thư mục', 'https://nghiahsgs.com/cach-xoa-100-file-random-trong-1-thu-muc/'),
(42, 'Cách cài đặt java trên ubuntu', 'https://nghiahsgs.com/cach-cai-dat-java-tren-ubuntu/'),
(43, 'Cách tăng số lượng kết nối đến mysql', 'https://nghiahsgs.com/cach-tang-so-luong-ket-noi-den-mysql/'),
(44, 'Cách để suy nghĩ như một senior developer', 'https://nghiahsgs.com/cach-de-suy-nghi-nhu-mot-senior-developer/'),
(45, 'Cách thêm proxy vào chrome selenium', 'https://nghiahsgs.com/cach-them-proxy-vao-chrome-selenium/'),
(46, 'Cách cài đặt filezilla trên ubuntu', 'https://nghiahsgs.com/cach-cai-dat-filezilla-tren-ubuntu/'),
(47, 'Cách di chuyển số lượng lớn file giữa 2 thư mục', 'https://nghiahsgs.com/cach-di-chuyen-so-luong-lon-file-giua-2-thu-muc/'),
(48, 'Cách đổi tên file hàng loạt dùng bash script', 'https://nghiahsgs.com/cach-doi-ten-file-hang-loat-dung-bash-script/'),
(49, 'Cài đặt và sử dụng docker cơ bản trên ubuntu server', 'https://nghiahsgs.com/cai-dat-va-su-dung-docker-co-ban-tren-ubuntu-server/'),
(50, 'Cách import file sql kích cỡ lớn vào phpmyadmin', 'https://nghiahsgs.com/cach-import-file-sql-kich-co-lon-vao-phpmyadmin/'),
(51, 'Cách cài wordpress trên ubuntu server (ubuntu 20) sử dụng lamp', 'https://nghiahsgs.com/cach-cai-wordpress-tren-ubuntu-server-ubuntu-20-su-dung-lamp/'),
(52, 'Cài đặt nodejs trên ubuntu', 'https://nghiahsgs.com/cai-dat-nodejs-tren-ubuntu/'),
(53, 'Cách cài anaconda trên ubuntu server', 'https://nghiahsgs.com/cach-cai-anaconda-tren-ubuntu-server/'),
(54, 'Cài php.ini để upload file sql lớn lên php admin', 'https://nghiahsgs.com/cai-php-ini-de-upload-file-sql-lon-len-php-admin/'),
(55, 'permission trong linux', 'https://nghiahsgs.com/permission-trong-linux/'),
(56, 'Cách zip và unzip file trên ubuntu', 'https://nghiahsgs.com/cach-zip-va-unzip-file-tren-ubuntu/'),
(57, 'Cách cài gui cho vps', 'https://nghiahsgs.com/cach-cai-gui-cho-vps/'),
(58, 'Cách cài đặt wordpress trên ubuntu', 'https://nghiahsgs.com/cach-cai-dat-wordpress-tren-ubuntu/'),
(59, 'Cách cài nhiều website trên cùng 1 vps', 'https://nghiahsgs.com/cach-cai-nhieu-website-tren-cung-1-vps/'),
(60, 'Cách cài đặt cơ sở dữ liệu mysql , php myadmin trên vps ubuntu server và cho phép kết nối mysql từ xa', 'https://nghiahsgs.com/cach-cai-dat-co-so-du-lieu-mysql-php-myadmin-tren-vps-ubuntu-server-va-cho-phep-ket-noi-mysql-tu-xa/'),
(61, 'Cách fake ip toàn máy bằng ssh', 'https://nghiahsgs.com/cach-fake-ip-toan-may-bang-ssh/'),
(62, 'Cách deploy react app lên vps', 'https://nghiahsgs.com/cach-deploy-react-app-len-vps/'),
(63, 'Cách deploy nodejs lên vps', 'https://nghiahsgs.com/cach-deploy-nodejs-len-vps/'),
(64, '5 lý do tuyệt vời để dậy lúc 5h sáng mỗi ngày', 'https://nghiahsgs.com/5-ly-do-tuyet-voi-de-day-luc-5h-sang-moi-ngay/'),
(65, 'Học cách code, theo cách khó nhất', 'https://nghiahsgs.com/hoc-cach-code-theo-cach-kho-nhat/'),
(66, '6 thói quen của người siêu tự học', 'https://nghiahsgs.com/6-thoi-quen-cua-nguoi-sieu-tu-hoc/'),
(67, '5 thói quen sẽ giúp não bạn luôn ở đạt đỉnh', 'https://nghiahsgs.com/5-thoi-quen-se-giup-nao-ban-luon-o-dat-dinh/'),
(68, 'Cách để chọn sự nghiệp phù hợp nhất với bạn', 'https://nghiahsgs.com/cach-de-chon-su-nghiep-phu-hop-nhat-voi-ban/'),
(69, '25 thứ bạn độc hại bạn cần bỏ qua', 'https://nghiahsgs.com/25-thu-ban-doc-hai-ban-can-bo-qua/'),
(70, 'Làm thế nào để huấn luyện não bạn nhớ được hầu hết mọi thứ', 'https://nghiahsgs.com/lam-the-nao-de-huan-luyen-nao-ban-nho-duoc-hau-het-moi-thu/'),
(71, 'Từ nhà phát triển web đến nhà phát triển phần mềm : tôi đã bắt đầu như thế nào', 'https://nghiahsgs.com/tu-nha-phat-trien-web-den-nha-phat-trien-phan-mem-toi-da-bat-dau-nhu-the-nao/'),
(72, 'Đây là lý do tại sao nhiều nhà khoa học dữ liệu (data scientists) đang bỏ việc', 'https://nghiahsgs.com/day-la-ly-do-tai-sao-nhieu-nha-khoa-hoc-du-lieu-data-scientists-dang-bo-viec/'),
(73, 'Học toán để làm gì ?', 'https://nghiahsgs.com/hoc-toan-de-lam-gi/'),
(74, 'Tôi đã chống lại sự trì hoãn bởi làm điều này', 'https://nghiahsgs.com/toi-da-chong-lai-su-tri-hoan-boi-lam-dieu-nay/'),
(75, 'Những gì tôi đã học trong 6 tháng trong công việc đầu tiên của tôi như một kỹ sư phát triển phần mềm tự học', 'https://nghiahsgs.com/nhung-gi-toi-da-hoc-trong-6-thang-trong-cong-viec-dau-tien-cua-toi-nhu-mot-ky-su-phat-trien-phan-mem-tu-hoc/'),
(76, 'Sức mạnh của việc không làm gì', 'https://nghiahsgs.com/suc-manh-cua-viec-khong-lam-gi/'),
(77, 'Tán gái nhập môn chương 5', 'https://nghiahsgs.com/tan-gai-nhap-mon-chuong-5/'),
(78, 'Tán gái nhập môn chương 4', 'https://nghiahsgs.com/tan-gai-nhap-mon-chuong-4/'),
(79, 'Tán gái nhập môn chương 3', 'https://nghiahsgs.com/tan-gai-nhap-mon-chuong-3/'),
(80, 'Tán gái nhập môn chương 2', 'https://nghiahsgs.com/tan-gai-nhap-mon-chuong-2/'),
(81, 'Tán gái nhập môn chương 1', 'https://nghiahsgs.com/tan-gai-nhap-mon-chuong-1/'),
(82, 'Cách mua và set up 1 vps linux', 'https://nghiahsgs.com/cach-mua-va-set-up-1-vps-linux/'),
(83, 'TOOL AUTO TẠO ACC ZINGME.VN V1.0 (NOT PASS CAPCHA)', 'https://nghiahsgs.com/tool-auto-tao-acc-zingme-vn-v1-0-not-pass-capcha/'),
(84, 'SHARE MÃ NGUỒN BIVISE SSH CLIENT VIẾT BẰNG AUTOIT', 'https://nghiahsgs.com/share-ma-nguon-bivise-ssh-client-viet-bang-autoit/'),
(85, 'LỆNH CMD ĐỂ TẮT BẬT DCOM', 'https://nghiahsgs.com/lenh-cmd-de-tat-bat-dcom/'),
(86, 'API CỦA MAIL 10P CHO AE LÀM TOOL CẦN MAIL ẢO LIÊN TỤC', 'https://nghiahsgs.com/api-cua-mail-10p-cho-ae-lam-tool-can-mail-ao-lien-tuc/'),
(87, 'Viết cho tuổi trẻ đã và đang dữ dội', 'https://nghiahsgs.com/viet-cho-tuoi-tre-da-va-dang-du-doi/'),
(88, 'matplot lib cheet sheet', 'https://nghiahsgs.com/matplot-lib-cheet-sheet/'),
(89, 'Hỏi: Vài điều mà chỉ những người từng lập trình 20-50 năm mới biết là gì?', 'https://nghiahsgs.com/hoi-vai-dieu-ma-chi-nhung-nguoi-tung-lap-trinh-20-50-nam-moi-biet-la-gi/'),
(90, 'THÍCH VÀ ĐAM MÊ', 'https://nghiahsgs.com/thich-va-dam-me/'),
(91, 'Tại sao việt nam mãi nghèo', 'https://nghiahsgs.com/tai-sao-viet-nam-mai-ngheo/'),
(92, 'Mark down cơ bản', 'https://nghiahsgs.com/mark-down-co-ban/'),
(93, 'Tóm gọn cuốn sách nghĩ giàu làm giàu', 'https://nghiahsgs.com/tom-gon-cuon-sach-nghi-giau-lam-giau/'),
(94, 'Hướng dẫn cơ bản cách dùng github', 'https://nghiahsgs.com/huong-dan-co-ban-cach-dung-github/'),
(95, 'Ai sẽ làm thay đổi cuộc đời tôi', 'https://nghiahsgs.com/ai-se-lam-thay-doi-cuoc-doi-toi/'),
(96, 'Free Data Science learning resources', 'https://nghiahsgs.com/free-data-science-learning-resources/'),
(97, '[Khát vọng tuổi trẻ] 7 Điều tuổi trẻ nên có', 'https://nghiahsgs.com/khat-vong-tuoi-tre-7-dieu-tuoi-tre-nen-co/'),
(98, 'Quan niệm của Đông y về giờ “vàng” thức dậy mỗi sáng: Nếu dậy sai giờ, cả ngày mệt mỏi!', 'https://nghiahsgs.com/quan-niem-cua-dong-y-ve-gio-vang-thuc-day-moi-sang-neu-day-sai-gio-ca-ngay-met-moi/'),
(99, 'ĐỊNH LUẬT TRE', 'https://nghiahsgs.com/dinh-luat-tre/'),
(100, 'Chia sẻ bộ Office 2010 win 10', 'https://nghiahsgs.com/chia-se-bo-office-2010/'),
(101, 'TÁN GÁI ĐẠI CƯƠNG chương 2', 'https://nghiahsgs.com/tan-gai-dai-cuong-chuong-2/'),
(102, 'TÁN GÁI ĐẠI CƯƠNG chương 1', 'https://nghiahsgs.com/tan-gai-dai-cuong-chuong-1/'),
(103, '15 WEB NÂNG CẤP NÃO BỘ ', 'https://nghiahsgs.com/15-web-nang-cap-nao-bo/'),
(104, '[ Python cơ bản ] Bài 0 : Lời nói đầu', 'https://nghiahsgs.com/python-co-ban-bai-0-loi-noi-dau/'),
(105, 'Hướng thêm bình luận facebook vào bình luận website', 'https://nghiahsgs.com/huong-them-binh-luan-facebook-vao-binh-luan-website/'),
(106, 'CÓ TÂM LÝ KẺ MẠNH NHƯ LOÀI SÓI: BẠN ĐÃ THẮNG 90% TRẬN CHIẾN CUỘC ĐỜI', 'https://nghiahsgs.com/co-tam-ly-ke-manh-nhu-loai-soi-ban-da-thang-90-tran-chien-cuoc-doi/'),
(107, 'CÔNG THỨC KHÔNG TRÌ HOÃN: 4 GIÂY – 2 PHÚT – 72 GIỜ VÀ 21 NGÀY', 'https://nghiahsgs.com/cong-thuc-khong-tri-hoan-4-giay-2-phut-72-gio-va-21-ngay/'),
(108, 'NGƯỜI VIỆT QUÁ LƯỜI BIẾNG NHƯNG HAM ĐỔI ĐỜI BẰNG CÁCH ĐỎ ĐEN LIỀU MẠNG', 'https://nghiahsgs.com/nguoi-viet-qua-luoi-bieng-nhung-ham-doi-doi-bang-cach-do-den-lieu-mang/'),
(109, 'KHI BẠN THAY ĐỔI THẾ GIỚI BÊN TRONG, THẾ GIỚI BÊN NGOÀI CŨNG THAY ĐỔI', 'https://nghiahsgs.com/khi-ban-thay-doi-the-gioi-ben-trong-the-gioi-ben-ngoai-cung-thay-doi/'),
(110, '1000 TỪ VỰNG TIẾNG ANH QUA THƠ LỤC BÁT (TÀI LIỆU HIẾM)', 'https://nghiahsgs.com/1000-tu-vung-tieng-anh-qua-tho-luc-bat-tai-lieu-hiem/'),
(111, 'Ví dụ code C in trái tim ra màn hình console', 'https://nghiahsgs.com/vi-du-code-c-in-trai-tim-ra-man-hinh-console/'),
(112, 'Thuật toán sắp xếp đơn giản trong autoit', 'https://nghiahsgs.com/thuat-toan-sap-xep-don-gian-trong-autoit/'),
(113, 'Khai bút blog nghiahsgs', 'https://nghiahsgs.com/khai-but-blog-nghiahsgs/');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `btvn_bai11`
--
ALTER TABLE `btvn_bai11`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `btvn_bai11`
--
ALTER TABLE `btvn_bai11`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

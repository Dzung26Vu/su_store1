-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2022 lúc 06:56 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `su_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_username` text NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_address` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_username`, `admin_pass`, `admin_image`, `admin_address`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Call me Su', 'Su@gmail.com', 'CallmeSupls', '4FD3D0F47E7A98FF5B585D15025BAC59BF53908F', 'AnhTuyet0706.jpg', 'VN', 'Không có việc gì là không làm được, khó khăn nào cũng vượt qua.<br>Không có việc gì là không làm được, khó khăn nào cũng vượt qua.<br>Không có việc gì là không làm được, khó khăn nào cũng vượt qua.<br>Cái gì quan trọng nói 3 lần !!', '0389999999', 'IT at HUMG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Phục vụ tốt nhất', 'Phục vụ tốt nhất HUMG :)'),
(2, 'Giá tốt nhất', 'Mua hàng được cho thêm tiền không cần lãi'),
(3, 'Hàng chính hãng', 'Hàng tự may, kể cả sợi chỉ :)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Nam', 'Loại quần áo nam, hàng xịn'),
(2, 'Nữ', 'Loại quần áo nữ, hàng xịn'),
(3, 'Trẻ em', 'Loại quần áo trẻ nhỏ, hàng xịn'),
(4, 'Khác', 'Và nhiều loại khác nữa :)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_username` text NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_contact`, `customer_username`, `customer_pass`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'Call me Su', 'Test1@gmail.com', '0389999999', 'callmesupls', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', 'Học viện Quốc Phòng, Hoàng Quốc Việt,\nNghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam ', 'AnhConGai1.jpg', '127.0.0.1'),
(2, 'Iam Su', 'suyeuqdndvn@gmail.com', '0389999998', 'callmesu', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', 'Học viện Quốc Phòng, Hoàng Quốc Việt,\nNghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam ', 'Kotlin.jpg', '127.0.0.1'),
(3, 'Su is me', 'Test2@gmail.com', '0389999997', 'callmesu1502', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', 'Học viện Quốc Phòng, Hoàng Quốc Việt,\nNghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam ', 'Logo_CNTT_HUMG.jpg', '::1'),
(4, 'Tớ là Su ', 'Test3@gmail.com', '0389999996', 'callmesupls1502', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', 'No Address', 'Logo_HUMG.jpg', '127.0.0.1'),
(5, 'CallmeSupls Test', 'Test4@gmail.com', '0389999995', 'CallmeSuplsTest', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', 'No Address', 'CoGiaoVatLy.jpg', '127.0.0.1'),
(6, 'CallmeSupls Test Register', 'bephanhxinhgai@gmail.com', '0389999994', 'CallmeSuplsTestRegister', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', 'No Address Test Register', 'User.jpg', '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 1, 673500, 389912659, 3, 'Nhỏ', '2022-11-25', 'pending'),
(2, 1, 1396000, 1188719202, 5, 'Nhỏ', '2022-11-25', 'Complete'),
(3, 1, 280000, 961256447, 1, 'Nhỏ', '2022-11-26', 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `cardholder_name` text NOT NULL,
  `card_number` int(10) NOT NULL,
  `expiration_date` text NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `cardholder_name`, `card_number`, `expiration_date`, `payment_date`) VALUES
(1, 1597909377, 558400, 'MBank (VISA)', 'CALL ME SU', 999999999, '12/30', '25/11'),
(2, 1188719202, 1396000, 'MBank (VISA)', 'CALL ME SU', 999999999, '12/30', '25/11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 1, 389912659, '4', 3, 'Nhỏ', 'Pending'),
(2, 1, 1188719202, '1', 5, 'Nhỏ', 'Complete'),
(3, 1, 961256447, '8', 1, 'Nhỏ', 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(1, 1, 2, '2022-11-25 03:35:10', 'Áo phông nữ có hình in', 'p1_1.jpg', 'p1_2.jpg', 'p1_3.jpg', 279200, 'Áo phông nữ có hình in', '<p>Sản phẩm 1</p>', 'new', 0),
(2, 4, 2, '2022-11-24 17:26:43', 'Chân váy đuôi cá len trơn cạp chun', 'p2_1.jpg', 'p2_2.jpg', 'p2_3.jpg', 290000, 'Chân váy Nữ', '<p>Test 123</p>', 'sale', 200000),
(3, 2, 1, '2022-11-25 02:54:00', 'Quần jeans nam', 'p3_1(1).jpg', 'p3_2.jpg', 'p3_3.jpg', 479200, 'Quần jeans nam', '<p>Test sản phẩm 3</p>', 'sale', 450999),
(4, 4, 2, '2022-11-25 03:26:36', 'Váy liền nữ', 'p4_1.jpg', 'p4_2.jpg', 'p4_3.jpg', 224500, 'Váy liền nữ', '<p>sp4</p>', 'new', 0),
(5, 1, 1, '2022-11-25 07:01:21', 'Áo khoác chống nắng nam', 'p5_1.jpg', 'p5_2.jpg', 'p5_3.jpg', 279300, 'Áo khoác chống nắng nam', '<p>Sản phẩm 5</p>', 'sale', 250000),
(6, 5, 2, '2022-11-25 07:09:44', 'JUMP trễ vai tay bồng hoa nổi dây rút eo', 'p6_1.jpg', 'p6_2.jpg', 'p6_3.jpg', 320000, 'JUMP trễ vai tay bồng hoa nổi dây rút eo', '<p>Sản phẩm 6</p>', 'new', 0),
(7, 5, 2, '2022-11-25 07:14:20', 'JUMP hoa nhí tay bồng', 'p7_1.jpg', 'p7_2.jpg', 'p7_3.jpg', 200000, 'JUMP hoa nhí tay bồng', '<p>Sản phẩm 7</p>', 'sale', 150000),
(8, 6, 2, '2022-11-25 11:39:11', 'Set 3 đồ áo sơ mi kèm chân váy và yếm dây caro', 'p8_1.jpg', 'p8_2.jpg', 'p8_3.jpg', 280000, 'Set áo sơ mi chân váy', '<p>Sản phẩm 7</p>', 'new', 0),
(9, 2, 1, '2022-11-25 12:08:42', 'Quần jeans nam', 'p9_1.jpg', 'p9_2.jpg', 'p9_3.jpg', 479200, 'Quần jeans nam', '<p>Sản phẩm 9</p>', 'sale', 450999),
(10, 1, 3, '2022-11-25 12:14:27', 'Áo khoác gió bé trai', 'p10_1.jpg', 'p10_2.jpg', 'p10_3.jpg', 299000, 'Áo khoác trai', '<p>Sản phẩm 10</p>', 'sale', 200000),
(11, 4, 3, '2022-11-26 03:51:45', 'Váy liền bé gái', 'p11_1.jpg', 'p11_2.jpg', 'p11_3.jpg', 279300, 'Váy liền gái nữ', '<p>Sản phẩm 11</p>', 'sale', 270999),
(12, 6, 2, '2022-11-26 19:12:08', 'Set áo khoác khoá kéo có mũ kèm quần sooc', 'p12_1.jpg', 'p12_2.jpg', 'p12_3.jpg', 260000, 'Set áo khoác quần', '<p>Sản phẩm 12</p>', 'new', 0),
(13, 3, 2, '2022-11-26 19:32:49', 'Túi da form to dáng trơn', 'p13_1.jpg', 'p13_2.jpg', 'p13_3.jpg', 350000, 'Túi da', '<p>Sản phẩm 13</p>', 'new', 0),
(14, 6, 2, '2022-11-26 19:38:45', 'Set áo dài nhung lì hoa thêu tay lỡ kèm quần', 'p14_1.jpg', 'p14_2.jpg', 'p14_3.jpg', 330000, 'Set áo dài', '<p>Sản phẩm 14</p>', 'sale', 300000),
(15, 6, 2, '2022-11-26 19:46:06', 'Set áo dài bèo vai tay voan tầng kèm quần', 'p15_1.jpg', 'p15_2.jpg', 'p15_3.jpg', 350000, 'Set áo dài', '<p>Sản phẩm 15</p>', 'new', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Áo', 'Áo cả nam và nữ đẹp nhất'),
(2, 'Quần', 'Quần cả nam và nữ đẹp nhất'),
(3, 'Giày và phụ kiện', 'Giày và phụ kiện đẹp nhất'),
(4, 'Váy và chân váy', 'Váy và chân váy đẹp nhất'),
(5, 'JUMP', 'Bộ JUMP đẹp nhất'),
(6, 'SET', 'SET đẹp nhất');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sender`
--

CREATE TABLE `sender` (
  `sender_id` int(10) NOT NULL,
  `sender_c_name` varchar(255) NOT NULL,
  `sender_c_email` varchar(255) NOT NULL,
  `sender_subject` varchar(255) NOT NULL,
  `sender_message` varchar(255) NOT NULL,
  `sender_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sender`
--

INSERT INTO `sender` (`sender_id`, `sender_c_name`, `sender_c_email`, `sender_subject`, `sender_message`, `sender_date`) VALUES
(1, 'Call me Su', 'test@gmail.com', 'Đánh giá về shop Su Store', 'Shop Su Store quá tuyệt vời, 10 điểm :))', '2022-11-27 01:22:17'),
(2, 'Test xoá kiến', 'TestXoaYKien@gmail.com', 'Đánh giá về shop Su Store', 'Shop Su Store quá tuyệt vời, 10 điểm :))', '2022-11-27 01:46:49'),
(3, 'Test 1', 'test1@gmail.com', 'Đánh giá về shop', 'Shop Su Store quá tuyệt vời, 10+1 điểm :))', '2022-11-27 01:47:36'),
(4, 'Test 2', 'test2@gmail.com', 'Đánh giá về shop', 'Shop Su Store quá tuyệt vời, 10+2 điểm :))', '2022-11-27 01:47:57'),
(5, 'Test 3', 'test3@gmail.com', 'Đánh giá về shop Su Store', 'Shop Su Store quá tuyệt vời, 10 điểm :))', '2022-11-27 01:48:30'),
(6, 'Test 4', 'test4@gmail.com', 'Đánh giá về shop Su Store', 'Shop Su Store quá tuyệt vời, 10+3 điểm :))', '2022-11-27 01:49:03'),
(7, 'Test 5', 'test5@gmail.com', 'Đánh giá về shop', 'Shop Su Store quá tuyệt vời, 10+4 điểm :))', '2022-11-27 01:49:44'),
(8, 'Call me Su', 'suyeuqdndvn@gmail.com', 'Test gửi mail xem có kiểm tra về hộp thư hay không phần tiêu đề', 'Test gửi mail xem có kiểm tra về hộp thư hay không phần nội dung', '2022-11-27 13:25:16'),
(9, 'Su', 'suyeuqdndvn@gmail.com', 'Đánh giá về shop Su Store test gửi mail', 'Shop Su Store quá tuyệt vời, 10 điểm :))', '2022-11-27 13:27:45'),
(10, 'Test 1', 'test10@gmail.com', 'Đánh giá về shop Su Store', 'Shop Su Store quá tuyệt vời, 10 điểm :))', '2022-11-27 13:45:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-1.jpg'),
(2, 'Slide number 2', 'slide-2.jpg'),
(3, 'Slide number 3', 'slide-3.jpg'),
(4, 'Slide number 4', 'slide-4.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `sender`
--
ALTER TABLE `sender`
  ADD PRIMARY KEY (`sender_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sender`
--
ALTER TABLE `sender`
  MODIFY `sender_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

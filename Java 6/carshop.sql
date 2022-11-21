-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 30, 2022 lúc 06:33 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `carshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account`, `date_create`, `password`, `customer_id`) VALUES
('admin', '2022-08-12 23:21:22', '$2a$10$MGp4FaO.M3lX012MPThozu4xnW5XaqTlbOVq5iQqrATtpGO1/crtK', 'KH6094'),
('user', '2022-08-09 11:59:32', '$2a$10$rOYVsl41RIGj/cyCr5fbc.TCnd3NRPUftDod.X5L1g41QjUq21GQm', 'KH242');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_role`
--

CREATE TABLE `account_role` (
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account_role`
--

INSERT INTO `account_role` (`account`, `id_role`) VALUES
('admin', 2),
('user', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Ford'),
(2, 'Vinfast'),
(3, 'BWM'),
(4, 'AUDI'),
(5, 'TOYOTA'),
(8, 'Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `code_product`
--

CREATE TABLE `code_product` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `code_product`
--

INSERT INTO `code_product` (`id`, `code`, `product_id`, `status_id`) VALUES
(2, 43391, 'SP3910', 1),
(3, 49353, 'SP3910', 1),
(4, 44609, 'SP3910', 1),
(5, 56969, 'SP3910', 1),
(6, 91447, 'SP3910', 1),
(7, 11644, 'SP3910', 1),
(8, 73120, 'SP3910', 1),
(9, 32165, 'SP3910', 1),
(10, 26201, 'SP3910', 1),
(11, 35307, 'SP3910', 1),
(12, 88151, 'SP9555', 1),
(13, 40456, 'SP9555', 1),
(14, 22669, 'SP9555', 1),
(15, 11760, 'SP9555', 1),
(16, 25763, 'SP9555', 1),
(17, 73179, 'SP9555', 1),
(18, 75197, 'SP9555', 1),
(19, 68626, 'SP9555', 1),
(20, 19485, 'SP9555', 1),
(21, 39803, 'SP9555', 1),
(22, 51245, 'SP8362', 1),
(23, 20047, 'SP8362', 1),
(24, 83739, 'SP8362', 1),
(25, 19199, 'SP8362', 1),
(26, 46154, 'SP8362', 1),
(27, 71775, 'SP8362', 1),
(28, 74342, 'SP8362', 1),
(29, 76152, 'SP8362', 1),
(30, 70006, 'SP8362', 1),
(31, 98367, 'SP8362', 1),
(32, 21355, 'SP6708', 1),
(33, 33495, 'SP6708', 1),
(34, 44713, 'SP6708', 1),
(35, 75387, 'SP6708', 1),
(36, 20213, 'SP6708', 1),
(37, 61192, 'SP6708', 1),
(38, 39066, 'SP6708', 1),
(39, 46655, 'SP6708', 1),
(40, 96876, 'SP6708', 1),
(41, 18867, 'SP6708', 1),
(42, 90407, 'SP6218', 1),
(43, 23598, 'SP6218', 1),
(44, 97405, 'SP6218', 1),
(45, 79412, 'SP6218', 1),
(46, 40499, 'SP6218', 1),
(47, 22375, 'SP6218', 1),
(48, 68528, 'SP6218', 1),
(49, 67504, 'SP6218', 1),
(50, 49281, 'SP6218', 1),
(51, 53389, 'SP6218', 1),
(52, 41195, 'SP6218', 1),
(53, 46419, 'SP6218', 1),
(54, 70155, 'SP6218', 1),
(55, 29650, 'SP6218', 1),
(56, 70506, 'SP6218', 1),
(57, 29391, 'SP6218', 1),
(58, 89870, 'SP6218', 1),
(59, 10401, 'SP6218', 1),
(60, 12724, 'SP6218', 1),
(61, 35741, 'SP6218', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_card` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id_customer`, `address`, `email`, `id_card`, `name_customer`, `phone`) VALUES
('KH242', 'Phú Thọ', 'tung@gmail.com', '011111111', 'Tung', '01222222'),
('KH2964', 'Trống', 'hphihung.3001@gmail.com', 'Trống', 'Hoàng Phi Hùng', '0387490099'),
('KH6094', '1', 'hphihung.3001@gmail.com', '1', 'Hoàng Phi Hùng', '00000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dto_customer`
--

CREATE TABLE `dto_customer` (
  `id_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_card` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passwork` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_card` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_employee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salary` double NOT NULL,
  `position_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`orders_id`, `address`, `order_date`, `phone`, `total`, `user_name`, `account`, `employee_id`, `id_status`) VALUES
(2, 'Phú Thọ', '2022-08-13 10:33:44', '01222222000', 100000000, 'BWM', 'user', NULL, 2),
(3, 'Phú Thọ', '2022-08-13 10:34:37', '0122222200', 1000000000, 'Hoàng Phi Hùng', 'user', NULL, 2),
(4, 'Phú Thọ', '2022-08-13 12:17:38', '01222222111', 100000000, 'Hoàng Phi Hùng', 'user', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`) VALUES
(2, 'SP3910', 2),
(3, 'SP3910', 20),
(4, 'SP3910', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `position`
--

INSERT INTO `position` (`position_id`, `position_name`) VALUES
(1, 'Cao Đẳng'),
(2, 'Đại Học'),
(3, 'Sau Đại Học'),
(4, 'Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `trademark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accounts_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `detail`, `product_image`, `product_name`, `product_price`, `product_quantity`, `trademark`, `accounts_id`, `category_id`) VALUES
('SP3910', 'khong', 'tải xuống.png', 'BWM', 50000000, 48, 'BWM', NULL, 3),
('SP6218', 'a', 'JIL1nTpYNl.png', 'Xe chu tich', 1000000000000, 20, 'ToYoTa', NULL, 5),
('SP6708', 'a', 'xe-peugeot-rcz-2020-e1598426456936.png', 'Xe Bay', 11111111111, 10, 'AUDI', NULL, 4),
('SP8362', 'a', 'stIcbNoHJF.png', 'Xe Co', 10000000, 10, 'Ford', NULL, 1),
('SP9555', 'a', 'imager_6_33779_700.png', 'Porcher', 50000, 10, 'VinFas', NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id_role`, `role_name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_account_set`
--

CREATE TABLE `role_account_set` (
  `role_id_role` int(11) NOT NULL,
  `account_set_account` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Available'),
(2, 'Used');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_contract`
--

CREATE TABLE `status_contract` (
  `id_status` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status_contract`
--

INSERT INTO `status_contract` (`id_status`, `status`) VALUES
(1, 'Đang Chờ'),
(2, 'Đã Duyệt'),
(3, 'Đang Giao');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account`),
  ADD KEY `FKh8sapq6led27h1cf55ceslx3` (`customer_id`);

--
-- Chỉ mục cho bảng `account_role`
--
ALTER TABLE `account_role`
  ADD PRIMARY KEY (`account`,`id_role`),
  ADD KEY `FKmr3obsyrlhd6d7sjvpweo7x96` (`id_role`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `code_product`
--
ALTER TABLE `code_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcob20c619lcw9fjjvxkf2j7ng` (`product_id`),
  ADD KEY `FK31hnmgih5nkud4rqls360c46k` (`status_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customer`);

--
-- Chỉ mục cho bảng `dto_customer`
--
ALTER TABLE `dto_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbc8rdko9o9n1ri9bpdyxv3x7i` (`position_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `FKp63q1597oerk74frfy5ilvww` (`account`),
  ADD KEY `FKog5v9ga2g2ukytypn4ocip6b4` (`employee_id`),
  ADD KEY `FK5nowolbyn0c8nhu7e8jdfo86j` (`id_status`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `FKhnfgqyjx3i80qoymrssls3kno` (`product_id`);

--
-- Chỉ mục cho bảng `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKo28votjsvu3edy8y2nxveny2r` (`accounts_id`),
  ADD KEY `FKowomku74u72o6h8q0khj7id8q` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Chỉ mục cho bảng `role_account_set`
--
ALTER TABLE `role_account_set`
  ADD PRIMARY KEY (`role_id_role`,`account_set_account`),
  ADD KEY `FKqtgpdem5w9kiiqnl6juahw2mb` (`account_set_account`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `status_contract`
--
ALTER TABLE `status_contract`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `code_product`
--
ALTER TABLE `code_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `FKh8sapq6led27h1cf55ceslx3` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id_customer`);

--
-- Các ràng buộc cho bảng `account_role`
--
ALTER TABLE `account_role`
  ADD CONSTRAINT `FK6ep9g3o5c83rf90e21n80al9g` FOREIGN KEY (`account`) REFERENCES `account` (`account`),
  ADD CONSTRAINT `FKmr3obsyrlhd6d7sjvpweo7x96` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);

--
-- Các ràng buộc cho bảng `code_product`
--
ALTER TABLE `code_product`
  ADD CONSTRAINT `FK31hnmgih5nkud4rqls360c46k` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FKcob20c619lcw9fjjvxkf2j7ng` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FKbc8rdko9o9n1ri9bpdyxv3x7i` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK5nowolbyn0c8nhu7e8jdfo86j` FOREIGN KEY (`id_status`) REFERENCES `status_contract` (`id_status`),
  ADD CONSTRAINT `FKog5v9ga2g2ukytypn4ocip6b4` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKp63q1597oerk74frfy5ilvww` FOREIGN KEY (`account`) REFERENCES `account` (`account`);

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `FKhnfgqyjx3i80qoymrssls3kno` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKl5mnj9n0di7k1v90yxnthkc73` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKo28votjsvu3edy8y2nxveny2r` FOREIGN KEY (`accounts_id`) REFERENCES `account` (`account`),
  ADD CONSTRAINT `FKowomku74u72o6h8q0khj7id8q` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Các ràng buộc cho bảng `role_account_set`
--
ALTER TABLE `role_account_set`
  ADD CONSTRAINT `FKhxfpcftfbxcqr8p7rw6sloiik` FOREIGN KEY (`role_id_role`) REFERENCES `role` (`id_role`),
  ADD CONSTRAINT `FKqtgpdem5w9kiiqnl6juahw2mb` FOREIGN KEY (`account_set_account`) REFERENCES `account` (`account`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

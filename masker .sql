-- phpMyAdmin SQL Dump
-- version 5.1.1deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Jan 2022 pada 18.10
-- Versi server: 10.5.12-MariaDB-1
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masker`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` tinytext NOT NULL,
  `cust_cname` tinytext NOT NULL,
  `cust_email` tinytext NOT NULL,
  `cust_phone` tinytext NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` tinytext NOT NULL,
  `cust_state` tinytext NOT NULL,
  `cust_zip` tinytext NOT NULL,
  `cust_b_name` tinytext NOT NULL,
  `cust_b_cname` tinytext NOT NULL,
  `cust_b_phone` tinytext NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` tinytext NOT NULL,
  `cust_b_state` tinytext NOT NULL,
  `cust_b_zip` tinytext NOT NULL,
  `cust_s_name` tinytext NOT NULL,
  `cust_s_cname` tinytext NOT NULL,
  `cust_s_phone` tinytext NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` tinytext NOT NULL,
  `cust_s_state` tinytext NOT NULL,
  `cust_s_zip` tinytext NOT NULL,
  `cust_password` tinytext NOT NULL,
  `cust_token` tinytext NOT NULL,
  `cust_datetime` tinytext NOT NULL,
  `cust_timestamp` tinytext NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(4, 'firda', '', 'firda@gmail.com', '09655678918', 228, 'singosari', 'Malang', 'Jawa', '3456', 'Devi', 'dev', '096556789', 101, 'jl gatau aku', 'Malang', 'Jawa', '3456', 'Devi', 'dev', '096556789', 101, 'jl gatau aku', 'Malang', 'Jawa', '3456', 'e10adc3949ba59abbe56e057f20f883e', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1),
(5, 'desi satu', '', 'desi@gmail.com\r\n', '49857243857', 228, 'address', 'jogja', 'malaioboro', '0000', 'Hammad Hassan', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', 'Hammad Hassan', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', '9794cb7c1989a7d0d36a62426cb170e4', '92dd269f6494db9e8e8ab28c528bbe80', '2018-04-23 10:06:51', '1524506811', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` tinytext NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Krim', 1),
(2, 'Moisturaizer', 1),
(4, 'Cleansing oil', 2),
(5, 'Cleansing foam', 2),
(6, 'Serum', 3),
(7, 'Toner', 3),
(8, 'Cleansing foam', 4),
(12, 'Feel on Mask', 6),
(13, 'Mask sheet', 6),
(26, 'Cleansing foam', 10),
(27, 'Toner', 10),
(28, 'Peel Of Mask', 11),
(29, 'Mask sheet', 11),
(30, 'Krim pagi', 12),
(31, 'Mask sheet', 12),
(47, 'Micelar Water', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` tinytext NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'Rp.'),
(2, 'Search Product', 'search Produk'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Login Customer'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Registrasi'),
(16, 'Customer Registration', 'Registrai Customer'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'Lihat Keranjang'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Histori Order'),
(26, 'Order Details', 'Detail Order'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Pilih pengiriman'),
(34, 'Select Payment Method', 'Pilih'),
(35, 'Select a Method', 'Pilih'),
(36, 'PayPal', 'Antareja'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'J&T'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Bayar Sekarang'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Kategori'),
(50, 'Category:', 'Kategori :'),
(51, 'All Products Under', 'Semua Produk Dari'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Harga'),
(55, 'Quantity', 'Jumlah'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Nama'),
(103, 'Company Name', 'Nama Panjang'),
(104, 'Phone Number', 'No Telepone'),
(105, 'Address', 'Alamat'),
(106, 'Country', 'Negara'),
(107, 'City', 'Kota'),
(108, 'State', 'Jalan'),
(109, 'Zip Code', 'Kode Pos'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Terimkasih Pesanan Anda Berhasil Dan Sedang Diproses'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'Lihat Produk Serupa'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` tinytext NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Krim pelembab', 1),
(2, 'Pembersih wajah', 1),
(3, 'Skincare', 2),
(4, 'Cleansher', 2),
(6, 'Face Mask', 2),
(10, 'Pembersih', 3),
(11, 'Masker wajah', 3),
(12, 'Krim pelembab', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` tinytext NOT NULL,
  `quantity` tinytext NOT NULL,
  `unit_price` tinytext NOT NULL,
  `payment_id` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `quantity`, `unit_price`, `payment_id`) VALUES
(50, 81, 'Black Wool Beanie & Bobble Hat For Unisex', '1', '1', '1524666526'),
(52, 78, 'Blouse for Women', '2', '115.000', '1641584425'),
(54, 82, 'Clear-C Peeling Mask ', '1', '100.000', '1641618227');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` tinytext NOT NULL,
  `customer_email` tinytext NOT NULL,
  `payment_date` tinytext NOT NULL,
  `txnid` tinytext NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` tinytext NOT NULL,
  `card_cvv` tinytext NOT NULL,
  `card_month` tinytext NOT NULL,
  `card_year` tinytext NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` tinytext NOT NULL,
  `payment_status` tinytext NOT NULL,
  `shipping_status` tinytext NOT NULL,
  `payment_id` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(46, 5, 'Hammad Hassan', 'mc170200216@vu.edu.pk', '2018-04-25 18:28:46', '', 1, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1524666526'),
(49, 4, 'Firda', 'firda@gmail.com', '2022-01-08 09:03:47', '', 100, '', '', '', '', '30801', 'Bank Deposit', 'Complete', 'Complete', '1641618227');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` tinytext NOT NULL,
  `photo` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` tinytext NOT NULL,
  `p_old_price` tinytext NOT NULL,
  `p_current_price` tinytext NOT NULL,
  `p_qty` int(10) NOT NULL,
  `foto` tinytext NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `foto`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(78, 'Real Nature Acaiberry Mask Sheet', '', '115.000', 8, 'produk6.png\r\n', '<p><font color=\"#999999\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"font-size: 16px;\">1.bersihakan wajah dan menggunakan toner,</span></font></p><p><font color=\"#999999\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"font-size: 16px;\">2.letakkan sheet mask di wajah sesuaikan dengan kontur wajah (Hindari area mata dan bibir).</span></font></p><p><font color=\"#999999\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"font-size: 16px;\">3.Setelah 10-20 menit lepas sheet mask kemudian tap-tap dengan lembut untuk meningkatkan penyerapan produk yang tersisa ke dalam kulit.</span></font><br></p>', '<p>Sheet mask yang mengandung ekstrak Acai berry untuk menjaga dan merawat vitalitas kulit wajah.<br></p>', '<span style=\"color: rgb(153, 153, 153); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Water, Dipropylene Glycol, Cetyl Ethylhexanoate, Glycerin, Butylene Glycol, Paeonia Suffruticosa Root Extract, Centella Asiatica Extract, 1,2-Hexanediol, Chamomilla Recutita (Matricaria) Flower Extract, Glyceryl Caprylate, Ethylhexylglycerin, Glyceryl Stearate, PEG-100 Stearate, Polyglyceryl-3 Methylglucose Distearate, Dimethicone, Carbomer, Hydroxyethylcellulose, Euterpe Oleracea Fruit Extract, Phenoxyethanol, Potassium Hydroxide, Adenosine, Fragrance, Disodium EDTA, Alcohol, Gentiana Lutea Root Extract, Achillea Millefolium Extract, Artemisia Absinthium Extract, Arnica Montana Flower Extract, Propylene Glycol, Potassium Sorbate.</span><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>', '<p>Standard Terms & Conditions<br></p>', '<p>Standard Return Policy</p>', 42, 0, 1, 29),
(81, 'Clear-C Peeling Mask', '250.000', '100.000', 9, 'produk2.png', '<p>STEP 1</p><p>Aplikasikan setelah membersihkan wajah sebanyak 2-3 kali seminggu.</p><p>STEP 3</p><p>Setelah pemijatan, seka kulit wajah dengan lembut menggunakan tisu dan bersihkan menggunakan air.</p><p>STEP 2<br></p><p>Pada saat pengaplikasian pijat lembut kulit wajah dimulai dari area yang memiliki banyak sel-sel kulit mati dan perlahan ke arah luar sesuai dengan arah tekstur kulit wajah.</p><p>STEP 4<br></p><p>Lanjutkan dengan menggunakan skincare rutin Anda.</p>', 'Peeling mask yang dibersihkan setelah pemakaian, mengurangi sel-sel kulit mati dan membuat kulit wajah terasa lembut dan lembap dengan kandungan biji buah Strawberry dan butiran konjac yang lembut\r\n\r\n\r\nRangkaian LANEIGE Clear-C Peeling membuat tekstur kulit wajah terasa lembut dengan kandungan tumbuh-tumbuhan dari, malic acid AHA. Clear-C serum and peeling mask yang mengandung malic acid AHA (berasal dari tumbuhan sugar maple, batang tebu, jeruk, lemon, dan bilberi).\r\nKandungan ini mengurangi sel-sel kulit mati yang kasar namun tetap menjaga agar lapisan terluar kulit (cornified layer) agar tetap terasa sehat dan elastis.', '<p><br></p>', '<p><br></p>', '<p><br></p>', 44, 1, 1, 1),
(82, 'Klairs Gentle Black Sugar Polish 110gr', '250.000', '100.000', 7, 'produk1.jpg', '<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \"open sans\", tahoma, sans-serif; font-size: 14px;\">Cara Penggunaan :</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \"open sans\", tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \"open sans\", tahoma, sans-serif; font-size: 14px;\">1. Basahi wajah, lalu gunakan Black Sugar Polish pada wajah sambil di pijat perlahan.</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \"open sans\", tahoma, sans-serif; font-size: 14px;\"><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \"open sans\", tahoma, sans-serif; font-size: 14px;\">atau (bagi kulit sensitif)</span><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \"open sans\", tahoma, sans-serif; font-size: 14px;\">Basahi wajah, lalu gunakan Black Sugar Facial Polish di campur dengan Cleansing oil, Lalu pijat wajah perlahan.</span></p><p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \"open sans\", tahoma, sans-serif; font-size: 14px;\">2. Lalu bilas dengan air dingin</span><br></p>', 'Klairs Black Sugar Facial Polish dengan kandungan black sugar yang banyak membantu untuk membersihkan sel kulit mati dan komedo. Cukup ringan untuk exfoliasi kulit wajah sehari-hari atau seminggu sekali untuk mencapai kulit lembut halus yang sempurna.\r\n\r\n Direkomendasi untuk tipe kulit yang sensitif, dianjurkan menggunakan Klairs Black Sugar Facial Polish dengan Gentle black deep cleansing oil.\r\n\r\n', '<p><br></p>', '<p><br></p>', '<p>asd</p>', 16, 1, 1, 8),
(83, ' Mask Sheet', '315.000', '225.000', 8, 'produk4.jpg', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Terdiri dari Toner dan kapas dari rangkaian produk Nature Republic Hyalon Active 10 dengan kandungan 10 tipe molekul Hyaluronate dan botanical extracts. Penyegar kulit wajah yang lembut, tidak meniggalkan perasa lengket di kulit, dan membantu merawat kelembapan kulit setelah membersihkan wajah. Kulit terasa lembut dan tampak segar.</span><br></p>', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Terdiri dari Toner dan kapas dari rangkaian produk Nature Republic Hyalon Active 10 dengan kandungan 10 tipe molekul Hyaluronate dan botanical extracts. Penyegar kulit wajah yang lembut, tidak meniggalkan perasa lengket di kulit, dan membantu merawat kelembapan kulit setelah membersihkan wajah. Kulit terasa lembut dan tampak segar.</span><br></p>', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Terdiri dari Toner dan kapas dari rangkaian produk Nature Republic Hyalon Active 10 dengan kandungan 10 tipe molekul Hyaluronate dan botanical extracts. Penyegar kulit wajah yang lembut, tidak meniggalkan perasa lengket di kulit, dan membantu merawat kelembapan kulit setelah membersihkan wajah. Kulit terasa lembut dan tampak segar.</span><br></p>', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Terdiri dari Toner dan kapas dari rangkaian produk Nature Republic Hyalon Active 10 dengan kandungan 10 tipe molekul Hyaluronate dan botanical extracts. Penyegar kulit wajah yang lembut, tidak meniggalkan perasa lengket di kulit, dan membantu merawat kelembapan kulit setelah membersihkan wajah. Kulit terasa lembut dan tampak segar.</span><br></p>', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Terdiri dari Toner dan kapas dari rangkaian produk Nature Republic Hyalon Active 10 dengan kandungan 10 tipe molekul Hyaluronate dan botanical extracts. Penyegar kulit wajah yang lembut, tidak meniggalkan perasa lengket di kulit, dan membantu merawat kelembapan kulit setelah membersihkan wajah. Kulit terasa lembut dan tampak segar.</span><br></p>', 15, 1, 1, 6),
(84, 'Real Nature Matahari Mask Sheet', '100.000', '50.000', 18, 'produk8.jpg', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Masker ini melengkapi perawatan kulit dari seri Good Skin Panthenol. Sheet Mask terbuat dari material micro fiber yang bertekstur lembut dan nyaman saat digunakan serta essence yang diformulasikan tanpa rasa lengket dan menyegarkan kulit. Mengandung Panthenol, Allantoin, dan botanical extracts, membantu menjaga kekuatan skin-barrier agar kulit tetap sehat.</span><br></p>', 'Setelah membersihkan wajah dan menggunakan toner, letakkan sheet mask di wajah sesuaikan dengan kontur wajah (Hindari area mata dan bibir). Setelah 10-30 menit lepas sheet mask kemudian tap-tap dengan lembut untuk meningkatkan penyerapan produk yang tersisa ke dalam kulit. Untuk perawatan yang optimal gunakan rangkaian perawatan Good Skin Panthenol lainnya.', '<div class=\"container\" style=\"width: 1140px; max-width: 1140px; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><div class=\"product-single-detail mt-0\" style=\"margin-top: 90px;\"><div class=\"row product_detail\" style=\"display: flex; flex-wrap: wrap; padding: 30px 0px;\"><div class=\"col-md-6 col-sm-12 col-12 content-product\" style=\"width: 570px; flex: 0 0 50%; max-width: 50%; margin-bottom: 40px;\"><div class=\"information\" style=\"margin-top: 60px;\"><div class=\"tab-content\" id=\"pills-tabContent\"><div class=\"container\" style=\"width: 1140px; max-width: 1140px;\"><div class=\"product-single-detail mt-0\" style=\"margin-top: 90px;\"><div class=\"row product_detail\" style=\"display: flex; flex-wrap: wrap; padding: 30px 0px;\"><div class=\"col-md-6 col-sm-12 col-12 content-product\" style=\"width: 570px; flex: 0 0 50%; max-width: 50%; margin-bottom: 40px;\"><div class=\"information\" style=\"margin-top: 60px;\"><div class=\"tab-content\" id=\"pills-tabContent\"><div class=\"tab-pane fade active show\" id=\"pills-profile\" role=\"tabpanel\" aria-labelledby=\"pills-profile-tab\" style=\"background: 0px 0px; color: rgb(153, 153, 153) !important;\">Water, Glycerin, Caprylic/Capric Triglyceride, Agave Americana Stem Extract, Glyceryl Stearate, Cetearyl Alcohol, Hydroxyacetophenone, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Allantoin, Caffeine, Panthenol, Tromethamine, Xanthan Gum, Caprylyl Glycol, Ethylhexylglycerin, Citrus Aurantium Bergamia (Bergamot) Fruit Oil, Disodium EDTA, Butylene Glycol, 1,2-Hexanediol, Althaea Rosea Flower Extract.</div></div></div></div></div></div></div><div class=\"footer pb-0\" style=\"padding-bottom: 50px;\"><div class=\"container\" style=\"width: 1140px; max-width: 1140px;\"><div class=\"row\" style=\"display: flex; flex-wrap: wrap;\"></div></div></div><div class=\"container\" style=\"width: 1140px; max-width: 1140px;\"><div class=\"product-single-detail mt-0\" style=\"margin-top: 90px;\"><div class=\"row product_detail\" style=\"display: flex; flex-wrap: wrap; padding: 30px 0px;\"><div class=\"col-md-6 col-sm-12 col-12 content-product\" style=\"width: 570px; flex: 0 0 50%; max-width: 50%; margin-bottom: 40px;\"><div class=\"information\" style=\"margin-top: 60px;\"><div class=\"tab-content\" id=\"pills-tabContent\"><div class=\"tab-pane fade active show\" id=\"pills-profile\" role=\"tabpanel\" aria-labelledby=\"pills-profile-tab\" style=\"background: 0px 0px; color: rgb(153, 153, 153) !important;\">Water, Glycerin, Caprylic/Capric Triglyceride, Agave Americana Stem Extract, Glyceryl Stearate, Cetearyl Alcohol, Hydroxyacetophenone, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Allantoin, Caffeine, Panthenol, Tromethamine, Xanthan Gum, Caprylyl Glycol, E<span style=\"background-color: initial;\">Water, Glycerin, Caprylic/Capric Triglyceride, Agave Americana Stem Extract, Glyceryl Stearate, Cetearyl Alcohol, Hydroxyacetophenone, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Allantoin, Caffeine, Panthenol, Tromethamine, Xanthan Gum, Caprylyl Glycol, Ethylhexylglycerin, Citrus Aurantium Bergamia (Bergamot) Fruit Oil, Disodium EDTA, Butylene Glycol, 1,2-Hexanediol, Althaea Rosea Flower Extract.</span></div><div class=\"footer pb-0\" style=\"padding-bottom: 50px;\"><div class=\"container\" style=\"width: 1140px; max-width: 1140px;\"><div class=\"row\" style=\"display: flex; flex-wrap: wrap;\"></div></div></div><div class=\"tab-pane fade active show\" id=\"pills-profile\" role=\"tabpanel\" aria-labelledby=\"pills-profile-tab\" style=\"background: 0px 0px; color: rgb(153, 153, 153) !important;\">thylhexylglycerin, Citrus Aurantium Bergamia (Bergamot) Fruit Oil, Disodium EDTA, Butylene Glycol, 1,2-Hexanediol, Althaea Rosea Flower Extract.</div></div></div></div></div></div></div><div class=\"footer pb-0\" style=\"padding-bottom: 50px;\"><div class=\"container\" style=\"width: 1140px; max-width: 1140px;\"><div class=\"row\" style=\"display: flex; flex-wrap: wrap;\"></div></div></div><div class=\"tab-pane fade active show\" id=\"pills-profile\" role=\"tabpanel\" aria-labelledby=\"pills-profile-tab\" style=\"background: 0px 0px; color: rgb(153, 153, 153) !important;\">Water, Glycerin, Caprylic/Capric Triglyceride, Agave Americana Stem Extract, Glyceryl Stearate, Cetearyl Alcohol, Hydroxyacetophenone, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Allantoin, Caffeine, Panthenol, Tromethamine, Xanthan Gum, Caprylyl Glycol, Ethylhexylglycerin, Citrus Aurantium Bergamia (Bergamot) Fruit Oil, Disodium EDTA, Butylene Glycol, 1,2-Hexanediol, Althaea Rosea Flower Extract.</div></div></div></div></div></div></div><div class=\"footer pb-0\" style=\"padding-bottom: 50px; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><div class=\"container\" style=\"width: 1140px; max-width: 1140px;\"><div class=\"row\" style=\"display: flex; flex-wrap: wrap;\"></div></div></div>', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\">asd</span><br></p>', '<p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\">asd</span><br></p>', 13, 1, 1, 29),
(85, 'Real Nature Avocado Mask Sheet', '100.000', '50.000', 5, 'produk7.jpg', '<p><span style=\"color: rgb(33, 37, 41);\"><p><span style=\"color: rgb(153, 153, 153); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\">Setelah membersihkan wajah dan menggunakan toner, letakkan sheet mask di wajah sesuaikan dengan kontur wajah (Hindari area mata dan bibir). Setelah 10-20 menit lepas sheet mask kemudian tap-tap dengan lembut untuk meningkatkan penyerapan produk yang tersisa ke dalam kulit.</span><br></p></span><br></p><p><br></p>', 'Sheet mask yang mengandung Avocado fruit extract dan botanical extracts lainnya untuk membant menutrisi dan menjaga kelembapan kulit sehingga vitalitas kulit tetap terjaga.\r\n\r\n', '<div class=\"container\" style=\"width: 1140px; max-width: 1140px; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\"><div class=\"product-single-detail mt-0\" style=\"margin-top: 90px;\"><div class=\"row product_detail\" style=\"display: flex; flex-wrap: wrap; padding: 30px 0px;\"><div class=\"col-md-6 col-sm-12 col-12 content-product\" style=\"width: 570px; flex: 0 0 50%; max-width: 50%; margin-bottom: 40px;\"><div class=\"information\" style=\"margin-top: 60px;\"><div class=\"tab-content\" id=\"pills-tabContent\"><div class=\"tab-pane fade active show\" id=\"pills-profile\" role=\"tabpanel\" aria-labelledby=\"pills-profile-tab\" style=\"background: 0px 0px; color: rgb(153, 153, 153) !important;\">Water, Dipropylene Glycol, Cetyl Ethylhexanoate, Glycerin, Polyglyceryl-3 Methylglucose Distearate, Dimethicone, Glyceryl Stearate, PEG-100 Stearate, Butylene Glycol, Paeonia Suffruticosa Root Extract, Centella Asiatica Extract, 1,2-Hexanediol, Carbomer, Hydroxyethylcellulose, Chamomilla Recutita (Matricaria) Flower Extract, Glyceryl Caprylate, Potassium Hydroxide, Ethylhexylglycerin, Fragrance, Disodium EDTA, Persea Gratissima (Avocado) Fruit Extract, Alcohol, Gentiana Lutea Root Extract, Achillea Millefolium Extract, Artemisia Absinthium Extract, Arnica Montana Flower Extract, Propylene Glycol, Potassium Sorbate.</div></div></div></div></div></div></div><div class=\"footer pb-0\" style=\"padding-bottom: 50px; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px;\"><div class=\"container\" style=\"width: 1140px; max-width: 1140px;\"><ol><li style=\"display: flex; flex-wrap: wrap;\"></li></ol></div></div>', '<p><br></p>', '', 15, 0, 1, 29),
(86, 'Lip Sleeping Mask', '', '220.000', 7, 'produk3.png', '<p>LANGKAH 1.\r\nSebelum tidur, aplikasikan dengan jumlah secukupnya menggunakan spatula yang tersedia pada kemasan. Hasil: Melumerkan sel-sel kulit mati pada bibir sepanjang malam dan memberikan kelembapan menyeluruh pada bibir.</p><p>LANGKAH 2.\r\nUsap perlahan bibir yang telah menggunakan Lip Sleeping Mask menggunakan tissue atau kapas di pagi hari.\r\n-Hasil: Membuat bibir terasa lembut dan elastis.</p>', 'Lip Sleeping Mask terbaru yang lembut menghancurkan sel-sel kulit mati dan membuat bibir terasa halus dan elastis selama tidur. Rasakan bibir yang terasa lembut dengan perawatan menggunakan Lip Sleeping Mask terbaru. Tersedia dengan pilihan aroma berry, grapefruit, apple lime, dan vanilla.\r\n\r\nKaya akan vitamin C dari Berry Mix Complex™, mengandung ekstrak raspberry, strawberry, cranberry, dan blueberry yang membantu menghapus kulit mati yang kering dan terkelupas selama Anda tidur dan memberikan bibir yang terasa lembut dan kenyal di pagi hari.', '', '', '', 7, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` tinytext NOT NULL,
  `favicon` tinytext NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` tinytext NOT NULL,
  `contact_phone` tinytext NOT NULL,
  `contact_fax` tinytext NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` tinytext NOT NULL,
  `receive_email_subject` tinytext NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` tinytext NOT NULL,
  `banner_registration` tinytext NOT NULL,
  `banner_forget_password` tinytext NOT NULL,
  `banner_reset_password` tinytext NOT NULL,
  `banner_search` tinytext NOT NULL,
  `banner_cart` tinytext NOT NULL,
  `banner_checkout` tinytext NOT NULL,
  `banner_product_category` tinytext NOT NULL,
  `banner_blog` tinytext NOT NULL,
  `cta_title` tinytext NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` tinytext NOT NULL,
  `cta_read_more_url` tinytext NOT NULL,
  `cta_photo` tinytext NOT NULL,
  `featured_product_title` tinytext NOT NULL,
  `featured_product_subtitle` tinytext NOT NULL,
  `latest_product_title` tinytext NOT NULL,
  `latest_product_subtitle` tinytext NOT NULL,
  `popular_product_title` tinytext NOT NULL,
  `popular_product_subtitle` tinytext NOT NULL,
  `testimonial_title` tinytext NOT NULL,
  `testimonial_subtitle` tinytext NOT NULL,
  `testimonial_photo` tinytext NOT NULL,
  `blog_title` tinytext NOT NULL,
  `blog_subtitle` tinytext NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` tinytext NOT NULL,
  `stripe_public_key` tinytext NOT NULL,
  `stripe_secret_key` tinytext NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'icon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2018. All Rights Reserved. | A project from Virtual University of Pakistan Student [MC170200216]', 'France Cluster Q06\r\nDubai, United Arab Emirates', 'support@fashionys.com', '+971 50 202 0067', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14445.264561651647!2d55.402891!3d25.158801!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb3eef1e51ba29403!2sSham+Cafe!5e0!3m2!1sen!2sae!4v1524656555881\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'support@fashionys.com', 'Visitor Email Message from Fashionys.com', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 4, 4, 4, 'Peachy Mask ', 'fashionys, garments shop, online garments, dubai garments', 'fashionys.com is an online garments shop.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Produk sale', 'Buruan belanja dan dapatkan diskon akhir tahun', 'Produk Unggulan ', 'Ada Banyak Produk Skincare Unggulan Di sini', 'Produk Populer', 'Dapatkan sebelum stok habis', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@fashionys.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: NY Branch\r\nCountry: USA', '<!-- Google Analytics -->\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-8564299-3\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-8564299-3\');\r\n</script>\r\n', '#', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` tinytext NOT NULL,
  `heading` tinytext NOT NULL,
  `content` text NOT NULL,
  `button_text` tinytext NOT NULL,
  `button_url` tinytext NOT NULL,
  `position` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'lagi2.png', 'Selamat datang di Peachy Mask', 'Pusat perbelanjaan skincare online', 'Klik disini', '', 'Center'),
(2, 'lagi2.png', 'Belanja terus dan dapatkan diskon terus', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Center'),
(3, 'lagi2.png', '1.1 SALE DAN GRATIS ONGKIR', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` tinytext NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Inisfree', 1),
(2, 'Somethinc', 1),
(3, 'Nature', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `phone` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `photo` tinytext NOT NULL,
  `role` tinytext NOT NULL,
  `status` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Firda gheitsa sahira', 'firda123@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'firda-gheitsa.jpg', 'Super Admin', 'Active'),
(13, 'Adinda mirza devina', 'devina@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'devina.jpg', 'Admin', 'Active'),
(15, 'Elsa devita', 'elsa@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'elsa.jpg', 'admin', 'Active'),
(16, 'Shelly wulandari', 'shelly@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'shelly.jpg', 'admin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indeks untuk tabel `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indeks untuk tabel `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indeks untuk tabel `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indeks untuk tabel `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indeks untuk tabel `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT untuk tabel `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

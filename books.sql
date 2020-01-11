-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 11, 2019 lúc 07:51 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `books`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thị Ái Hậu', 'An Phú-Tp Pleiku-GiaLai', 'aihau281199@gmail.com', '3f11e1dbc3710e21a02fde57381d6d83', '0384300208', 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Romance', 'romance', NULL, NULL, 1, 1, NULL, '2019-12-05 08:40:19'),
(2, 'Horror', 'horror', NULL, NULL, 1, 1, NULL, '2019-12-05 10:13:04'),
(3, 'Mystery', 'mystery', NULL, NULL, 1, 1, NULL, '2019-12-05 10:59:34'),
(4, 'Science Fiction', 'science-fiction', NULL, NULL, 1, 1, NULL, '2019-12-05 11:32:45'),
(5, 'Drama', 'drama', NULL, NULL, 1, 1, NULL, '2019-12-05 11:54:41'),
(7, 'Foreign Language', 'foreign-language', NULL, NULL, 1, 1, NULL, '2019-12-05 12:14:47'),
(9, 'Comics', 'comics', NULL, NULL, 1, 1, NULL, '2019-12-05 12:20:44'),
(12, 'Health', 'health', NULL, NULL, 1, 1, NULL, '2019-12-05 13:13:46'),
(13, 'Art', 'art', NULL, NULL, 1, 1, NULL, '2019-12-05 13:53:38'),
(14, 'History', 'history', NULL, NULL, 1, 1, NULL, '2019-12-05 14:05:41'),
(15, 'Musical', 'musical', NULL, NULL, 1, 1, NULL, '2019-12-05 14:05:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(8, 3, 2, 1, 288000, '2019-12-07 18:49:41', '2019-12-07 18:49:41'),
(9, 3, 14, 2, 330000, '2019-12-07 18:49:41', '2019-12-07 18:49:41'),
(10, 4, 2, 2, 288000, '2019-12-07 18:52:17', '2019-12-07 18:52:17'),
(11, 4, 14, 1, 330000, '2019-12-07 18:52:17', '2019-12-07 18:52:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thunbar` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `pay` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thunbar`, `category_id`, `content`, `number`, `head`, `view`, `hot`, `pay`, `created_at`, `updated_at`) VALUES
(1, 'Gone With The Wind', 'gone-with-the-wind', 380000, 10, 'sach-cuon-theo-chieu-gio.jpg', 1, 'Kể từ lần xuất bản đầu tiên vào năm 1936, Gone With the Wind, người chiến thắng giải Pulitzer và một trong những cuốn tiểu thuyết bán chạy nhất mọi thời đại đã được độc giả khắp nơi gọi là Tiểu thuyết vĩ đại của Mỹ.\r\n\r\nĐược coi rộng rãi là Tiểu thuyết vĩ đại của Mỹ, và thường được nhớ đến với phiên bản phim sử thi, Cuốn theo chiều gió khám phá chiều sâu của niềm đam mê của con người với cường độ đậm như bối cảnh ở vùng đồi đỏ Georgia. Một tác phẩm kể chuyện tuyệt vời, nó mô tả sinh động bộ phim về Nội chiến và Tái thiết.\r\n\r\nĐây là câu chuyện về Scarlett OátHara, cô con gái hư hỏng, lôi kéo của một chủ đồn điền giàu có, đến với nữ giới trẻ tuổi đúng lúc để thấy Nội chiến mãi mãi thay đổi cách sống của cô. Một câu chuyện thú vị về niềm đam mê rối rắm và lòng can đảm, trong các trang của Cuốn theo chiều gió, Margaret Mitchell mang đến những nhân vật khó quên đã thu hút độc giả trong hơn bảy mươi năm.', 6, 0, 0, 0, 0, NULL, '2019-12-07 18:39:53'),
(2, 'Blue Sky Summer', 'blue-sky-summer', 360000, 20, 'skype-summer.jpg', 1, 'Blue Sky Summer là quyển sách thứ 4 trong loạt truyện Swoon-Worthy Cowboy. Đây là một quyển sách thú vị và ý nghĩa. Nó xoay quanh cuộc sống của những người dân trong thị trấn Parable. Trong cuốn sách thứ tư này, kể về Casey & Walker một  nữ ca sĩ nhạc đồng quê, đã mua một ngôi nhà ở Parable cho 2 đứa trẻ của họ. Từ đây làm nảy sinh những vấn đề trong cuộc sống, mối quan hệ giữa cha mẹ và con cái, tình cảm vợ chồng.\r\n\r\nTác phẩm là  một câu chuyện lãng mạn, ngọt ngào về  tình yêu trong sang giữa Casey và Walker, giữa Casey và các con của mình. Các nhân vật nhân vật rất hấp dẫn, một chàng cao bồi tốt bụng và một phụ nữ mạnh mẽ,  một khung cảnh tuyệt vời với cảm giác ấm áp của cộng đồng và gia đình yêu thương. Một câu chuyện hấp dẫn mà làm cho chúng ta  thực sự yêu thích những nhân vật trong đó. Độc giả đều cảm thấy thoải mái khi đọc cuốn sách. Bạn không cần phải tỏ ra lo lắng về nhân vật yêu thích của bạn, bạn chỉ cần thoải mái và đi cùng với họ một chuyến đi tuyệt vời.', 7, 0, 0, 0, 1, NULL, '2019-12-07 18:52:24'),
(3, 'Safe Haven', 'safe-haven', 390000, 15, 'safe-haven.jpg', 1, 'Safe Haven là một câu chuyện lãng mạn về tình yêu và cuộc sống của những người sống trong một thị trấn nhỏ ở Southport, Bắc Carolina. Katie là một cô gái trẻ tuổi và bí ẩn, trải qua một cuộc hành trình dài cuối cùng cô đã dừng chân và sinh sống tại thị trấn này, sự có mặt đột ngột của Katie đã đặt ra câu hỏi về quá khứ của cô. Xinh đẹp và khiêm tốn, Katie dường như không muốn vướng phải các mối quan hệ phức tạp nhưng một loạt sự việc xảy ra đã cuốn cô vào hai mối quan hệ bất đắc dĩ. Một là với Alex, anh chàng góa vợ là chủ một cửa hàng bách hóa, anh có một trái tim nhân hậu và hai đưa con nhỏ. Một người khác là Jo, người láng giềng độc thân và chân thật. Mặc dù đã hạn chế các mối quan hệ nhưng Katie đã không kiểm soát được tình cảm, cô dần dần gắn bó với mọi người xung quanh, thân thiết với Alex và gia đình anh.\r\nNhưng khi Katie bắt đầu yêu, thì cô phải vật lộn với những bí mật đen tối và sợ hãi vẫn còn ám ảnh cô từ quá khứ. Với sự giúp đỡ và đồng cảm của Jo, Katie đã nhận ra rằng chỉ có tình yêu mới thực sự là thiên đường.', 9, 0, 0, 0, 0, NULL, '2019-12-05 09:22:16'),
(4, 'Wedding Night', 'wedding-night', 400000, 10, 'sophie-kinsella-wedding-night.jpg', 1, 'Wedding Night, cuốn tiểu thuyết lãng mạn và hài hước của Sophie Kinsella. Nữ nhân vật chính là Lottie Graveney 30 tuổi đã khước từ lời cầu hôn mà cô mong đợi từ lâu của bạn trai Richard. Bởi anh đã từng nói với cô rằng anh không quan tâm đến hôn nhân và Lottie cho rằng điều đó đã kết thúc mối quan hệ của họ. Cô vẫn còn lảo đảo vì chia tay bạn trai, thì cô gặp lại  Ben sau  hơn 10 năm . Hồi tưởng về mùa hè họ ở bên nhau trên hòn đảo Hy Lạp bình dị và thơ mộng, Ben nhắc Lottie về thỏa thuận của họ sẽ kết hôn nếu cả hai đều vẫn còn độc thân ở tuổi ba mươi, và  thú nhận anh không bao giờ ngừng yêu thương cô. Lottie đồng ý, hai người quyết định không chờ đợi nữa mà sắp xếp một đám cưới không đăng ký phiền phức chỉ một vài ngày sau đó. Bất chấp sự phản đối gay gắt của Fliss – chị gái Lottie, và Lorcan – người bạn thân nhất của Ben, đám cưới vẫn sẽ diễn ra  và họ sẽ đáp máy bay đi hưởng tuần trăng mật ở Ikonok. Fliss cho rằng cô em gái đang mắc phải sai lầm lớn nhất của cuộc đời mình và cô ấy sẽ làm bất cứ điều gì để ngăn chặn cuộc hôn nhân.\r\n\r\nWedding Night là một cuốn tiểu thuyết đáng để đọc đầy những khoảnh khắc vui vẻ, và dí dỏm và đáng yêu người đọc sẽ không phải thất vọng.', 8, 0, 0, 0, 0, NULL, '2019-12-05 09:22:43'),
(5, 'Crazy Little Thing', 'crazy-little-thing', 370000, 5, 'crazy-liitle-thing.jpg', 1, 'Sadie Turner  đang tìm kiếm một sự hoàn hảo trong một cuộc sống hỗn độn, cô hy vọng một kỳ nghỉ hè tại  nhà dì Dody sẽ giúp cô tĩnh tâm lại. Cô ấy muốn thư giãn, bắt đầu lại cuộc sống, và chữa lành các vết thương bị lừa dối bởi chồng cũ của cô. Và điều đó đòi hỏi phải có thời gian và sự giúp đỡ của tất cả mọi người đặc biệt là một người đàn ông.\r\n\r\nSống cùng hai chú cho nghịch ngợm và hai người em họ những tưởng Sadie sẽ trở nên vui vẻ hơn nhưng thật khó để cô có một tâm trạng bình yên tại nhà dì Dody, bởi người hàng xóm mới, là Desmond. Desmond là cơn ác mộng tồi tệ nhất của Sadie, anh ta cao, rám nắng, cơ bắp …, anh ấy đối xử rất tốt với những đứa trẻ của Sadie. Nhưng anh có một khuyến điểm, anh ấy là một người đàn ông mà Sadie thề sẽ giữ khoảng cách.\r\n\r\nNhư sự chói lóa của mùa hè, Sadie cố gắng để cuộc sống trở nên hết sức đơn giản nhưng nó đã trở nên phức tạp hơn, một sự nghiệp mới, những sự ám ảnh, và dì Dody tiết lộ một bí mật đau buồn, nhưng đó cũng có thể là một sự hỗn loạn nhỏ mà Sadie cần có để cuộc sống của cô trở lại trật tự.', 7, 0, 0, 0, 0, NULL, '2019-12-05 09:26:10'),
(6, 'The Cruel Prince (Holly Black)', 'the-cruel-prince-holly-black', 250000, 4, 'holly-black.jpg', 2, 'Hãy khởi đầu năm mới với The Cruel Prince (Hoàng tử tàn bạo) của tác giả Holly Black. Chuyện kể rằng cha mẹ của Jude bị sát hại khi cô bé mới 7 tuổi. Jude và các chị em gái bị đưa đẩy đến High Court of Faerie. 10 năm sau, Jude nỗ lực tìm kiếm một vị trí tại đây bất chấp sự tàn bạo của kẻ lãnh đạo nơi này.', 6, 0, 0, 0, 0, NULL, '2019-12-05 10:44:04'),
(7, 'Ink, Iron and Glass (Gwendolyn Clare)', 'ink-iron-and-glass-gwendolyn-clare', 260000, 0, 'ink.jpg', 2, 'Cuốn tiểu thuyết đầu tay của Gwendolyn Clare sẽ đưa độc giả tới một thế giới nơi ma thuật xuất phát từ những trang sách. Các thế giới mới được tạo ra chỉ bằng giấy và bút và nhân vật chính Elsa đến từ một thế giới như thế. Khi mẹ của Elsa bị bắt cóc, cô phải đến thế giới thật và phát hiện ra một âm mưu khủng khiếp.', 5, 0, 0, 0, 0, NULL, NULL),
(8, 'Children of Blood and Bone (Tomi Adeyemi)', 'children-of-blood-and-bone-tomi-adeyemi', 270000, 0, 'blood.jpg', 2, 'Zelie luôn khắc khoải ghi nhớ những hình ảnh về quê hương đầy phép màu của mình trước khi nó bị một gã hoàng đế tàn bạo hủy diệt. Giờ cô có cơ hội đem pháp thuật và hi vọng trở lại cho người dân quê hương mình. Nhưng trước hết, cô phải đối đầu với gã thái tử đáng sợ.', 6, 0, 0, 0, 0, NULL, NULL),
(11, 'The Boneless Mercies (April Genevieve Tucholke)', 'the-boneless-mercies-april-genevieve-tucholke', 300000, 0, 'bone.jpg', 2, 'Bạn có bao giờ ước rằng series Harry Potter có thêm những nhân vật nữ? Hermione, Luna và Ginny rất tuyệt vời, nhưng câu chuyện của họ không phải là tâm điểm. Tác giả April Genevieve Tucholke sẽ bù đắp sự thiếu hụt đó với câu chuyện về 4 cô gái tìm kiếm vinh quang bằng việc đối đầu với một con quái vật.', 10, 0, 0, 0, 0, NULL, NULL),
(12, 'Literary Witches (Taisia Kitaiskaia và Katy Horan)', 'literary-witches-taisia-kitaiskaia-va-katy-horan', 310000, 0, 'liter.jpg', 2, 'Cuốn sách tôn vinh những nữ tác giả “tài năng như phù thủy”. Có thể kể đến Virginia Woolf, Mira Bai, Toni Morrison, Emily Dickinson, Octavia E. Butler, Sandra Cisneros….', 9, 0, 0, 0, 0, NULL, NULL),
(13, 'Bruja Born (Zoraida Cordova)', 'bruja-born-zoraida-cordova', 320000, 0, 'lost.jpg', 2, 'Đây là phần kế tiếp của Labyrinth Lost, kể câu chuyện của Lula. Cô dùng pháp thuật đặc biệt của mình để cải tử hồi sinh người bạn trai và lỡ tay đánh thức những thế lực đen tối.', 8, 0, 0, 0, 0, NULL, NULL),
(14, 'Gửi thời đơn thuần đẹp đẽ của chúng ta', 'gui-thoi-don-thuan-dep-de-cua-chung-ta', 330000, 0, 'gui-thoi-don-thuan-dep-de-cua-chung-ta.jpg', 1, '“Gửi thời đơn thuần đẹp đẽ của chúng ta” cuốn sách dành tặng tuổi trẻ của bạn. Tặng cho những cảm xúc chớm nở, những bối rối, những chấp chênh của mối tình đầu. Tặng cho những ai đang đứng giữa ngã ba đường của thương thương nhớ nhớ, của những điểm chạm trái tim.', 5, 0, 0, 0, 1, NULL, '2019-12-07 18:52:24'),
(15, 'Cô gái năm đó chúng ta cùng theo đuổi ', 'co-gai-nam-do-chung-ta-cung-theo-duoi', 340000, 0, 'co-gai-nam-do-chung-ta-cung-theo-duoi.jpg', 1, 'Cuốn sách Cô gái năm ấy chúng ta cùng theo đuổi là tiểu thuyết đã được dựng thành phim của Cửu Bả Đao, viết về tuổi thanh xuân với những dư vị mà ta sẽ mãi mãi không quên.\r\n\r\nBên cạnh việc viết về tình yêu, tác giả còn lồng ghép thêm vào tác phẩm của mình những hình ảnh tươi đẹp của tuổi trẻ: các cô cậu học trò tinh nghịch, ngây thơ nhưng khi yêu lại vô cùng chân thành. “Cô gái năm ấy chúng ta cùng theo đuổi” được xem là bản tình ca ngọt ngào hát về tình yêu, nhất là tình yêu thanh xuân, lúc đó tình yêu thật trong sáng, ít ưu tư và lo phiền. Sách cũng đã được chuyển thể thành phim và khá được công chúng đón nhận.', 8, 0, 0, 0, 0, NULL, NULL),
(16, 'Hẹn em ngày đó – Guillaume Musso', 'hen-em-ngay-do-guillaume-musso', 350000, 0, 'hen-em-ngay-do.jpg', 1, '“Hẹn em ngày đó” không chỉ tồn tại một tình yêu vĩnh cửu mà bên cạnh đó là tình bạn, một tình bạn đi đến cuối cuộc đời, một tình bạn bền vững.', 6, 0, 0, 0, 0, NULL, NULL),
(17, ' My Merry Spinster: Tales of Everyday Horror ', 'my-merry-spinster-tales-of-everyday-horror', 315000, 7, 'merry.jpg', 2, 'Đây là cuốn sách đáng đọc với những độc giả quan tâm đến lịch sử của phù thủy và pháp thuật. Không chỉ có ma thuật, tác phẩm này còn đậm chất hài hước.', 8, 0, 0, 0, 0, NULL, '2019-12-05 11:02:57'),
(18, 'Circe (Madeline Miller):The Song of Achilles', 'circe-madeline-millerthe-song-of-achilles', 270000, 5, 'circe.jpeg', 2, 'Từ tác giả của The Song of Achilles, Circe kể câu chuyện của phù thủy trẻ Circe, con gái của thần mặt trời Helios. Cô bị đày ải đến một hòn đảo hoang vắng trong thế giới của loài người.', 9, 0, 0, 0, 0, NULL, '2019-12-05 11:05:08'),
(19, 'Sự Im Lặng Của Bầy Cừu', 'su-im-lang-cua-bay-cuu', 200000, 0, 'sach-su-im-lang-cua-bay-cuu.jpg', 3, 'Sự Im Lặng Của Bầy Cừu (Tái Bản) kể về vụ án giết người hàng loạt xảy ra nhưng không để lại dấu vết. Điều kỳ lạ là Lecter – một bác sĩ tâm lý bị tâm thần đang điều trị tại Dưỡng Trí Viện biết rất rõ về hành vi của kẻ sát nhân nhưng chỉ im lặng. Cho đến khi con gái của thượng nghị sĩ bị bắt cóc thì cuộc đối đầu của nữ nhân viên thực tập FBI và vị bác sĩ tâm thần đã đến cực điểm. Cuối cùng tất cả cũng đều lộ diên, thủ phạm là một tên có nhân cách bệnh hoạn, một kẻ tâm thần rối loạn cựu kỳ nguy hiểm…\r\n\r\nNhững cuộc phỏng vấn ở xà lim với kẻ ăn thịt người ham thích trò đùa trí tuệ, những tiết lộ nửa chừng hắn chỉ dành cho kẻ nào thông minh, những cái nhìn xuyên thấu thân phận và suy tư của cô mà đôi khi cô muốn lảng tránh… Clarice Starling đã dấn thân vào cuộc điều tra án giết người lột da hàng loạt như thế, để rồi trong tiếng bức bối của chiếc đồng hồ đếm ngược về cái chết, cô phải vật lộn để chấm dứt tiếng kêu bao lâu nay vẫn đeo đẳng giấc mơ mình: tiếng kêu của bầy cừu sắp bị đem đi giết thịt.\r\n\r\n', 9, 0, 0, 0, 0, NULL, NULL),
(20, 'Thú Tội', 'thu-toi', 210000, 0, 'sach-thu-toi.jpg', 3, 'Một câu chuyện tâm lý đầy ấn tượng, ớn lạnh và tàn nhẫn. Thú tội xoay quanh một câu chuyện tưởng chừng rất đơn giản mà bất kỳ ai đọc trinh thám cũng dễ nhận ra, nhưng Thú tội không phải là một câu truyện trinh thám. Mạch truyện chậm rãi như dòng suối mà tình tiết dồn dập đến khó cưỡng, bạn đọc càng về cuối thì sẽ lại lật lại trang đầu vì những chi tiết tưởng chừng vô dụng ban đầu đều vốn có chủ địch. Luật pháp trẻ vị thành niên, bất ổn tâm sinh lý, sự giáo dục sai lầm đến từ những người mẹ, sự thờ ơ vô cảm bạn học, sự lạnh nhạt, vô trách nhiệm ngu dốt của giáo viên, thực trạng trong các gia đình nhật bản với cán cân chăm sóc con cái đè nặng lên vai người mẹ và lỗi của truyền thông khi liên tục đưa tin tiêu cực về giết người, trộm cắp, bỏ quên đi việc ca ngợi và khuyến khích những thành công của tuổi vị thành niên đã khiến những đứa trẻ chưa lớn cũng không nhỏ này lệch lạc về vấn đề đạo đức, ngông cuồng và đầy nông nổi.', 4, 0, 0, 0, 0, NULL, NULL),
(21, 'Bí Mật Của Naoko', 'bi-mat-cua-naoko', 220000, 0, 'sach-bi-mat-cua-naoko.jpg', 3, 'Cuộc sống của Hirasule trôi qua hết sức bình lặng, cho đến một ngày tai nạn giao thông khủng khiếp xảy ra và gã mất đi người vợ yêu quý nhất của mình, còn đứa con gái bé bỏng vẫn trong tình trạng hôn mê bất tỉnh. Nhưng chỉ sau một đêm, con gái gã tỉnh lại và một mực xưng mình là Naoko, vợ gã. Dường như linh hồn của Naoko đã nhập vào thể xác con gái, còn Monami thực sự đã chết. Rốt cuộc Hirasuke đã mất vợ hay con gái trong vụ tai nạn ấy?\r\n\r\nBí mật của Naoko đã giành Giải thưởng của Hiệp hội các Nhà văn viết truyện kỳ bí Nhật Bản vào năm 1999, và là một trong những tác phẩm quan trọng nhất trong sự nghiệp của Higashino Keigo, bậc thầy truyện trinh thám Nhật thế kỷ XX.', 5, 0, 0, 0, 0, NULL, NULL),
(22, 'Thánh Giá Rỗng', 'thanh-gia-rong', 230000, 0, 'sach-thanh-gia-rong.jpg', 3, 'Thánh giá rỗng là câu chuyện xoay quanh hai vụ án mạng tàn khốc trong cùng một gia đình. Ngày 21 tháng 9 của mười một năm về trước, cô bé Manami ngây thơ, vô tội đã bị sát hại tại nhà riêng. Đúng mười một năm sau, mẹ cô bé – Sayoko, cũng bị giết hại dã man trên con đường thuộc quận Koto. Nakahara – một người chồng, một người cha bất hạnh đã hai lần phải cảm nhận nỗi đau mất người thân. Cái chết đầy uẩn khúc của Sayoko đã khiến anh tạm gác lại niềm riêng để bước vào cuộc hành trình tìm kiếm sự thật.\r\n\r\nTrên con đường tìm lời giải đáp cho mọi thắc mắc của mình, Nakahara vô tình tìm ra mối liên hệ giữa vụ án mạng của vợ anh và một bí mật động trời khác đã được chôn giấu suốt hai mươi mốt năm trời.', 3, 0, 0, 0, 0, NULL, NULL),
(23, 'Hai Vạn Dặm Dưới Đáy Biển', 'hai-van-dam-duoi-day-bien', 70000, 2, 'Kham-pha-dai-duong.jpg', 4, 'Nếu bạn tìm đọc một cuốn sách kinh điển, đây là một cuốn sách bạn nên biết. Đến với cuốn sách này, bạn có thể bắt đầu một hành trình khám phá thế giới đại dương nhiều bí ẩn với thuyền trưởng Nê-Mô và các thủy thủ trên tàu Nau-ti-lux.\r\n\r\nTuy sách khá dày nhưng bạn có thể đọc một cách dễ dàng với giọng văn lôi cuốn, tình tiết hấp dẫn với sự xuất hiện của những sinh vật biển và cuộc phiêu lưu của các nhân vật chính: giáo sư A-rô-nắc cùng trợ lý,… Cuốn sách rất thích hợp để đọc trong những kỳ nghỉ hè đi biển.', 5, 0, 0, 0, 0, NULL, '2019-12-05 11:26:46'),
(24, 'Trạm Tín Hiệu Số 23', 'tram-tin-hieu-so-23', 80000, 3, 'Trạm-Tín-Hiệu-Số-23.jpg', 4, 'Câu chuyện giả tưởng xoay quanh một ngọn tháp hải đăng ngoài vũ trụ, với người canh duy nhất là một anh trạm viên cựu binh, bị ám ảnh bởi tội ác chiến tranh trong quá khứ. Đây là cuốn sách sẽ mở ra trước mắt bạn một thế giới Sci-fi với đầy đủ những motip hấp dẫn như: hải tặc không gian, chiến tranh vũ trụ, quái thú ngoài hành tinh… Không chỉ dừng ở đó, trên hành trình cùng anh trạm viên cô độc chống trọi với những mối nguy từ không gian để bảo vệ tháp hải đăng, tâm lý nhân vật được khắc họa vô cùng xuất sắc.\r\n\r\nSự tra tấn từ ám ảnh quá khứ lên nhân vật cho người đọc một cảm nhận sâu sắc về sự tàn phá của chiến tranh, càng đọc càng lôi cuốn. Liệu những mối họa từ vũ trụ, hay dằn vặt tâm lý từ quá khứ, đâu sẽ là thứ sẽ hủy hoại người lính đơn độc? Hãy tiếp tục đọc để tìm ra đáp án cho chính mình.', 6, 0, 0, 0, 0, NULL, NULL),
(25, 'All You Need Is Kill ', 'all-you-need-is-kill', 95000, 5, 'all-you-lightnovel.jpg', 4, 'Một tác phẩm đã gây tiếng vang tại nhiều nước sau khi ra mắt và đã được chuyển thể thành phim bom tấn Hollywood. Dung lượng truyện khá nhẹ, tác phẩm cuốn hút bởi nhịp độ dồn dập ngay từ đầu với không khí chiến trường khốc liệt.\r\n\r\nTrong cuộc chiến gát gao với loài quái vật ngoài hành tinh, cậu thiếu niên chính là chìa khóa mang lại hòa bình cho nhân loại. Mỗi lần “hi sinh” là một lần vòng lặp được tái lập. Sự kết hợp giữa truyện và minh họa đặc trưng của dòng Light novel, ngay cả chỉ là một người mới với dòng khoa học viễn tưởng, bạn cũng sẽ được tận hưởng trọn vẹn nội dung tác phẩm.', 7, 0, 0, 0, 0, NULL, NULL),
(26, 'Người Về Từ Sao Hỏa', 'nguoi-ve-tu-sao-hoa', 118000, 3, 'Người-Về-Từ-Sao-Hỏa.jpg', 4, 'Một tác phẩm đậm chất khoa học và thực tế, mọi chi tiết được thêm vào đều mang tính logic của khoa học hiện đại. Tuy nhiên, đừng quá lo về vốn kiến thức nền có hay chăng quá nặng, Andy Weir với giọng văn hài hước, tự nhiên sẽ khiến bạn vô cùng thích thú với tác phẩm này.\r\n\r\nHãy tưởng tượng bạn người cuối cùng còn sót lại trên sao Hỏa, phải làm gì khi nhu yếu phẩm chỉ còn đủ dùng trong một tháng, trong khi chuyến tàu thám hiểm tiếp theo mà bạn có thể cầu viện cũng phải 4 năm sau? Theo chân hành trình sinh tồn của nhân vật chính Watney, người đọc đến với một thế giới đầy rủi ro với những thảm họa khôn lường. Ở đó, sự hấp dẫn của khoa học sẽ lôi cuốn bạn trong từng câu chữ!', 6, 0, 0, 0, 0, NULL, NULL),
(27, 'Kiêu Hãnh Và Định Kiến', 'kieu-hanh-va-dinh-kien', 100000, 2, 'Kieu_hanh_va_dinh_kien.jpg', 5, 'Tác phẩm kinh điển của Jane Austen vinh dự được bạn đọc bình chọn trong danh sách những cuốn sách hay nhất thế giới nên đọc. Nội dung truyện là đối đầu giữa Elizabeth Bennet, con gái của một gia đình trung lưu, và Fitzwilliam Darcy, một địa chủ giàu có.\r\nTính kiêu hãnh về giai cấp và tài sản của mình cùng định kiến về vị thế thấp kém của gia đình Elizabeth khiến Darcy lúc đầu muốn tránh xa cô, trong khi cô Elizabeth cũng kiêu hãnh vì lòng tự trọng của mình và có định kiến về cung cách trưởng giả của Darcy, trở nên một người con gái không giống như những người con gái khác chung quanh Darcy.', 5, 0, 0, 0, 0, NULL, NULL),
(28, 'Tội Ác Và Trừng Phạt', 'toi-ac-va-trung-phat', 120000, 4, 'toi-ac-va-trung-phat.jpg', 5, 'Tội ác và trừng phạt là một trong những quyển sách hay nhất thế giới của tác giả tiểu thuyết bậc thầy nước Nga F. Dostoevsky. Chuyện kể về chàng sinh viên nghèo Raxkônnikốp vì quá lạc lối mà đã giết chết hai chị em bà lão cầm đồ. Những ngày sau đó, Raxkônnikốp rơi vào một bi kịch mới, khủng hoảng tinh thần trầm trọng. Anh càng cố gắng che giấu tội lỗi thì càng tỏ ra lúng túng.\r\nĐể chấm dứt những giằng xé nội tâm, anh đưa ra quyết định: thà bị giam cầm về thể xác còn hơn bị tù đày về tâm hồn… Tác phẩm là kiệt tác chan chứa tình yêu thương giữa con người với con người.', 8, 0, 0, 0, 0, NULL, NULL),
(29, 'Người Xa Lạ ', 'nguoi-xa-la', 125000, 3, 'nguoi-xa-la.jpg', 5, 'Tiểu thuyết khắc họa chân dung nhân vật Meursault trong khoảng thời gian kể từ ngày mẹ của Meursault chết ở trại tế bần dành cho người già cho đến gần cái chết của chính anh ta. Dẫn dắt truyện theo kiểu tự thuật của nhân vật Meursault, một nhân viên thư ký lãnh việc gửi hàng hóa. Anh ta sống cô độc, nhận được tin mẹ mất thì anh ta chỉ tham dự đám tang xong sau đó tới sở làm, đi bơi, xem xi-nê,… đi chơi với người yêu và giết người tại bãi biển.\r\nMọi người đều lên án anh ta là không có biểu hiện của một người con mất mẹ bị công tố viên buộc tội vì “đã chôn cất bà mẹ bằng trái tim của một kẻ sát nhân.” Câu chuyện mở đầu bằng cái chết, phân tách hai phần bằng cái chết và kết thúc bằng một án tử hình. Qua hình tượng nhân vật này, Albert Camus muốn truyền tải thông điêp về sự vô nghĩa của đời sống con người, trên con đường đến với cái chết treo lơ lửng, Meursault đã đi qua Vô thức, Tỉnh thức và cuối cùng là Nổi loạn.', 6, 0, 0, 0, 0, NULL, NULL),
(30, 'Trăm Năm Cô Đơn', 'tram-nam-co-don', 130000, 6, 'sach-tram-nam-co-don.jpg', 5, 'Quyển sách hay nhất thế giới đến từ tác giả Columbia, Gabriel García Márquez đã giành được giải Nobel về văn học năm 1982. Trăm năm cô đơn là câu chuyện về dòng họ Buênđya tồn tại bảy thế hệ, người đầu tiên bị trói vào gốc cây và người cuối cùng bị kiến ăn, một dòng họ tự lưu đày vào cõi cô đơn để trốn tội loạn luân. Trong cõi cô đơn ấy, những Accađiô, Aurêlianô, Rêmêđiôt và những Amaranta đã ra đời, sống với số phận bi đát như đã được định trước: lay lắt trong nỗi cô đơn và hoài nhớ, thấp thỏm lo phạm tội loạn luân. Nhưng rồi họ yêu nhau mãnh liệt và lấy nhau với hy vọng tình yêu sẽ cải tạo nòi giống mình. Nhưng họ vẫn đẻ ra những đứa con có đuôi lợn và chính nó đã kết liễu dòng họ Buênđya.', 7, 0, 0, 0, 0, NULL, NULL),
(31, 'Hack não 1500 từ Tiếng Anh', 'hack-nao-1500-tu-tieng-anh', 450000, 15, 'hack-nao.jpg', 7, 'Nội dung cuốn sách gồm 50 unit với 20 chủ đề quen thuộc, chiếm tới 90% ngôn ngữ phổ thông giao tiếp hàng ngày. Phần lớn diện tích cuốn sách là hình ảnh, giúp người học có thể vận dụng hết các giác quan trong quá trình học tiếng Anh, tạo cảm hứng cho người học.\r\n\r\nNgoài ra, file audio được thiết kế để tải trên máy tính và điện thoại, đem lại sự tiện lợi tối đa cho người học. Việc kết hợp học cuốn sách cùng file audio giúp bạn đọc có thể hoàn thiện 4 kỹ năng cơ bản của việc học tiếng Anh: nghe, nói, đọc, viết; làm cơ sở vững chắc cho việc học tiếng Anh giao tiếp cũng như thi các chứng chỉ quan trọng như IELTS, TOEFL,…', 10, 0, 0, 0, 0, NULL, NULL),
(32, 'Tự học tiếng Trung ', 'tu-hoc-tieng-trung', 480000, 8, 'Tieng-trung.jpg', 7, 'Phần chính của cuốn sách “Tự học tiếng Trung cho người mới bắt đầu” là 17 chủ đề thông dụng, bao quát được gần hết các tình huống trong giao tiếp thông thường. Học hết 17 chủ đề về Chào hỏi, Hỏi đường, Gọi điện thoại, Tìm đồ, Làm thủ tục du lịch… tương đương với việc bạn vừa hoàn thành một khóa tiếng Trung giao tiếp căn bản!', 6, 0, 0, 0, 0, NULL, NULL),
(33, 'Tiếng Nhật tự học', 'tieng-nhat-tu-hoc', 350000, 10, 'sach-tu-hoc-tieng-nhat.jpg', 7, 'Mở đầu cuốn sách “Tự học tiếng Nhật ”, người học sẽ được học qua những kiến thức cơ bản về tiếng Nhật như bảng chữ cái, số đếm và những từ vựng thường dùng hàng ngày', 6, 0, 0, 0, 0, NULL, NULL),
(34, 'Tiếng Hàn tự học', 'tieng-han-tu-hoc', 390000, 12, 'Tu-hoc-tieng-han.jpg', 7, 'Điểm đặc biệt ở quyển sách này là dù mặc bạn chưa từng học qua tiếng Hàn cũng có thể tự học được. Với 2 phần đánh vào những vấn đề gần gũi trong cuộc sống, sách sẽ tập trung hướng dẫn cách phá âm tiếng Hàn như Nguyên Âm, Phụ Âm, Phụ Âm Cuối, Quy Tắc Viết Chữ, và những Quy Tắc Phát Âm căn bản nhất. Ở phần 2 là những mẫu câu và từ vựng cơ bản theo từng chủ đề như chào hỏi, phương hướng, giá cả, thời gian, ngày tháng, thời tiết, v…v…', 7, 0, 0, 0, 0, NULL, NULL),
(35, 'Người khổng lồ xanh', 'nguoi-khong-lo-xanh', 50000, 1, 'doraemon.jpg', 9, 'Điểm sáng tạo nhất mà tất cả mọi người đều nhận thấy trong bộ truyện chính là hình tượng nhân vật Doraemon– chú mèo máy thông minh đến từ tương lai và cũng là người bạn thân thiết của cậu bé Nôbita hậu đậu, ngốc nghếch nhưng hiền lành tốt bụng. Với những món bảo bối nằm trong chiếc túi thần kỳ bé tí tẹo ở trước bụng, Doraemon đã đem đến nhiều điều mới lạ cho cuộc sống của người bạn nhỏ. Thế giới mà Fujiko đã kiến tạo trong bộ truyện này – một thế giới đậm sắc trẻ thơ…Chiếc chong chóng tre, cánh cửa thần kỳ, cỗ máy thời gian…và rất nhiều món bảo bối của Đôrêmon, tất cả đều mê hoặc trẻ con không chỉ vì nó là sản phẩm của trí tưởng tượng thổi luồng gió mới đến với những tháng ngày tuổi thơ mà còn vì nó gọi dậy những ước mơ mà mỗi lần nói ra đều khiến người lớn phải bật cười của chúng ta', 3, 0, 0, 0, 0, NULL, '2019-12-05 13:12:45'),
(36, ' Thám tử lừng danh Conan', 'tham-tu-lung-danh-conan', 30000, 2, 'conan.jpg', 9, 'Thám tử lừng danh Conan (bản đẹp) hay Detective Conan, là một bộ truyện tranh trinh thám Nhật Bản của tác giả Aoyama Gōshō.\r\n\r\nMở đầu câu truyện, cậu học sinh trung học 17 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa. Shinichi trong phần đầu của Thám tử lừng danh Conan được miêu tả là một thám tử học đường xuất sắc. Trong một lần đi chơi công viên với Ran Mori, cậu tình cờ chứng kiến vụ một án giết người, Cậu đã giúp cảnh sát làm sáng tỏ vụ án. Trên đường về nhà, cậu vô tình phát hiện một vụ làm ăn mờ ám của những người đàn ông mặc đồ đen. Chúng phát hiện ra cậu và đã cho cậu uống một thứ thuốc độc chưa qua thử nghiệm là Apotoxin-4869 (APTX 4869) với mục đích thủ tiêu cậu. Tuy nhiên chất độc đã không giết chết Kudo mà chỉ khiến cậu bị teo nhỏ.\r\n\r\nKhi Ran hỏi tên cậu, Shinichi đã ghép \"Conan\" trong tên của Sir Arthur Conan Doyle và \"Edogawa\" trong tên của Edogawa Rampo, buột miệng nói ra tên mình là \"Conan Edogawa\". Tiến sĩ Agasa đã nhờ Ran trông nom Conan giúp mình. Ran nhận lời và từ đó Conan sống tại nhà của Ran tức văn phòng thám tử Mori, vừa che giấu thân phận vừa điều tra tung tích của Tổ chức Áo đen và tìm kiếm thuốc giải độc.', 50, 0, 0, 0, 0, NULL, NULL),
(37, 'Trạng Quỷnh: Thi Giò Gà', 'trang-quynh-thi-gio-ga', 20000, 0, 'trang-quynh.jpg', 9, 'Thi Giò Gà là thì gì ta :), hihi, trong câu chuyện nay thì Quỷnh phải thi nhịn đối 7 ngày với một võ sư học Yoga chuyên nghiệp....', 3, 0, 0, 0, 0, NULL, NULL),
(38, 'Quốc phẩm ẩn hình', 'quoc-pham-an-hinh', 20000, 0, 'than-dong-dat-viet.jpg', 9, 'Thần Đồng Đất Việt đã kể lại những câu chuyện về cuộc đời của Lê Tí, một Trạng nguyên của Đại Việt cùng với những người bạn thân của cậu là Sửu Ẹo, Dần Béo và Cả Mẹo. Sự ra đời của Trạng Tí cũng không được bình thường. Vì kiếp trước cậu vốn là một bậc thần tiên có kiến thức uyên bác trên Thiên Đình, sau đó được đầu thai xuống trần gian để giúp đỡ Đại Việt. Tí từ nhỏ đã thể hiện mình là một người con hiếu thảo, ham học và có trí thông minh hơn người. Vượt qua ba kì thi Hương, Hội, Đình một cách xuất sắc, cậu trở thành trạng nguyên nhỏ tuổi nhất của Đại Việt. Sau đó, cậu được Đại Minh công nhận là Lưỡng Quốc Trạng nguyên. Tuy đã ra làm quan nhưng đôi lúc cậu vẫn được vua cho phép về quê để chăm sóc mẹ và giúp đỡ dân làng. Và tất nhiên sự tài trí và sự giúp đỡ nhiệt tình từ những người bạn tốt đã giúp những người dân rất nhiều.', 4, 0, 0, 0, 0, NULL, NULL),
(39, 'Suối nguồn tươi trẻ', 'suoi-nguon-tuoi-tre', 65000, 2, 'Suối-nguồn-tươi-trẻ.gif', 12, 'Đây là cuốn sách duy nhất cung cấp cho chúng ta thông tin vô giá về năm phương pháp thể dục của Tây Tạng xưa. Năm phương pháp này chính là bí quyết đđể duy trì sự tươi trẻ, sức khỏe và sinh lực. Từ hàng ngàn năm qua, những bài tập này đã trở thành những nghi thức thần kỳ của các vị Lạt Ma được giữ kín trong các tu viện trên dãy Himalaya. Hơn sáu mươi năm trước, năm phương thức tập luyện này lần đầu tiên gây được sự chú ý của phương Tây qua cuốn sách của tác giả Peter Kelder. Cho đến nay, chẳng ai có thể khẳng định rằng câu chuyện của ngài đại tá Bradford do tác giả kể lại là điều có thật hay là tưởng tượng, hay là sự pha lẫn của cả hai. Nhưng giá trị thông điệp về sức khỏe và sự tươi trẻ mà các thức tập này mang là hoàn toàn có thật.', 2, 0, 0, 0, 0, NULL, NULL),
(40, 'Phục hồi sức khỏe', 'phuc-hoi-suc-khoe', 60000, 3, 'phuc-hoi-suc-khoe.jpg', 12, 'Trong quyển sách ông nói rằng: “Vâng, tôi đã không chết mà tôi có thể sống rất lâu trong khỏe mạnh vô bệnh tật và hầu như không già đi. Hãy để cho sự bất tử có thể không bao giờ đạt được nhưng sự trẻ trung thì sẽ không bao giờ mất đi”. Đây là câu trả lời mạnh mẽ nhất khi mà nền y học đã khép ông án tử hình từ khi còn nhỏ. Y học hiện nay phát triển nhưng sự hiểu biết về cơ thể con người còn rất nhỏ bé. Chúng ta hoàn toàn có thể kéo dài tuổi thanh xuân bằng cách lắng nghe, và học hỏi về bản thân mình.', 3, 0, 0, 0, 0, NULL, '2019-12-05 13:36:11'),
(41, 'Làm sạch mạch máu', 'lam-sach-mach-mau', 50000, 5, 'lam-sach-mach-mau.gif', 12, 'Nishi Katsuzo đã đưa ra các giải thích khoa học (ví dụ: chỉ riêng việc ăn uống) rằng thức ăn đưa vào cơ thể cần phải gồm những loại nào để hội đủ 4 nguyên tố cấu thành nên cơ thể con người. Đó là LỬA (ánh sáng mặt trời) là KHÔNG KHÍ, là ĐẤT và NƯỚC. Tác giả cũng đã khẳng định (ngay trong cuốn sách) là cứ qua mỗi 10 ngày một, khi cơ thể được nuôi dưỡng đúng sẽ nhận được máu mới hoàn toàn tốt, và cơ thể sẽ tự động điều chỉnh đáng kể về sức khỏe theo hướng tích cực. Các chỉ dẫn của ông rất rõ ràng, dễ hiểu. Các nguồn thức ăn mà ông giới thiệu đâu có đắt đỏ và khó kiếm tìm trong thực tế đời sống của chúng ta. Còn lợi ích của nó, các bạn hãy cùng trải nghiệm và tự các bạn sẽ có câu trả lời!', 5, 0, 0, 0, 0, NULL, NULL),
(42, 'Thức ăn quyết định số phận', 'thuc-an-quyet-dinh-so-phan', 45000, 2, 'sach-thuc-an-quyet-dinh-so-phan-ban.jpg', 12, 'Quyển sách gồm hai phần: Phần đầu là nguyên văn những gì mà nhà Nhân tướng học nổi tiếng nhất Nhật Bản ghi lại, phầ hai gồm những sưu tập về ăn uống có liên quan mất thiết đối với số phận của con người theo ý kiến của tiên sinh Ohsawa, theo truyền thống của Phật giáo nguyên thuỷ, đại thừa và các truyền thống khác.', 3, 0, 0, 0, 0, NULL, NULL),
(43, 'Hội Họa Toàn Thư', 'hoi-hoa-toan-thu', 150000, 3, 'sach-hoi-hoa-toan-thu.jpg', 13, 'Cuốn sách Hội Họa Toàn Thư gồm những nội dung chính như sau:Tự học và thực hành họa pháp sơn dầu, Acrylic, màu nước, Tempera.Nghiên cứu kỹ thuật và phong cách danh họa quốc tế.Lược sử kỹ thuật hội họa từ cổ điển tới hiện đại.\r\n\r\n“Acrylic ra đời để đáp ứng nhu cầu bức thiết cần phải có một loại sơn đàn hồi – chống nứt nẻ, mà vẫn giữ được vẻ sáng bóng khi phơi ra ngoài trời. Nó được chế tạo dưới cả hai dạng bột màu và nhựa, loại sau này còn gọi là polyvinyl acetate. Nó khô mau vì là loại hòa tan trong nước và lấy nước để bốc hơi. Điều này có nghĩa là người nghệ sĩ có thể sơn đi quét lại trong thời gian ngắn không cần chờ đợi như với loại dầu.”\r\n\r\n', 4, 0, 0, 0, 0, NULL, NULL),
(44, 'Hoạ Sĩ Và Thiếu Nữ', 'hoa-si-va-thieu-nu', 80000, 3, 'sach-hoa-si-va-thieu-nu.jpg', 13, 'Nhiều bức tranh của hoạ sĩ Nguyễn Phan Chánh gắn liền với những câu chuyện tình yêu. Chính vì vậy, con gái ông – Nguyệt Tú đã viết lại cuốn sách này nhằm giúp người đọc hiểu thêm về nguồn cảm hứng của hoạ sỹ Nguyễn Phan Chánh khi vẽ những bức tranh lụa nổi tiếng còn mãi với thời gian.\r\n\r\nNguyễn Phan Chánh đã dùng cả cuộc đời để vẽ người phụ nữ ở lứa tuổi đẹp nhất – lứa tuổi thanh xuân. Những câu chuyện tình trong cuốn sách này là mảnh đời riêng của hoạ sỹ Nguyễn Phan Chánh mà con gái ông biết được qua những trang nhật ký mà ông để lại, và qua những kỉ niệm không thể nào quên trong quãng đời con gái ông sống với ông.', 5, 0, 0, 0, 0, NULL, NULL),
(45, 'Hội Họa Trung Quốc', 'hoi-hoa-trung-quoc', 40000, 2, 'sach-hoi-hoa-trung-quoc.jpg', 13, 'Hội Họa Trung Quốc truyền thống về cơ bản mang tính cụ thể, mà chưa có được ý nghĩa như hội họa trừu tượng.\r\n\r\nĐiểm khác biệt là cảnh thiên nhiên trong hội họa Trung Quốc không phải là sự phản chiếu đơn giản về tự nhiên mà là sự kết hợp thống nhất giữa tự nhiên và tâm hồn người họa sĩ, đó là thế giới mới của “thiên nhiên hợp nhất” (con người hòa hợp với thiên nhiên).', 5, 0, 0, 0, 0, NULL, NULL),
(46, 'Hội Họa Sơn Mài Việt Nam', 'hoi-hoa-son-mai-viet-nam', 45000, 5, 'sach-hoi-hoa-son-mai-viet-nam.jpg', 13, 'Chất liệu chủ yếu để làm tranh sơn mài Việt Nam cũng chính là cổ chất dùng trong cổ sơn của người Việt Nam. Đó là chất nhựa mủ chích lấy ở vỏ một loại cây có tên gọi là cây sơn. Từ đó suy ra thì sơn mài chính là chất liệu hội họa cực kỳ độc đáo mang tính đặc thù dân tộc của Việt Nam, cho dù đã đạt đến đỉnh cao ở đủ các môn khác, tấm lòng khắc khoải, khát khao của các nghệ sĩ vẫn canh cánh hướng về nó.\r\n\r\nTác giả cuốn sách đã dày công tuyển chọn và tổng hợp những tư liệu cơ bản về lịch sử hình thành, quá trình phát triển, những thành tựu nổi bật của hội họa sơn mài Việt Nam. Đồng thời, nội dung chính của sách tập trung giới thiệu những tác phẩm đặc sắc của nhiều họa sĩ: Trần Văn Cẩn, Đỗ Đức Khải, Hoàng Tích Chù, Nguyễn Gia Trí… Điểm cốt lõi của các bức tranh là đề cao được không khí Việt Nam, cái đẹp thể hiện tâm lý thời đại, tâm lý dân tộc.', 5, 0, 0, 0, 0, NULL, NULL),
(47, 'Sử Việt 12 Khúc Tráng Ca', 'su-viet-12-khuc-trang-ca', 40000, 2, 'sach-su-viet-12-khuc-trang-ca.jpg', 14, 'Đây là cuốn sách hay về lịch sử Việt Nam dành cho tất cả mọi thế hệ. Là một người Việt, bạn sẽ tìm thấy niềm tự hào, cũng như biết thêm về một dân tộc đã trải qua biết bao thăng trầm mới có thể có được ngày hôm nay. Quyển sách được viết hấp dẫn, bi hùng và những bài học của tiền nhân để lại thông qua những câu chuyện đặc sắc.\r\n“Sử Việt – 12 khúc tráng ca” kể về 12 câu chuyện dựng nước và giữ nước thời phong kiến, được chọn lọc theo tính chất quan trọng và hùng tráng trong dòng chảy lịch sử Việt Nam. Những tư liệu lịch sử trong sách đều đã được kiểm chứng, kèm theo những nhận định và đánh giá của người biên soạn. Tác phẩm kể lại các câu chuyện Sử Việt đầy hấp dẫn bằng một cách tiếp cận hoàn toàn mới, không phải như tiểu thuyết dã sử, nhưng cũng không phải là một tài liệu chuyên khảo khô khan.', 5, 0, 0, 0, 0, NULL, NULL),
(48, 'Vua Gia Long Và Người Pháp', 'vua-gia-long-va-nguoi-phap', 35000, 1, 'Vua-gia-long-va-nguoi-phap-Thuy-Khue.jpg', 14, 'Tác giả Thụy Khuê nhận thấy tồn tại nhiều khác biệt lớn giữa sử sách của vua quan nhà Nguyễn so với sử sách mà các sử gia phương Tây thời đó viết ra, để từ đó tìm ra nhiều tư liệu lịch sử mới lưu trữ tại các tàng thư công, tư, tôn giáo ở Châu Âu (chủ yếu là ở Pháp), nhằm làm rõ có đúng là không có những người Pháp nói trên thì Nguyễn Ánh sẽ gặp vô vàn khó khăn khi chống lại Tây Sơn, thậm chí còn có thể thất bại…\r\nQuyển sách hay về Lịch sử Việt Nam này dựng lại được bức tranh khách quan và đầy đủ nhất về những người Pháp bên cạnh Nguyễn Ánh – Gia Long trong giai đoạn lịch sử vô cùng phức tạp này của nước ta.', 4, 0, 0, 0, 0, NULL, NULL),
(49, 'Bão Táp Triều Trần', 'bao-tap-trieu-tran', 55000, 3, 'Bao-tap-trieu-tran.jpg', 14, 'Bộ sách hay về lịch sử Việt Nam Bảo Táp Triều Trần được ra mắt lần đầu cả bộ vào năm 2003, và cho đến nay đã được tái bản nhiều lần để đáp ứng nhu cầu của bạn đọc yêu thích lịch sử. Đặc biệt, bộ sách này đã vinh dự được nhận giải thưởng Bùi Xuân Phái – Vì tình yêu Hà Nội.\r\nBộ sách này bao gồm 6 tập: Bão táp cung đình ; Đuổi quân Mông Thái ; Thăng Long nổi giận ; Huyết chiến Bạch Đằng ; Huyền Trân công chúa ; Vương triều sụp đổ. Khắc họa rõ nét từ khi nhà Trần ra đời tới khi kết thúc sứ mệnh lịch sử 175 năm tồn tại.', 6, 0, 0, 0, 0, NULL, NULL),
(50, 'Việt Nam Sử Lược', 'viet-nam-su-luoc', 65000, 4, 'viet-nam-su-luoc.jpg', 14, 'Vai trò của sử sách không chỉ để ghi chép những gì đã qua, mà còn để người sau soi xét lại, tìm tòi cái căn nguyên những công việc mà người đi trước để lại để từ đó hiểu rõ hơn những vận hội trị loạn của một nước, những trình độ tiến hóa của một dân tộc. Ngoài ra, chính những sử sách mới tạo cho thế hệ mai sau lòng yêu nước yêu tổ quốc yêu dân tộc, mới biết cố gắng học hành, hết sức làm lụng, để vun đắp thêm vào cái nền xã hội của tiên tổ đã xây dựng nên mà để lại cho mình. Bởi những lẽ ấy cho nên phàm dân tộc nào đã có đủ cơ quan và thể lệ làm cho một nước độc lập, thì cũng có sử cả.', 4, 0, 0, 0, 0, NULL, NULL),
(51, 'Những nốt nhạc tỉnh thức', 'nhung-not-nhac-tinh-thuc', 28000, 5, 'Nhung-not-nhac-tinh-thuc.jpg', 15, 'Cuốn sách này ghi lại những khám phá của tác giả Tricia Tunstall, và những nỗ lực làm sáng tỏ khả năng gần như kỳ diệu của Sistema để truyền cảm hứng cho các nghệ sĩ, nhà giáo dục, và các nhà hoạt động xã hội ở khắp mọi nơi. Nó lần theo quá trình mà tác giả đã dần nhận thức được rằng trong El Sistema, lý tưởng dẫn dắt dàn nhạc như một trường học cho cộng đồng phải rất mạnh mẽ để có thể xuất sắc xóa nhòa sự phân biệt giữa giáo dục âm nhạc và biến đổi xã hội. Và nó mô tả quá trình củng cố niềm tin trong bà rằng nước Mỹ và các nơi khác trên thế giới, có nhiều điều để học hỏi từ mô hình của Venezuela.', 3, 0, 0, 0, 0, NULL, NULL),
(52, 'Bản nhạc đam mê Beethoven', 'ban-nhac-dam-me-beethoven', 33000, 5, 'ban_nhac_dam_me_beethoven.jpg', 15, 'Cuốn sách lấy tuổi thơ và thời thanh niên của Beethoven làm trọng tâm, lấy tinh thần bất khuất của ông làm cốt lõi, chạm đến thế giới tâm hồn ông thông qua nhiều phương tiện. Beethoven là nhà soạn nhạc được nhắc tới nhiều nhất và có ảnh hưởng bậc nhất. Ông đã có những đóng góp vĩ đại cho nền nhạc cổ điển thế giới. Những sáng tác của Beethoven mang nhiều tính triết lý sống. Cuốn sách giới thiệu những sáng tác của Beethoven. Những sáng tác này đã trở nên bất hủ và vẫn còn khắc ghi trong lòng của nhiều người nghe nhạc cho đến tận hôm nay.', 7, 0, 0, 0, 0, NULL, NULL),
(53, 'Từ giọng hát em', 'tu-giong-hat-em', 36000, 3, 'tu_giong_hat_em.jpg', 15, 'Đã hơn 50 năm qua, những tình khúc của các chàng nhạc sĩ TRẺ ngày ấy vẫn còn in đậm trong tâm trí của nhiều thế hệ người yêu nhạc; nhiều thế hệ ca sĩ đã tạo nên tên tuổi từ những tình khúc này. Và quyển sách Từ giọng hát em tuyển tập những bản nhạc thành công nhất của thế hệ nhạc sĩ TRẺ một thời này.', 2, 0, 0, 0, 0, NULL, NULL),
(54, 'Âm nhạc ở quanh ta', 'am-nhac-o-quanh-ta', 31000, 7, 'Am-nhac-o-quanh-ta.gif', 15, 'Trong cuốn sách này nhạc sĩ nêu lên cách hệ thống và khoa học những kiến thức cơ bản về âm nhạc: sự hình thành cảm hứng sáng tác của người nghệ sĩ, lịch sử phát triển, các nguyên lí cơ bản, các xu hướng của âm nhạc hiện đại… góp phần hình thành ở các em nhỏ khả năng nhận thức và cảm thụ âm nhạc.\r\nÂm nhạc ở quanh ta gồm 9 phần ngắn về các vấn đề chung của nghệ thuật âm nhạc, cung cấp cho bạn đọc nhỏ tuổi nhiều tư liệu phong phú về âm nhạc, giúp các em thêm hứng thú trong sinh hoạt ca hát. Đây được coi như một cuốn sách giáo khoa vỡ lòng về âm nhạc cho các em, và cho cả những người lớn, đặc biệt là anh chị phụ trách Đội.', 4, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `users_id`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 1925110, 1, 1, 'Giao hạn tận nơi', '2019-12-07 15:36:34', '2019-12-07 15:36:34'),
(2, 1069200, 1, 1, 'Giao hàng nhanh', '2019-12-07 18:39:36', '2019-12-07 18:39:36'),
(3, 1042800, 1, 0, 'Giao hạn tận nơi', '2019-12-07 18:49:41', '2019-12-07 18:49:41'),
(4, 996600, 5, 1, 'Giao hạn tận nơi', '2019-12-07 18:52:17', '2019-12-07 18:52:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `token` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thị Ái Hậu', 'aihau281199@gmail.com', '0384300208', 'An Phú-Tp Pleiku-GiaLai', '3f11e1dbc3710e21a02fde57381d6d83', NULL, 1, NULL, '2019-12-07 18:51:09', '2019-12-07 18:51:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

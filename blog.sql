-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2023 at 11:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', NULL, NULL),
(2, 'Clothing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment_boxes`
--

CREATE TABLE `comment_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_boxes`
--

INSERT INTO `comment_boxes` (`id`, `username`, `comment`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'John', 'First 1 Comment on post no 8', 8, '2022-11-13 00:47:09', '2022-11-13 00:47:09'),
(2, 'John', 'First 2 Comment on post no 8', 8, '2022-11-13 00:52:43', '2022-11-13 00:52:43'),
(3, 'John', 'First 3 Comment on post no 8', 8, '2022-11-13 00:53:04', '2022-11-13 00:53:04'),
(4, 'John', 'First 4 Comment on post no 8', 8, '2022-11-13 00:53:34', '2022-11-13 00:53:34'),
(5, 'John', 'First 1 Comment on post no 9', 9, '2022-11-13 00:54:10', '2022-11-13 00:54:10'),
(6, 'John', 'First 2 Comment on post no 9', 9, '2022-11-13 00:55:32', '2022-11-13 00:55:32'),
(7, 'John', 'First 1 comment on post no 11', 11, '2022-11-13 05:15:21', '2022-11-13 05:15:21'),
(8, 'John', 'First 1 comment on post no 5', 5, '2022-11-13 05:16:32', '2022-11-13 05:16:32'),
(9, 'John', 'First 1 comment on post no 4', 4, '2022-11-13 05:25:15', '2022-11-13 05:25:15'),
(10, 'John', 'First 1 comment on post no 4', 4, '2022-11-13 05:26:38', '2022-11-13 05:26:38'),
(11, 'John', 'First 1 comment on post no 4', 4, '2022-11-13 05:27:46', '2022-11-13 05:27:46'),
(12, 'John', 'First 1 comment on post no 4', 4, '2022-11-13 05:29:14', '2022-11-13 05:29:14'),
(13, 'John', 'Fivth 5 Comment on post no 4', 4, '2022-11-13 06:02:06', '2022-11-13 06:02:06'),
(14, 'John', 'Fivth 6 Comment on post no 4', 4, '2022-11-13 06:02:25', '2022-11-13 06:02:25'),
(15, 'John', 'asvfdxrg', 5, '2022-11-13 06:03:47', '2022-11-13 06:03:47'),
(16, 'John', 'asvfdxrg', 5, '2022-11-13 06:03:48', '2022-11-13 06:03:48'),
(17, 'John', 'asvfdxrg', 5, '2022-11-13 06:03:48', '2022-11-13 06:03:48'),
(18, 'John', 'asvfdxrg', 5, '2022-11-13 06:03:49', '2022-11-13 06:03:49'),
(19, 'John', 'asvfdxrg', 5, '2022-11-13 06:03:49', '2022-11-13 06:03:49'),
(20, 'John', 'Comment on Fourth Post', 4, '2022-11-13 12:00:02', '2022-11-13 12:00:02'),
(21, 'John', 'First 1 comment on post no 10', 10, '2022-11-13 13:21:30', '2022-11-13 13:21:30'),
(22, 'John', 'Second comment on post no 10', 10, '2022-11-13 13:22:02', '2022-11-13 13:22:02'),
(23, 'John', 'Third comment on post no 10', 10, '2022-11-13 13:22:28', '2022-11-13 13:22:28'),
(24, 'John', 'Fourth comment on post no 10', 10, '2022-11-13 13:24:32', '2022-11-13 13:24:32'),
(25, 'John', 'comment on post no 5', 5, '2022-11-13 13:27:53', '2022-11-13 13:27:53'),
(26, 'John', 'comment', 4, '2022-11-14 01:01:11', '2022-11-14 01:01:11'),
(27, 'John', 'hgbv', 4, '2022-11-14 05:01:35', '2022-11-14 05:01:35'),
(28, 'test', 'comment by user test', 4, '2022-11-14 05:19:29', '2022-11-14 05:19:29'),
(29, 'Gagandeep Kaur', 'Good', 4, '2022-11-15 00:20:22', '2022-11-15 00:20:22'),
(30, 'pooja', 'mkl6ty', 4, '2022-11-15 04:16:09', '2022-11-15 04:16:09'),
(31, 'pooja', 'comment', 4, '2022-11-15 04:26:16', '2022-11-15 04:26:16'),
(32, 'pooja', 'comment', 4, '2022-11-15 04:26:59', '2022-11-15 04:26:59'),
(33, 'pooja', 'comment', 4, '2022-11-15 04:27:30', '2022-11-15 04:27:30'),
(34, 'pooja', 'comment', 4, '2022-11-15 04:27:53', '2022-11-15 04:27:53'),
(35, 'pooja', 'comment', 4, '2022-11-15 04:28:14', '2022-11-15 04:28:14'),
(36, 'pooja', 'comment', 4, '2022-11-15 04:28:21', '2022-11-15 04:28:21'),
(37, 'John', 'comment', 4, '2022-11-15 05:12:55', '2022-11-15 05:12:55'),
(38, 'John', 'comment', 4, '2022-11-15 05:14:09', '2022-11-15 05:14:09'),
(39, 'John', 'comment it', 4, '2022-11-15 05:24:08', '2022-11-15 05:24:08'),
(40, 'John', 'yesss comment', 4, '2022-11-15 05:34:53', '2022-11-15 05:34:53'),
(41, 'John', 'this Comment', 4, '2022-11-15 23:32:34', '2022-11-15 23:32:34'),
(42, 'John', 'comment', 4, NULL, NULL),
(43, 'gagan', 'gagan', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_12_061623_create_category_details', 2),
(6, '2022_11_12_062913_create_category_details', 3),
(7, '2022_11_12_152737_create_categories_table', 4),
(8, '2022_11_12_153029_create_posts_table', 5),
(9, '2022_11_12_153410_create_posts_table', 6),
(10, '2022_11_13_055637_create_comment_boxes_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `detail` text NOT NULL,
  `image` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `detail`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'Mobile', 'OnePlus 10 Pro 5G (Emerald Forest, 12GB RAM, 256GB Storage)', 'OnePlus 10 Pro 5G (12 GB RAM, 256 GB ROM, Emerald Forest)\nThe 8th generation snapdragon processor and the dual stereo speakers of Oneplus Mobile 10 Pro 12GB 256GB price is budget friendly and is the reason to never settle for anything less.\n\nFeatures:\nSleek Design\n\nAn all-new streamlined design language of Oneplus 10 Pro seamlessly flows from the 3D ceramic rear camera cover. It’s a symphony of the burdenless design philosophy, exclusive materials, and premium unibody experience. \n\nSecond Generation Hasselblad Camera\n\nBuy online Oneplus 10 Pro to get the new generation triple-camera setup that has a customized IMX789 sensor, capturing images and your imagination.\n\nFlagship Performance\n\nThe next-generation Snapdragon 8 Gen in the Oneplus 10 Pro 256GB specs is flagship-fast. It is paired with LPDDR5 RAM and UFS 3.1 2-LANE unlocking effortlessly fast, and with smooth performance at your fingertips.\n\nLasting Battery Life\n\nBuy online Oneplus 10 Pro 256GB that offers a 5000mAH battery life with 80W SUPERVOOC and 50W AIRVOOC to empower the digital life.\n\nGaming Friendly\n\nWith the accelerated GPU and CPU of Oneplus 256GB specs, the hyper boost unlocks next-level gaming. The GPA Frame Stabilizer also ensures ultra-stable and smooth frame rates, for up to 4 hours of intense FPS gaming.\n\nAdditional Features\nO-sync\n\nThe O-Sync in the Oneplus 256GB Volcano Black increases the sync speed between the processor and display by 3 to 6 times.\n\nX-axis linear motor\n\nThe cutting-edge next-gen X-axis linear motor of Oneplus 10 Pro is the powerful haptic motor that delivers next-level immersion in apps, photography, and supported games.\n\nOxygenOS 12\n\nA new visual direction based on simple and textured visuals, OxygenOS 12 of the Oneplus 10 Pro 256GB helps to focus on and move seamlessly between work, rest, and play. \n\nFisheye Mode\n\nOneplus 10 Pro offers a four times wider viewing camera that helps you to capture the area up to 150°.', 'https://m.media-amazon.com/images/I/618hqM-yxtL._SL1500_.jpg', 1, '2022-11-12 00:40:09', '2022-11-12 00:40:09'),
(5, 'Mobile', 'Apple iPhone 13 Pro (128GB) - Gold', 'In this year’s new iPhone Mobile range there are four models, two of which bear the “Pro” moniker, the iPhone 13 Pro and the iPhone 13 Pro Max. Unlike with the 12 Pro series, the camera set up in both the iPhone 13 Pro and the larger Max version is the same, so most of what is said in our review can also be applied to the bigger model.\n\nThe iPhone 13 Pro features a triple lens set up, with a wide, super-wide and telephoto option on board. The wide angle lens is equivalent to 26mm and has an f/1.5 aperture, while the ultra-wide angle is an improvement from the iPhone 12 Pro model and now features an f/1.8 aperture (it remains at 13mm equivalent). The telephoto lens is also longer than its predecessor, now being a 3x optic (78mm equivalent), with an f/2.8 aperture. Apple is always reluctant to reveal the exact specification of its sensor sizes, but it has claimed that the new models feature larger sensors than the predecessor.\n\nThere are some other new specifications for the iPhone 13 Pro series, including sensor-shift optical image stabilisation, something which previously was only available for the 12 Pro Max version, Cinematic Mode for video, Photographic Styles for stills, plus the new A15 Bionic Chip with 5-core GPU which Apple claims is the fastest chip ever found in a smartphone.\n\nA set of other specifications have been brought over from the iPhone 12 Pro, including Night mode, the ability to shoot in raw format, Portrait mode and 4K video recording at up to 60p. ProRes video recording will be available via a later firmware upgrade, but you will need the iPhone with at least 256GB of storage. In terms of the specifications not directly relating to photography, there’s a 6.1-inch Super Retina XDR screen, compatibility with MagSafe accessories (such as wireless chargers), and 5G connectivity.\n\nAt the time of writing, the iPhone 13 Pro retails for £949 for the iPhone 13 Pro 128GB, with up to 1TB of storage space available, which will set you back £1,449. If you want to go for the Max version, prices range between £1,049 and £1,549. There are four different colours available for the iPhone 13 Pro series, which are Sierra Blue (which we’ve been using for this review), Silver, Gold and Graphite (black).\n\nJust as we saw last year, Apple don’t bundle a charging adapter with the iPhone 13 Pro (just the Lightning cable is included). It’s cited that this is for environmental reasons, with the assumption that most users already have one they can use - but if you don’t you’ll need to budget for one of those too.\n\nThe design of the iPhone 13 Pro is almost identical to the iPhone 12 Pro. Keeping to the same squared off edge aesthetic as its predecessor, the 13 Pro is almost the same size as before, being just 0.25mm thicker than before. It’s a little bit heavier at 203g (vs 187g), but the difference in real-world use isn’t immediately obvious.\n\nAs before, we’ve got a 6.1-inch Super Retina XDR Display for the screen, which makes use of a Ceramic Shield designed for toughness, alongside Surgical-grade stainless steel. Both of these specifications together should make the iPhone 13 Pro reasonably adept at withstanding the odd knock or scrape, though we’d still recommend investing in a case for the phone. Despite being almost the same size as its predecessor, if you’ve already got an iPhone 12 Pro, you’re going to need to invest in a new case as the lens units on the rear take up much more space than before.\n\nOn the back of the phone you’ll see the three lenses are gathered together on the top left hand side, while there’s also a flash unit and what looks like a large black hole, which is the “LiDAR Scanner”, used for measuring depth and designed to make autofocusing faster in certain conditions, such as low light.\n\nAs before, we’ve got a 6.1-inch Super Retina XDR Display for the screen, which makes use of a Ceramic Shield designed for toughness, alongside Surgical-grade stainless steel. Both of these specifications together should make the iPhone 13 Pro reasonably adept at withstanding the odd knock or scrape, though we’d still recommend investing in a case for the phone. Despite being almost the same size as its predecessor, if you’ve already got an iPhone 12 Pro, you’re going to need to invest in a new case as the lens units on the rear take up much more space than before.\n\nOn the back of the phone you’ll see the three lenses are gathered together on the top left hand side, while there’s also a flash unit and what looks like a large black hole, which is the “LiDAR Scanner”, used for measuring depth and designed to make autofocusing faster in certain conditions, such as low light.\n\nJust like its predecessor, the iPhone 13 Pro has angular edges, something which was a design departure from the iPhone 11 Pro and before. There’s four different colours to choose from, with them being a little bit more muted compared to the options available for the iPhone 13 (standard). A new option for the 13 Pro series is Sierra Blue, which we’ve been using for this review.\n\nIf you’ve used an iPhone before then you’ll be very familiar with the native camera app, which you can launch directly from the lock screen by performing a “long press” on the camera icon. If your phone isn’t locked, you can also access the camera by tapping the appropriate icon on your home screen. Placing the camera in your iPhone’s “dock” can be a good way to access it quickly, no matter which page of the menu/app screen you’re on.\n\nAs anyone who has used an iPhone before will be aware, the native app is very simple and straightforward to use. While there is an argument to be made for this kind of simplicity, it would be nice for the “Pro” model at the very least to include some sort of more advanced or pro mode, just like we see on Android phones. That said, there are of course plenty of apps you can download to give you that functionality, and more and more settings changes are starting to creep into even the simple iPhone’s native camera app.\n\nThe native camera app will launch by default in “Photo” mode, which is what you’re likely to spend most of your time using. When in this mode, you can tap around the screen to change the focus point - metering will also take its cue from the active AF point. You can also tap on the screen and see a small sun icon appear - move your finger up and down on the screen and you’ll be able to adjust brightness. If you hold down your finger when selecting the AF point, then AE/AF lock will also engage, giving you the opportunity to focus and recompose without the native app trying to adjust focus or exposure.', 'https://m.media-amazon.com/images/I/61sDyXAepuL._SL1500_.jpg', 1, '2022-11-12 00:42:09', '2022-11-12 00:42:09'),
(6, 'Mobile', 'Samsung Galaxy Z Fold4 5G (Graygreen, 12GB RAM, 256GB Storage)', 'Samsung is back again with its most innovative series of smartphones: Samsung Galaxy Z Fold 4 and Samsung Galaxy Flip 4. But at the moment, we’ve decided to emphasise more on the Galaxy Fold 4; we’ll save the review for Z Flip 4 and Z Fold 4 for later when the phones come out for sales.\n\nWe’re all aware that Samsung is the true pioneer of foldable smartphones, if not a pioneer in a literal sense. While it provided the best version among its other competitors back in 2019, like HTC, etcetera, there were a lot of complications in the first version of the Samsung Galaxy Z Fold. But since then, Samsung has put in a lot of effort to make the foldable experience better at every step.\n\nSamsung took a tremendous leap of progress while making the Samsung Galaxy Z Fold 2, as the first version of the phone created a lot of chaos among the first-unit buyers. It was not mentioned anywhere that you are not supposed to remove the thin film layer on top of the screen. Many people, including some famous tech YouTubers, faced the ordeal of broken and glitched displays because of the mentioned issue.\n\nInevitably, the first version of the Samsung Galaxy Z Fold was recalled and then came Samsung Galaxy Z Fold 2. Samsung Galaxy Z Fold 2 was highly applauded for groundbreaking innovation in the tech world with its flagship Snapdragon 865 SoC.\n\nIt was a big deal because building a fully functional phone with a foldable OLED display and a flagship processor was not easy to achieve back then. And since then, Samsung Galaxy Z Fold phones have maintained and improvised these factors.\n\nPerformance, design and display specs in any phone, especially an Android phone, matter a lot. However, an OS also matters.\n\nBecause at the end of the day, the usage and development of apps depend on the OS.\n\nStarting from Android 10 in Samsung Galaxy Fold 2, we’ve finally landed on Samsung Galaxy Z Fold 4, which does not just have Android 12; it has Android 12L. It is the first device launched with the stable version of Android 12L.\n\nFor the ones unaware of Android 12L, it is another version of Android 12 mainly made for larger screens like foldable phones, tablets and Chromebooks. In even simpler terms, It’s like iPadOS. You get access to a two-column view for multitasking, a taskbar for accessing apps of your choice and an optimised larger view of apps.\n\nSamsung Galaxy Z Fold 4 has Snapdragon 8+ Gen 1 SoC and a 4400 mAh battery, which clearly indicates that Samsung Galaxy Z Fold 4 has got the perfect balance between good performance and battery longevity.\n\nPaired with Android 12L, you get a mini PC-like experience, equivalent to how the iPad works as a mini-MacBook.\n\nThere’s not much change to be seen on the display spec sheet. However, as per most renowned tech experts, the primary display panel is now more scratchproof than earlier, which is difficult to achieve. It is so because you can only use plastic for making foldable phones, and we all know how easily plastics get scratched.\n\nFYI, for additional scratch-proofing, you can head to our site and look for Samsung Galaxy Z Fold 4 Full-Body/ Screen Protectors or Samsung Galaxy Z Fold 4 skins if you want to add a bit of flair to the back panel.\n\nCombining the display, performance, battery and the Android 12L OS, the Samsung Galaxy Z Fold 4 will give you the kind of experience you generally get in iPads. Moreover, you can turn on DeX mode and connect it to an external display for a full-blown Chromebook PC.\n\nSo, not only does the Samsung Galaxy Z Fold 4 gives you access to a makeshift Android tablet, but you also get to use it as a Chromebook if required.\n\nPricing is the only factor that is a prominent issue while buying, as it is utterly expensive.\n\nThe starting pricing of a Samsung Galaxy Z Fold 4 is 1.55 Lacs INR, FYI.\n\nFun fact? You can buy two iPhone mini version base models with that money. Moreover, inflation is real, so yes, it is expensive, indeed.\n\nHowever, there’s an unpopular opinion about the pricing that we agree on: It is priced somewhat okay-ish.\n\nIt’s a controversial opinion, but it’s agreeable because there’s no viable competition for foldable phones in the global market.\n\nXiaomi and Oppo have good foldable phones limited to China exclusively, and there’s no confirmation on when or whether these phones will launch globally. Microsoft’s Surface Duo is there but isn’t the standard you’d look for in a foldable smartphone. Hence, Samsung is not backing down on the price of their foldable phones.\n\nAnd moreover, a foldable phone is one of the most innovative techs you can get your hands on these days, hence, the high buck pricing.\n\nBut we assure you: it is totally worth mobile it.', 'https://m.media-amazon.com/images/I/71Vd1+ZnY-L._SL1500_.jpg', 1, '2022-11-12 00:44:09', '2022-11-12 00:44:09'),
(7, 'Mobile', 'Samsung Galaxy S21 5G (Phantom Violet, 8GB, 128GB Storage)', 'The Samsung Galaxy S21 Ultra 5G is the first S-series smartphone to support the S Pen stylus.\r\nThe smartphone has a 108MP primary camera with 100X space zoom capabilities.\r\nIt flaunts a stunning WQHD+ Dynamic AMOLED display with refresh rate between 10Hz and 120Hz depending on the on-screen content.\r\nSamsung launched the Galaxy S21 series in January 2021, which was well over a month earlier than its usual February launch schedule. The new smartphones bring key improvements like slightly brighter display, faster chipset and storage, and improved software. However, all this and more come at a starting price of $799 for the Galaxy S21, which is $200 lower than the Galaxy S20.\r\n\r\nThe flagship smartphone of the series, the Galaxy S21 Ultra 5G, carries a price tag of $1,199, which is also $200 less than last year’s Galaxy S20 Ultra 5G. According to Counterpoint’s Component Practice Research, the S21 Ultra costs 7% less to produce compared to its predecessor. This cost reduction is also due to the removal of the charger and headphones from the box.\r\n\r\nAs Samsung is skipping the flagship Note series this year, the S21 Ultra gets support for the S Pen stylus (sold separately), which is coming to the S Series for the first time. With all these upgrades, has Samsung done enough to offer the absolute best of Android experience? Here is our long-term Samsung Galaxy S21 Ultra 5G review after using it for over six months.\r\n\r\nElegant Design, Phantom Black Color Give it a Classic Look\r\nGorilla Glass Victus protection front and back.\r\nIP68 water and dust resistant.\r\nSamsung has always focused on the CMF (color, material, finishing) for both the Galaxy S and Note lines, and the new S21 line-up is no exception. At the launch event, Samsung spent some time explaining the lengthy process involved in creating the perfect black color finish. It finally settled on a black film with haze glass (Gorilla Glass Victus) on top.\r\n\r\nThe result is a clean and smooth black finish which not only offers a good grip when holding the phone but also keeps smudges and fingerprints at bay. Even after six months of usage without a case or screen guard, Gorilla Glass Victus holds up well and there are no scratches so far.\r\n\r\nThe camera module bump at the back still exists and the phone wobbles when kept face up on the table, but that is not a deal-breaker. The module perfectly curves into the phone’s body.\r\n\r\nPhantom Black on the Galaxy S21 Ultra is the best black finish we have seen so far.\r\n\r\nDisplay: One of the Best Smartphone Screens\r\n8-inch Dynamic AMOLED display, 120Hz refresh rate (LTPO), HDR10+, 1500 nits.\r\nWQHD resolution (1440×3200 pixels, 515ppi).\r\nQualcomm second-generation ultrasonic fingerprint scanner.\r\n9ms latency for S Pen support.\r\nSamsung has gone with a slightly brighter display (1500 nits) compared to the S20 Ultra (1400). Wide viewing angles and vibrant colors let you enjoy HD content with stunning clarity. Whether you are playing games or binge-watching content on Netflix or YouTube, the viewing experience is fantastic. There is a center-aligned hole-punch cutout on top of the display for the front camera, but that doesn’t cause much of a hindrance when watching videos or playing games.\r\n\r\nUnlike the Galaxy S20 Ultra, you no longer need to choose between the highest resolution and highest refresh rate. Instead, you now get an adaptive 120Hz refresh rate at WQHD resolution. The interesting highlight of the display is that it uses LTPO (Low-Temperature Polycrystalline Oxide) technology to ensure optimum battery usage. This allows the screen to intelligently switch between 10Hz and 120Hz depending on the screen content.\r\n\r\nFor instance, in the case of static wallpapers or when you are reading e-books, the refresh rate can go down to as low as 10Hz. When playing graphic-intensive games or watching videos and movies, the screen refresh rate automatically increases to reach a maximum of 120Hz. There is an option to lower the refresh rate to a constant 60Hz, but you won’t be able to force it to run at 120Hz all the time, and that is not a problem at all.\r\n\r\nThe Galaxy S21 Ultra 5G comes with a gorgeous screen and quick-touch response time.\r\n\r\nFor security, Samsung is using Qualcomm’s second-generation ultrasonic under-display fingerprint scanner. It comes with a 1.7x more surface area, and over 50% faster recognition. In my six months of usage, I did find the scanner to be faster and accurate in recognizing the fingerprint and unlocking within a second.\r\n\r\nPerformance: Blazing Fast Yet Efficient\r\n5nm Snapdragon 888/Exynos 2100 (region dependent).\r\n5G support for both mmWave and Sub-6GHz.\r\n8GB/12GB/16GB RAM, 128GB/256GB/512GB storage (no expandable storage).\r\n5,000mAh battery; 25W wired, 15W wireless and 4.5W reverse wireless charging.\r\nThe Galaxy S21 Ultra 5G is the first smartphone to be powered by the Qualcomm Snapdragon 888 SoC in the US. The global variant (like my Indian review unit), on the other hand, is powered by the Exynos 2100 SoC. Both chipsets are fabricated on Samsung’s 5nm node. (We are reviewing the SKU with 12GB RAM and 256GB storage.)\r\n\r\nPerformance-wise, the smartphone is a powerhouse. During my long-term usage, I did not notice any stuttering or slowdown. Whether it is using everyday communication apps or web browsing or gaming, the apps do not feel sluggish at all. Samsung seems to have worked on improving memory management.\r\n\r\nThe Galaxy S21 Ultra does all the heavy lifting without breaking a sweat.\r\n\r\nWith a few apps minimized in the background, the system is not aggressive in killing background apps, even when running demanding games. It allocates enough resources for the game to run smoothly. Samsung clearly has done a good job optimizing the software and hardware.\r\n\r\nHowever, the thermal management could have been better. After playing graphic-intensive games like PUBG Mobile, the back of the phone gets considerably warm in just under 10 minutes. While this was at 120Hz, lowering the refresh rate to 60Hz did make the phone warm, though it took a little longer at about 25 minutes. Similarly, the thermal management is good when recording videos at 1080p, but the moment you switch to 4K 60fps, the phone gets too warm in about two minutes of recording.\r\n\r\nGaming experience is smooth, but the back of the smartphone gets warm when the refresh rate is set at 120Hz.\r\n\r\nAnother area of improvement could be the earpiece. The in-call volume is too low. I had to hold the earpiece too close to the ear to hear what the recipient was saying. But when playing media on stereo speakers (with the earpiece acting as the secondary speaker), the audio output was loud enough.', 'https://m.media-amazon.com/images/I/91EA08YkYgL._SL1500_.jpg', 1, '2022-11-12 00:46:09', '2022-11-12 00:46:09'),
(8, 'Denim', 'Get your denim rules in place', 'It is time to bid goodbye to your sweatpants and step out in a pair of stylish jeans. Denims are an integral part of any wardrobe and the post-pandemic love for comfort has changed the rules of wearing your blues. Wide legs, loose-cut, no-frills, high-waist styles have found their way in. The trend this year is effortless elegance.\n\nHere are the denim trends for fall/winter 2021.\n\nBaggy Jeans\n\nAs comfort is key this season, loose-fitting jeans have been gaining popularity. Celebs such as Hailey Bieber, Tracee Ellis Ross, Bella Hadid, Katie Holmes have set the trend by flaunting the wide-legged jeans on their Instagram accounts. The switch from skinny fit to more easy-going wider fits makes sense, given the present times.  The onset of the pandemic and work from home has played a vital role in bringing about a full switch in the way we dress up. Big jeans don’t mean you have to look like a potato sack… there are a variety of ways to style them and compensate for their slouchy look. Pair them with tailored coats, well-fitted shirts and or tees or anything structured.\n\nStraight-Leg Jeans\n\nWhile skinny jeans are dead you can still look polished and sleek in a pair of straight leg jeans. A little less narrow than mom jeans, the silhouette drops straight from the thigh. There are a variety of styles in this trending jeans style, you could choose a cropped one that falls just below the ankle or a more formal one that ends at the top of your shoes making it look like a well-tailored trouser. This style makes you look taller as it is usually worn in a higher rise. There is one rule while wearing these lengthening style and that is ‘no posed ankles’.\n\nBootcut Jeans\n\nBootcut style denims are back in trend but not with the dramatic flare that they showcased in the ’90s. This year is all about looking sleek and classic and slim boot cut jeans are the way to go. Pair them with high ankle boots for a quick glam up. With maximum comfort and wearability bootcut jeans are a must have for your weekend wardrobe.\n\nAsymmetric Overlap\n\nThis year jeans fits and styles seem to draw inspiration from our lockdown get-ups. Give your denim a new life with some asymmetric crossover jeans. This quirky style features a deconstructed overlapping button-fly and a relaxed loose fit. This style has a more of a casual laidback look. You could team them up with a loose tee for a relaxed weekend look.\n\nNo matter what style you opt for you can easily find options for branded jeans for men and branded jeans for women cloth online. So, keep it stylish while you flaunt the denim trends of 2021!\n\n ', 'https://blog.thecollective.in/wp-content/uploads/2021/09/mens-denim-trends-2021.jpeg', 2, '2022-11-12 00:48:09', '2022-11-12 00:48:09'),
(9, 'Lehenga Skirt', 'Lehenga Skirt! its a topic which is so misinterperated as most of us are not even aware as which Lehenga skirt should we opt.', 'Lehenga Skirt cloth – All you need to know\n\nLehenga Skirt! its a topic which is so misinterperated as most of us are not even aware as which Lehenga skirt should we opt. So, this time around we have come up with a different kind of write-up for you “lehenga Skirt” which is not specifically meant for the bride, instead of every other girl or woman attending an Indian wedding except of course the bride herself. We have come up with a guide for different types of lehenga that you can go for in a party or wedding.\n\nBecause why should brides have all the fun 😉   (Though grooms or the other guys after reading this might be like why should girls have all the fun 😉\n\nTypes of Lehenga – Different styles of Lehenga Skirt\n\n1. Multi-layers Lehenga Skirt\n\nThese lehenga skirts have a unique cut. They come in multiple horizontal layers arranged at different heights. These layers have uneven hems and the embellishment arrangement and textures also differ, creating an out-of-the-box look.\n\n2. Benarasi Lehenga Skirt\n\nThese lehenga skirts may come in all shapes but are usually flared or A-line. They have a pleated look but the highlight is the rich silk Benarasi brocade fabric that is used! They have a broad gold lower border and are devoid of all other embellishments. The style has been popularized by ace designer Sabyasachi Mukherjee. Check out more Sabyasachi lehenga\n\n3. Printed Lehenga Skirt\n\nThese lehenga skirts flaunt printed floral or textured looks and are devoid of heavy embellishments. They come in summary shades and are extremely light weight.\n\nTips: Invest in one of these if you are a guest at a beach-side destination Indian wedding. Pair with sleeveless crop tops.\n\n4. Sharara cut lehenga style\n\nYou must be aware that shararas are most popular among Muslims but if you want to wear something out of the box but still look the true traditional version of yours, then you can surely opt for this style.\n\nThey don’t completely fit into the lehenga brigade category because they are stitched from the middle of the hem like a trouser or a palazzo but because the flare is quite too much, they can partially be termed as lehengas.\n\nIt is usually worn with long kurtas, though you can opt for a bit short kurta also but not too short 😉\n\nTip: These work with almost all body types except for women with too petite bodies or slim legs.\n\n5. Paneled or kalidar lehenga style\n\nAs the name suggests, this lehenga style has horizontal panels stitched along the flare of the lehenga the way Kalis, that is, petals are there in a flower.\n\nBecause of too many panels in the lehenga, the volume of the flare of the lehenga increases tremendously and thus enhances the elegance of the overall look.\n\nTip: This lehenga style is best suited for hourglass, pear and petite body shapes but not for apple, straight (or rectangular) and skinny body types.\n\n6. Half Saree lehenga style\n\nInspired from the South Indian way of draping dupatta over the shoulder and around the waist also called as pavadai or langa davani or langa voni.\n\nThis style of semi saree and semi lehenga aka half saree is gaining huge attention in fashion weeks and is both elegant and contemporary. It is like wearing both saree and lehenga in one outfit together.\n\nTip: This lehenga works great for hourglass, pear, apple and tall body structures but not petite as it will make the person appear more petite since it is a bit fuller.\n\nIt can also be seen as a low flare A-line lehenga. Bride’s mother or the aunties coming at weddings can also be seen donning this new fashion attire.\n\nThe best part is that if you don’t want to buy one, you can turn your normal lehenga into one with just the dupatta being draped like a saree and voila! You are ready to rock the look.', 'https://getethnic.com/wp-content/uploads/2019/11/Lehenga-Skirt-2.jpg', 2, '2022-11-12 00:52:09', '2022-11-12 00:52:09'),
(10, 'Party Wear Salwar Suit', 'A beautiful blend of pure silk fabric and synthetic fabrics like nylon or polyester, Organza suits are a plain weave with a rough, almost coarse texture and a sheer look.', 'A beautiful blend of pure silk cloth fabric and synthetic fabrics like nylon or polyester, Organza suits are a plain weave with a rough, almost coarse texture and a sheer look. Organza suit sets are lightweight, thin, and gives off a royal look to any woman who sports them. Shop for floral organza suits online at the best rate and be amazed by how many colours, designs, prints, and embellishments. Delve into a sea of thousands of styles of Indian suit designs online at My Fashion Road. Pick from a variety of patterns, colours, and embellishments from our huge collection. No matter what your pick, you can never go wrong with the latest collection that are now available online at My Fashion Road.\n\nOrganza is a lightweight, which has a dull, slightly translucent appearance, and is fine in texture. Its high sheen and low density make it popular for evening wear because of its light reflecting qualities. It is available in both a stiff crêpe and a softer, silk-like fabric. Organza can be made of either silk or polyester, but the silk organza is more expensive than polyester. If you are going to a party, or need to make a good impression at a job interview, organza suits will not fail you.\n\nKimora Heer Tilla Designer Organza Party Wear Salwar Suit\nWe are a one-stop web shop offering the widest variety of authentic and trendy ethnic fashion. Our online platform offers it all – Indian Salwar Kameez, Pakistani Suits, Designer Suits, Nightwear.\n\nAt My Fashion Road – we have thousands of Ethnic Wear to chose from Indian brands like Ganga Fashions, Heer Suits, Jay Vijay Suits, Naariti Suits, Sahiba Suits, Varsha Suits and Shiddat Suits etc. In addition to the huge collection of Indian brands, we also offer Pakistani brands like Afrozeh, Al Zohaib, Charizma, Gul Ahmed, Ittehad, Maria B, Nureh, Noor by Saadia Asad, Sana Safinaz and Zara Ansari etc.\n\nIf you are planning to indulge in some salwar suits online shopping, then My Fashion Road is the ideal destination for you. Not only you will find the ethnic outfit in traditional and contemporary designs, but you can also get them at attractive prices. All our products are branded and 100% original guaranteed. Buy authentic Kimora collections and fabrics at My Fashion Road online store, and get discounts and free shipping with your order.\n\nDisclaimer: Product color may vary slightly due to photographic lighting or your device settings.', 'https://media.kreeva.com/catalog/product/cache/00e31345e8751638854e32598b752715/a/d/ad-981-3-min_1.jpg', 2, '2022-11-12 00:55:09', '2022-11-12 00:55:09'),
(11, 'Anarkali Bridal Dresses', 'Sonam Kapoor wears this stunning ivory toned chikankari anarkali for her Diwali celebrations! The flared kalis, the bodice resembling the peshwas and jagulfis worn by Mughal women look beautiful.', 'A long flowing kurta, the extensive flare achieved through stitching together vertical panels of cloth, paired with churidar bottoms and dupattas – and you have the anarkali or the kalidar dress! It is believed that this style of dress evolved in India during the time of the Mughal emperor Akbar and the name of the outfit was derived from a famous courtesan of the times– Anarkali.\r\nThough this history may be questionable, what is certain is that the anarkali suit or dress, is as grand and magnificent as an outfit belonging to the Mughal court should be! This is why anarkalis are extremely popular when it comes to wedding fashion or festive wear.\r\nAn anarkali kurta typically has a fitted bodice and a long, flowing frock-style skirt attached to it. It may be floor length or ankle length and even in some cases, calf length. They look grand and gorgeous and bring variation into a wedding trousseau which usually is filled up with sarees and lehengas.\r\n\r\nCeleb-Worthy Chikankari Anarkali\r\n\r\nThis one is the dreamiest of the lot! Fit for every festival or occasion, this one comes in a soothing pastel blue tone, blurred out with a layer of golden net! The zardozi and sequin work elevates the look to a level of celestial beauty. The bootas all over and the ornate borders make the outfit look breathtakingly beautiful!\r\n\r\nIf you are bored of the red lehenga look for your wedding and want a slight variation, a flared, floor length anarkali dress with dupatta is the perfect alternative. The gold embroidery on this bridal anarkali is detailed and extraordinary.\r\n\r\nA bit of thread work on the neckline and a thick band of gold in the lower hem – this is all that needs to make this white anarkali dress stunning! Anarkali dresses have an exquisite cut. The hundreds of kalis on her dress and the pleated flared look they create nullifies the need of embellishments for this one.\r\n\r\nAnother impressive maroon-esque red wedding anarkali! Paired with a flared skirt, this anarkali tells the story of an exotic royal garden, thread worked all the way round the kalis.\r\n\r\nA layered wedding anarkali dress in a pastel blue tone – replete with premium zardozi embroidery also showcasing the use of stones, crystals and sequins! This ensemble is perfect for receptions and even bridal wear!', 'https://getethnic.com/wp-content/uploads/2020/01/11.jpg', 2, '2022-11-12 01:00:09', '2022-11-12 01:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', NULL, '$2y$10$5dLyAcg1i/AsLMiHNtHs9u84YENvSQnPDHHJsdBxKrQ4FDXZ9tSOC', NULL, '2022-11-12 00:53:18', '2022-11-12 00:53:18'),
(3, 'abc', 'abc@gmail.com', NULL, '$2y$10$FiARPCYkrveZ4UbNcC7Xn.eewME1Ibj37NGqSZuGKzP30K14ENY.u', NULL, '2022-11-15 00:08:47', '2022-11-15 00:08:47'),
(4, 'Gagandeep Kaur', 'gagandeep@gmail.com', NULL, '$2y$10$lH5zeUX0cIp7BhjabOE1PepAnxBzlWV7RsrltELzW7Qi8zQcZI7jm', NULL, '2022-11-15 00:10:30', '2022-11-15 00:10:30'),
(5, 'pooja', 'pooja@gmail.com', NULL, '$2y$10$UrP3MKgTw0ygpSRixrVj/uKAMJH3MDseTblLUgyk/CHQn.sUZRz6e', NULL, '2022-11-15 04:15:49', '2022-11-15 04:15:49'),
(6, 'gopal', 'gopal@gmail.com', NULL, '$2y$10$ew6c2x0njHQl6cREm97pqO4BUp0RpWIUNHQ352oxu6cdyErXn5Vym', NULL, '2022-11-15 05:30:08', '2022-11-15 05:30:08'),
(7, 'gagan', 'gagan@gmail.com', NULL, '$2y$10$yZg3kiw6gu2pdAXvcqIICexILK49NhcDSi/O48bvUcC0a1SymQiPy', NULL, '2022-12-20 06:02:51', '2022-12-20 06:02:51'),
(8, 'John', 'john@gmail.com', NULL, '$2y$10$s6IK2A48T9DIVl1B3SOtuObswkJB8/MkToGPjOIjoCL1FjM/Ps61q', NULL, '2023-01-04 04:29:56', '2023-01-04 04:29:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_categoryname_unique` (`categoryName`);

--
-- Indexes for table `comment_boxes`
--
ALTER TABLE `comment_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_boxes_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment_boxes`
--
ALTER TABLE `comment_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_boxes`
--
ALTER TABLE `comment_boxes`
  ADD CONSTRAINT `comment_boxes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

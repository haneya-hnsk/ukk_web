-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 09:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_21.6771`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_borrow`
-- (See below for the actual view)
--
CREATE TABLE `all_borrow` (
`id` bigint(20) unsigned
,`alltime` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kategori_id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `thumbnail`, `file`, `created_at`, `updated_at`) VALUES
(1, 4, '101 Kisah Orang-Orang yang Dikabulkan Doanya by Majdi Fathi As-Sayyid', 'Kody', 'Anderson', 2020, '1.jpg', '101 Kisah Orang-Orang yang Dikabulkan Doanya by Majdi Fathi As-Sayyid.pdf', '2024-02-06 23:45:26', NULL),
(2, 2, '150 Kisah Abu Bakar Al-Shiddiq by Ahmad Abdul Al-Thahthawi', 'Camden', 'Gerlach', 2020, '2.jpg', '150 Kisah Abu Bakar Al-Shiddiq by Ahmad Abdul Al-Thahthawi.pdf', '2024-02-06 23:45:26', NULL),
(3, 3, '150 Kisah Ali Ibn Abi Thalib by Ahmad Abdul Al-Thahthawi', 'Geo', 'Thompson', 2020, '3.jpg', '150 Kisah Ali Ibn Abi Thalib by Ahmad Abdul Al-Thahthawi.pdf', '2024-02-06 23:45:26', NULL),
(4, 3, '150 Kisah Umar Bin Khattab by Ahmad Abdul Al-Thahthawi', 'Chris', 'Zboncak', 2020, '4.jpg', '150 Kisah Umar Bin Khattab by Ahmad Abdul Al-Thahthawi.pdf', '2024-02-06 23:45:26', NULL),
(5, 1, '150 Kisah Ustman Ibn Affan by Ahmad Abdul Al-Thahthawi', 'Lourdes', 'Turner', 2020, '5.jpg', '150 Kisah Ustman Ibn Affan by Ahmad Abdul Al-Thahthawi.pdf', '2024-02-06 23:45:26', NULL),
(6, 1, '16 Tokoh Keluarga Nabi SAW Pendekar Islam Sejati by Abdullah Harry', 'Antonette', 'Hand', 2020, '6.jpg', '16 Tokoh Keluarga Nabi SAW Pendekar Islam Sejati by Abdullah Harry.pdf', '2024-02-06 23:45:26', NULL),
(7, 4, '2._Kiat_Bikin_Infpgrafis_Keren', 'Ollie', 'Williamson', 2020, '7.jpg', '2._Kiat_Bikin_Infpgrafis_Keren.pdf', '2024-02-06 23:45:26', NULL),
(8, 1, '37-masalah-populer1', 'Laurence', 'Weber', 2020, '8.jpg', '37-masalah-populer1.pdf', '2024-02-06 23:45:26', NULL),
(9, 1, 'Aisyah RA', 'Maudie', 'Rempel', 2020, '9.jpg', 'Aisyah RA.pdf', '2024-02-06 23:45:26', NULL),
(10, 1, 'Antologi Islam', 'Iva', 'Dicki', 2020, '10.jpg', 'Antologi Islam.pdf', '2024-02-06 23:45:26', NULL),
(11, 2, 'BUKU PANCASILA', 'Gerda', 'Gerhold', 2020, '11.jpg', 'BUKU PANCASILA.pdf', '2024-02-06 23:45:26', NULL),
(12, 1, 'Bahasa_Indonesia_2_Kelas_2_Samidi_Tri_Puspitasari_2009', 'Jerald', 'Nader', 2020, '12.jpg', 'Bahasa_Indonesia_2_Kelas_2_Samidi_Tri_Puspitasari_2009.pdf', '2024-02-06 23:45:26', NULL),
(13, 3, 'asada', 'asada', 'asada', 2016, 'NBiA3LYOV6TWkQ4PdAjPvspJxzCzWCxoWR6BDZx9.jpg', 'H4dXztdPW3edYkxZV4KEfRB3b7IiDSWYQUUZ8mgG.pdf', '2024-02-06 23:46:42', '2024-02-06 23:46:42'),
(14, 1, 'ggggg', 'ggg', 'gggg', 2000, 'ePCufXhNFLEczt0DuucgiSGe0rmA1of9BLGqShTd.jpg', 'MEecc0kUl31kcHKTjDa1Sqpd2qRLlJTqeYpnT2Ef.pdf', '2024-02-06 23:48:08', '2024-02-06 23:48:08');

-- --------------------------------------------------------

--
-- Stand-in structure for view `counter_dipinjam`
-- (See below for the actual view)
--
CREATE TABLE `counter_dipinjam` (
`id` bigint(20) unsigned
,`kategori_id` bigint(20) unsigned
,`judul` varchar(255)
,`penulis` varchar(255)
,`penerbit` varchar(255)
,`tahun_terbit` year(4)
,`thumbnail` varchar(255)
,`file` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
,`buku_id` bigint(20) unsigned
,`count(peminjaman.id)` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan', NULL, NULL),
(2, 'Novel', NULL, NULL),
(3, 'Sejarah', NULL, NULL),
(4, 'Agama', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `koleksi_pribadi`
--

CREATE TABLE `koleksi_pribadi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2024_02_05_024224_create_kategori_bukus_table', 1),
(5, '2024_02_05_024237_create_bukus_table', 1),
(6, '2024_02_05_024254_create_peminjamen_table', 1),
(7, '2024_02_05_024312_create_koleksi_pribadis_table', 1),
(8, '2024_02_05_024341_create_ulasan_bukus_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan_buku`
--

CREATE TABLE `ulasan_buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `ulasan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulasan_buku`
--

INSERT INTO `ulasan_buku` (`id`, `user_id`, `buku_id`, `ulasan`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 'Suscipit sapiente totam vero deleniti nobis. Voluptatum quia in enim voluptas adipisci. Quisquam temporibus saepe accusamus et laudantium. Non et dolores aut laboriosam debitis ut omnis.', 7, '2024-02-06 23:45:26', NULL),
(2, 5, 1, 'Accusantium dolore tempore aperiam. Assumenda praesentium possimus repudiandae quidem. Sint repudiandae est nesciunt repellat aspernatur reprehenderit molestiae.', 2, '2024-02-06 23:45:26', NULL),
(3, 6, 8, 'Deleniti repellat molestiae accusamus et. Voluptas numquam dolor ea dolor. Ipsum pariatur cum rerum.', 5, '2024-02-06 23:45:26', NULL),
(4, 3, 5, 'Sit rerum unde non dolore non harum. Pariatur est quibusdam voluptate voluptatum. Dolore quam et quis delectus id.', 9, '2024-02-06 23:45:26', NULL),
(5, 2, 4, 'Non et corporis sunt ipsam unde. Voluptatibus ex ut quis eum beatae ab aut. Cumque saepe blanditiis voluptatem. Aliquid omnis nesciunt accusantium aut quaerat architecto omnis fugit.', 9, '2024-02-06 23:45:26', NULL),
(6, 1, 7, 'Ex libero ab aut ea. Reprehenderit ut reprehenderit laboriosam deserunt id. Ipsum accusantium nesciunt culpa iste.', 3, '2024-02-06 23:45:26', NULL),
(7, 8, 8, 'Molestiae accusantium voluptas sunt animi. Ipsam facilis in non velit distinctio nulla harum quo. Id ut reprehenderit culpa tenetur suscipit explicabo. Quae nesciunt eaque quaerat beatae mollitia et modi.', 4, '2024-02-06 23:45:26', NULL),
(8, 8, 7, 'Rerum rerum quia aut suscipit corrupti. Ut est fugit dolor quibusdam ducimus aut non. Saepe necessitatibus accusamus recusandae occaecati.', 9, '2024-02-06 23:45:26', NULL),
(9, 4, 8, 'Asperiores autem reprehenderit perspiciatis maiores. Voluptatem esse doloribus voluptatem aut quas temporibus eveniet et. Velit excepturi nobis fugit sit ratione. Minima sunt voluptatem nesciunt illo praesentium.', 4, '2024-02-06 23:45:26', NULL),
(10, 2, 10, 'Dolores maxime quae earum rerum sit quos eaque. Ut harum unde molestias dolores aut. Fuga nulla quia aut suscipit cupiditate quia ullam sint. Ut quisquam magni voluptatem provident repellendus.', 6, '2024-02-06 23:45:26', NULL),
(11, 1, 3, 'Suscipit est quis ratione exercitationem veritatis soluta et. Et beatae ipsa sit quis. Ullam magnam occaecati rem cumque fugiat facilis. Optio nostrum qui sed ipsam temporibus voluptas molestiae.', 8, '2024-02-06 23:45:26', NULL),
(12, 2, 6, 'Sint provident eum corrupti. Optio quo tempora dolores mollitia dolore impedit. Et commodi fuga molestiae. Sed nobis quo commodi commodi adipisci reiciendis voluptatem. Minus tenetur iusto explicabo non consequatur.', 4, '2024-02-06 23:45:26', NULL),
(13, 2, 6, 'Ipsam rem ut ut vel illo. Dolores commodi quis quasi ipsam dolores ducimus reiciendis. A et maxime tempora in assumenda consequatur ut eum. Pariatur mollitia reiciendis enim doloribus et est odit.', 9, '2024-02-06 23:45:26', NULL),
(14, 2, 9, 'Est et aut dolor sed quia minus et. Corporis maiores placeat sit qui nisi perferendis. Architecto et distinctio ea et ipsa cupiditate.', 4, '2024-02-06 23:45:26', NULL),
(15, 9, 7, 'Dicta ut optio molestiae maxime sit vitae. Aliquam impedit tempore incidunt maxime non illum.', 5, '2024-02-06 23:45:26', NULL),
(16, 1, 6, 'Tempora quaerat alias eius quis qui natus qui. Iusto ut rem qui ut aut atque. Aliquam ducimus officia iste sequi quis quos.', 3, '2024-02-06 23:45:26', NULL),
(17, 8, 10, 'Similique ipsa earum eius cum ex est minima. Consequatur aut quia dolor voluptatum est quo. Voluptatem consectetur reiciendis dolores officia. Qui nihil velit incidunt totam sit blanditiis. Voluptas voluptatem veniam reiciendis eligendi illum et et.', 5, '2024-02-06 23:45:26', NULL),
(18, 9, 3, 'Ab cumque perspiciatis iusto non. Minima voluptas aliquid dolorem et. Ut iure accusamus quasi. Pariatur voluptatem labore ab consequatur numquam.', 1, '2024-02-06 23:45:26', NULL),
(19, 8, 9, 'Totam est tenetur et est et hic est et. Magnam et illum excepturi quia ratione deserunt ipsa. Voluptatibus iure quam et unde aut. Quibusdam facilis dolor minus molestiae dicta.', 4, '2024-02-06 23:45:26', NULL),
(20, 3, 10, 'Velit ad quibusdam quam. Reprehenderit numquam id iste sed ullam. Dolor beatae corrupti cupiditate dolorem et iusto culpa.', 8, '2024-02-06 23:45:26', NULL),
(21, 6, 2, 'Unde illo expedita voluptatem est. Fugiat nemo eos fugiat numquam.', 10, '2024-02-06 23:45:26', NULL),
(22, 3, 8, 'Qui non blanditiis itaque dolores at occaecati velit. Doloremque nemo atque dolore hic et ut. Aut officia ex repellat voluptas.', 8, '2024-02-06 23:45:26', NULL),
(23, 7, 6, 'Expedita nihil nulla aliquid suscipit unde deleniti. Cupiditate eos tempore rerum fugiat reiciendis. Cum asperiores ut nam quod commodi dolor vitae. Repellat voluptatum quasi eum.', 4, '2024-02-06 23:45:26', NULL),
(24, 6, 3, 'Repellat hic temporibus voluptates ab nam. Molestiae dolor vel animi voluptatem aut sunt vel. Dignissimos pariatur vitae repellendus temporibus sapiente perferendis veritatis. Sint et at fuga.', 1, '2024-02-06 23:45:26', NULL),
(25, 6, 9, 'Soluta eos enim odio explicabo. Ipsa quam sint commodi explicabo in. Et in et eaque quae inventore molestias sit. Ea consequatur ut voluptas eaque vel quia rem.', 7, '2024-02-06 23:45:26', NULL),
(26, 6, 10, 'Et laborum soluta aut. Voluptatem qui veniam velit et et est. Et sit qui est unde. Earum reiciendis consectetur itaque vero libero et.', 9, '2024-02-06 23:45:26', NULL),
(27, 5, 10, 'In ullam corrupti harum magni et labore numquam. Ex deleniti praesentium tempore in beatae sapiente unde.', 3, '2024-02-06 23:45:26', NULL),
(28, 10, 8, 'Possimus officiis totam et cum voluptatem. Quod deserunt dolorem voluptas ea quisquam. Et labore dolore autem aspernatur quos.', 1, '2024-02-06 23:45:26', NULL),
(29, 7, 3, 'Doloribus cupiditate iste assumenda ex. Sit doloremque voluptatem voluptatem rem ullam. Sit reprehenderit sint placeat natus est consequatur repellat.', 3, '2024-02-06 23:45:26', NULL),
(30, 2, 1, 'Exercitationem sint ducimus ut harum. Sit nulla sapiente ut. Autem porro praesentium laudantium ducimus excepturi.', 3, '2024-02-06 23:45:26', NULL),
(31, 4, 2, 'Nam molestiae blanditiis qui. Sit id sequi temporibus quia neque consequuntur quibusdam odio. Enim ipsam molestias corrupti consequatur. Reprehenderit sequi esse doloribus aut minus nam repellat.', 6, '2024-02-06 23:45:26', NULL),
(32, 1, 4, 'Molestias magni quas aut soluta laborum. Totam voluptas magni et modi velit veritatis. Maxime eos tenetur est voluptas.', 4, '2024-02-06 23:45:26', NULL),
(33, 3, 5, 'Omnis natus veritatis sit explicabo harum. A fuga corrupti qui consequuntur quibusdam.', 8, '2024-02-06 23:45:26', NULL),
(34, 4, 1, 'Eveniet tempora est sed voluptatibus repudiandae iste autem. Pariatur architecto quibusdam esse rem necessitatibus qui natus quo.', 6, '2024-02-06 23:45:26', NULL),
(35, 5, 3, 'Culpa numquam illo accusamus consequatur perferendis quas. Quia iusto ea ipsam sunt nihil. Qui in iste a quos.', 10, '2024-02-06 23:45:26', NULL),
(36, 4, 1, 'Autem in rerum voluptas similique alias temporibus cum. Et unde architecto possimus placeat. Non tempore debitis aut ut rerum.', 3, '2024-02-06 23:45:26', NULL),
(37, 7, 10, 'Molestiae omnis ut dolor omnis sapiente temporibus. Nam sit et voluptatem voluptatem quaerat qui eaque. Quo animi eveniet et at.', 2, '2024-02-06 23:45:26', NULL),
(38, 1, 6, 'Voluptates iusto est animi libero adipisci neque. Neque perspiciatis repellendus voluptatem veritatis repellat veniam quam. Odit fugit qui necessitatibus sint odio ut temporibus. Velit inventore eum totam aspernatur magni.', 1, '2024-02-06 23:45:26', NULL),
(39, 2, 1, 'Doloribus voluptatem porro molestiae et praesentium veniam aut dolores. Est velit eum nulla nihil amet occaecati et. Dolores officia fugit harum consequatur et. Modi quia minima ad dolore velit et.', 10, '2024-02-06 23:45:26', NULL),
(40, 10, 8, 'Ea aut cupiditate praesentium impedit. Ullam ab magnam sint cumque. Aliquid provident quia adipisci vel quia voluptas consectetur. Sint natus vel odit.', 6, '2024-02-06 23:45:26', NULL),
(41, 10, 3, 'Ipsa et quod pariatur sint. Rerum et illum voluptatum repellat cumque ipsa alias. Saepe eos ut laudantium quia. Saepe non sit possimus cum non veniam.', 1, '2024-02-06 23:45:26', NULL),
(42, 9, 5, 'Quos cumque odit enim omnis excepturi in sint. Maxime neque quod pariatur magni. Assumenda quidem debitis dolorum totam.', 3, '2024-02-06 23:45:26', NULL),
(43, 5, 10, 'Repellendus quidem quisquam inventore animi quia. Harum nam animi porro consectetur. Non saepe et natus architecto iure quia. Est ut blanditiis adipisci labore et doloremque dicta.', 8, '2024-02-06 23:45:26', NULL),
(44, 10, 2, 'Aut vel et assumenda officia et voluptas nihil. Aut non temporibus qui voluptate ut quasi perferendis. Debitis aperiam voluptatibus necessitatibus. Accusantium officia ea mollitia assumenda facere quae occaecati.', 9, '2024-02-06 23:45:26', NULL),
(45, 10, 10, 'Debitis dolor dolor quo quis. Non sunt quas numquam vitae non inventore quos possimus. Est rerum quam natus repudiandae.', 1, '2024-02-06 23:45:26', NULL),
(46, 4, 9, 'Ipsa perferendis ut deleniti qui aut ex. Optio fugit officia ut quisquam nostrum cumque autem. Iste laudantium sit sed commodi accusamus sed odit sed.', 7, '2024-02-06 23:45:26', NULL),
(47, 10, 7, 'Fugiat quis et aut molestias dolores tempore sequi distinctio. Itaque earum culpa nihil quia consequuntur modi. Quibusdam vitae dolores ut nobis.', 10, '2024-02-06 23:45:26', NULL),
(48, 4, 9, 'Et aliquid deserunt perspiciatis sunt sed nihil tenetur placeat. Ut ipsam magnam et nobis. Facilis sint laboriosam nostrum perspiciatis tempore. Architecto aut voluptatem autem natus inventore modi quia nostrum. Ipsum quia unde natus distinctio.', 10, '2024-02-06 23:45:26', NULL),
(49, 3, 3, 'Officiis dolorem nesciunt aut quam voluptatem eos qui. Eaque ullam eum repellendus quo voluptate modi. Explicabo quasi magnam necessitatibus perspiciatis mollitia in.', 10, '2024-02-06 23:45:26', NULL),
(50, 6, 1, 'Quis omnis magni neque qui ipsam exercitationem et. Tempore et natus nulla distinctio. Commodi aspernatur minus quis mollitia esse dolore cum. Nesciunt incidunt quaerat et ad. Impedit quibusdam aliquid quo inventore expedita asperiores in voluptatem.', 10, '2024-02-06 23:45:26', NULL),
(51, 2, 3, 'Neque molestiae eos adipisci doloremque possimus maxime. Tempore nisi consequatur dolorem amet. Veritatis molestias dolores dolor totam voluptas. Beatae laborum doloremque aut fugiat voluptas impedit et.', 6, '2024-02-06 23:45:26', NULL),
(52, 6, 3, 'Nobis illum eligendi autem dolorum. Velit ipsa et autem dolorum blanditiis rerum. Qui tenetur veritatis vel magni hic dolor amet.', 3, '2024-02-06 23:45:26', NULL),
(53, 2, 10, 'In et quod nam nam dolorum. Culpa cupiditate aspernatur fuga autem amet iste. Dolor vel enim nulla dolor accusamus dolorem rerum velit.', 8, '2024-02-06 23:45:26', NULL),
(54, 7, 2, 'Quasi qui ut facere corrupti sed. Nam laboriosam quia qui similique. Sint nihil asperiores aut eos sit aut sint omnis. Tenetur excepturi fugiat perferendis quo voluptatem.', 6, '2024-02-06 23:45:26', NULL),
(55, 8, 6, 'Sint omnis aut eligendi. Atque voluptatem quis autem ad magni. Aut fugiat et maxime debitis assumenda possimus. In libero ratione rerum at voluptatum est.', 5, '2024-02-06 23:45:26', NULL),
(56, 2, 4, 'Nostrum rerum quia aliquid et laborum necessitatibus. Minima laudantium dolor est fuga. Dignissimos quidem nulla debitis voluptates et dicta. Aut reprehenderit sapiente ipsa sint impedit.', 9, '2024-02-06 23:45:26', NULL),
(57, 7, 5, 'Perspiciatis eos culpa velit porro beatae quia consequatur. Unde sint cumque ad sit.', 6, '2024-02-06 23:45:26', NULL),
(58, 6, 5, 'Voluptas id modi blanditiis quibusdam ut. Vitae rerum omnis explicabo. Sapiente ut minus animi vel ex sunt. Provident unde optio error ea non.', 3, '2024-02-06 23:45:26', NULL),
(59, 9, 2, 'Expedita et eos ea qui. Est possimus magni cum sed laudantium. Et non necessitatibus reiciendis in dolores. Cumque sapiente quibusdam saepe possimus.', 4, '2024-02-06 23:45:26', NULL),
(60, 3, 7, 'Est eius cum illum impedit. Hic animi fugit iusto debitis inventore inventore vitae minus. Rerum aliquid consequatur laborum.', 10, '2024-02-06 23:45:26', NULL),
(61, 2, 4, 'Aut aliquam voluptatem quod ut laboriosam sit qui. Molestiae accusamus nemo beatae pariatur. Sit id quasi qui eaque. Unde et qui id nam.', 2, '2024-02-06 23:45:26', NULL),
(62, 7, 9, 'Ab dolorem necessitatibus voluptas quasi alias rerum. Qui quidem occaecati et ut mollitia voluptatem accusamus. Qui maxime velit deleniti et. Hic quasi similique doloribus dolor qui.', 10, '2024-02-06 23:45:26', NULL),
(63, 1, 6, 'Blanditiis ex rem quo harum illum. Natus et sint placeat sint et doloremque incidunt. In id numquam sunt molestiae fugit iure.', 8, '2024-02-06 23:45:26', NULL),
(64, 10, 5, 'Aut aliquam fugiat autem corporis modi praesentium. Asperiores unde in quos incidunt delectus quia. Qui labore ipsam magni est ut odit voluptatum. Dolorum itaque in quod error.', 4, '2024-02-06 23:45:26', NULL),
(65, 9, 3, 'Ut explicabo ut non rem quod ducimus quis. Magnam vel ut asperiores et ipsam natus. Ullam iure aut eos quasi incidunt et omnis ratione.', 9, '2024-02-06 23:45:26', NULL),
(66, 2, 1, 'Voluptatem sit autem aut consectetur est perspiciatis numquam aut. Consequatur et aperiam exercitationem beatae nam in ratione. Autem fuga officia laboriosam qui quo. Cupiditate molestiae id maiores inventore reprehenderit distinctio voluptatem sapiente.', 10, '2024-02-06 23:45:26', NULL),
(67, 4, 10, 'Corrupti non corporis corrupti ut. Et facilis ut quaerat quod distinctio quae. Dicta deserunt nemo soluta corporis dolorum quam dolorum. Alias consectetur ducimus in itaque accusamus. Debitis eligendi doloremque aut qui deleniti rem qui a.', 10, '2024-02-06 23:45:26', NULL),
(68, 4, 7, 'Eveniet aperiam quasi aut saepe sed quisquam. Velit earum quo saepe quasi qui nam unde. Quod ducimus autem voluptatem.', 3, '2024-02-06 23:45:26', NULL),
(69, 2, 2, 'Consequatur cupiditate itaque et velit molestias autem. Qui placeat sint amet. Laboriosam accusamus dolores reprehenderit ipsum non quae omnis. Neque aliquam possimus neque sunt sint quam explicabo.', 1, '2024-02-06 23:45:26', NULL),
(70, 8, 10, 'Ipsa consequatur a consequatur fugit. Tenetur harum eos ea quasi amet aspernatur corporis. Aspernatur veritatis commodi sint magnam perspiciatis aut.', 7, '2024-02-06 23:45:26', NULL),
(71, 3, 3, 'Dolores in ut consequuntur sed natus amet qui. Reiciendis suscipit est eius aperiam dicta.', 10, '2024-02-06 23:45:26', NULL),
(72, 9, 10, 'Quidem dolorem sequi atque impedit perspiciatis ab. Eligendi unde consequatur ut. Tenetur nemo quis eveniet culpa praesentium est corrupti.', 8, '2024-02-06 23:45:26', NULL),
(73, 5, 10, 'Aspernatur et corporis quis maxime. Maxime ut consequatur sit qui possimus. Iste atque saepe minima mollitia earum quia.', 2, '2024-02-06 23:45:26', NULL),
(74, 7, 8, 'Quo temporibus id doloribus eos rerum sed possimus quo. Numquam illum perferendis temporibus quis. Non earum in id quo voluptas.', 9, '2024-02-06 23:45:26', NULL),
(75, 1, 4, 'Dicta sunt sapiente pariatur architecto doloribus. Vel amet iusto exercitationem.', 5, '2024-02-06 23:45:26', NULL),
(76, 6, 6, 'Tempora autem sit dolores dolorem. Perspiciatis ut voluptatem hic ratione deleniti iusto aut. Non perspiciatis voluptas in velit ut rem. Blanditiis assumenda adipisci omnis eos laborum.', 3, '2024-02-06 23:45:26', NULL),
(77, 2, 9, 'Mollitia rerum velit et iste esse cupiditate ut est. Sunt qui quis vitae quae ut atque dolor. Ut sed cupiditate dolorem. Culpa magni voluptatem labore laborum eveniet est.', 8, '2024-02-06 23:45:26', NULL),
(78, 4, 2, 'Blanditiis inventore autem omnis quaerat. Nostrum qui repellendus odit.', 3, '2024-02-06 23:45:26', NULL),
(79, 10, 10, 'Nihil quibusdam dolores aut excepturi quod id in. Quo expedita exercitationem maxime rerum.', 2, '2024-02-06 23:45:26', NULL),
(80, 5, 6, 'Voluptatibus porro omnis et quia autem et hic ea. Molestiae qui sapiente est consequuntur. Sit enim facere aut fugiat voluptatem exercitationem. Voluptates ut autem impedit magnam.', 10, '2024-02-06 23:45:26', NULL),
(81, 10, 9, 'Doloremque corporis unde quia et. Aut porro sunt esse omnis aperiam. Eveniet autem voluptatem et facere porro voluptatem. Et molestiae et et non aliquam sunt.', 2, '2024-02-06 23:45:26', NULL),
(82, 5, 1, 'Iure est et ut sit amet ratione ducimus. Occaecati id omnis architecto doloremque. Culpa earum eius quo aut. Rem ut hic est quo est sunt est.', 3, '2024-02-06 23:45:26', NULL),
(83, 9, 6, 'Totam quo amet voluptas animi. Aut ut quam est quas velit. Rem iure incidunt occaecati dolor vel excepturi et labore.', 5, '2024-02-06 23:45:26', NULL),
(84, 7, 8, 'Nemo sapiente est voluptatum. Omnis commodi accusamus harum earum corrupti. Earum quidem debitis commodi natus quasi ex harum aut.', 2, '2024-02-06 23:45:26', NULL),
(85, 3, 7, 'Similique provident itaque magnam quis accusamus perferendis. Sequi commodi non et inventore. Natus ut placeat quia unde veniam alias consequuntur.', 2, '2024-02-06 23:45:26', NULL),
(86, 3, 8, 'Voluptate aut aut et voluptas cumque est. Nesciunt eos et autem totam dolores similique earum rerum. Excepturi est quibusdam voluptatum. Beatae magnam quis nobis a fuga. Veritatis cupiditate harum beatae ex.', 9, '2024-02-06 23:45:26', NULL),
(87, 8, 2, 'Repellendus eos esse autem quasi qui qui sit. Magni sequi voluptatibus aperiam unde. Vitae atque itaque provident occaecati omnis.', 3, '2024-02-06 23:45:26', NULL),
(88, 1, 10, 'Ut itaque ut nobis nobis facilis dolorem qui. Temporibus architecto dicta vel itaque et expedita. Est quia sed a voluptatem.', 3, '2024-02-06 23:45:26', NULL),
(89, 9, 8, 'Natus ut iusto et eos praesentium recusandae. Nesciunt sequi ea excepturi adipisci aut id. Quod eos occaecati placeat in nulla dolor repellendus.', 10, '2024-02-06 23:45:26', NULL),
(90, 3, 8, 'Ut saepe veritatis eum. Ut iste quia facilis sed voluptatum nihil. Cupiditate praesentium ut vel dolore deleniti omnis et. Maiores ut veritatis deserunt sint labore quas voluptatem.', 6, '2024-02-06 23:45:26', NULL),
(91, 8, 9, 'Eos pariatur alias expedita reiciendis. Architecto in est deserunt temporibus et omnis. Repudiandae tempora iusto ex sed molestias maxime. Quia inventore libero laudantium animi ullam.', 9, '2024-02-06 23:45:26', NULL),
(92, 6, 10, 'Sit assumenda molestiae aliquam aut labore cumque. Ut ut quasi et modi itaque sit tenetur. Impedit quidem in eligendi voluptatem ut.', 3, '2024-02-06 23:45:26', NULL),
(93, 10, 8, 'Deserunt aut quis et dolorem voluptas consequatur. Incidunt ipsam consectetur omnis distinctio accusantium. Dignissimos et culpa sed tempore quia sunt.', 9, '2024-02-06 23:45:26', NULL),
(94, 8, 2, 'Non velit eos modi voluptas molestiae natus amet illum. Voluptatibus et ratione ducimus ipsam. Eum nihil explicabo sunt natus mollitia deserunt veniam.', 7, '2024-02-06 23:45:26', NULL),
(95, 4, 7, 'Ipsa voluptatem ut et deleniti dolores nisi dignissimos. Id recusandae doloribus voluptate dolorum.', 1, '2024-02-06 23:45:26', NULL),
(96, 2, 8, 'Aliquid voluptate consequuntur sunt velit natus. Blanditiis fugit doloremque vel distinctio velit aperiam. Rerum ea cum molestiae nostrum optio earum. Omnis delectus eveniet culpa distinctio sed odio deleniti.', 7, '2024-02-06 23:45:26', NULL),
(97, 9, 3, 'Est aspernatur non laudantium occaecati sint vel illo ducimus. Est aut sit inventore molestias est. Ipsa ad aut sit non veniam laboriosam delectus.', 9, '2024-02-06 23:45:26', NULL),
(98, 6, 9, 'Vel facilis nulla voluptas aspernatur. Quidem velit id maiores quia qui suscipit est. Aliquam fugiat laboriosam est est at.', 4, '2024-02-06 23:45:26', NULL),
(99, 5, 2, 'Rem et ab perspiciatis neque culpa consequuntur. Placeat vitae ut est odit. Accusantium quaerat dicta enim et dolores animi. Velit expedita ut nam.', 5, '2024-02-06 23:45:26', NULL),
(100, 8, 4, 'Nemo corrupti maiores repellat voluptatem incidunt exercitationem amet. Eum accusantium sed quisquam minima. Aut labore occaecati et in est. Aspernatur laudantium hic illo molestias hic.', 3, '2024-02-06 23:45:26', NULL),
(101, 10, 5, 'Et ad magnam nulla nemo. Aliquam quia repellat et quia vel quos et consequatur. Vel quas corrupti quos pariatur perferendis. Molestiae a quos vel sit animi tempore quis.', 8, '2024-02-06 23:45:26', NULL),
(102, 6, 8, 'Doloribus ad distinctio cum non quo provident illum. Nemo pariatur aut temporibus et laboriosam occaecati debitis. Quam nam et atque aliquam est officia culpa.', 3, '2024-02-06 23:45:26', NULL),
(103, 10, 5, 'Sit temporibus aut quas ut expedita necessitatibus ipsa. Nisi aspernatur ut voluptatem reiciendis saepe. Atque a dolorum et.', 9, '2024-02-06 23:45:26', NULL),
(104, 4, 7, 'Est vero exercitationem reprehenderit quisquam. Et sint aut perspiciatis consequatur eum rem totam. Quia sit dolore error iste laudantium nihil quasi voluptatem.', 2, '2024-02-06 23:45:26', NULL),
(105, 7, 10, 'Adipisci et ut illo impedit. Sed magni doloremque nihil culpa. Perspiciatis eveniet excepturi nihil tempore sint excepturi dolore.', 10, '2024-02-06 23:45:26', NULL),
(106, 6, 3, 'Atque enim modi repellendus quidem. Corporis animi eum et dolorum expedita. Et similique velit soluta possimus perferendis sed distinctio.', 5, '2024-02-06 23:45:26', NULL),
(107, 10, 2, 'Temporibus rerum cupiditate consequuntur sunt id dolorem natus. Similique omnis nam facilis qui sapiente dolorum aut. Enim dolore aut rem. Velit reprehenderit nulla iure numquam eum.', 7, '2024-02-06 23:45:26', NULL),
(108, 9, 6, 'Necessitatibus quibusdam in placeat quo nobis optio voluptas est. Quod inventore dolore ut placeat veritatis laborum. Ullam qui consectetur dolores esse. Excepturi rerum odio id nam.', 1, '2024-02-06 23:45:26', NULL),
(109, 9, 9, 'Est alias sunt aut. Aut qui sit ab laboriosam ut. Ullam non autem recusandae delectus aliquam est.', 1, '2024-02-06 23:45:26', NULL),
(110, 9, 4, 'Qui unde sequi sapiente corrupti consequatur. Est odio expedita odio aut et ut laudantium. Labore ab velit sit porro eveniet molestiae. Corporis necessitatibus mollitia aut omnis nihil assumenda odio.', 7, '2024-02-06 23:45:26', NULL),
(111, 7, 10, 'Esse dicta tenetur repudiandae. Aliquam eius sint ullam.', 4, '2024-02-06 23:45:26', NULL),
(112, 3, 10, 'Iure aliquam enim explicabo blanditiis quod odio fugiat. Non vel sint dolores perspiciatis laudantium velit. Ut omnis qui voluptatem libero veritatis quia.', 6, '2024-02-06 23:45:26', NULL),
(113, 5, 6, 'Et soluta sit est repellendus. Placeat iusto sequi nostrum minus cum expedita autem. Itaque tempora eos quidem assumenda consequatur quis impedit quo. Quidem quis facilis neque molestiae. Ut laboriosam mollitia nam velit tempore.', 6, '2024-02-06 23:45:26', NULL),
(114, 7, 6, 'Provident ipsam dolore distinctio rerum porro sed. Saepe expedita assumenda quia ipsa qui beatae eligendi. Tempora delectus sint rerum et.', 10, '2024-02-06 23:45:26', NULL),
(115, 1, 2, 'Quasi rem ipsum temporibus eveniet explicabo dolores optio. Hic hic iure eligendi optio cumque eligendi. Odio et quis ut qui praesentium. Sit omnis sed porro ut ea aut et.', 2, '2024-02-06 23:45:26', NULL),
(116, 7, 5, 'Maxime provident rem animi et ea. Provident reprehenderit ipsam non fugit consequatur. Qui in ut dolorum facere expedita est. Qui et sit aut.', 10, '2024-02-06 23:45:26', NULL),
(117, 1, 6, 'Unde praesentium deserunt sint mollitia. Repudiandae et temporibus voluptas voluptatem. Dolorem non sunt ut magni.', 2, '2024-02-06 23:45:26', NULL),
(118, 4, 10, 'Sapiente eum qui accusamus molestiae esse rerum consequuntur. Est corrupti ipsa voluptas doloribus enim vero ab. Quaerat omnis maiores excepturi ipsa a sit voluptatem. Molestiae et animi voluptatem neque est quo rem.', 5, '2024-02-06 23:45:26', NULL),
(119, 2, 9, 'Eos sequi incidunt delectus aut dolorem. Neque aspernatur quo incidunt quia facere ratione sed. Ea sit et dolore dolor officiis iure. Architecto voluptatem qui reprehenderit quam velit eius.', 2, '2024-02-06 23:45:26', NULL),
(120, 10, 10, 'Id fuga et expedita impedit dignissimos sit ut. Aut voluptatem nostrum quod a voluptas ea. Voluptatem occaecati enim enim sit velit nemo magni et. Qui quia explicabo non cupiditate perferendis.', 4, '2024-02-06 23:45:26', NULL),
(121, 8, 7, 'Porro qui libero assumenda ut similique nisi et. Praesentium nihil praesentium quaerat dignissimos eum. Reprehenderit repellendus aut cum quisquam eum repellat eos.', 7, '2024-02-06 23:45:26', NULL),
(122, 5, 5, 'Nostrum dolores quisquam soluta officiis. Sequi consequuntur repellendus qui delectus architecto. Odio ut perferendis nostrum nemo eligendi eligendi.', 2, '2024-02-06 23:45:26', NULL),
(123, 10, 1, 'Nisi veritatis enim atque inventore est et. Assumenda quas aut laborum architecto ipsa nihil eum. Tenetur consequatur cupiditate recusandae tenetur. Illum rerum minima impedit id accusantium voluptatibus eaque. Nihil id eligendi sit alias.', 6, '2024-02-06 23:45:26', NULL),
(124, 6, 10, 'Iste qui illo temporibus aut fuga eos eos. Sapiente excepturi sunt pariatur dolores quia autem. Voluptas aut nulla distinctio perspiciatis. Sed necessitatibus aut asperiores aut. Maiores at sed modi voluptate molestiae fugiat voluptatem.', 4, '2024-02-06 23:45:26', NULL),
(125, 10, 10, 'Et et officiis qui cum. Dolorem iusto dolor iure ratione non. Ab accusamus cum est.', 9, '2024-02-06 23:45:26', NULL),
(126, 1, 4, 'Aut impedit quos doloribus libero molestiae inventore enim. Illo quia ullam explicabo aut dolorem excepturi enim ratione. Laborum nemo qui voluptatibus adipisci inventore et. Est eligendi consequatur qui facilis temporibus modi consequuntur eius.', 6, '2024-02-06 23:45:26', NULL),
(127, 9, 10, 'Aliquid quos aut vel assumenda. Deleniti voluptatem vel temporibus cumque occaecati sapiente. Sed neque doloremque illum maiores ut veritatis quos vero. Officiis repellat veritatis sit sint vel voluptas.', 9, '2024-02-06 23:45:26', NULL),
(128, 5, 3, 'Officiis et aut quae illo iusto. Perferendis quia eos soluta ex est labore vero voluptas. Explicabo deserunt error dolores dolores quas necessitatibus autem. Iste voluptatibus sint quos nemo animi.', 8, '2024-02-06 23:45:26', NULL),
(129, 7, 2, 'Mollitia esse quis aperiam et dolorem nihil. Eius qui non quia vero est et ex. Rem eum fuga illum dolor ullam.', 3, '2024-02-06 23:45:26', NULL),
(130, 2, 6, 'Quia fugiat rem dicta molestiae reiciendis. Eaque enim ut iste a. Illo illum eveniet voluptatum libero maiores voluptatibus et. Facere dolor delectus fuga fugiat rerum laboriosam voluptas sit.', 7, '2024-02-06 23:45:26', NULL),
(131, 5, 6, 'Minima numquam autem nulla repellat dignissimos aliquam eum est. Quia accusantium consequatur repudiandae voluptate recusandae reprehenderit dolores. Provident iste rerum voluptate ut nihil quod. Et quia dolorem accusamus quia est.', 1, '2024-02-06 23:45:26', NULL),
(132, 9, 7, 'Voluptates veritatis animi assumenda laboriosam praesentium eos voluptas. Porro vel vitae dolore animi harum veniam. Consequatur nam aut alias dolorum sed ratione sequi. Dolor inventore iusto minus accusantium aut nostrum voluptatem qui.', 5, '2024-02-06 23:45:26', NULL),
(133, 4, 6, 'Velit ipsam quidem atque cum. Qui architecto quidem harum tenetur et non. Eaque culpa ut enim maiores totam in quos.', 6, '2024-02-06 23:45:26', NULL),
(134, 9, 8, 'Error et qui sit qui non repellat. Sit reprehenderit et optio vitae ea et animi. Quas accusantium molestias ducimus autem eius iusto vero. Minus voluptate nisi et ut et dignissimos cupiditate.', 7, '2024-02-06 23:45:26', NULL),
(135, 1, 5, 'Quos consequatur exercitationem quia voluptate quidem voluptatibus itaque. Architecto qui doloribus quasi magnam soluta fugiat itaque. Minus maiores iusto aut delectus at eos aut autem.', 7, '2024-02-06 23:45:26', NULL),
(136, 10, 3, 'Optio quo nisi repellendus esse. Est officia dolores aut. Nam rerum iste ullam aut unde tempore. Eos aliquid consequuntur modi adipisci.', 8, '2024-02-06 23:45:26', NULL),
(137, 4, 6, 'Iste ea minima sit beatae vero. Perspiciatis et non accusantium vel totam voluptatibus. Dignissimos provident cum perspiciatis est corporis.', 10, '2024-02-06 23:45:26', NULL),
(138, 2, 4, 'Quam corrupti rerum ea eius repellendus eum eos natus. Incidunt ea labore et. Nam unde beatae explicabo. Quasi sunt ut at error quis et placeat.', 7, '2024-02-06 23:45:26', NULL),
(139, 4, 2, 'Voluptate et molestias et sed voluptatem voluptas. Voluptates eius quis vero ut. Molestiae qui eum ipsa. Est id amet et architecto debitis rerum.', 2, '2024-02-06 23:45:26', NULL),
(140, 8, 9, 'Dolores vel est eveniet labore ullam vel. Officia omnis fugit odit repellat et quod reiciendis. Modi placeat necessitatibus ipsa voluptate incidunt cumque soluta. Dolore quo enim ipsam alias laudantium.', 7, '2024-02-06 23:45:26', NULL),
(141, 2, 3, 'Voluptatem perferendis repellat laudantium at in eius. Est quod dolores ea et. Veritatis soluta tenetur quis dolor corrupti accusantium nesciunt. Exercitationem et reiciendis quia et.', 5, '2024-02-06 23:45:26', NULL),
(142, 10, 2, 'Sed laboriosam ut quis ea dolorem. Doloribus deleniti perferendis aliquam aut asperiores totam. Repudiandae sit dignissimos omnis. Ipsam accusantium optio aperiam sint accusamus nesciunt esse ut.', 3, '2024-02-06 23:45:26', NULL),
(143, 1, 2, 'Mollitia quia repellendus consequuntur. Et ullam magni blanditiis et quos quo facere eius. Rerum est eos minima voluptates recusandae sunt id. Et et doloribus culpa quis. Aut nihil animi inventore.', 3, '2024-02-06 23:45:26', NULL),
(144, 5, 3, 'Sequi doloremque magni voluptatem earum ullam quia rerum. Quia minus sed odio perferendis iusto.', 3, '2024-02-06 23:45:26', NULL),
(145, 9, 5, 'Laudantium esse enim qui sunt iusto inventore aut. Suscipit aperiam nam accusantium. Voluptatem rerum vero beatae molestiae cum unde architecto ratione. Non et esse ut inventore quaerat vel tempora. Impedit reprehenderit esse est iusto repellat debitis.', 3, '2024-02-06 23:45:26', NULL),
(146, 6, 5, 'Cumque aut dolor ut quaerat quibusdam adipisci. Harum unde ea impedit quia et sed. Placeat excepturi vitae hic vitae.', 6, '2024-02-06 23:45:26', NULL),
(147, 8, 4, 'Quod odio dolorem et sed culpa eum qui iure. Facere dolore ipsum quas debitis.', 1, '2024-02-06 23:45:26', NULL),
(148, 7, 8, 'Qui commodi porro qui ut eius. Hic minima vitae aut magnam ex consequatur delectus. Neque itaque officiis laborum et distinctio. Dicta impedit necessitatibus cum illo occaecati est qui.', 2, '2024-02-06 23:45:26', NULL),
(149, 5, 9, 'Quam commodi dolore voluptates ex. Adipisci quidem voluptates ea sapiente alias odio architecto. Molestiae blanditiis doloribus delectus nemo ullam provident ea.', 10, '2024-02-06 23:45:26', NULL),
(150, 9, 7, 'Explicabo consequatur praesentium totam et. Iste voluptatem quaerat illum aut officia mollitia aut.', 9, '2024-02-06 23:45:26', NULL),
(151, 6, 5, 'Qui eum et ut quod deserunt vitae officia. Ut repudiandae quidem repellendus illo sit necessitatibus. Hic incidunt magnam beatae modi laudantium eius. Eos consectetur et quaerat et. Et harum corrupti aut reprehenderit temporibus non delectus.', 2, '2024-02-06 23:45:26', NULL),
(152, 10, 6, 'Odit in id neque autem fugiat dolorum atque. Magnam dolorem omnis nesciunt. Autem laudantium quae id praesentium molestiae consectetur eveniet.', 9, '2024-02-06 23:45:26', NULL),
(153, 8, 8, 'Consectetur ex excepturi eum sunt ullam corrupti corrupti. Eos doloremque totam cumque eos quia. Illo quasi necessitatibus et quo laborum voluptatem. Omnis est corporis eum pariatur. Dolorem eum velit facere.', 3, '2024-02-06 23:45:26', NULL),
(154, 2, 1, 'Id aut ut voluptatem illum aut. Quis harum cupiditate vel nam atque. Ipsam tempore atque dolore odio non fugiat sunt. Suscipit sed enim architecto harum.', 7, '2024-02-06 23:45:26', NULL),
(155, 3, 4, 'Consequuntur adipisci nihil beatae est. Eos aut labore illum quas soluta tenetur soluta.', 3, '2024-02-06 23:45:26', NULL),
(156, 1, 2, 'Aliquam molestias atque tenetur ut quam. Omnis sint odit vitae ea aut laborum ut. Quam ea enim amet aperiam. Ipsam et sapiente molestias qui tenetur id amet qui.', 1, '2024-02-06 23:45:26', NULL),
(157, 8, 6, 'Ab officiis cupiditate sed nam repellat consequatur quam dignissimos. Laborum velit accusantium enim. Praesentium eius voluptatem beatae delectus minima. Veritatis nulla esse error facere quis.', 2, '2024-02-06 23:45:26', NULL),
(158, 7, 5, 'Saepe quasi rerum ad esse ea aliquam enim. Unde iusto velit qui libero voluptate in. Fugiat ab eos voluptas dolorem dolorum est earum.', 4, '2024-02-06 23:45:26', NULL),
(159, 4, 10, 'Qui occaecati est explicabo. Et eos deserunt qui sequi optio voluptas. Alias molestiae fugiat non maxime recusandae ut. Corporis excepturi quibusdam sequi et non. Sed eius expedita porro quisquam et ut.', 1, '2024-02-06 23:45:26', NULL),
(160, 8, 4, 'Non voluptas voluptatibus voluptas est. Expedita nesciunt atque maiores. Aperiam error nihil blanditiis optio recusandae quod. Impedit dolor et corrupti qui.', 7, '2024-02-06 23:45:26', NULL),
(161, 7, 5, 'Porro et ea eum quam mollitia. Totam deleniti neque dolores molestias aut. Ut eveniet aperiam et.', 3, '2024-02-06 23:45:26', NULL),
(162, 2, 9, 'Sit nisi repellendus iste a. Voluptas et et consequatur nemo eaque. Reprehenderit molestias molestiae eos culpa non repellat pariatur. Aut quis ducimus voluptatem nulla repellat itaque. Repellendus recusandae perspiciatis doloribus qui fugiat.', 2, '2024-02-06 23:45:26', NULL),
(163, 6, 9, 'Fuga ipsa doloremque distinctio numquam earum voluptas molestiae. Autem non voluptas cumque cumque quaerat. Blanditiis sit assumenda dolore itaque tempore a. Omnis suscipit et recusandae ex inventore numquam. Non omnis quos corporis laborum.', 10, '2024-02-06 23:45:26', NULL),
(164, 5, 1, 'Dolores soluta sit incidunt magni voluptatem quibusdam quae non. Assumenda repellat et aut inventore dolores.', 5, '2024-02-06 23:45:26', NULL),
(165, 8, 7, 'Tempora quia laborum aspernatur velit aut et eaque. Quia sit quia necessitatibus ipsam dolor. Velit error animi est optio rerum. Aut occaecati quia dolorem modi aliquid aut exercitationem.', 7, '2024-02-06 23:45:26', NULL),
(166, 5, 10, 'Molestias consequatur omnis dolorum delectus maxime dolorem optio. At quasi officia recusandae ex debitis est.', 7, '2024-02-06 23:45:26', NULL),
(167, 2, 6, 'Eos sit consequatur molestiae qui consequuntur quo asperiores. Eligendi officia sed molestias. Tenetur rem est et repellat facere.', 4, '2024-02-06 23:45:26', NULL),
(168, 9, 9, 'Minima quia accusamus magni et quis aut. Architecto non velit molestiae rerum recusandae. Maxime vitae eaque neque delectus.', 8, '2024-02-06 23:45:26', NULL),
(169, 2, 10, 'Enim aliquid exercitationem aperiam quisquam. Magnam at est qui debitis aliquid voluptatem deserunt. Assumenda sapiente qui libero sequi. Quia expedita sit voluptas doloremque ut sequi.', 4, '2024-02-06 23:45:26', NULL),
(170, 7, 2, 'Praesentium quam sed quia eligendi. Sapiente illum praesentium unde vero nemo quia. Recusandae dolorem ad porro quia.', 1, '2024-02-06 23:45:26', NULL),
(171, 1, 9, 'Ut eligendi quia id alias placeat perspiciatis et. Exercitationem temporibus doloremque ea quaerat. Ab eveniet qui quibusdam nesciunt voluptatem.', 7, '2024-02-06 23:45:26', NULL),
(172, 5, 3, 'Recusandae dolorem nulla autem eum at. Corporis aut error voluptates est dolorum enim sapiente. Est reiciendis ducimus aspernatur.', 8, '2024-02-06 23:45:26', NULL),
(173, 3, 5, 'Voluptate maxime amet ut cupiditate exercitationem molestiae blanditiis laborum. Adipisci aliquam vero aperiam ea.', 8, '2024-02-06 23:45:26', NULL),
(174, 2, 6, 'Aut quis voluptas cumque atque quis maiores. Aut nisi fugit perferendis nulla quidem. Asperiores aspernatur sint modi qui modi placeat provident.', 7, '2024-02-06 23:45:26', NULL),
(175, 1, 8, 'Eligendi reprehenderit sed sunt totam soluta. Pariatur numquam ut et quia amet minus consequatur. Eligendi voluptas enim maiores doloribus provident. Voluptatem voluptatem aperiam mollitia in eligendi doloribus.', 4, '2024-02-06 23:45:26', NULL),
(176, 2, 2, 'Voluptatem ea veniam est consectetur. Ea perspiciatis non provident necessitatibus deleniti aut vitae. Impedit facilis incidunt aut eveniet officia sed. Et similique eos perferendis sed. Ut illo culpa facere labore.', 5, '2024-02-06 23:45:26', NULL),
(177, 3, 8, 'Deleniti voluptate voluptas rerum omnis aut reiciendis vitae. Dolores doloremque ipsa sit rerum aut molestiae ipsum rerum. Id ratione explicabo ut odio. Officia enim aperiam et. Molestias maxime quos at nostrum.', 5, '2024-02-06 23:45:26', NULL),
(178, 10, 7, 'Delectus qui debitis repellat fuga quis eum. Ipsa at voluptas hic similique aperiam iure.', 8, '2024-02-06 23:45:26', NULL),
(179, 9, 6, 'Quis non amet necessitatibus quos eos minus quod. Omnis veniam ipsam nemo rem eius. Quod et neque ut. Maiores amet enim laboriosam voluptas sint. Quasi ipsum odit ullam est consequuntur laudantium fugit.', 9, '2024-02-06 23:45:26', NULL),
(180, 10, 8, 'Occaecati enim placeat molestias. Possimus et ab assumenda laborum cum corrupti. Autem ut inventore consequatur repellat. Non ut quo sed et deleniti.', 2, '2024-02-06 23:45:26', NULL),
(181, 9, 2, 'Ipsa deserunt suscipit vel sint nihil. Non quis illo vel perferendis porro aperiam. Vel sit optio voluptates delectus quo nam ad.', 1, '2024-02-06 23:45:26', NULL),
(182, 5, 9, 'Dolor aliquam odit velit non consequatur velit omnis. Distinctio alias sunt ipsam. Iusto repellat eveniet eum cumque et non est mollitia. Molestias vero expedita at beatae officia omnis deserunt.', 8, '2024-02-06 23:45:26', NULL),
(183, 10, 6, 'Et sit et quam voluptates voluptate sed porro. Architecto fugit quidem ratione dolorum. Voluptas vitae minima accusantium possimus incidunt. Officiis in veritatis ut voluptates cumque quisquam aut fugiat.', 2, '2024-02-06 23:45:26', NULL),
(184, 1, 5, 'Ratione est quia porro accusantium laudantium ad. Eaque dolor eum minus sint rem. Quia dolorum pariatur ea ducimus. Qui porro non consequuntur hic velit odio sed.', 1, '2024-02-06 23:45:26', NULL),
(185, 9, 2, 'Voluptatem explicabo eveniet culpa. Quia tempora et inventore debitis. Sed et deserunt enim sapiente dicta sit.', 10, '2024-02-06 23:45:26', NULL),
(186, 6, 10, 'Et deleniti inventore et eos accusantium. Modi dolor eius totam rem deleniti velit. Voluptas sapiente molestiae molestiae ducimus. Dolores asperiores molestiae non et.', 3, '2024-02-06 23:45:26', NULL),
(187, 1, 1, 'Voluptatem dicta similique et ipsa. Vitae dolor sunt doloribus sequi aut. Tenetur qui ipsam tempore ratione officiis dolor repudiandae. Sit placeat nihil excepturi laudantium.', 8, '2024-02-06 23:45:26', NULL),
(188, 1, 6, 'Magnam rerum enim doloremque eveniet harum. Ea aperiam assumenda ut porro dolorum est. Officia adipisci facere eveniet similique perferendis.', 8, '2024-02-06 23:45:26', NULL),
(189, 9, 3, 'Porro dolores qui consequuntur. Ut fugiat expedita illo facere doloribus. Sint placeat ut saepe veritatis qui aut odio. Id quia aliquid consectetur ut doloremque.', 1, '2024-02-06 23:45:26', NULL),
(190, 6, 1, 'Voluptates error quia cupiditate quisquam officia. Ipsum repellendus placeat harum sunt. Nihil perspiciatis soluta molestiae cum hic velit.', 5, '2024-02-06 23:45:26', NULL),
(191, 4, 10, 'Dolore voluptas voluptas ad assumenda possimus. Fugit saepe autem nihil facilis nulla corrupti. Esse recusandae facilis qui vitae magni ipsum. Magni architecto quia vel fuga. Voluptas iure et facere voluptatem ad tempora eligendi.', 2, '2024-02-06 23:45:26', NULL),
(192, 9, 8, 'Est unde laborum beatae dolor. Ex numquam unde hic minus. Qui illum qui nam voluptatibus.', 3, '2024-02-06 23:45:26', NULL),
(193, 1, 10, 'Sint amet sunt qui soluta minima repellendus officiis dicta. Aut id soluta et tenetur incidunt expedita. Dolore sunt sit excepturi dignissimos. Accusantium cupiditate a qui sed et.', 1, '2024-02-06 23:45:26', NULL),
(194, 5, 8, 'Amet in est non cumque. Ipsum eum sint ut eos aut beatae. Aut libero nesciunt enim qui repellendus. Quod eos numquam in aliquam nesciunt ea et.', 3, '2024-02-06 23:45:26', NULL),
(195, 6, 10, 'Temporibus veniam assumenda deleniti in laborum ratione et. Error ipsam qui velit est temporibus placeat. Voluptatem et necessitatibus voluptates est est vero.', 6, '2024-02-06 23:45:26', NULL),
(196, 5, 1, 'In officiis incidunt voluptas culpa dolores iure perferendis quod. Reprehenderit enim cum ea fugiat. Qui omnis dolores debitis quod et ut. Atque odit eveniet omnis dolore fugiat iusto.', 9, '2024-02-06 23:45:26', NULL),
(197, 10, 6, 'Ut et architecto aut harum. Quaerat doloremque nemo temporibus accusantium pariatur. In perferendis sit dolorem harum sit. Id temporibus est quia et et commodi explicabo.', 7, '2024-02-06 23:45:26', NULL),
(198, 9, 1, 'Aliquid debitis cum sed non perspiciatis dolor. Fuga est asperiores dolorem blanditiis. Officiis deleniti numquam molestias corporis distinctio architecto. Odit qui recusandae rem eum.', 7, '2024-02-06 23:45:26', NULL),
(199, 2, 4, 'Eveniet doloribus nam iure quo. Soluta delectus labore unde.', 6, '2024-02-06 23:45:26', NULL),
(200, 8, 7, 'Illo iste in nulla labore esse quibusdam harum. Ea distinctio delectus dolores quis quia. Perferendis et quibusdam atque debitis et repellendus non.', 2, '2024-02-06 23:45:26', NULL),
(201, 4, 10, 'Cumque dolorem reprehenderit quis occaecati. Consequatur ut consequatur voluptatibus vel eaque. Voluptates ipsam et et maiores.', 5, '2024-02-06 23:45:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `level`, `nama_lengkap`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lily', 'liza.boyle@example.net', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'Ms. Elna Abbott', '37806 Quincy Ways Apt. 328\nPort Alveramouth, AL 84410-6034', '3fkVCtg2AM', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(2, 'Columbus', 'tristian.schroeder@example.com', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'member', 'Ms. Berniece Fadel', '8110 Ardella Alley Apt. 724\nBauchhaven, TN 52898-8387', '0tKhHBqtmw', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(3, 'Joaquin', 'schmeler.mattie@example.net', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'member', 'Prof. Clemmie Legros', '577 Purdy Mill\nEnastad, CO 97836-9047', 'vtqk7izwqM', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(4, 'Jarrett', 'schuppe.xander@example.com', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'petugas', 'Cody Ledner DDS', '5669 Mathew Rue\nLake Guidomouth, NE 63017', 'Hj3mP2MQIx', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(5, 'Marshall', 'colin.nikolaus@example.org', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'petugas', 'Bernie Bayer DVM', '36181 Greenholt Dam Suite 954\nEvertfort, IA 30812-2233', 'y9j2duIp8R', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(6, 'Donny', 'tyrel.cole@example.org', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'member', 'Eloisa Rodriguez', '123 Schmitt Gateway Apt. 838\nNaderberg, WY 69548', '5ndaAQRCal', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(7, 'Leanna', 'bogan.alivia@example.net', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'Laverne Raynor', '54351 Hagenes Village Suite 696\nJayceeborough, WI 31083-7116', '5vHmp7lqk0', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(8, 'Addie', 'london32@example.org', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'member', 'Theo Becker', '15507 Nettie Manors Apt. 669\nPort Madonnahaven, VT 02972', '8LwjEO07NV', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(9, 'Madison', 'sconsidine@example.org', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'Mr. Fredrick Cole', '160 Feeney Shoals Apt. 070\nSouth Pablo, DC 61948-0040', 'TUDDMoSYLR', '2024-02-06 23:45:26', '2024-02-06 23:45:26'),
(10, 'Alden', 'quentin.king@example.net', '2024-02-06 23:45:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'petugas', 'Mrs. Bernadette Russel', '82091 Kunze Inlet\nLake Jake, PA 53838-7603', 'ecMMzkgWSc', '2024-02-06 23:45:26', '2024-02-06 23:45:26');

-- --------------------------------------------------------

--
-- Structure for view `all_borrow`
--
DROP TABLE IF EXISTS `all_borrow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_borrow`  AS SELECT `a`.`id` AS `id`, count(`b`.`buku_id`) AS `alltime` FROM (`buku` `a` left join `peminjaman` `b` on(`a`.`id` = `b`.`buku_id`)) GROUP BY `a`.`id``id`  ;

-- --------------------------------------------------------

--
-- Structure for view `counter_dipinjam`
--
DROP TABLE IF EXISTS `counter_dipinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `counter_dipinjam`  AS SELECT `buku`.`id` AS `id`, `buku`.`kategori_id` AS `kategori_id`, `buku`.`judul` AS `judul`, `buku`.`penulis` AS `penulis`, `buku`.`penerbit` AS `penerbit`, `buku`.`tahun_terbit` AS `tahun_terbit`, `buku`.`thumbnail` AS `thumbnail`, `buku`.`file` AS `file`, `buku`.`created_at` AS `created_at`, `buku`.`updated_at` AS `updated_at`, `peminjaman`.`buku_id` AS `buku_id`, count(`peminjaman`.`id`) AS `count(peminjaman.id)` FROM (`buku` left join `peminjaman` on(`buku`.`id` = `peminjaman`.`buku_id`)) WHERE `peminjaman`.`status` = 'dipinjam' GROUP BY `peminjaman`.`buku_id``buku_id`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `koleksi_pribadi_user_id_foreign` (`user_id`),
  ADD KEY `koleksi_pribadi_buku_id_foreign` (`buku_id`);

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
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_user_id_foreign` (`user_id`),
  ADD KEY `peminjaman_buku_id_foreign` (`buku_id`);

--
-- Indexes for table `ulasan_buku`
--
ALTER TABLE `ulasan_buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ulasan_buku_user_id_foreign` (`user_id`),
  ADD KEY `ulasan_buku_buku_id_foreign` (`buku_id`);

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
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ulasan_buku`
--
ALTER TABLE `ulasan_buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_buku` (`id`);

--
-- Constraints for table `koleksi_pribadi`
--
ALTER TABLE `koleksi_pribadi`
  ADD CONSTRAINT `koleksi_pribadi_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `koleksi_pribadi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ulasan_buku`
--
ALTER TABLE `ulasan_buku`
  ADD CONSTRAINT `ulasan_buku_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulasan_buku_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

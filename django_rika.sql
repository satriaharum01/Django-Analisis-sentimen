-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 05, 2024 at 02:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_rika`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$Sf2rWxdx0CQSteDYzyBO86$yj//I2fPM3kxrXhj0XcoKsciUwtAag6PO+jceoUnJLg=', '2024-09-05 10:01:38.850234', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-08-22 11:20:43.556371');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-22 11:02:24.436821'),
(2, 'auth', '0001_initial', '2024-08-22 11:02:25.177023'),
(3, 'admin', '0001_initial', '2024-08-22 11:02:25.391876'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-08-22 11:02:25.417867'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-22 11:02:25.469851'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-08-22 11:02:25.599021'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-08-22 11:02:25.684707'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-08-22 11:02:25.709701'),
(9, 'auth', '0004_alter_user_username_opts', '2024-08-22 11:02:25.721697'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-08-22 11:02:25.761647'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-08-22 11:02:25.764645'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-08-22 11:02:25.779641'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-08-22 11:02:25.801632'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-08-22 11:02:25.820965'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-08-22 11:02:25.854253'),
(16, 'auth', '0011_update_proxy_permissions', '2024-08-22 11:02:25.877244'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-08-22 11:02:25.894747'),
(18, 'sessions', '0001_initial', '2024-08-22 11:02:25.965016');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qic4le3d23jjdkyo3tuute7emzr203u1', '.eJxVjEEOwiAQRe_C2pBCGWBcuu8ZCANTqRqalHZlvLtt0oVu33v_v0WI21rC1ngJUxZXocTll1FMT66HyI9Y77NMc12XieSRyNM2OcyZX7ez_TsosZV97axFSJr0qLRnDUiI6EiTZ0UGydkxeWDM2iH0Ziem8x2A641l9CQ-X8IBNro:1sm9J4:2WZWr-lY6WAuC7uRWHYlbZkaqLtIthcFxAEHPQGc6X8', '2024-09-19 10:01:38.858216');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `sentimen` enum('Positif','Negatif','Netral') NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `user`, `content`, `sentimen`, `media_id`, `created_at`, `updated_at`) VALUES
(73, '@YopiIstiawan', 'Setujuh agar tdk ada diskriminasi jadi semua sama tdk ada IPA dan IPS ,jadi siswa siswi belajar sesuai minat dan kemampuan nya', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(74, '@nura2505', 'berarti kalau yang hobi bermain musik bisa memilih pelajaran kesenian, latihan vokal, dan keterampilan alat musik\r\nkalau yang hobi matematika bisa ambil mata pelajaran ekonomi, akuntasi, dan marketing..\r\nkalau yang hobi otak atik komputer bisa ambil mata pelajaran TKJ, programing dan perakitan PC\r\nkalau hobi bikin game dan aplikasi bisa ambil mata pelajaran coding, 3d modeling, web', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(75, '@nurbiatno3034', 'penghapusan jurusan IPA/IPS atau bahasa ini sangat memberatkan siswa karena siswa dipaksa menguasai beberapa materi shg otak gk pernah beristirahat dikarenakan banyak nya materi yg hrs dipahami padahal materi IPS/ IPS sangat banyak dan klo di perguruan tinggi baru ada penjurusan waktu utk memahami sy kira tdk cukup karena waktu perkuliahan / tatap muka antara pengajar sama murid/dosen sama belajar di SMA itu berbeda jauh waktunya tolong ini perlu dikaji ulang', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(70, '@whatzittooya144', 'bagus sih ini, cm nanti mudah2an gak ada kendala yg berarti dalam pelaksanaannya di tiap sekolah.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(71, '@marudutmarpaung9507', 'Lebih  baik terlambat  dari tdk  sama  sekali', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(72, '@aldrius00', 'Bagus.. dan baiknya juga sistem home schooling juga diberikan prioritas, ini  akan banyak menyerap tenaga pengajar, sistem belajar yang fleksibel yang tidak membuat anak kelelahan, mengurangi kemacetan, banyak efisiensi diwaktu- biaya, anak dapat sambil belajar membantu bisnis orang tua atau mengikuti banyak kegiatan keterampilan di luar dan tentu banyak peluang usaha tempat kursus/keterampilan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(69, '@abandonmarkspeare5213', 'Sama satu lagi yang paling penting..pilihan mereka ini harus di dukung penuh saat mereka akan naik ke jenjang kuliah seperti memberikan beasiswa gratis', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(68, '@liandra07', 'Yg lebih aneh ni yg jadiin si Nadim jdi mentri .!', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(67, '@bucek2247', 'SMA berbasis Knowladge maka fokus di pembelajaran, jurusannya IPA, IPS & BHS tujuannya melahirkan KONSEPTOR yang mampu merumuskan masalah dan mencari solusi.\r\nSMK berbasis Skill maka fokus di pelatihan jurusannya elektro, sipil dll tujuannya melahirkan aplikator yg mampu menjalankan konsep.\r\nUmumnya SMK bisa lsg kerja krn punya skill kalo mau lanjut bisa kuliah D3.  Nah SMA harus lanjut kuliah krn mau kerja tak punya skill.  Dia harus mendalami riset dulu di kampus untuk menemukan solusi dari bnyk persoalan makanya kampus harus banyak LABORATORIUM', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(66, '@kumbokarno2703', 'Bener sih, kan kalo siswa jurusan IPA mau ambil kuliah non eksakta harus belajar pelajaran IPS', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(65, '@user-lg8bs1pn4c', 'Ia menyontohkan, seorang murid yang ingin berkuliah di program studi teknik bisa menggunakan jam pelajaran pilihan untuk mata pelajaran Matematika tingkat lanjut dan Fisika, tanpa harus mengambil mata pelajaran biologi. Sebaliknya, seorang murid yang ingin berkuliah di kedokteran bisa menggunakan jam pelajaran pilihan untuk mata pelajaran Biologi dan Kimia, tanpa harus mengambil mata pelajaran matematika tingkat lanjut. Dengan begitu, murid bisa lebih fokus untuk membangun basis pengetahuan yang relevan untuk minat dan rencana studi lanjutnya.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(64, '@mbahismu4156', 'Bagus! Pemimpin mmg harus yg cerdas2. Kebanyakan posisi pemimpin skr dr bidang sosial (IPS), krn mmg sesuai bidang studinya. Masalahnya di SMA, prakteknya rata2 yg masuk IPS dr anak2 yg kurang cerdas / buangan dr IPA. Itu jg krn gengsi, bukan minat / bakat. Moga2 dgn aturan ini pemimpin2 masa depan bisa diisi org2 yg dr bibit2 yg cerdas.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(63, '@BuddyHartono', 'Menurut saya kebijakan dari menteri pendidikan Nadiem Makarim bagus dikarenakan anak bisa memilih mata pelajaran sesuai Minat dan bakatnya', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(61, '@triharyanto4976', 'Tolong pendidikan moral dan sejarah indonesia jangan dihapus', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(62, '@ithinkchannel3469', 'Emang gak ada lawan klo Mentri pendidikan dari kang Ojek,se enak jidat menghapus/merubah sesuatu.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(60, '@jgsatru', 'Saya alumni SMA jurusan sosial, tapi profesi surveyor proyek.\r\nMengerjakan pengukuran/pemetaan tanah, profesi yang harusnya dikerjakan oleh lulusan A1, A2, atau STM.\r\nMasuk jurusan A3, karena kelas 1 nya sering bolos.\r\nTapi yang namanya cerdas mah cerdas aja, tidak menyerah walau lulusan A3 tapi belajar tehnik gambar dan struktur.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(59, '@mamikabdurrahman4809', 'Kurikulum merdeka...\r\n1. Merdeka dari uang gedung.\r\n2. Merdeka dari uang spp.\r\n3. Merdeka dari uang ekskul. \r\n4. Merdeka  dari uang penglihatan lain.\r\n5. Merdeka  dari  makan siang gratis.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(58, '@ToroAthalla', 'HARUSNYA YG DIHAPUSS SI NADIEM YG SUKA KONYOL DLM MENGAMBIL KEPUTUSAN..HERAN DEEH SAMA JOKOWI MEMTRI SEPERTI NADIEM YG SUKA BIKIN GADUH TP DIPERTAHANKAN..DULU MENTRI YG PUNYA TEROBOSAN BAGUS LANGSUNG DIPECATT', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(50, '@yudikusnadi9154', 'Masukin matapelajaran NEPOTISME, agar budaya tidak hilang.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(51, '@anitawin9305', 'Kebijakan ini banyak dipakai di luar negri, bahkan rata2 siswa luar negri juga memilih mata pelajaran yg diinginkan sesuai minat pada tujuan apa yg akan ia ambil di perkuliahan atau pekerjaan. Ini bagus menurut aku sih. Asal tatalaksananya bagus, ini akan jd kemajuan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(52, '@matthewhutabarat', 'Revisi juga sistem Zonasi.. sarat manipulasi dan terlalu banyak oknum yg bermain uang (orang tua,wali kelas,kepsek,aparat, bahkan wartawan)', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(53, '@lincejono1402', 'Sbnrnya ini bagus. Banyak anak eksakta yg sebenarnya tertarik di bidang ekonomi spt akuntansi, tp krn bingung milih apa akhirnya pilih ipa, pdahal dia jg senang ips.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(54, '@bulahhjjnjj', 'Ini bagus anak tidak terlalu beban belajar kebanyakan capai', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(55, '@armawani9717', 'Ganti mentri ganti kurikulum, tp mutu & akhlak siswa makin memprihatinkan, miris nian mutu pendidikan kita', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(56, '@ISR8686', 'Pak Menteri Pendidikan tolong segera terapkan kurikulum ORDAL dan KOLEGA KELUARGA agar Indonesia semakin di depan dari belakang', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(57, '@Naur44789', 'Bagus sih spt di luar negeri yg mapan. Sayang banyak sekolah yang belum punya fasilitas  lengkap bahkan ga punya gedung dan guru yg profesional. Semoga lancar dan gak gaduh, dgn kebijakan ini.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(82, '@ramadhangadafi', 'Sangat Bagus menghapus penjurusan saat SMA.\r\nSoalnya banyak pelajar yang terhalang dan terkekang aturan. Keinginan kan selalu berubah ubah, cita cita berubah ubah, minat berubah ubah, bahkan masa masa seperti itu belum tentu juga punya minat dan tekat yang bulat, apalagi orang tua dan sekolah tidak memberikan gambaran spesifik mengenai penjurusan dan dunia kerja.\r\nSebagai contoh Jurusan IPA bisa masuk semua jurusan menuju perguruan tinggi, tapi jurusan IPS tidak bisa masuk semua jurusan ke Perguruan tinggi, karena syarat administratif.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(81, '@RaffasyaAlHusain', 'Yakin sistem seperti ini akan lebih maju, semoga cepat terealisasi....', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(80, '@slate246', 'Kalau ini bukan berubah kurikulum, bukannya malah bagus ya bisa lebih mendetail dibanding dengan \"ipa,ips,bahasa\" karena kadang ada yang masuk ipa karena suka dengan biologi tapi tidak suka dengan kimia. Sehingga murid bisa memilih mapel yang bener2 mereka minati.  Kalau memang bisa diterapkan dengan baik dan jalurnya jelas. Menurutku sih lebih kearah positif perubahan ini.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(78, '@BangZoel0508', 'Kembalikan saja kezaman dulu dimana dulu fokus kejurusan fisika,kimia,biologi dan bahasa', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(79, '@harmiyomahar9875', 'Kalo hanya mengotak atik kurikulum, seperti untuk menjadi menteri tidak perlu pinter.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(76, '@fitrianto9097', 'Saya setuju kalau mas mentri di juluki Bapak Oprak oprek pendidikan Indonesia', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(77, '@EdTech_Literacy', 'Sistem Pendidikan Malaysia bagus (Adopsi British). Secondary school (SMP-SMA) digabung jadi 5 tahun. Setelah secondary school (tahun ke-6) ada program matrikulasi 1 tahun (Pre-University). Lulus secondary school gak langsung ke university. Gak ada yang salah ambil jurusan saat kuliah nanti karena 1 tahun telah ditempa di college matriculation dan tau ke jurusan apa mereka nanti saat kuliah. Saat kuliah di Univ pun gak ada lagi belajar mata kuliah umum (English I, II, III, Bahasa Indo I-III) . Di Indonesia, banyak ambil jurusan karena ikut-ikutan, dengar dari si anu, sosialisasi dari senior dll, tidak pasti, akhirnya banyak salah jurusan. Namun beberapa sekolah menengah unggul di Indo sudah mulai sadar dengan mulai mengelompokkan siswa di kelas 2-3 ke rumpun ilmu untuk disiapkan ke jurusan apa mereka kuliah. So, karena Indonesia tidak ada program pre-university, pengelompokan ilmu tetap penting di SMA agar tidak salah jurusan di kuliah.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(83, '@ibusujinah855', 'Gak perlu SMA, ikut kursus saja, toh juga bisa punya ketrampilan. Gak ribet ......', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(84, '@nuryanto5725', 'Cocok dulu orang ipa memandang sebelah mata orang ips dn bahasa', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(85, '@jawakapitayan', 'yg lebih penting lebih di tekuni saja belajar ilmu matematika dan komputer.insya allah ini yg lebih dominan di butuhkan untuk kedepannya ketika mau bekerja..', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(86, '@user-hf1iz2yb6d', 'Salam dari allah swt,pendidikan agama hrs tetap di luruskan,di mana mana hrs tahu Tuhan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(87, '@user-bc2br8yz5e', 'Terima kasih', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(88, '@hendra39lpg', 'Ikutin zaman dong..pelajaran teknologi,lau ingin RI🇮🇩 maju', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(89, '@p0laki108', 'Sebaiknya sekolah menengah SDH berbasis ketrampilan shg yg TK bisa ke universitas bisa mmperdlm ktrampilanya ditempat kerja ato usaha mandiri,apalagi usia manusia skrg beda dg jmn dahulu yg 60 masih energik,utk itu usia bekerja jg hrs lbih muda .Hrs dikaji lagi MTA pelajarannya kalo dilihat th 90an MTA pelajaran SMP SMA lbih banyak hapalan,trpksa menghapal Krn ujian,apalagi barengan 3 MTA pelajaran stress siswa apalagi yg dirumah sibuk bantu ortu kasian kadang bertengkar dg ortu ngak bisa bantu dg alasan ujian.Banyak yg ngak ikut plajaran disekolah Izasah beli,yg lain 3 th sekolah yg beli cuman dirumah SDH sejajar  toh saat bekerja sama malah yg beli bisa lbih baik Krn banyak sempat blajar ketrampilan.Sekolah berbasis ketrampilan diperbanyak bila perlu dari usia dini ,orang Mongol jmn kubilaikhan jdikan perbandingan,dri anak anak SDH blajar berkuda dn mmanah dn saat dewasa expert semua shg bisa luar biasa.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(90, '@Boi-wot', 'Where was this back when I was still highschool age?\r\nI feel absolutely cheated out of subjects I love because of the curriculum\'s previous inherent limitation.\r\nI had to borrow my classmate\'s books if I wanted to learn the subjects I wanted. I wasn\'t able to get a score for those, I could\'ve been a biologist instead of being stuck with social studies.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(91, '@albertusbima8579', '+Sipp guru makin banyak jam mengajar, berarti makin banyak butuh guru\r\n-Beban belajar siswa dapat mapel IPA dan IPS sampai akhir', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(92, '@alexiszurex', 'mantep ini....', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(93, '@JackRoopers', 'Bagus ini, sesuai karir keinginan siswa', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(94, '@luckylucky-qj1ul', 'Sebgai alumni bekas IPS kaga terima ni w bgni,menteri yang kaga ad hasilnya kaga keliatan mata kaya bgni,sebenarnya gak Maslah mo IPA IPS yang penting jgn diapus,toh kalo kerja kaga ditanya IPA ap IPS yang penting keahlian.gaj ush yang neko2 pak ngikutin negara lain dinegara sendiri aja blm bener', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(95, '@kusnowijayanto6822', 'Bagus sekali.   Saya kecewa dgn penjurusan seolah olah selain IPA jd rendahan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(96, '@inanurnaningsih5698', 'memang seharusnya begini...semua serahkan sama murid untuk memilih sesuai minat. kurikulum ini harus nya di Implentasikan dulu pada saat SMA berubah kadi SMU', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(97, '@nusajati9778', 'Sangat masuk akal alasannya', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(98, '@eenaenah6142', 'Terima kasih atas dukungan semua pihak ,baik pemerintah ataupun para pegiat sosial media terhadap perjuangan  paguyuban Gempur Net89.\r\nTangis kesedihan para korban dana tersandera oleh  PTSMI NET89 mungkin sudah terlalu banyak yang menceritakan,oleh karena.itu\r\nkami mohon agar  segera tuntaskan kasus net 89 ini,agar dana kami bisa segera kembali,dan para pelaku kejahatan  oknum PT SMI (SIMBIOTIK MULTITALENTA INDONESIA)  yang berstatus tersangka maupun yang masih bebas  melenggang , segera bisa diproses ke persidangan dan mendapat hukuman sesuai  perbuatannya . Cukup kami yang menjadi korban jangan ada korban lain di kemudian hari\r\n Ingat!! Tuntut hak kita hingga di tangan kita', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(99, '@zyecx', 'Cuma di negara Indonesia semua anak harus belajar semua mata pelajaran.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(100, '@AdiwarnaGustini', 'Generalisasi materi pendidikan hanya untuk SD dan SMP, untuk sma harus sesuai speasislisasi supaya menempuh perguruan tinggi bisa sesuai kompetensi.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(101, '@kyacity9764', 'di luar negeri spt AS klo lihat di film anak sekolah SMU spty mata pelajarannya tidak sebanyak di indonesia..? Bahkan sedari SMP kmgkn sudah diarahkan pada mata pelajaran pilihan sesuai dg bakat dan minat juga siswa tidak terlalu dibebani bermacam mata pelajaran yg justeru menguras tenaga,waktu dan fikiran...shg bila melanjutkan ke jenjang sekolah tinggi akan lebih fokus sesuai dg faknya dan nanti sekolah meluluskan alumnus2 yg bnar menguasai bidangnya...', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(102, '@milanoanugrah2781', 'Tuntutlah ilmu sampai kenegeri china.....mau keluar kecamatan saja tidak bisa karena zonasi....', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(103, '@user-uo6lf2fc5s', 'Jumlah jam mengajar guru juga jangan di minimalkan 24 jam bagi yg sudah serdik.sebab tidak ada jurusan berdampak berkurangnya jumlah jam pada mapel tertentu', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(104, '@hai6940', 'Lucu koment2 netizen yg sok tau dan sok pinter semua, seolah2 pak menteri asal2an buat kebijakan....\r\nTengok negara2 maju udah sejak dulu menghapus jurusan...\r\nBahakan baru2 ini irlandia sbg negara dg pendidikan terbaik justru menghapus semua mata pelajaran dan siswanya belajar sesuai dg kompetensinya masing2', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(105, '@pandemiilmu2063', 'Model ini bikin rebet sekolah, disatu pelajaran bisa numpuk murid ingin belajar mapel pilihan, pasti pada mapel yg nantinya menjurus ke perkuliahan teknik. \r\nBisa jadi mapel yg menjurus ke perkuliahan kedokteran cuma sedikit peminat karena biaya kuliah sangat mahal. \r\nLebih baik ngak ada jurusan dan tidak ada mapel pilihan, jadi benar benar umum.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(106, '@bernarduslewan3483', 'Ini rasanya aneh  saja perlu diketahui bahwa  jurusan IPA ,IPS dan Bshasa itu sdh ada sejak jaman orde baru prezidennya pak Harto mentetinya bapak Daud Yusuf ini dianggsp sebsgai peletak dasar penjurusan.di SMA sejsk tahun 1970 an sdh Luar biasa setelah orde baru  muncul orde Reformasi pendidikan kita bukan semakin.bsik dan.maju malah tambah jelek alias reformasi kebablasan seenaknya saja semua.mentri pendidikan dijaman reformasi seenaknya saja membuat kebijakan  dan aturan sampai terakhir adanya kurikulum merdeka yg seolah- olah dipaksakan untuk diterapkan di semua jenjang pendidikan dari TK hingga perguruan Tinggi dari pusat hingga daerah pelosok .C semoga penggantian pemimpin nomor satu di Indonesia nanti bisa membawahi angin segar buat pendidikan di Indonesis', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(107, '@tinikatini9079', 'Klu saya pak mentri sekolah itu di adakan tes yg mau masuk. Trs aturan jonasi tolong di cabut. Ngak adil buat anak yg mau sekolah. Sejarah hrs di pertahankan buat genersi muda.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(108, '@Daisy-bs1on', 'Ada baiknya Tes Kemampuan oleh Psikologi supaya semua siswa bakat / talenta nya tersalurkan supaya siswa tahu KEKUATAN & KELEMAHANNYA. Berangkat dari situ baru dijuruskan sesuai TALENTA anak utk dilanjutkan ke tahap universitas.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(109, '@amchanel1236', 'Bagus juga sih, sejak masuk SMA siswa sudah diharuskan berpikir matang2 sesuai rencana kuliah.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(110, '@vaizpardiansyah6913', 'Tolong kalo udah begini ... Anak anak itu lebih diperhatikan apalagi yang belum bisa menentukan tujuan fokus studi selanjutnya... Jangan terlampau dipaksa', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(111, '@hariyangceria9889', 'Bagus, dan yg penting tambahkan pembekalan pelajaran psikologi sama etika sosial, apapun bidang pekerjaannya akan butuh 2 hal ini.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(112, '@kokoherutjahjono2344', 'Yg komen nyinyir berarti pada tidak faham.. jalur zonasi sdh bagus krn adanya pemerataan murid.. kalau mau pilih skloha favorit di luar jalur zonasi ya ikit yg jalur prestasi to.. peak.. kurikulum merdeka sdh bagus kadi siswa akan mengambil mata pelajaran sesuai kemampuam dan cita2 nanti.. bukan di paksa untuk belajar... gitu....', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(113, '@SumariyahSorong-gx2dx', 'Yang. Bagus. Terima. Pelajaran semua..', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(114, '@cobaduluaja295', 'mantappp', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(115, '@englishisfun5778', 'Sebenarnya yg diperlukan anak-anak murid saat ini adalah soft skill dan komputer. Karena itu adalah skill yg diperlukan perusahaan. Fresh graduate kalah dengan yg berpengalaman. Lagipula kebanyakan umur di atas 30 tahun susah cari kerja. Jadi lebih bagus kalau umur dibawah 30 tahun sudah memiliki banyak pengalaman yg diperlukan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(116, '@sonyagung4507', 'Kemendikbud ristek, menambah jurusan di SMK untuk pertanian, peternakan, perkebunan dan agrobisnis di sektor pangan  di berbagai daerah', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(117, '@MrKyociro', 'Bagus pak Nadiem.. Penghapusan jurusan IPA dan IPS ini menghancurkan diskriminasi PTN.. Dimana penerimaan Fakultas Kedokteran hanya menerima siswa jurusan IPA., hal ini tentunya mematikan harapan siswa jurusan IPS untuk masuk FK. Semoga jika kebijakan ini berlanjut diskriminasi Universitas kpd siswa IPS utk masuk FK di tiadakan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(118, '@NickName-kd2sb', 'Kok makin kacau pendidikan di negeri ini.... Nggak punya arah yg jelas kebijakannya.... Ulah menterinya?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(119, '@nitasunarti3513', 'Kembalikan pelajaran budi pekerti', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(120, '@beninghati6003', 'Bagus', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(121, '@aribinu8910', 'Seenggaknya ada ilmu dasar jgn sampai mentang2 suka ips ga tau asal usul hujan mentang2 suka ipa ga tau inflasi', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(122, '@arsilbunyamin4306', 'Implementasi dilapangan lebih sulit dgn kondisi pendidikan di Indonesia. Masih banyak pakar2 yg merasa keberatan dgn kurikulum ini.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(123, '@Toelkimoen', 'Sebwnarnya itu mempermudah siswa menemukan bakatnya utk menentukan masa depannya secara rasional. Kalau tidak, mereka akan terjebak dalam ambisinya', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(124, '@mr.rojerrojer5496', 'Makin ambyar pendidikan ditangan menteri yg ga pernah di sekolah negeri  ..', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(125, '@Janskyhawk', 'Sptnya bagus ya..\r\n Tp nanti kita liat, sptnya bakal banyak aneka ketidaksiapan.\r\nLbh baik fokus menyiapkan anak2 yg \'lemah\' yg segmennya ada di kelompok IPS.. memudahkan mereka memahami pelajaran.\r\nKalo anak2 yg kuat di IPA, mrk itu sdh punya kekuatan/kemampuan untuk urusi dirinya. Kadang sekolahpun tdk mereka harapkan ilmunya... Mrk hanya sekedar bersosialisasi di sekolah, malah mereka menimba ilmu di BIMBEL yg mmg lbh bisa memahamkan mrk drpd guru di sekolah yg sering ajar alakadarnya', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(126, '@mujiasnanto6393', 'Yg perlu diganti bukan kurikulumnya, tapi mentrinya... Begini ini kalau amanah diberikan kepada seseorang yg bukan ahlinya bahkan cenderung gk faham atau kata kasarnya   menggoblokkan diri...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(127, '@sawalsihombing2868', 'Sarana sekolah dulu.baik guru.gedung sekolah.bagaimana anak murid pintar.tenaga pengajar di kelas setiap hari.masih banyak belum layak.wajar jika 20 tahun berjalan.pelajar lulus.sulit berkopetensi untuk mendapatkan pekerjaan.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(128, '@wawancahyo2214', 'Skolah nggk ada gunanya, yang ada gunanya adalah kemauan untuk menciptakan peluang..', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(129, '@IwanSetiawan-nz3zt', '...\r\nMengapa TANPA JURUSAN? Karena Sang Menteri memang tidak memiliki visi, program,  atau apapun namanya. Visi adalah jurusan. Program adalah jurusan. Sesuatu yg akan dicapai atau diraih adalah  Maka,  artinya tanpa arah, tanpa tujuan, tanpa visi, tanpa program.\r\n.....\r\nMengapa TANPA JURUSAN? Karena Sang Menteri tidak mau dievaluasi kinerjanya. TANPA JURUSAN menegaskan tanpa ada indikator penilaian apapun atas kinerja Sang Menteri.\r\n.....\r\nMengapa TANPA JURUSAN? Sama seperti proyek2 yg mangkrak. Dibangun asal geprak, hantam kromo, menghamburkan anggaran, tapi tidak jelas nilai strategis dan asas kemanfaatannya.\r\n.....\r\nMengapa TANPA JURUSAN? Harusnya, ya harusnya.... PTN juga tak perlu ada PRODI, Fakultas, Semua yang namanya Politeknik dibubarkan. Label Institut juga harus berubah menjadi universitas. Tak perlu ada ruangan kuliah. Buat aula seukuran stadion. Semua mahasiswa kuliah bersamaan dalam satu tempat dan satu waktu karena TIDAK ADA PENJURUSAN yang memisahkan atau mengelompokkan mereka satu sama lain.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(130, '@arthuromas8911', 'Sya setuju sekali.. supaya ada pemerataan system pendidikan karena lulusan SMKN utk melanjutkan kuliah masuk Negeri/PTN testnya sangat susah karena terbatasnya pengetahuan MIPA yg di terima di Sekolah SMK... Tapi SDMnya haruss di persiapan dengan sangat Matang utk masa depan pendidikan Indonesia dan juga anak2 kita yg Sekolah di SMAN juga tidak jenuh dan terfokus di satu pilihan saja tpi sekarang bisa lebih sesuai dgn bakat dan minatnya karena biasanya lulusan bahasa dan ips sangat sulit juga utk test di PTN', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(131, '@ignacia84', 'Yaaa... Klo anak didik mngkn hmpr tdk ada mslh... Tp guru2nya siap apa kagak... Anak remaja lbh sigap beradaptasi... Klo guru2nya siap gak berubah... Terutama sekolah2 negeri', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(132, '@kritikuz', 'Setuju sih kalau IPA IPS dihapus, harusnya dicampur aja pelajarannya sehingga bisa kuliah universal segala jurusan nantinya. Gaada halangan lagi. \r\nContoh jurusan kuliah informatika harus lulusan IPA sedangkan IPS gabisa. Nah, kalau dicampur kan bisa tetep masuk', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(133, '@sniperkacang9822', 'Sejak dulu sekolahbsetingkat SMA termasuk STM itu terlalu banyak yg ahrus dipelajari dan dikuasai murid. Makanyabebqn pikirqn ga fokus. Dan bagi yg otak mepet kaya hw malah banyak yg paham', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(134, '@henichaniasundari9290', 'Coba program ini pas zaman aku sekolah dulu. Aku akan memilih kesenian atau Menulis, karna aku suka keduanya.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(135, '@kangfatah2959', 'Terimakasih pak Nadiem ini yg sy pikirkan dari dulu', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(136, '@fauzannst8096', 'setuju. harusnya hapus dari dulu. ga ada manfaatnya sistem jurusan itu.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(137, '@user-bc2br8yz5e', 'Asik nya persiden baru', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(138, '@ilmupraktis1603', 'Saya sma jurusan ips. Kuliah ekonomi tapi sekarang saya kerja di bidang teknik. Mekanik dan elektronik. Bidang ini saya kuasai dengan  belajar secara mandiri. Karena  ilmu apa saja bisa dikuasai asalkan ada minat dan kemampuan dan kemauan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(139, '@kreslilela8453', 'Karena sma sekarang kayak kuliah,murid cari guru utk belajar juga susah,guru2 sekarang pas jam pelajaran hanya selvi habis itu keluar kelas padahal harusnya kasih ilmu,guru2 seperti ini di gaji negara dgn luar biasa tanpa bekerja,banyak sekolah yg guru2nya gini', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(140, '@Pint4rNabil', 'Mantap nh. Semoga sesuai harapan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(141, '@pt.karuniapharmindosejati1231', 'Pelajaran Moral .....ini yg penting.....melihat anak didik.....jaman now....gak.bagusss....', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(142, '@rubensihite1652', 'iya, benar. Jujur saja, banyak siswa SMA jurusan IPA ketika kuliah malah banyak yg ambil jurusan sosial atau manajemen & akuntansi... mereka yg ketika di SMA Jurusan IPA berlelah-lelah belajar Kalkulus, integral, rumus molekul, dll akhirnya yg misalnya jurusan ekonomi di kuliahan, belajarnya: misalnya jurnal dagang, digital marketing, Dasar-Dasar Manajemen, dll....️', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(143, '@Ayemtentrem138', 'Emang mestinya gitu sih, karena kalau mau jujur ya emang jarang bgt org indonesia yg setelah lulus kerjanya linear sm background pendidikannya.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(144, '@allpurposegadgets', 'Menurut saya kebijakan ini sangat bagus. Saya sangat setuju dan mendukung pemikiran ini.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(145, '@ramaraga2383', 'yang penting bisa baca, tulis, dan hitungan dasar.... soal keahlian hanya ada di lapangan kerja... \"bukan di sekolah !\"', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(146, '@Ramlah-qh6yc', 'Baguslah', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(147, '@mieramen7358', 'Bagus. SMA memang harus bgini dari awal', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(148, '@heryrahmadi6669', 'Betul, sekolah Jurusan lebih fokus ke Skill untuk menghadapi era teknologi', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(149, '@airbender7025', 'Jangan termakan clickbait dari news channel bro, yg dihapus cuma namanya saja, penjurusannya masih ada, bahkan jurusan ipa mekar jadi 3:   Kedokteran, Tehnik dan Campur antara ipa dan ekonomi.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(150, '@user-pm2vy8pp2d', 'Percuma PAKAI KURIKULUM MERDEKA JIKA KALAH BERSAING MASUK PTN,PTS FAVORIT.DISEKOLAH SANTAI TAPI ANAK ANAK ORANG KAYA TAMBAH ILMU DENGAN LES PRIVAT.AKIBAT ANAK ORANG MISKIN YANG HANYA NGADALKAN SEKOLAH MERDEKA AKAN KALAH BERSAING.YANG MISKIN TETAP MISKIN YANG KAYA,PINTAR TAMBAH KAYA.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(151, '@bucek2247', 'Sdh shrsnya ada penjurusan sesuai minat, bakat & KEMAMPUAN maka ada SMA berbasis knowladge & ada SMK berbasis skill. eh IPA, IPS & BHS malah dihapus makin kacau aja', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(152, '@jufriyadi8706', 'Ini bagus menyesuaikan dg zaman', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(153, '@suparmanpemuda1121', 'Ambil mata pelajaran OjOL sebanyak2nya. Biar abis sekolah langsung ngojek sukses jadi nadiem.\r\nBtw. Klo yg minat ga ambil pelajaran  MTK tiba2 UN ada soal MTK, bisa nyengir tuh siswa.\r\nGenZ nasibmu memang bgini, karna Hidup dijaman Dinasti Politik', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(154, '@AbdulBasith-hc7br', 'Lagi realita sebagian besar kita sekolah kalau gak sampai kuliah , ngambil jurusannya apa kerjanya beda hal', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(155, '@ululponco', 'Tumben pemerintah aksi nya mencerdaskan bangsa!\r\nkenapa gk dari dulu ajh!?..', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(156, '@muhammadbusyairi7373', 'Materi IPS nya Gk ada yg Falid Hapus aja mending Mata Pelajaran dikit tapi Jadi pegangan Siswa', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(157, '@StardustDragon2500', 'Hapus sistem zonasinya, masih banyak ketidakjujuran juga contohnya pemalsuan KK dengan tujuan masuk ke sekolah unggulan. Nilai UN sekarang itu tidak ada gunanya. Dulu ada yang protes UN curang sekarang sama aja pemalsuan data dan itu terbukti tidak efektif, kalau mentalnya curang ya mau dibawa kemanapun tetap curang.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(158, '@rahmadhartono6897', 'akan menambah beban siswa dalam menqhadapi berbaqai raqam pelajaran sekolah klo tanpa penjurusan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(159, '@ululponco', 'ni dari sisi psikologi yah:\r\nkbnykan siswa yg sering bolos,merasa bosan karena mix dri kurikulum itu smua,\r\ngk juga membuat siswa betah belajar,karena yg dipelajari bukan minat/sesuai bakat siswa?...', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(160, '@punk5hits', 'nice, belajar sesuai minat! wa dari dulu bingung jurusan wa IPA tapi masih harus masih ngapalin sejarah,  sosiologi dan akutansi  ...', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(161, '@scienceroast9558', 'Sbetulnya awal di orde baru terjadinya penjurusan ini adalah menganut sistem Jerman waktu itu yang secara efektif dan efisien memudahkan pengembangan anak pra universitas, dimana anak langsung difokuskan konsentrasi ke empiris (ipa) dan sosio-politik-ekonomi (ips). Sehingga perkembangan pola pikir anak menjadi lebih efektif dan efisien. Mencetak para ahli di bidangnya dengan cepat. Namun…\r\nKarena masyarakat Indonesia masih menganut sistem feodalisme dan monarki yang kental dan sakral dalam kasta sosial, maka hal tersebut pun menjalar ke dunia pendidikan. Jadi akhirnya dibuat semacam idiom tidak resmi bahwa anak IPA adalah anak pintar-pintar dan elite sementara anak IPS adalah anak bodoh-bodoh, terbelakang, kelas rendah dan urakan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(162, '@melidaily6994', 'Sistem pendidikan semakin memprihatinkan di Indonesia ckckck', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(163, '@terryprihadi8640', 'Kenapa bingung tdk usah rame krn di luar negeri juga tdk ada pembagian ipa ips atau bahasa', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(164, '@feedypvepvp3936', 'Cieee, diskriminasi buat senior buat. Sukses ya buat senior. Gemilang buat junior angkatan bawah', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(165, '@vadhuvishal2902', 'Ini kejadian sore kmren sekitar pkl 17.00 pas saya lewat, saya tanya lagi pada ngeliatin apaan si bang, &quot;ini liatin orang jekpot di Gärudähoki..', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(166, '@EdiTriono-ct9uo', 'Waah mantap nih...\r\nSeharusnya dari dulu di hapus ..\r\nAgar anak SMA sejak awal sdh siap utk masuk kuliah sesuai kemampuan IQ nya', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(167, '@MVBMJSUNP', 'Kementerian Pendidikan Tolong Dong Buat Aturan Yang Melarang Kegiatan Perpisahan Sekolah Yang Sekarang Banyak Membebani Para Orang Tua, Terutama Orang Tua Murid Yang Miskin, Pihak Sekolah Kadang Memaksakan Perpisahan Bermewah-Mewah Yang Membebani Orang Tua Murid Hingga Jutaan Rupiah Untuk Membuat Kostum Perpisahan Dll...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(168, '@maskardi7845', 'Mantap sekaligus yg di SMK Donggg', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(169, '@qantaltelu2304', 'Ya dr dulu harusnya gt, belajar itu gak boleh pake batasan. Next mungkin kampus tanpa fakultas bahkan prodi', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(170, '@furqanramadhan1854', 'Harus nya memang begitu karena sma tu bukan kejuruan tapi umum pelajaran nya. Makanya output tamatan sma tu cocok nya jadi tni polisi dan hukum', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(171, '@jafarfathoni1433', 'Selain itu saran saya agar program ini berjalan baik, jam mengajar guru yg harus 24 jam per minggu sebaiknya juga dibuat lebih fleksibel. \r\nKenapa begitu? Karena jika guru masih diwajibkan mengajar 24 jam per minggu, maka dimasing2 sekolah pada akhirnya siswa tetap harus mengikuti mapel tertentu agar jam guru yg bersangkutan tetap 24 jam perminggu walaupun siswa yg bersangkutan mungkin tidak ingin belajar mapel itu. Jadinya sama aja nantinya.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(172, '@arisbejo9763', 'Guru guru di SMA juga sebaguan memandang sebelah mata terhadap murud jurusan IPS', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(173, '@user-kl3bv7rd6r', 'Ini kemunduran bagi dunia pendidikan ,dan bukti hancurnya suatu bangunan yg pimpin bukan ahlinya,nyata ngedabrus biasa bawa Go-Jek ,nangani pendidikan,bukan bidangnya,maka hancur cur cur,jangan biarkan hancur Negara milik Rakyat .', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(174, '@andreiyusuffahlifi1916', 'Mungkin biar flexible untuk sesuai kebutuhan kerja', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(175, '@tommytorang1882', 'Terus bagaimana kalo kuliah masih di buat aturan syarat masuk jurusan saat SMA', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(176, '@abisadida4252', 'Nanti kalau pemerintahan yang baru ganti menteri pendidikan dan visi dan misinya berbeda bagaimana? Mengingat sekarang menjelang akhir peralihan kekuasaan.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(177, '@Mahmud-ey4ee', 'memanCing  untuK beLanJa,, keCukuPan  pencaPaian Jumlah, SKS, di arahkan oleh PA,  ( pa Akademik)', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(178, '@PujiTV98', 'Pada dasarnya memang di hapus tapi mungkin pelajaran nya tetap ada cuma jadi pilihan saja. Pokoknya emang enak itu era KTSP', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(179, '@user-bc2br8yz5e', 'Jokowi Terima kasih', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(180, '@notahaofficial9615', 'Bagus sih... Biar siswa bebas memilih pelajaran yang diinginkan... SMA rasa Kuliah', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(181, '@alimustofa6346', 'Cok nadiem iki kok gak di pecat pecat ae jadi menteri', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(182, '@UmiAniq', 'Ya semoga ada kemajuan bagi para pelajar', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(183, '@rayyandhi737', 'Hapus ,spp dan iuran bangunan dan tetek bengek ,jgn jurusan yg di hapus atau kembalikan kepada sistem lama,spt di jaman pak harto️', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(184, '@nursoleh8665', 'mantap ini', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(185, '@ParuLian-fi4be', 'Masih ada,sekolah yg Diskriminatif, Mendikbud,jgn dibiarkan,hapus semua oknum\" yg terpapar ajaran, radikalisme', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(186, '@QiuQiuChannel-ni3xj', 'Setuju, IPA IPS cenderung jadi ajang diskriminasi d mana anak IPA selalu d anak emaskan d bandingkan IPS', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(187, '@samsungmega2417', 'Sekalian SMA digabung SMK\r\nMerdeka boleh kepingin belajar apa mau jadi apa\r\nkapan\r\nHoreeee\r\nYg kepingin jadi pelawak, penyanyi\r\nBebaaasss', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(188, '@LailatulLathifah', 'Kuliah beliau di luar negeri terus..bapak sebelum mengurangi jam kasian guru prakarya di tingkat SMP jam dikurangi dignti IT...SEDANG BELIU PROSES PEMBERKASAN PPPK... AKHIR NYA JAM NYA HABIS KARNA GURUNYA BANYAK NASIB PPPK NYA BAGAIMANA BAPAK...HEMMM', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(189, '@napatuhyanatashara7719', 'Bagus juga. Contoh kecil. Dulu sy suka fisika kimia akhirnya ambil jurusan ipa tapi gk suka sama biologi.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(190, '@user-qi5pm4sy6g', 'Yg sangat menyusahkan saat masuk SMP, zona bangsat tinggal disamping sekolah tp GK bisa masuk karena GK mau bayar beli bangku', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(191, '@AstomoPancoroPutro', 'anak sma blm siap menentukan bidang yg diminati. masih butuh bimbingan. lagipula, simpulan konyol dari mana orang mau belajar kedokteran kok gak perlu belajar mtk dulu. aneh bin ajaib ini. sejak zaman Aristoteles mtk dibutuhkan semua bidang science tanpa kecuali', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(192, '@sunrevolver', 'Saya sangat bersyukur sekolah di zaman dulu dan bukan di zaman Pak Nadiem', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(193, '@user-gs5jp2vf4g', 'Waduh... Kurikulum merdeka aja bisa membuat madesu yang udah mau lulus -_-\r\nBenar-benar GILA!', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(194, '@kepikepo4484', 'kalau sudah dihapus, lulusan pendidikan bahasa Arab bisa ngajar dimana ?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(195, '@DuniaPopuler88', 'Ini kebijakannya bagus siswa diarahkan sesuai mimat dan bakatnya. Siswa tidak dipaksakan dlm menentukan disiplin ilmu yg akan dia kembamgkan kedepan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(196, '@Suud-qj1nt', 'Menteri bermasalah. Mending ngurusi Go-Jek aja. Mungkin cukup IPA dan IPS saja.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(197, '@TradingAtg', 'Jangan sampai jika sdh minat pd suatu pelajaran, malah nanti di uang kan lg', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(198, '@tommylee6557', 'DISESUAIKAN DENGAN SDMNYA LAH LIAT2 DULU, KLO SDM MASIH RENDAH JANGAN BANYAK ROMBAK INI ITU PERBAIKIN DLU SISTEM PENDIDIKANNYA DAN PENGAJARNYA KASIAN KLO SAMPE ANAK2 DAN ORG TUA MURID YG NANTINYA JDI KORBAN SISTEM BARU SEKOLAH SEKARANG GA MURAH', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(199, '@cornelliusasher4666', 'Ini kalau kejjadiannya seperti putra saya bagaimana yg pada awalnya memilih kedokteran tetapi pada saat di kelas XII berubah peminatan ingin ke teknik karena berbagai pertimbangan dari segi ekonomi keluarga yg tidak akan mampu mengkuliahakn di kedokteran,  dan ditolak tidak bisa pindah ke kelas teknik.apakah masih tetap harus dipaksa ke kedokteran yg dimana toh nanti malah si anak tidak bisa kuliah karena alasan ekonomi.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(200, '@marsidiborneo1533', 'Menurut aku program kurikulum setiap tahun ganti tidak bisa merubah moral tanpa digembleng dengan serius Pendidikan Moral Pancasila. Yang diperlukan paling utama Moralnya Pancasila di Indonesia ini, tanpa pendidikan Moral yang kuat akan ambruk negara Indonesia yang tercinta ini.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(201, '@user-vz1hj4lp9x', 'Walaupun saya bukan guru Saya tidak setuju  kalau IPA.,IPS, dan BHS.idi hapus, Pendidikan semakin buruk  karena siswa dibatasi ilmuxa terutama di SMA,SMP sampai Diperguruan tinggi ada program khusus atau jurusan dan harus sesuai dengan minakxa dan kemampuanxa bakat  dan hobbixa  siswa ataupun mahasiswa', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(202, '@agussugianto5292', 'Bagusnya tu , gk da lagi yg ngejek2 anak2 IPS ..., \r\nDulu mah kl di tanya \r\n        \"\"lu anak apa?\r\n         IPS \r\nPasti di ketawain .....', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(203, '@dedemunir2583', 'Sistem berubah rubah terus bikin rakyat bodoh siswa dibikin kelinci percobaan, kalau gak ada jurusan atau perbedaan antara IPA/IPS terus SMA dan SMK satukan saja gak usah ada SMA/SMK misal jadi SLA, ini sudah darurat saya lebih setuju menterinya diganti secepatnya dan diganti dengan sistem yang dulu saja', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(204, '@luckylucky-qj1ul', 'Bikin peraturan pak kalo anak sekolah tawuran jangan pake ad hukum ank dibawah umur apalagi smpe membunuh kasih hukuman mati juga anak sekolah sekarang jangan dilembekin ngelunjak', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(205, '@imammaarifarif4388', 'SUKSES SELALU KEMENTERIAN PENDIDIKAN INDONESIA', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(206, '@febriantiwulandini9532', 'Jadi ga ada lagi kelas Bahasa yg engga belajar ekonomi, akutansi, fisika, kimia, biologi', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(207, '@esp.surbakti8447', 'India saja sudah lama spt itu, Indonesia baru mulai spy melahirkan lulusan sesuai bidang yg diminatinya malahan pihak yg ada kepentingan terbalik pada gak  Siap,,', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(208, '@user-vt7fg8gw4r', 'Dari menteri Kominfo. Pendidikan. Perdagangan. Keuangan. Pertanian. Kontroversi melulu nyebelin', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(209, '@mariamirah301', 'Bagus. Ini sama seperti yang diterapkan di sekolah dengan kurikulum international. Maju terus Pak Mentri.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(210, '@albyMmt', 'Yang enak yang di kota\r\nYg di kampung mau jd dokter\r\nNgambil biologi\r\nEhhh fasilitasnya gk memadai\r\nAnak kuli balik nguli jadi nya', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(211, '@chikaJuliana-z5q', 'Bagaimana nanti dengan pendaftaran Akmil yg mengunakan jurusan ipa dan IPS', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(212, '@masjidizzatululya8382', 'Bagus lah..', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(213, '@yttaaemasf', 'Itu lebih bagus sekolah harus ada kejurusan yg langsung praktek', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(214, '@mariamsophia4772', 'Mau daftar sklh aja ruwet betul jaman skrng...gonta ganti kurikulum', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(215, '@adamlevin3287', 'Hapus juga system zona yang jadi masalah tiap tahun PDB', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(216, '@luckylucky-qj1ul', 'Jaman sekolah w anak IPS cwe w anak IPA semua gak penting mo IPA IPS yang penting negonya aja', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(217, '@argoadhyaksa8548', 'Penjurusan dalam tingkat pendidikan menengah adalah suatu cara mengetahui anak itu lebih kompeten dimana', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(218, '@user-gy6es3ty1t', 'gk usah ada sekolah aja sekalian.... justru itu ngebantu banget pas lo ambil jurusan yg berhubungan dgn ipa  anak yg ips pasti bingung kalau masuk jurusan', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(219, '@Abajadun-hv4pu', 'Saya sepakat dgn sekjen PGRI Pak Dudung karena jika sistem pendidikan Indonesia disamakan dengan luar negri jangankan Amrik dengan Singapur saja kita nanti bisa kehilangan nilai-nilai ajaran Ki Hajar Dewantoro yang tidak diajarkan di Amrik juga Singapur begitupun dgn kurikulum merdeka karena murid nnti terlalu bebas berimprovisasi dlm belajar tdk ikut dgn aturan guru karena guru itu diprogram sebagai pengajar juga pendidik yg berbasis mental dan moral klo ilmu tdk dilandasi mental agama juga moral etitude bisa hilang moralitas mereka seperti dokter yg bisa mbuka praktek tidak bermoral karena nilai edukasi juga agama mereka tidak dibarengi dlm nilai pendidikan mereka khawatir generasi kedepan hanya memikirkan kepintaran dan prestasi tanpa memikirkan moral agama yg menjadi landasan keilmuan mereka...\r\nAdapun dgn penjurusan saya rasa mereka akan lebih baik fokus kpd program penjurusan karena mereka akan fokus dengan pelajaran/ jurusan/ spesifikasi dlm mata kuliah nanti yg akan dituju yg dibimbing oleh guru BP atau ditambah guru pembina/ pembimbing dibawah naungan Guru BP yg mberi bimbingan dlm pendidikan atau wawasan untuk masa depan mereka....\r\n.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(220, '@widiatmopetrus3444', 'Bagus ,,,, les2an makin laku. Guru2 dpt  kerja sampingan.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(221, '@user-md8wk4xm9l', 'Lembi enak s ma sewasta tyepat lowongan kerdya', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(222, '@gusaan4661', 'Ntar pas presiden dilantik.. ganti menteri baru ...\r\nGanti deh.. kurikulumnya.\r\nDari kurikulum merdeka jadi kurikulum makan siang gratis.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(223, '@AnakSekolah', 'Saya yakin akan kesulitan mengatur jadwal pembelajaran, karena pilihan siswa beda beda', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(224, '@mechiner8070', 'aku sih yes aja, Tapi harus TunTas buaT skema ujian masuk universiTas dulu, yang biasanya dibagi jadi ipa, ips, ipc', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(225, '@ebikumis4516', 'SDM nya belum mampu, guru2 didaerah apalagi kalau harus mengajar sesuai minat siswa.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(226, '@dharmawangsajalil2452', 'mantapp', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(227, '@dodyrosanto3871', 'Liberalisasi pendidikan... siswa silakan pilih sendiri mata pelajarannya... memangnya siswa sudah tau bakatnya dan nantinya mau jadi apa ?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(228, '@hmm...6872', 'Pembodohan generasi. Dimulai dr sistem pendidikan. Hancurkanlah Indonesia dgn merusak pendidikan. Mantap..', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(229, '@kuerangie9064', 'PELAJARAN BUMI DATAR HARUSNYA MASUK KURIKULUM PENDIDIKAN', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(230, '@user-ro3qz2kc8n', 'Jangka panjang bagus ni.... Terarah...', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(231, '@YatiyatiPonsel', 'haduh makin sembraut pendidikan di lndonesia....kalau pelajaran bahasa di hapus.....setuju.....sekalian mama gufran di angkat sebagai pengajar bahasa semut......', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(232, '@yuliazni3389', 'Waktu jurusan ipa , sebenarnya bosan / monoton.sama aja kayak waktu smp cuma ditambah aja materinya. Ngak ada yang berkembang', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(233, '@agusbagus500', 'Di Pondok Gontor... Sdh lama tanpa jurusan..', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(234, '@idafaridas9808', 'Nah ini bukan Murid saja yang bingung Orang Tua dan Guru juga bingung....padahal sudah mau ganti Metri lagi...ngga usah bikin bingung lah. Systemnya mau bagaimana kedepannya.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(235, '@dinartiga', 'Sudah benar...\r\nKarena skrg penjurusan malah gk guna\r\nSekarang sarjana kehutanan bisa jd manajer marketing, atau kepala akunting dari sarjana boga', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56');
INSERT INTO `komentar` (`id`, `user`, `content`, `sentimen`, `media_id`, `created_at`, `updated_at`) VALUES
(236, '@bambangiswanto94167', 'bagus,supaya gak sombong2an,karna ada pemahaman yg salah selama ini', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(237, '@manonchanel6247', 'ganti,minat bakat,pmp,dan agar fokus yg sesui', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(238, '@ahmedsadamhusenchanel165', 'bagus sih. ini dmpaknya setelah lulus. jd siswa pilih jurusannya saat masuk kuliah.. klo smk kn lulus knyakan lngsung kerja,', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(239, '@franskhadavi919', 'Yg sdh baik harusnya dipertahankan .. Slama.ini.gk mmpu mnunjukkan perbaikan malah merubah rubah', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(240, '@H_D_Gamer213', 'Khusus New Member_HAUSWIN 138..KLAIM 100K', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(241, '@Navigator336', 'Masalah nya, kualitas siswa berbeda di tiap provinsi, begitu pula dengan gurunya,belum sarana penunjang seperti labotorium tidak sama , anggaran utk itu hanya habis di makan di lingkaran penyelenggara pendidikan,yg contoh sebelumnya utk SMK saja sudah gagal total ,', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(242, '@dharmaBlack-zk7wn', 'Lebih baik SMP, SMA dan Universitas JUALAN IJASAH SAJA... KERJA SAMA DENGAN PINJOL...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(243, '@idaayunyomanswarni2892', 'Sy msh ingat pernyataan lurah dl.... Tdk ada visi misi mentri yg ada visi mentri presiden', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(244, '@anjarsetiana7779', 'Nadim yg harus dihapus min....biar generasi Indonesia pintar pintar ga bloon', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(245, '@iangame748', 'Klo menteri bukan di bidangnya maka hancurlah.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(246, '@ruangberita_9', 'ya bagus sekali. mirip\" kejuruan tapi enggak. siswa akan fokus . siswa lebih terspesialis jadinya.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(247, '@KURYANDOKO', 'bagus', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(248, '@roodeybastoni9422', 'Sebenarnya sih mmg ga pengaruh selama ini ada penjurusan waktu sma krn faktanya setelah kuliah penjurusan disma ga berguna jg kok krn bnyk yg dr ipa larinya kefakultas yg ga berhubungan dgn ipa & sebaliknya jg.', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(249, '@deep05xp1', 'Apapun kebijakan, kalau nepotisme masih ada, dipastikan bangsa indoneaia sulit berkembang.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(250, '@user-bc2br8yz5e', 'Orak usah dolan dok omah ku', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(251, '@zackyza7527', 'Seakan2 yakin benar kalau anak sma ambil jurusan sesuai bakat dan minatnya setelah lulus bisa langsung melanjutkan ke perguruan tinggi ? \r\nPerguruan tinggi akan menerima sesuai bakat dan minatnya ?\r\nBila memang ingin punya keahlian sesuai bakat dan minat, masuk aja ke SMK. Setelah lulus SMK juga bisa melanjutkan ke perguruan tinggi.\r\nSMA cuma mengasah kemampuan dasar dengan mapel sesuai jurusan. Ketika akan melanjutkan ke perguruan tinggi banyak pilihan prodi yang bisa dipilih dengan kemampuan dasar yang mereka miliki.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(252, '@rakhmadlianu2360', 'Kalau Bahasa di hapus cara mengajar pakai Bahasa APA.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(253, '@andreaavelinus3617', 'Nah kalau dulu jaman aku ada ( SMIP ) Sekolah Menengah IndustrinPariwisata  nah ini ada 2. Jurusan ( Bagiam Traveler  nanti di bagi 2 jurusan yaitu Tiketing dan biro Guide ) Lalu jurusan Perhotelan  melingkupi. Tugas area Hotel. \r\nNah aku mau tanya apa kah SMK sekarang ada spt itu ?\r\nWaktu itu ada teman ku anaknya Masuk SMK aku tanya jurusan apa ? Di bilang Tata Boga  \r\nOh gitu  ..Aku jawab \r\nAku tanya kenapa tidak ambil jurusan Tour and Travel ? \r\nDia bingung.   Mau jawab  karna tidak tau Tour and Travel  ???\r\nBagaimana tanggapan nya  \r\nPada hal \r\nUtk Tiketing ini pe jual utk tiket pesawat\r\nTour guding  adalah pemasaran objek wisata yg ada di Nusantars dgn  biaya perjalanan.  Dengan waktu singkat utk rombongan tertentu..', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(254, '@ANIMASISEMPAL', 'Makin kacau aja penjurusan di SMA negeri ini', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(255, '@baiqmeryshintana6880', 'saya setuju sih.. belum tentu anak IPA akan suka semua pelajaran IPA..dst..', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(256, '@sobat8129', 'Sangat setuju....', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(257, '@Johnkisno05', 'Penjurusan diganti peminatan', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(258, '@k3nzaki2004', 'kelihatan Kan maunya apa ....\r\ncari tenaga kerja murah .... SDM rendah .. ... bisa diatur suka suka .....  \r\nemang dah yakin anak anak bisa dilepas milih sendiri, jika dari SD belum Disiapkan bagaimana ??', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(259, '@ninelieur8588', 'Kurikulum gunta ganti setiap ganti mentri gak efek ke siswa  yang ada bikin anak anak dan orang tua makin setress dari dulu dari jaman Fir\'aun borojol  sampai koit 2+2=4 tetap segitu hasilnya.. Yang ada kalau ada mata pelajaran baru dan modern harus di tambah bukan mata pelajaran yang lama di hapus dan kurikulum gunta ganti. Tetap isi materi pelajaran akan tetap sama selama penelitian baru belum bisa menyanggah materi yang lama..', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(260, '@syarifhidayatullahdayat4895', 'Hidup sosialisme sama rata sama rasa kalu perlu sistem vip hapus juga', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(261, '@gintobjg6044', 'Kalau bahasa di hapus terus bagaimana Bamgsa ini untuk berbahasa. Lama2 seperti Malaysia ini. Satu Negara ber beda2 bahasanya. Bahasa masih di ajarkan aja anak2 sekarang banyak yang gak kenal ETIKA apalagi pelajaran di bahasa di hilangkan.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(262, '@sholihinmuhammed', 'Negara Konoha tidak ingin masyarakat nya pintar semua biar bisa dibodohi pas pemilihan nanti, tinggal dikasih bansos ya udah langsung dipilih.\r\nGanti kurikulum terus setiap ganti menteri, nasib guru tidak terlalu diperhatikan. \r\nAturan diubah semaunya, supaya masyarakat yang bodoh ini tidak memikirkan itu semua, yg penting bansos terus ngalir.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(263, '@topikwibowo4253', 'nadiem.. nadiem... diem merepotkan.. bergerak berulah...menteri pendidikan yg ngacak2 sistem pendidikan di Indonesia...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(264, '@cargiewinata1963', 'Itu kan penjurusan di SMA di hapus, Sekalian ajah SMK di hapus, soalnya kalian terlalu bertele-tele kalo Mau Hapus SMK bilang ajah', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(265, '@imamsjafii9427', 'MENJABAT JADI MENTERI PENDIDIKAN TETAPI PENDIDIKAN MENTERINYA TIDAK JELAS DAN LEMUNGKINAN BESAR  IJAZAHNYA  PALSU, RATA² JOKO WIDODO  DAN ANAK²NYA SAMA SEPERTI ITU !', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(266, '@1789NYSA', 'Sayang sekali .....kok tidak dari dulu saja', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(267, '@samsstar7773', 'Menurutku ada baiknya tapi yg lebih diutamakan pendidikan etika dan agama,untuk apa mencetak generasi2 cerdas jika saat masanya bekerja,jadi pejabat,dll moralnya rusak dan berprilaku biadap', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(268, '@user-vf6yp7ib5r', 'IQ 78, tp SMA dibebankan 16 mata pelajaran (skrng) \r\n, belum lg faktor asupan gizi', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(269, '@ahmadmufidridho5755', 'pak mentri kok gak dihapus sekalian jenjang sma nya, langsung aja anak\" lulusan smp masuk perguruan tinggi saja bisa pilih jurusan yg diminatinya dan lbh terfokus', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(270, '@gunantows6950', 'Kok jadi mirip SMK...??? \r\nAngkat guru kimia fisika matematika biologi banyak2 dulu... Jadi mirip PRA UNAS jaman dulu.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(271, '@sugiyogio7458', 'Lawong tukang ojek jadi mikire ya ngojek ,benerkan ....!? Ga perlu belajar moral ,skil ,yg penting ngojek.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(272, '@rafaarian251', 'Makin pusing ngelihat anak nnti gimana y sekolah, berasa bobrok aja gt ini kurikulum...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(273, '@incestlou5267', 'Kuliah 4thn lulus cari krj sulit.tmbh capek', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(274, '@halimdana1789', 'Bahasa inggris , bahasa Belanda , bahasa Korea , bahasa jepang', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(275, '@narsito6782', 'Harusnya materi pendidikan mengikuti perkbangan jaman tidak meninggalakan sejarah nenek moyang', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(276, '@12_laminahsubakin63', 'Semua pelajaran ada yg d hapus,,,p,menteriii di bawa kemana Indonesia ini,,,,harusnya biayanya sekolah,kuliyah ,ygd hapus,,,gratis gitu Goo9os,,', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(277, '@irfancokroaminoto1180', 'Kurikulum berubah2 terus tapi pas melihat data ternyata iq rata2 anak +62 itu 78 peringkat 10 ASEAN itu kenapa ya?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(278, '@PemudaTangguh-ys3nl', 'Bagus sih tapi.... Harus dibarengi dengan ketersediaan ruang kelas dan guru yg melimpah klo siswa bebas milih pelajaran yg diminati... Tp kalau gurunya dikit terus digaji 300k/bulan program begini dari jaman batu jg cuman teori belaka', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(279, '@yudistirasugiatmodjo', 'sudah bagus ada sistem mata pelajaran kejurusan,di acak2 lagi kaya g ada kerjaan lagi aja.\r\nAL.FATIHAH buat AKAL tergadai.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(280, '@user-bc2br8yz5e', 'Yatar2', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(281, '@user-bc2br8yz5e', 'Orak usa dolan dok omah ku', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(282, '@DimasUsersjmhnsm', 'Hapus kurikulum IPA&IPS adalah kontroversi', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(283, '@aghnymardhiyah1157', 'Keputusan \"Mendasar\" dibuat diakhir masa jabatan. Kehabisan waktu untuk me-luluh lantak-kan negara?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(284, '@hermantwoone5914', 'Pantas saja pendidikan di Indonesia masih jauh tertinggal menurut pengakuan Jokowi, menterinya cuma sebatas merombak apa yg sdh ada dan baik selama ini.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(285, '@dewihandayani130', 'Ga setuju, Krn anak2 minat d bakat tu berbeda.. yg suka IPS ga mungkin mau belajar ilmu biologi.aneh.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(286, '@yose838', 'tenang..semua akan berakhir jadi tukang ojek nantinya..apapun jurusannya pasti akan berbelok jadi ojol daripada menganggur..merdeka!!', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(287, '@adesupandi9272', 'Bagus.... baru merdeka belajar', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(288, '@FitriYuliastuti-iu8fv', 'Berubah lg ...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(289, '@Rasyid_boy', 'Era telah berubah perkembangan terlalu pesat.. jng ketinggalan jaman kata si doel', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(290, '@masterkungfu1927', 'Kalian itu gak sadar.. \r\nRakyat wakanda itu di program miskin dan tidak berpendidikan... \r\nAgar kedepan nya bisa di atur negara seperti hal nya korea utara.... \r\nTapi kalian masih yakin akan di bawa menuju wakanda (c)emas... \r\nCara memiskinkan rakyat konoha itu gampang persulit dunia kerja dan tingkatkan pajak2 dan retribusi untuk mengurangi pendapatan mereka.... \r\nUntuk membuat rakyat bodoh gampang hancurkan dunia pendidikan mereka... \r\nSetiap 1 lulusan itu 1 generasi dan itu akan sia2 karena kompetensi mereka di bawah rata2 kebutuhan dunia usaha yang semakin sempit... \r\nDan kedua import warga tiongkok untuk menguasai sisa2 lapangan kerja alhasil masyarakat lokal bakal sulit bersaing dengan mereka.... \r\nBooommmmm ketika proyek wakanda (c) emas jatuh tempo.... \r\nTiongkok sudah berkuasa baik secara pemerintahan maupun segi2 sektoral... \r\nDan terakhir tinggal lakukan penggusuran dikit demi sedikit tetap dengan narasi wakanda (c)emas karena rakyat yang miskin dan bodoh itu bakalan percaya dan berkhayal akan melepas semua kemiskinan nya...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(291, '@user-hb6yl2xq7z', 'Dari dulu harusnya begini, indonesia selalu terlambat', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(292, '@abangyana83', 'PALING PARAH INI MENTERI KEMENDIKBUD \r\nMAKIN KACAU PENDIDIKAN SEMENJAK MENTERI YANG INI', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(293, '@user-bc2br8yz5e', 'Idiyot lah uransanku', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(294, '@herdiabayaristar144', 'SEKOLAH DI OTAK ATIK, SETELAH LULUS SUSAH CARI KERJA', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(295, '@HadiSulis-i7r', 'Sistem pendidikan sekarang tanpa target yg jelas.area kognitif afeksi dan psikomotor. gak ada kkm .Amburadul.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(296, '@ChikaAdelia', 'Hanya  merubah terus  tapi  gak  ada  kebijakan  yg  briliant  paling  trial  terus bang  nadim', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(297, '@zayyanwicaksono9863', 'Kalau mau penjurusan ya pas kuliah, atau di SMK aja.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(298, '@sn5301679', 'Tambahin jurusan Aliran NUSantara saja.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(299, '@rakhmadlianu2360', 'Kalau sekolah yg jurusan Surabaya Ponorogo, Surabaya  Bayuwangi, Ada nggak?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(300, '@anggiwilhemiasetyawati7686', 'saya alumni 2007 sma 1 kudus jurusan bahasa', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(301, '@NyonginTim', 'Anjaiyy.....    , aSuuuuu kemdikbud', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(302, '@zilajhan6771', 'Saya anak akuntansi sih. Pas lulus sekolah yah jadi admin.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(303, '@meetup9408', 'masalah nya ada cukup ruang kelas gak buat mata plajaran terpisah', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(304, '@AnggunCahya-li9lh', 'Kalo tidak ada jurusan buat apa sekolah..anak tidak ada pilihan ..jaman orde sya IPA..IPS ..kimia itu pling unggul ..knp mau dihpus..mnding ttup aja g usah sekolah..,bikin pihak sekolah jurusan Bandung / Jakarta', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(305, '@lukmanbrotosusilo8287', 'dijuruskan ngeluh ga dijuruskan ngeluh , pengennya gimana', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(306, '@pramonochanel6805', 'IPS...sejarah jangan di hapus....pak Mentri..', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(307, '@topikwibowo4253', 'trus yg mau masuk kuliah kedokteran gmn dong.. biasanya kan dari IPA', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(308, '@charlieYo', 'Nanti kalo ganti mendikbud ganti lagi kebijakannya', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(309, '@ginginchannel733', 'Okei sih', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(310, '@erryagrimansyah3827', 'Bagaimana selanjutnya??\r\nSelanjutnya adalah siap2 berubah lagi', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(311, '@alexandergunawan8636', 'Nah bagus', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(312, '@yogasamsu', 'Idenya bagus. Mirip kuliah.\r\nTapi guru dan sekolahnya siap nggak', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(313, '@MrBangone28', 'Kurikulum Merdeka\r\nKurikulum Sak Karepmu', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(314, '@ZoinisRadikalZoinisRadikal', 'Berarti masuk akedemi militer udh ga berlaku jurusan IPA, begitu juga sekolah pilot ga perlu jurusan ipa', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(315, '@mancingketengan5829', 'Mantap itu, cuma ntar jangan dah ganti kabinet baru, ganti lagi programnya, kapan jalan...', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(316, '@Fianettaauxel2013Auxel-yz9ru', 'Udah kadung illfeel sama ni menteri karena sudah  bikin susah...kapan sih lo turun.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(317, '@ridhoalifian7799', 'Tiap ganti mentri ganti kurikulum ganti sistem akademik. kapan mw stabil sistem edukasiny.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(318, '@maskarebet8938', 'Sudah selaras belum dgn tes masuk PT', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(319, '@KompilasiVideoMenarik', 'tambahkan jurusan ORANG DALAM', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(320, '@mainyuu94', 'PELAJARAN YG PALING PENTING UNTUK MASA DEPAN BANGSA :\r\n1. BAHASA INGGRIS \r\n2. BAHASA JEPANG\r\n3. BAHASA KOREA\r\n4. KOMPUTER EDITING MULTIMEDIA \r\n5. TATA BOGA MASAK CHEFF\r\n6. TEKNIK MESIN BONGKAR PASANG MESIN MOTOR MOBIL\r\n7. KELISTRIKAN ENGINEERING \r\n8. TEKNIK SIPIL TUKANG BANGUN RUMAH DESAIN\r\n9. PENDIDIKAN AGAMA\r\n10. OLAHRAGA\r\n11. BELA DIRI \r\n12. ENTERTAINMENT, MENYANYI, AKTING, PRESENTER, HOST\r\n13. APOTEKER MEDIS\r\n14. PENGUSAHA', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(321, '@aluna920', 'Berarti yg milih biologi dn kimia gk bisa ambil kuliah lintas jurusan krn dia cuma bljr biologi kimia doang', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(322, '@Itemarz_', 'Ini video background waktu musim corona atau sekarang', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(323, '@zetapridaeuly7640', 'anak anak dipaksa tuk bercita cita padahal masih labil', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(324, '@eddyr1041', 'Aristotle\'s most famous quote on education is:\r\n * \"\"The educated differ from the uneducated as much as the living differ from the dead.\"', '', 0, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(325, 'AlexaNder the great megang hal ini banget', '', '', 0, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(326, 'Math salah satu harus...', '', '', 0, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(327, 'Di jaman modern ya calculus', '', '', 0, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(328, 'Tapi di indo mah jeblok banget... ditambah ini lagi\"', 'Negatif', 'Netral', 0, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(329, '@keluargacemara3r666', 'Saya makin bingung ya. Yang sudah punya jurusan aja belum tentu pintar di bidangnya apakagi nggak punya jurusan. Org yang di kemendikbud ini lulusan mana. Masuknya Nadim yg notabene ojek semua kurikulum beebtakan.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(330, '@samnurdintgh5039', 'Baguslah, jangan se olah2 ada gengsi di SMA, anak IPA seolah anak2 pinter , anak IPS dan bahasa seolah kalah kelas dan gengsi sama anak IPA, bahkan banyak jurusan di perguruan tinggi juga di syaratkan SMA jurusan IPA, padahal utk hidup bukan hanya modal pinter akademis yg terpenting adalah sikap moral dan kemampuan melihat dan manfaatkan peluang, tamat sekolah juga kerja kalau ngitung pakai kalkulator', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(331, '@bejagchannel3', 'Ia, IPA dan IPS dihapus tapikan muncul jurusan-jurusan baru yg berbeda2 mapelnya....', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(332, '@user-tu6xc8pb5p', 'Pmp jngn dihilangkan karna moral anak sekarang ga tau arti pancasila', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(333, '@muhammadisnaini904', 'Binguuung binguuuung \r\n00', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(334, '@suwantokarwat', 'Terobosan yg sangat bagus krn tingkat SLTA msh bersifat umum, Tp ya herannya ada aja komen yg aneh ini betul2 Jaka Sembung bawa Golok, Ga nyambung Gob.ok!!!!!', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(335, '@vaizpardiansyah6913', 'Dari dulu dong .... Harusnya dari 20 tahun lalu', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(336, '@KutuKupret-sb6rw', 'Inikah yg di namakan revolusi mental......makin k sini makin gk karuan ....', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(337, '@totokyuniwanto1904', 'Era Jokowi emang bikin semua sistem kacau balau......', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(338, '@user-bl2xn4rx8w', 'Hp an ae guru ne , 1 guru punya 4 hp dijejer di bangku nya  jaman doule apalig jamn internet di hp skrng makin belangsak murid nya mmakin prihatin aklak nya . Ipa N ips sejak jamn 2012 susah cari kerja dihapus sekarang  . Dilarang Guru main hp disskolah layak nya buruh pabrik kan hp kusus pekeerja untuk menjalakan kerjaan ada . Jadi disekolahan gk ada pengajar mainan hp diluar pendidikan . Jika pun butuh video aplikasi dll untuk mengajar. Di siapkan dlu di rumh layak nya murid menjalan kan PR . GAK ADA ALASAN BUTUH INTERNET , INTERNET PERLU TAPI BISA DI OFFLINE . GK USAH NGAJAR NGANDALIN INTERNET WAKTU JAM PELAJARAN JADI NYA SEKALIAN MAIN TIKTOK Moba DLL . Wes KASUS GENERASI MIRIS AKLAK SETELAH LULUS', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(339, '@nura2505', 'nanti cara ujiannya bagaimana...?', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(340, '@teddyapril5144', 'Apa alasan Jokowi memilih Nadim Makarim menjadi menteri?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(341, '@sudiar2387', 'Nya sama saja dgn SMP.. bukan dberi pilihan tp di arahkan', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(342, '@ZakelykCS', 'Ntah kenapa aku malah setuju sama sistem ini', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(343, '@rydz_busmania', 'Berarti ketika kuliah tinggal praktik lapangan\r\nKarena teori sudah difokuskan di SMA', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(344, '@volvol808', 'Mau sukses cukup Jurusan atau Jurus KUAT MALU ala ala Muqidi, gak perlu KAYA ILMU', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(345, '@SlametEko-hl7rw', 'NGAK USAH BINGGUNG LULUS SEKOLAH LANGSUNG DAFTAR GOJEK SAMA NADIEM MAKARIM,KAN JURAGAN GOJEK', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(346, '@aprillia881', 'Yg harus dihapus itu menteri\'y bkn jurusan\'y', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(347, '@koesaja4798', 'Nsdien YANG HARUS DIHAPUS', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(348, '@meisarah1910', 'Menteri era ini gk ada yg beres. Ini dunia pendidikan bro, bukan utk uji coba:  trial and error. \r\nGk punya konsep yg jelas ttg mau dibawa kemana pendidikan Indonesia ini. Atau dia sendiri mmg gk paham?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(349, '@jamalthekel141', 'Jurusan orang dalam', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(350, '@jokoprayogo9210', 'Pelajaran matematika, fisika dan kimia dihapus kan saja pak menteri', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(351, '@Lifeeeee365', 'Menurut ku ini bagus kok', 'Positif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(352, '@yahudi36999', 'Nanti SMK jurusan Otomotif, elektro, mesin di hapuskan.', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(353, '@CatReactions-wv4sn', 'jurus propaganda dan anti propaganda aja nih biar imbang cocok era tsunami sosial..', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(354, '@yahooo954', 'Biar Anak anak tdk Punya keahlian kusus menyesatkan O', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(355, '@jonicandra8118', 'Lanjutkan pak mentri menghancurkan sistem pendidikan indonesia', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(356, '@NyomanSuryasa', 'Emang kedokteran cuma mata pelajaran  biologi dan kimia aja? Ga perlu matematika? Coba tanya yang kuliah di kedokteran benar apa tidak, bahwa di kuliah kedokteran tidak perlu mengerti matematika atau tidak mendapat mata kuliah matematika di kampusnya?', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(357, '@hudahuda2503', 'hal yg ditakutkan adalah saat kebijakan nya tak sesuai dg kebijakan di 3 tahun kedepan, apa nggak pusing tuh', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(358, '@intanayunindya8139', 'Kok ngelu  wayah anakku uji coba maneh aturane️️️', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(359, '@Petualangan-vr2ud', 'Kalau semua jurusan d hapus berarti kalau melamar kerja aga d sangsikan oleh perusahaan atuh', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(360, '@elghifary8632', 'Ya.... nganggur lah, ada jurusan aja NGANGGUR apalagi ga ada !?!?\r\nEh ngga deh, jadi pilot GO JEK', 'Negatif', 3, '2024-09-05 12:10:56', '2024-09-05 12:10:56'),
(361, '@komarudinkomar391', 'Mengapa yang dihapus jurusan disekolah. Yang harus dihapus itu pejabat yang korup.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(362, '@shofi5451', 'Kasihan ya...anak2 sekolah jadi korban uji coba terus', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(363, '@adyarizkysatriawibawa5566', 'Saya sihh setuju biar tidak ada kesenjangan dimana ada sekolah kedinasan yg harus jurusan IPA anak yg jurusan IPA jd terkendala....contoh anak sy mau daftar sekolah kedinasan perhubungan anak sy IPS sedang kita diwilayah Jateng dimana sekolah perhubungan di wilayah Jateng  harus IPA sehingga anak sy hrs daftar di STIP jakarta,Poltrada Bali sehingga butuh biaya yg tdk sedikit tes dari awal sampai pantokir gagal PD hal sdh ngeluarkan biaya yg tidak sedikit  itu salah 1 sy setuju penghapusan jurusan di SMA JD anak2 mempunyai hak yg sama', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(364, '@sulislele7335', 'Inilah akibatnya kalau yang jadi mentri bukan ahli di bidang nya', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(365, '@kangdmanz174', 'Dunia pendidikan semakin rungkad.\r\nDah dgantilah nih mentrinya.\r\nGa mlihat kondisi masyarakat yg ada', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(366, '@user-sn7ev1km8g', 'Menteri pendidikan Nadim Makarim bikin gaduh pendidikan di Indonesia, gimana mau maju pendidikan Indonesia karena selalu ganti kurikulum,itu pembodohan mengganti kurikulum bukan solusi yang tepat,', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(367, '@gusaan4661', 'Seorang atlit olimpiade peraih medali itu, 7 th sudah dijuruskan oleh orang tuanya utk memilih olah raga sbg masa depannya.\r\nIni sekolah sdh umur 17, 18 th.. udah jamuran...  ga tau dia bisa apa.... blom ada spesialisasi.\r\nBener kata prabowo.\r\n2030, indonesia bubar.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(368, '@jackbro2901', 'Mungkin konsepnya bagus tp nanti pelaksanaannya gak jelas.Guru2 kayak dilepas gak jelas', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(369, '@jokokuspariyanto8995', 'Mentri pendidikan harus di ganti , orang ndak jelas itu ,', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(370, '@babekutv5092', 'Saat ini banyak para pejabat yang pinter, tapi keminter, akhirnya minteri masyarakat, payah...', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(371, '@mr.y280', 'Pejabat yang korupsi dihapus juga dari pemerintahan, bukan malah difasilitasi.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(372, '@tenriyanie6077', 'Sangat setuju dengan pendapat Bapak Indra Charismiadji sebagai pengamat pendidikan. \r\nApa yang tidak bisa dimanipulasi oleh kekuasaan.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(373, '@Anyar-qy9oj', 'Tugas guru akan lebih focus dan bertanggung jawab dalam membimbing dan mengarahkan muridnya sampai berhasil membagikan Ilmu buat muridnya. Guru Merdeka ,kurikulum merdeka,Murid merdeka.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(374, '@tuhanmahatahu7172', 'Uji coba apaan....? Memang Mendikbud yg satu ini gak jelas', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(375, '@AdeJunaedi-pt4ff', 'Itu mentri pendidikan dari pengusaha .harusnya dari pendidikan yg ngerti kurikulum , didaktik metodik ....banyak pendidik untuk mentri ini dari pengusaha tau apa pengusaha ngurus pendidikan ,caba dari pendidikan banyak rektor pendidikan yg tau tentang pendidika . Sudah guru honorer di pecat ...harusnya di kelas murid dua guru ...biar guru tidak menangani terlalu banyak kalau murid tidak mengerti ...ha ha ...ini honorer di pecat ....gajar itu lelah terus ngomong depan murid ...coba praktek ngajar lelah lah beda dg temen temen ngobrol', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(376, '@aryanisardjono7177', 'Ĺah ngg semua anak senang math.. ngg semua anak senang sastra.. ngg senang menghafal.. \r\nKatanya materi banyak, lha kalau digabung ya makin banyak. Heran..', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(377, '@srojabravo501', 'Dunia pendidikan Indonesia semangkin hari bukan membaik malah semangkin rungkat.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(378, '@wjari4185', 'Acak acak terus...', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(379, '@user-dg8zq9uu3p', 'Yg harus&wajib dihapuskan dari indonesia adalah para koruptor&pejabat yg KKN!!!', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(380, '@adtyasak', 'Apa yang di uji cobakan di lab tidak selalu berhasil.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(381, '@arydaramita8888', 'Ntar ganti mentri juga ganti lagi aturannya', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(382, '@Khalid88402', 'Klo uda tau bermasalah kenapa masih d haruskan juga guru mngajar 24 jam?\r\nDi sesuaikan aja kan bisa,ini malah di suruh nyari jam ke sekolah2 swasta pula, ya skolah swasta pun gurunya perlu jam ngajar om', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(383, '@bagussamatra6756', 'Program grusa grusu. Mstinya disiapkn semua perangkat yg harus disiapkan, diuji coba, baru diberlakukan. Bukannya dinerlakuakn langsung dan ternyata kacau, sekolah tdk siap, murid (wali murid) bingung, jd ribut dg sekolah.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(384, '@anawara66', 'Ganti buku lagi? duit lagi pak....jk berlanjut kan buku bs diturunkan', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(385, '@adyarizkysatriawibawa5566', 'Maksudnya anak yg selain jurusan IPA', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(386, '@Syahdanprakoso', 'Utak atik dan bikin pusing terus kementrian pendidikan ganti nama aja jadi kementrian perpusingan \r\nYg ada aja matengin dan yg paling penting pertegas soal pendidikan moral dmna skrg anak anak sekolah banyak yg cacat moral cacat etika.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(387, '@dipotirto7552', 'Konyol sekali, mengorbankan generasi.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(388, '@Febrianto_YT', 'Setuju kalau ada penyesuaian mapel sesuai minat, gk diwajibin atau di cekokin mapel yang tidak suka. Tapi, bakal puyeng karena scara birokrasi masih ribet.. apalagi guru\" senior boomers, akan pasti jelas menolak', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(389, '@alimudinraja902-yn8iy', 'Dikit2 mau reformasi pendidikan. Gini ya sebenarnya reformasi pendidikan itu ok2 aja, tapi ya konsepnya harus matenglah. Jangan kayak konsep KBM sekarang, siswa semakin malas belajar gara2 kurikulum merdeka yang kurang matang.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(390, '@berbagiilmu6935', 'Yg masalah di Indonesia itu literasi, keterampilan, dan penguasaan teknolgi, kurikulum kenapa yg diubah2 kalo mau bangun pendidikan utk jangka panjang harus ada cetak biru pendidikan, bukan tiap 3-4 gonta ganti kurikulum dng biaya triliunan rupiah tapi hasilx nol besar tpinitu terus yg dibuat...', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(391, '@bafirtv3872', 'Lulusan S.m.a     cuma bisa daftar buru pabrik  ajh  pedidikan nya ribet', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(392, '@berbagiilmu6935', 'Sejak pergantian KTSP malah kualitas lulusan anak2 makin menurun, contoh dokter lulusan sekrang dan dulu masih jauh lebih baik kualitas dokter lulusan jaman dulu... 10 Dokter sekarang pendapat ttg analisa penyakitnya  bisa berbeda2 karena kueikulumx fonta ganti, san tdk siap', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(393, '@joMan1060', 'Ahkirnya pendidikam Indonesia ke arah yg lebih baik.\r\n kurikulum merdeka ini justru makin bagus, karena sekarang anak bisa fokus belajar dan lebih relevan ke profesi nanti..\r\nIPA, IPS, Bahasa itu sistem ngawur dan malas, gua masuk IPA dan sekarang jadi Game developer, ngapain IPA IPS dengan tujuan karir gua ?... kalo dlu ada kurikulum merdeka, gwe akan fokus seni dan komputer.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(394, '@setiyoofficial3439', 'Habis kurikulum merdeka nanti ganti lagi kurikulum horee', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(395, '@rahmateffendi744', 'Ujian nasinal kembalikan supaya bangsa ini cerdas', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(396, '@Rikky_Htb', 'Ga ada anak IPA IPS donk.. ga seru ntar ga adabyg nanya2 kamu anak mana?', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(397, '@sonyagung4507', 'Penambahan jurusan di SMK untuk Pertanian, Peternakan, Perkebunan, Agrobisnis, lebih di perbanyak untuk swasembada pangan di indonesia', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(398, '@berbagiilmu6935', 'Makin kacau dunia pendidikan, selalu alasan demi kemajuan, tapi yg ada kualitas anak2 makin menurun', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(399, '@user-cd5ie2us3n', 'dulu saya sangat ga setuju tapi setelah tau ternyata bagus juga.murid lbh fokus sesuai bakat anak.kasian klo msh IPA IPS murid stres ga semua anak jago matematika,ga semua suka menghafal', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(400, '@masbejobaik', 'Ganti menteri aja', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(401, '@mahatriyadi896', 'Proyek mulai di jalankan', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(402, '@tiotio3354', 'sebenarnya yg paling menderita  dlm kebijakan pendidikan adalah  guru', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(403, '@meizu5t268', 'Nadim makarim tak layak menjabat mentri pendidikan. Copot nadim makarim dari jabatan mentri pendidikan karna perturan dan kebijakanya setelah adanya kurikulum merdeka sangat tida k bijak dan sangat merugikan anak sekolah. Ini samadenga pembodohan genersi anak bangsa.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(404, '@user-ho1ec3uv8y', 'Ksenjangan jng dipemsahkan gpp kok pda2 punya kmmpuan sndiri 2 dn minatnya ke ipa apa ips g gpp g akan jdi mmperbodoh ank2.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(405, '@mbahtalib3457', 'Pelajaran pokoknya buat Ujian Nasional berapa nanti?\r\nYg udah lulus SMA diterima lamaran kerja g nanti? Lulusan D3 aj kesulitan masih ada kok ...', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(406, '@Thinksmart827', 'Intinya jgn ada generasi pinter biar  tinggal dan antri bansos,,,', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(407, '@JefriFerdial', 'Negara lawak,sudah PMP dihapuskan, sekarang apalagi. Oi pejabat pejabat Ter kait ,pakai otak.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(408, '@tarulipandapotan368', 'Kasian sekali generasi bangsa ini ,,,sekolah susah dan mahal,,kurikulum gonta ganti,,lapangan kerja ga ada,,,korupsi di mana mana,,,', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(409, '@mrdzz73', 'Kyknya lebih baik ditambah muatan lokal, misal adm.perkantoran,sistem imformasi akuntansi, bisnis digital buat masuk kurikulum SMA', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(410, '@nuniksetyowati7880', 'Ribet banget Nadiem', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(411, '@shiva-zv5ne', 'Kurikulum merdeka sangat buruk dampaknya utk pendidihan', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(412, '@JefriFerdial', 'Carut marut,', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(413, '@Aydan22', 'Wkwkwkwkwk....brtahun²....baru skrang aq ikut sedih dgn prilaku kemendikbud...stiap gnti kemendikbud gnti kurikulum..... bnyak orang pintar tp keblinger... Yg setuju kembali ke kurikulum lama like dn komen...!!!!!', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(414, '@AnakandehChanel', 'Sebagai seorang guru, saya menemukan permasaalahan adalah keterbatasan guru memberikan literasi kepada siswa. Guru masih sekarang kekurangan kemampuan dalam pemahaman psikologi anak.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(415, '@fitrinuraeni4159', 'Kumaha caritana dunia pendidikan', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(416, '@user-bq2sx5vj3g', 'Nadim sok pintar', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(417, '@syamsiarsyamsiar7400', 'Yg harus dipecat itu si nadim .\r\nYg tak tau tujuan nya \r\nBikin kacau pendidikan indonesia', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(418, '@suparman0148', 'JANGAN BINGUNG DIERA THN 1960 DEMIKIAN  DARI KELAS 1 SMA PELAJARAN SAMA, BARU NAIK KE KELAS 2 BAGI JURUSAN, BUKAN MURID YG MENENTUKAN, TETAPI MATA PELAJARAN YG MENENTUKAN.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(419, '@Mario-jz7iz', 'Saya ga ngerti deh sama Agan2 yang sedang menjabat ini. Udah ga ada kerjaan atau gimana sih? Suka banget bikin sensasi. Benahin dulu yang ada jangan malah di obrak abrik. Sekiranya udah bener. Pengangguran berkurang. Terserah dah mau ganti kurikulum kek. Ganti otak lu pada pun gak masalah.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(420, '@Hariri_Wong_Majasri', 'Hapus j pak menteri IPA IPS tapi tunjangan jgn dihapus', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(421, '@ronpnsallelektronik5392', 'KURIKULUM PEMAKSAAN.\r\nEMANG BISA DAPAT KERJA KALAU SETELAH LULUS..?\r\nSETELAH LULUS YG TIDAK KULIAH MAU KERJA APA?\r\nITU YG HARUS DI CARI MASALAHNYA.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(422, '@muhammadsangkan2529', 'Sekalian hilangkan semua mata pelajaran', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(423, '@sirematel', 'Pejabat ga guna tibang nyusahin rakyat...', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(424, '@kopikukapalapi3205', 'Bapak ibu guru sudah nyaman dg model lama', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(425, '@BudionoLmj', 'Mana ada Sekolah Penggerak yg menerapkan uji coba menggunakan jurusan umum berarti ijazahnya sudah jurusan umum', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(426, '@agungsantoso6994', 'Saya pikir ipa ips habis lulus kerja apa? . Hrus menjurus sumber daya tmbang bnyak knp gk jurusan itu .', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(427, '@Nadnaf-ln6oe', 'Kurikulum bel gedes ganti lagi ganti lagi mana efeknya bel gedes cuman kejar proyek doang too?', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(428, '@irhamsih7856', 'Nadim  menyesatkan  generasi... gimana didaerah pedalaman..., dan siswa yang tidak mampu gimana menteri koplak', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(429, '@harism.a5910', 'Knp kontroversi, memang di kurmer tdk perlu lg jurusan IPA/IPS, tp mata pelajaran peminatan ttp ada sesuai minat. Contoh anak\" yg mau kuliah di teknik, kn cuma butuh fisika mtk, kalo di IPA dulu mrk msh hrs belajar biologi di SMA yg sebernya ga akan kepake di kuliah nnti. Gitu jg yg mau kedokteran ya ga perlu fisika, cukup biologi dan kimia buat dasarnya. Malah jd fleksibel kok nyesuaiin kebutuhan anak mau kuliah/kerja dmna nntinya, ga perlu belajar mapel yg ga kepake.', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(430, '@jfexpt8097', 'Perubahan kurikulum = anggaran, perbaikan kurikulum = anggaran', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(431, '@donyjakarta4769', 'Yang harus diganti menteri nya bukan kurikulum nya', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(432, '@jennychatab2209', 'Pelajaran agama bgmn? Apa masih dipertahankan...', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(433, '@Parno-sm3zz', 'Yg jelas mendibud sama diknas ud ampuradul bikin aturanya. Masih bgus jaman m nuh jdi mendibud.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(434, '@ikidolenku9052', 'Coba semua fokus ke anak2 kls 11, coba tanya ke mereka, ketika 3 jurusan di hapus, apakah tdk ada jurusan baru???\r\nHehehe jangan salah, muncul jurusan baru walaupun tdk di kasih nama, \r\nCoba berpikir logika, kalo misal ada 56 anak ambil teknik. \r\nApakah 56 anak itu masuk 1 kelas??\r\nAtau dibavi menjadi 2 kelas?\r\nGak mungkin guys di bagi 2 kelas, alasanya kelasnya gak cukup, kali dijadikan 1 kelas, maka terlalu banyak karena kapasitas kelas hanya 40, \r\nMaka 16 anak yg lain bgmn?\r\nHehehe... Indahnya teori, tdk berbanding lurus dg prakteknya pak bos, \r\nMomggo di atas sekali2 mikir teknis nya ke bawah dunk', 'Positif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(435, '@user-qs5gg9qr3m', 'Mendikbudristek bukannya meningkatkan mutu pendidikan hanya mengutak ngatik yg tak bermutu', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(436, '@chenghoew6951', 'Knpa ngak mentrinya saja yg di hapus', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(437, '@suryanasuryana9771', 'Proyek ?', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(438, '@putrakakao016-un6ln', 'Cari pencitraandan pengalihan isu....kebijakan beleng2 ...tahun depan lain  lagi kebijakan nya....ngkk beres nich lembaga pendidikan ..ngurus kualitas guru aja amburadul ...penerimaan   murid dan dana sekolah aja bermasalah...belum selesaii satu bikin lagi masalah yg lain', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(439, '@daryantoperwira9182', 'Penghapusan jurusan SMA merdeka, maksudnya di ganti jurusan buruh kuli kontrak merdeka', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(440, '@edybadilah82', 'Nadiem makarim mentri pendidikan paling gaduh', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(441, '@novianfajrikupando1897', 'Atur aja l', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(442, '@Hobitanimuda', 'Kurikulum kok coba coba.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(443, '@Anisa-zr8kc', 'Ini apalagi penghapusan ipa dan ips aneh2 aja rezim ini sok tau dan sok pinter ,padahal oonnnn ,gmn guru2 yg sdh mengambil jurusan ipa dan ips..', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(444, '@kafuuchino3601', 'Nadir om nadiem', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(445, '@mahatriyadi896', '..', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(446, '@AminolHakam', 'Jokowi dan nadiem bukan,sama sama menjadikan  negara amburadul.', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(447, '@pey514', 'Ngurusin yang ga penting bukannya ngurusin biaya kuliah yang super mahal', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(448, '@ronpnsallelektronik5392', 'SETELAH ITU GURU HONORER DIHAPUS..ITU MAKSUDNYA YA PAK? JAHAT KAU PAK....!', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(449, '@AdeJunaedi-pt4ff', 'Demo semua pendidik ...murid mengisi soal soal itu berdasarkan pendidikan ipa ,matematika , ips itu harus tidak boleh di hapus bagai mana murid bisa mengisi soal soal harus ipa ,ips matematika semua itu relevan terkait ...pendidikan ips ips matematika harus itu dasar dasar pendidikan tidak boleh di hapus ipa ips matematika harus tidak boleh di hapus mentri tidak boleh banyak alesan ...bagai mana bisa mengisi ulangan kalau matematika ipa di hapus ha ha ....dasar tidak boleh di hapus harus tau dasarnya sd smp sma tidak boleh di hapus bekal pendidik untuk hidup perlu tolak penghapusan pendidikan ipa ,matematika , itu sangat perlu untuk bekal hidup ...', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(450, '@munirbata6073', 'Pendidikan diIndo cuma jd alat politik para pembesar diNegeri ini,coba mereka  utak atik skul,kedinasan diIndo,pasti tdk brn,krn murid dan alumninya keluarga mereka semua', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(451, '@franskhadavi919', 'Kurikulum yg justru makin guoblok.harus dibatalkan kmbalikan ke kurikulum.yg dahhulu', 'Negatif', 2, '2024-09-05 12:13:19', '2024-09-05 12:13:19'),
(452, '@EdTech_Literacy', 'Sistem Pendidikan Malaysia bagus (Adopsi British). Secondary school (SMP-SMA) digabung jadi 5 tahun. Setelah secondary school (tahun ke-6) ada program matrikulasi 1 tahun (Pre-University). Lulus secondary school gak langsung ke university. Gak ada yang salah ambil jurusan saat kuliah nanti karena 1 tahun telah ditempa di college matriculation dan tau ke jurusan apa mereka nanti saat kuliah. Saat kuliah di Univ pun gak ada lagi belajar mata kuliah umum (English I, II, III, Bahasa Indo I-III) . Di Indonesia, banyak ambil jurusan karena ikut-ikutan, dengar dari si anu, sosialisasi dari senior dll, tidak pasti, akhirnya banyak salah jurusan. Namun beberapa sekolah menengah unggul di Indo sudah mulai sadar dengan mulai mengelompokkan siswa di kelas 2-3 ke rumpun ilmu untuk disiapkan ke jurusan apa mereka kuliah. So, karena Indonesia tidak ada program pre-university, pengelompokan ilmu tetap penting di SMA agar tidak salah jurusan di kuliah.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(453, '@SunsetinBeijing', 'di luar negeri kan uda kyk gini sistemnya, mereka lgsg pilih per subject yg dimau, di China jg begitu duluuu bgtt ada ipa ips, trus dihapus uda beberapa tahun ini jd cmn milih per pelajaran yg diminati, di Australia jg begitu, jd bagus2 aja sih menurutku, yg penting kan msh bisa ambil pelajaran yg sesuai jurusan kuliah nanti. kyknya byk yg nonton beritanya setengah2, ga ada ipa ips bkn berarti ga milih pelajaran', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(454, '@ahmadmuslikah4117', 'Justru dengan adanya jurusan itu menandakan kemampuan siswa, masa saya sekolah dulu, penjurusan tidak memilih, melainkan nilai akademik mana yg bagus untuk menentukan jurusan, bukan siswa memilih jurusan', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(455, '@bambangiswanto94167', 'harusnya dari dulu,selama ini pemahaman orang itu salah,kalo jurusan IPA adalah kumpulan anak2 pinter padahal belum tentu', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(456, '@sutiknomuhammad3451', 'Sudah saatnya SDM Indonesia maju dalam hal ke ahlian ilmu orang masing 2,agar output bisa mumpuni SDM nya', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(457, '@DahlanElRizki', 'Kalo gue sih setuju aja , lebih bebas  ga sih , tanpa beban', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(458, '@buupyboopy9306', 'IPA & IPS itu pembodohan menurut gw....bukannya spesifik mau ke jurusan apa dan butuh mata pelajaran apa malah dibagi IPA & IPS, udah itu IPA boleh ke IPS...bedul benerr nih walau gw alumni A1 tetap aja gak ngaruh', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(459, '@phansiuling5087', 'Sebenarnya memang kl SMA bersifat umum aja. Yg memang mau ambil jurusan ya masuk sekolah kejuruan . Rakyat Indo . Kan kls bawah lbh byk .dr kls menengah ke atas . Jd kl dr SMP tamat sekolah kejuruan aja.  Spt STM ,( STM sndr jg ada byk jurusan lg , Tehnik mesin , tehnik electro ) .kemudian SMEA dan Sekolah Tata Rias wajah , Salon ,   busana  , Tata  boga ( cheff  ) . Ini kl memang ekonomi lemah yg memang tdk ada biaya kuliah anak anak bisa sekolah kejuruan. .dan harus ada KKN / magang / balai latihan kerja .kl sudah smester 6 di Skolah ke juruannya .agar skill ketrampilan nya teruji', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(460, '@airbender7025', 'Jangan termakan clickbait news channel bro, yg dihapus cuma namanya saja, penjurusannya masih ada, bahkan jurusan ipa mekar jadi 3, utk kedokteran, tehnik dan campur antara ipa dan ekonomi.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(461, '@trezzharyadi1051', 'Ini yg bikin pendidikan di negeri ini ga maju2. Trus saja tiap ganti mentri ganti2 kurikulum. Mulai dar nol lagi terus diulang2.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(462, '@piusdwisetyo7231', 'Tidak sepakat, lebih baik sistem pemetaan minat dan bakat anak disempurnakan dulu, soal diskriminasi hanya bisa dikikis kalau pemahaman tentang jurusan dan kemungkinan kolaborasi siswa antar jurusan di kegiatan tertentu', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(463, '@sriedynurcahyo3894', 'apapun jurusanya nanti juga bakal jadi pekerja . Pengangguran akan bertambah . Ajarin buka usaha jangan belajar doang .', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44');
INSERT INTO `komentar` (`id`, `user`, `content`, `sentimen`, `media_id`, `created_at`, `updated_at`) VALUES
(464, '@hadjidbadawi3164', 'Itulah alasan yg tdk rasional...dlu malah SMA itu ada 3 Jurusan...1.Jurusan Paspal ( Pasti alam )2.Sosbud ( Sosial Budaya )3.Budaya....jdi anak menjadi yg senang berfikir mesti ke Paspal....yg senang hafalan ke Sosbud atau Budaya.....llu bgmn membedakan siswa klu gk berdasarkn jurusan......Murid yg Senang berfikir akn lain dng anak yg senang hafalan.....maka matapelajaran  juga berbeda.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(465, '@ISR8686', 'Jurusan ORDAL KOLEGA tetap HARUS ADA agar INDONESIA MAJU dari BELAKANG', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(466, '@gbondanerz7504', 'Klo tidak sejalan dengan PTN, jalur SNBP akan hilang..', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(467, '@yudisoto2077', 'Jurusan IPA IPS dihapus diganti jurusan Jakarta Cirebon dan Jakarta Semarang saja , haha', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(468, '@bambangsigitmaryanto4323', 'Cerdas banget pak mentri hebat pak mentri nadim makarim', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(469, '@bangalphin3516', 'Orangtua memilih anaknya selalu naik kelas , mendingan sekalian dihapus sistim yg tidak menaikkan kelas bagi siswa utk slalu bisa mengakomodir keinginan ortu...', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(470, '@adityaardian6718', 'Semi kuliah...', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(471, '@plwofficial4209', 'Masalahnya kalau anaknya terlambat di gabungin sama anak yang cepat. Tuh anak bukanya ngejar malah ketinggalan.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(472, '@nurlindafsihotang49', 'Krn DISKRIMINATIF SEKALI UNTUJ JURUSAN IPS DAN BAHASA!', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(473, '@BegugHarimurti', 'Yg paling saya sedalkan.di negara ini...di hapusnya..pendidikan..moral...seni dan budaya.di hapus..psdahal.seni dan budaya.itu.bsgus untuk...terapi moral.anak..buat apa pinter jika tidak di barenginmoral yg bagus', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(474, '@bangalphin3516', 'Sy waktu SMA malah diberi kesempatan boleh memilih bebas salahsatu jurusan krn nilai sy memenuhi syarat utk keduanya meski tidak terlalu tinggi angka prestasinya.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(475, '@erikon7', 'Stereotipe jurusan ipa isinya anak pintar. Makanya banyak ortu memaksa anak supaya masuk ipa, padahal tidak ada minat ke situ. Saya paham maksud dikbud, tapi tanpa jurusan, anak jg hilang tujuan. \r\nAyolah, buka mata, yg gajinya gede di sini itu biasanya dr orang sosIal, pinter sosialisasi, jago bacot. Ilmu ipa itu eksak dan bisa dipelajari kapan saja.', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(476, '@erwindr.rahmadani9119', 'kok gak ada dijaman saya dulu tahun 2010an.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(477, '@yudame4384', 'mantap lah pak.. asal jangan ada bancakan korupsi di pendidikan. korupsi tingkat dewa', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(478, '@Arudinarudin777', 'Dari tahun lalu tapi media baru mendapat info....', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(479, '@orangbiasa.123', 'Apa di hapus giliran biaya pendidikan terus di adakan', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(480, '@jodi8298', 'Semakin kacau konoha ini, justru jurusan itu lh yg mengarahkan koda life skill/soft skill', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(481, '@assyrafwinner4134', 'Dunia pendidikan kita makin mundur sejak Tukang Ojek yg memimpin. Mudah2an program ini dibatalkan oleh pemerintah yg baru terpilih.', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(482, '@IwanSetiawan-nz3zt', 'Memang tidak perlu jurusan, toh tukang ojek aja bisa jadi menteri. Ya kan? Untuk jadi Mendikbud tak.perlu paham pedagogik, filsafat maupun psikologi pendidikan. Malah, kompetensi yg mutlak menjadi Mendikbud adalah ngojek dan ngocek.', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(483, '@handoyosantoso128', 'Tetep aja semua test pd akhirnya berdasar kualifikasi jurusa IPA ....yg bisa masuk semua jurusan , kasian yg dari kejuruan krn tidak ada jaminan kerja atau pun melanjutkan', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(484, '@jonathanmama3740', 'Untung dikelas 11 sekolah swasta aku masih ada pilihan 1,2 dan 3 yang mana 1 dan 2 untuk ipa dan 3 untuk ips', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(485, '@marisimatondang1572', 'Jurusan, siap kerja.', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(486, '@adirahbimandaru345', 'Para pejabat menteri dn pak lurah cmn buat kebijskan yg sensasional , tnpa mikir jangka panjang, kl mau kuliah trs dasar2 ke kedokteran atau komunikasi atau diplomatik dasar ilnunya apa ??', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(487, '@GhaniArrazi', 'Kayanya yg tepat \" jurusan AGHLAk  kebaikan\"', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(488, '@atikkusmiati4204', 'kebijakan pendidikan jangan dibuat mainan. jangan sampai malam ngimpi trus pagi buat kebijakan. lewat kajian yg bener. tiap ganti mentri ganti kebijakan. kalo asal ganti sih gampang. cuma yg ngganti pake otak gk...nanti ada mentri baru peraturan ganti lagi....jangan bikin muak pengajar....mentri pndidikan tau pendidikan gk sih..?', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(489, '@noritamanik9982', 'ga penting jurusan ..lulus cari kerja pake duiiittt', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(490, '@herrypota', 'jadikan sma mjd smk yg banyak jurusannya.tenaga didiknya siap nggak?', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(491, '@ahmadmufidridho5755', 'bukankah masuk jurusan itu sesuai kemampuan bkn krn pinginnya orang tua? biasanya di sma kls 11 baru dijuruskan sesuai nilai kls 10 nya', 'Positif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(492, '@Asyraf_Art', 'Kalo smua siswa ingin jadi dokter? Waduh..bakal sepi nih jurusan seni', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(493, '@davidposan2873', 'Belajar sekolah tarzan aja ...makin ancur aja nih negara', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(494, '@sirematel', 'Moba bapa prabowo jangan make si nadim atau orang keturunan yaman atau yang lain nya apa apa di rubah mentang mentri ga mikir\" ga beda nya pa jokowi akhir jabatan udah apa di rubah', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(495, '@aldojavera6764', 'jurusan sonto loyo', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(496, '@samsungmega2417', 'Ya kalo semuaaunya ipa\r\nHilangkan ips bahasa\r\nSEMUA IPA\r\nKasian anak2 dijadikan ajang percobaan\r\nNanti sebentar lagi ....\r\nApalagi yg dirubah ??\r\nYg sudah .....\r\nbaju, tidak ada jurusan\r\nGuru belom dirubah \r\nMungkin tanpa guru saja ...\r\nUg ngajar tv', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(497, '@chikmatfadlal5828', 'Efek punya mentri pendidikan yg dungu akut ..sekalian aja hapus seluruh fakultas2 di perguruan tinggi negeri / swasta..jgn pake jurusan lagi', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44'),
(498, '@NurhayatiLilis-zn2nb', 'BIAR GW KELIHATAN KERJA begitu loh maksudnya. Karena  PRESTASI sekarang Kan banyak siswa SMP NIKAH MUDA Karena hamil duluan akibat PELAJARAN ONLINE  PR ONLINE, ABSEN ONLINE, terus lihat film dewasa 23 jam Dan akhirnya banyak kasus perkosaan anak dibawah umur', 'Negatif', 1, '2024-09-05 12:14:44', '2024-09-05 12:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `nama_media` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `nama_media`, `created_at`, `updated_at`) VALUES
(1, 'Kompas TV', '2024-08-22 12:13:16', '2024-08-22 12:13:16'),
(2, 'Metro TV', '2024-08-22 12:13:16', '2024-08-22 12:13:16'),
(3, 'Harian Kompas', '2024-08-22 06:38:14', '2024-08-28 09:45:03'),
(5, 'Berita Satu', '2024-08-28 09:46:00', '2024-08-28 09:46:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

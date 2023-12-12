-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2023 at 05:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PPS`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_soal`
--

CREATE TABLE `bank_soal` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `tingkat_kesulitan` varchar(255) NOT NULL,
  `topik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_soal`
--

INSERT INTO `bank_soal` (`id`, `pertanyaan`, `tingkat_kesulitan`, `topik`) VALUES
(1, 'Apa itu kebutuhan fungsional dalam pengembangan perangkat lunak?', 'Mudah', 'Software Requirement'),
(2, 'Apa istilah yang digunakan untuk merancang struktur database?', 'Mudah', 'Database'),
(3, 'Apa yang dimaksud dengan arsitektur berorientasi layanan (SOA)?', 'Sedang', 'SOA'),
(4, 'Apa peran seorang UX designer dalam pengembangan produk?', 'Sedang', 'UX'),
(5, 'Apa yang dimaksud dengan user interface (UI)?', 'Mudah', 'UI'),
(6, 'Apa itu kebutuhan non-fungsional dalam pengembangan perangkat lunak?', 'Mudah', 'Software Requirement'),
(7, 'Apa yang dimaksud dengan sistem manajemen basis data (DBMS)?', 'Sedang', 'Database'),
(8, 'Bagaimana arsitektur mikro layanan berbeda dengan SOA tradisional?', 'Sedang', 'SOA'),
(9, 'Apa peran seorang UI designer dalam desain antarmuka pengguna?', 'Mudah', 'UI'),
(10, 'Apa yang dimaksud dengan analisis kebutuhan?', 'Mudah', 'Software Requirement'),
(11, 'Apa itu kunci asing (foreign key) dalam database?', 'Sedang', 'Database'),
(12, 'Apa manfaat dari penerapan pola arsitektur dalam SOA?', 'Sedang', 'SOA'),
(13, 'Bagaimana mengukur kepuasan pengguna sebagai bagian dari UX?', 'Sedang', 'UX'),
(14, 'Apa itu wireframe dalam desain UI?', 'Mudah', 'UI'),
(15, 'Apa yang dimaksud dengan kasus pengguna (use case) dalam analisis kebutuhan?', 'Sedang', 'Software Requirement'),
(16, 'Apa perbedaan antara database relasional dan database NoSQL?', 'Sedang', 'Database'),
(17, 'Bagaimana mengevaluasi performa layanan dalam arsitektur SOA?', 'Sedang', 'SOA'),
(18, 'Apa peran uji pengguna (usability testing) dalam pengembangan UX?', 'Sedang', 'UX'),
(19, 'Apa yang dimaksud dengan prinsip-prinsip desain UI responsif?', 'Sedang', 'UI'),
(20, 'Bagaimana Anda mengelola perubahan kebutuhan dalam pengembangan perangkat lunak?', 'Sedang', 'Software Requirement'),
(21, 'Apa itu indeks dalam basis data relasional?', 'Mudah', 'Database'),
(22, 'Apa itu ESB (Enterprise Service Bus) dalam arsitektur SOA?', 'Mudah', 'SOA'),
(23, 'Apa yang dimaksud dengan persona dalam UX design?', 'Sedang', 'UX, UI'),
(24, 'Apa perbedaan antara desain UI dan desain UX?', 'Sedang', 'UX, UI'),
(25, 'Mengapa validasi data penting dalam kebutuhan perangkat lunak?', 'Mudah', 'Software Requirement'),
(26, 'Apa yang dimaksud dengan normalisasi dalam database?', 'Sedang', 'Database'),
(27, 'Bagaimana manajemen transaksi dilakukan dalam SOA?', 'Sedang', 'SOA'),
(28, 'Apa yang dimaksud dengan prinsip-prinsip aksesibilitas dalam UX?', 'Sedang', 'UX'),
(29, 'Apa peran warna dalam desain UI?', 'Mudah', 'UI'),
(30, 'Apa itu dokumen kebutuhan (requirement document) dalam pengembangan perangkat lunak?', 'Mudah', 'Software Requirement'),
(31, 'Apa yang dimaksud dengan pola perancangan (design pattern) dalam database?', 'Sedang', 'Database'),
(32, 'Bagaimana manajemen kesalahan (error handling) dilakukan dalam SOA?', 'Sedang', 'SOA'),
(33, 'Bagaimana mengidentifikasi kebutuhan pengguna dalam proses UX?', 'Sedang', 'UX'),
(34, 'Apa yang dimaksud dengan tata letak (layout) dalam desain UI?', 'Mudah', 'UI'),
(35, 'Bagaimana peran pemangku kepentingan (stakeholder) dalam analisis kebutuhan?', 'Sedang', 'Software Requirement'),
(36, 'Apa itu SQL (Structured Query Language)?', 'Mudah', 'Database'),
(37, 'Bagaimana manajemen identitas (identity management) digunakan dalam SOA?', 'Sedang', 'SOA'),
(38, 'Apa yang dimaksud dengan pengujian pengguna (user testing) dalam UX?', 'Sedang', 'UX'),
(39, 'Apa itu interaksi pengguna (user interaction) dalam desain UI?', 'Mudah', 'UI'),
(40, 'Apa peran analis bisnis dalam mendefinisikan kebutuhan perangkat lunak?', 'Sedang', 'Software Requirement'),
(41, 'Apa yang dimaksud dengan bahasa pemrograman database (database programming language)?', 'Sedang', 'Database'),
(42, 'Bagaimana manajemen layanan (service management) dilakukan dalam SOA?', 'Sedang', 'SOA'),
(43, 'Apa yang dimaksud dengan metode pertanyaan kepada pengguna (user inquiry method) dalam UX?', 'Mudah', 'UX'),
(44, 'Apa itu prinsip desain antarmuka pengguna (UI design principles)?', 'Mudah', 'UI'),
(45, 'Bagaimana proses validasi persyaratan perangkat lunak (software requirement validation) dilakukan?', 'Sedang', 'Software Requirement'),
(46, 'Apa itu backup dan pemulihan database (database backup and recovery)?', 'Mudah', 'Database'),
(47, 'Bagaimana arsitektur berorientasi layanan (SOA) memfasilitasi integrasi sistem?', 'Mudah', 'SOA'),
(48, 'Apa yang dimaksud dengan pembelajaran pengguna (user learning) dalam UX?', 'Mudah', 'UX'),
(49, 'Apa itu prinsip antarmuka pengguna yang responsif (responsive UI design principles)?', 'Sedang', 'UI'),
(50, 'Bagaimana pemantauan kinerja layanan (service performance monitoring) dilakukan dalam SOA?', 'Sedang', 'SOA'),
(51, 'Apa kegunaan utama dari sistem manajemen basis data (DBMS)?', 'Mudah', 'Database'),
(52, 'Berikut adalah protokol komunikasi yang umum digunakan dalam pengembangan API, kecuali:', 'Sedang', 'API'),
(53, 'Apa yang dimaksud dengan OAuth dalam konteks keamanan API?', 'Sulit', 'API'),
(54, 'Apa yang membedakan antara RESTful API dan SOAP API?', 'Sedang', 'API'),
(55, 'Bagaimana cara mengukur tingkat kesulitan suatu pertanyaan pada sistem ujian online?', 'Mudah', 'Exam'),
(56, 'Apa yang dimaksud dengan serialization dalam konteks pengembangan API?', 'Sulit', 'API'),
(57, 'Apa peran header Content-Type dalam permintaan HTTP?', 'Sedang', 'Software'),
(58, 'Bagaimana cara menjaga keamanan API?', 'Sedang', 'API'),
(59, 'Apa yang dimaksud dengan rate limiting pada API?', 'Mudah', 'API'),
(61, 'Apa kegunaan utama dari sistem manajemen basis data (DBMS)?', 'Mudah', 'Database'),
(62, 'Bagaimana cara mengukur tingkat kesulitan suatu pertanyaan pada sistem ujian online?', 'Mudah', 'Exam'),
(63, 'Berikut adalah protokol komunikasi yang umum digunakan dalam pengembangan API, kecuali:', 'Mudah', 'API Protocols'),
(64, 'Apa itu prinsip desain antarmuka pengguna (UI design principles)?', 'Mudah', 'UI'),
(75, 'Apa itu prinsip desain antarmuka pengguna (UI design principles)?', 'Mudah', 'UI');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `jumlah_soal` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `soal` text NOT NULL,
  `nama_ujian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `jumlah_soal`, `durasi`, `tanggal`, `jam`, `soal`, `nama_ujian`) VALUES
(17, 5, 10, '2023-12-07', '11:30:00', '[{\"bank_soal_id\":13,\"pertanyaan\":\"Bagaimana mengukur kepuasan pengguna sebagai bagian dari UX?\",\"teks_pilihan\":[\"Dengan mengukur jumlah pengguna.\",\"Dengan melakukan survei pengguna.\",\"Dengan mengumpulkan umpan balik dan metrik performa.\",\"Dengan melihat jumlah unduhan aplikasi.\"]},{\"bank_soal_id\":18,\"pertanyaan\":\"Apa peran uji pengguna (usability testing) dalam pengembangan UX?\",\"teks_pilihan\":[\"Ini adalah langkah dalam memasak pengguna.\",\"Ini adalah uji yang melibatkan pengguna akhir.\",\"Ini adalah tahap penentuan anggaran proyek.\",\"Ini adalah instruksi pengguna dalam aplikasi.\"]},{\"bank_soal_id\":33,\"pertanyaan\":\"Bagaimana mengidentifikasi kebutuhan pengguna dalam proses UX?\",\"teks_pilihan\":[\"Kebutuhan pengguna dapat diidentifikasi dengan mengamati pengguna saat mereka menggunakan perangkat lunak.\",\"Kebutuhan pengguna hanya dapat diidentifikasi melalui dokumen tertulis yang diajukan oleh pengguna.\",\"Kebutuhan pengguna tidak perlu diidentifikasi dalam proses UX.\",\"Identifikasi kebutuhan pengguna hanya melibatkan analis bisnis\",\" bukan desainer UX.\"]},{\"bank_soal_id\":38,\"pertanyaan\":\"Apa yang dimaksud dengan pengujian pengguna (user testing) dalam UX?\",\"teks_pilihan\":[\"Pengujian pengguna (user testing) adalah proses pengujian perangkat lunak yang dilakukan oleh pengguna akhir.\",\"Pengujian pengguna hanya melibatkan tim pengembang perangkat lunak.\",\"Pengujian pengguna hanya dilakukan setelah perangkat lunak selesai.\",\"Pengujian pengguna hanya berlaku untuk perangkat keras.\"]},{\"bank_soal_id\":48,\"pertanyaan\":\"Apa yang dimaksud dengan pembelajaran pengguna (user learning) dalam UX?\",\"teks_pilihan\":[\"Pembelajaran pengguna untuk mengatur sistem operasi\",\"Pembelajaran pengguna untuk mengembangkan perangkat lunak\",\"Pembelajaran pengguna untuk menggunakan perangkat lunak dengan baik\",\"Pembelajaran pengguna untuk mengganti tampilan antarmuka pengguna\"]}]', 'UTS'),
(18, 10, 120, '2023-12-06', '13:30:00', '[{\"bank_soal_id\":2,\"pertanyaan\":\"Apa istilah yang digunakan untuk merancang struktur database?\",\"teks_pilihan\":[\"Diagram alir data\",\"Desain antarmuka pengguna (UI)\",\"Skema basis data\",\"Bahasa pemrograman\"]},{\"bank_soal_id\":7,\"pertanyaan\":\"Apa yang dimaksud dengan sistem manajemen basis data (DBMS)?\",\"teks_pilihan\":[\"Rangkaian kawat yang menghubungkan komponen perangkat keras\",\"Sistem manajemen basis data\",\"Bahasa pemrograman populer\",\"Protokol jaringan berbasis IP\"]},{\"bank_soal_id\":11,\"pertanyaan\":\"Apa itu kunci asing (foreign key) dalam database?\",\"teks_pilihan\":[\"Itu adalah kunci akses ke sistem database.\",\"Ini adalah indeks yang digunakan untuk mencari data.\",\"Ini adalah elemen yang menghubungkan dua tabel.\",\"Itu adalah jenis enkripsi data dalam database.\"]},{\"bank_soal_id\":16,\"pertanyaan\":\"Apa perbedaan antara database relasional dan database NoSQL?\",\"teks_pilihan\":[\"Database relasional menyimpan data dalam dokumen.\",\"Database NoSQL menyimpan data dalam tabel terstruktur.\",\"Database relasional menggunakan SQL.\",\"Database NoSQL tidak mendukung transaksi.\"]},{\"bank_soal_id\":26,\"pertanyaan\":\"Apa yang dimaksud dengan normalisasi dalam database?\",\"teks_pilihan\":[\"Sebuah bahasa pemrograman untuk membuat program\",\"Proses mengubah data menjadi format yang sesuai dengan standar\",\"Proses mengorganisasi data dalam tabel\",\"Sebuah metode mengenkripsi data\"]},{\"bank_soal_id\":31,\"pertanyaan\":\"Apa yang dimaksud dengan pola perancangan (design pattern) dalam database?\",\"teks_pilihan\":[\"Pola perancangan adalah algoritma khusus yang digunakan dalam pengelolaan basis data.\",\"Pola perancangan adalah pedoman atau solusi umum yang dapat digunakan untuk mengatasi masalah desain perangkat lunak.\",\"Pola perancangan adalah konsep dalam UX yang membantu pengguna merancang tata letak halaman web.\",\"Pola perancangan adalah bahasa pemrograman khusus untuk pengembangan basis data.\"]},{\"bank_soal_id\":41,\"pertanyaan\":\"Apa yang dimaksud dengan bahasa pemrograman database (database programming language)?\",\"teks_pilihan\":[\"Bahasa pemrograman yang digunakan untuk mengakses dan mengelola database\",\"Bahasa pemrograman yang digunakan untuk mengolah gambar dan media\",\"Bahasa pemrograman yang digunakan untuk membuat presentasi slide\",\"Bahasa pemrograman yang digunakan untuk mengatur sistem operasi\"]},{\"bank_soal_id\":46,\"pertanyaan\":\"Apa itu backup dan pemulihan database (database backup and recovery)?\",\"teks_pilihan\":[\"Proses pembuatan cadangan (backup) dan pemulihan (recovery) data dalam database\",\"Proses pengaturan konfigurasi perangkat keras\",\"Proses pemasangan perangkat keras baru\",\"Proses mengganti sistem operasi\"]},{\"bank_soal_id\":51,\"pertanyaan\":\"Apa kegunaan utama dari sistem manajemen basis data (DBMS)?\",\"teks_pilihan\":[\"Application Programming Interface\",\"Advanced Programming Interface\",\"Application Process Interface\",\"Application Protocol Interface\"]},{\"bank_soal_id\":61,\"pertanyaan\":\"Apa kegunaan utama dari sistem manajemen basis data (DBMS)?\",\"teks_pilihan\":[\"Application Programming Interface\",\"Advanced Programming Interface\",\"Application Process Interface\",\"Application Protocol Interface\"]}]', 'Quiz 1');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL,
  `bank_soal_id` int(11) NOT NULL,
  `teks_pilihan` text NOT NULL,
  `benar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id`, `bank_soal_id`, `teks_pilihan`, `benar`) VALUES
(1, 1, 'Spesifikasi perangkat keras komputer', 'Salah'),
(2, 1, 'Dokumen yang mendefinisikan fungsi perangkat lunak', 'Benar'),
(3, 1, 'Instruksi penggunaan aplikasi', 'Salah'),
(4, 1, 'Panduan instalasi perangkat lunak', 'Salah'),
(5, 2, 'Diagram alir data', 'Salah'),
(6, 2, 'Desain antarmuka pengguna (UI)', 'Salah'),
(7, 2, 'Skema basis data', 'Benar'),
(8, 2, 'Bahasa pemrograman', 'Salah'),
(9, 3, 'Pendekatan dalam pembangunan perangkat lunak', 'Benar'),
(10, 3, 'Singkatan dari Standar Operasional Amerika', 'Salah'),
(11, 3, 'Alat untuk mengukur suhu', 'Salah'),
(12, 3, 'Arsitektur tradisional', 'Salah'),
(13, 4, 'Merancang layout situs web', 'Salah'),
(14, 4, 'Membuat desain UX yang lebih baik', 'Benar'),
(15, 4, 'Mengelola server web', 'Salah'),
(16, 4, 'Mengembangkan kode sumber perangkat lunak', 'Salah'),
(17, 5, 'Spesifikasi perangkat keras komputer', 'Salah'),
(18, 5, 'Desain antarmuka pengguna (UI)', 'Benar'),
(19, 5, 'Bahasa pemrograman', 'Salah'),
(20, 5, 'Bahasa yang digunakan oleh sistem operasi', 'Salah'),
(21, 6, 'Instruksi penggunaan aplikasi', 'Salah'),
(22, 6, 'Dokumen yang mendefinisikan kinerja dan keamanan sistem', 'Benar'),
(23, 6, 'Panduan instalasi perangkat lunak', 'Salah'),
(24, 6, 'Skema basis data', 'Salah'),
(25, 7, 'Rangkaian kawat yang menghubungkan komponen perangkat keras', 'Salah'),
(26, 7, 'Sistem manajemen basis data', 'Benar'),
(27, 7, 'Bahasa pemrograman populer', 'Salah'),
(28, 7, 'Protokol jaringan berbasis IP', 'Salah'),
(29, 8, 'SOA tradisional adalah pengembangan perangkat lunak yang lebih modular', 'Salah'),
(30, 8, 'Arsitektur mikro layanan lebih fokus pada komponen kecil yang independen', 'Benar'),
(31, 8, 'Arsitektur SOA tradisional menggabungkan semua layanan ke dalam satu entitas besar', 'Salah'),
(32, 8, 'SOA tradisional menggunakan bahasa pemrograman yang sama untuk semua layanan', 'Salah'),
(33, 9, 'Membangun tampilan antarmuka pengguna', 'Salah'),
(34, 9, 'Mengembangkan kode sumber perangkat lunak', 'Salah'),
(35, 9, 'Mendefinisikan tampilan antarmuka pengguna', 'Benar'),
(36, 9, 'Memeriksa kinerja aplikasi', 'Salah'),
(37, 10, 'Dokumen yang mendefinisikan kinerja dan keamanan sistem', 'Salah'),
(38, 10, 'Metode untuk mengukur kepuasan pengguna aplikasi', 'Benar'),
(39, 10, 'Panduan instalasi perangkat lunak', 'Salah'),
(40, 10, 'Bahasa pemrograman', 'Salah'),
(41, 11, 'Itu adalah kunci akses ke sistem database.', 'Salah'),
(42, 11, 'Ini adalah indeks yang digunakan untuk mencari data.', 'Salah'),
(43, 11, 'Ini adalah elemen yang menghubungkan dua tabel.', 'Benar'),
(44, 11, 'Itu adalah jenis enkripsi data dalam database.', 'Salah'),
(45, 12, 'Meningkatkan kompleksitas sistem.', 'Salah'),
(46, 12, 'Memudahkan integrasi layanan.', 'Benar'),
(47, 12, 'Mengurangi keamanan data.', 'Salah'),
(48, 12, 'Membatasi skalabilitas.', 'Salah'),
(49, 13, 'Dengan mengukur jumlah pengguna.', 'Salah'),
(50, 13, 'Dengan melakukan survei pengguna.', 'Salah'),
(51, 13, 'Dengan mengumpulkan umpan balik dan metrik performa.', 'Benar'),
(52, 13, 'Dengan melihat jumlah unduhan aplikasi.', 'Salah'),
(53, 14, 'Ini adalah metode pengukuran performa pengguna.', 'Salah'),
(54, 14, 'Ini adalah diagram alur proses dalam pengembangan.', 'Salah'),
(55, 14, 'Ini adalah prototipe interaktif tampilan pengguna.', 'Benar'),
(56, 14, 'Ini adalah tindakan menguji kegunaan aplikasi.', 'Salah'),
(57, 15, 'Itu adalah instruksi pengguna dalam manual.', 'Salah'),
(58, 15, 'Itu adalah deskripsi langkah-langkah penggunaan sistem.', 'Benar'),
(59, 15, 'Itu adalah analisis perilaku pengguna.', 'Salah'),
(60, 15, 'Itu adalah kode sumber aplikasi.', 'Salah'),
(61, 16, 'Database relasional menyimpan data dalam dokumen.', 'Salah'),
(62, 16, 'Database NoSQL menyimpan data dalam tabel terstruktur.', 'Salah'),
(63, 16, 'Database relasional menggunakan SQL.', 'Benar'),
(64, 16, 'Database NoSQL tidak mendukung transaksi.', 'Salah'),
(65, 17, 'Dengan memeriksa kode program.', 'Salah'),
(66, 17, 'Dengan mengukur kepuasan pengguna.', 'Salah'),
(67, 17, 'Dengan memantau kinerja layanan dan memecah masalah.', 'Benar'),
(68, 17, 'Dengan menghapus layanan yang tidak penting.', 'Salah'),
(69, 18, 'Ini adalah langkah dalam memasak pengguna.', 'Salah'),
(70, 18, 'Ini adalah uji yang melibatkan pengguna akhir.', 'Benar'),
(71, 18, 'Ini adalah tahap penentuan anggaran proyek.', 'Salah'),
(72, 18, 'Ini adalah instruksi pengguna dalam aplikasi.', 'Salah'),
(73, 19, 'Prinsip desain yang mendukung pengembangan aplikasi.', 'Salah'),
(74, 19, 'Prinsip desain yang membantu mengelola basis data.', 'Salah'),
(75, 19, 'Prinsip desain yang memastikan tampilan cocok di berbagai perangkat.', 'Benar'),
(76, 19, 'Prinsip desain yang mengurangi jumlah kode sumber.', 'Salah'),
(77, 20, 'Mengabaikan perubahan kebutuhan.', 'Salah'),
(78, 20, 'Memperbarui dokumen kebutuhan.', 'Benar'),
(79, 20, 'Menghapus semua perubahan.', 'Salah'),
(80, 20, 'Menambahkan fitur tambahan tanpa alasan.', 'Salah'),
(81, 21, 'Sebuah buku panduan penggunaan basis data', 'Salah'),
(82, 21, 'Sebuah indeks buku dalam perpustakaan', 'Salah'),
(83, 21, 'Struktur data yang meningkatkan kecepatan pencarian data dalam basis data', 'Benar'),
(84, 21, 'Sebuah jenis bahasa pemrograman', 'Salah'),
(85, 22, 'Sebuah layanan pengiriman barang dalam arsitektur logistik', 'Salah'),
(86, 22, 'Komponen perangkat keras dalam komputer', 'Salah'),
(87, 22, 'Komponen perangkat lunak yang memfasilitasi komunikasi antar-aplikasi', 'Benar'),
(88, 22, 'Satu jenis penyakit dalam sistem komputer', 'Salah'),
(89, 23, 'Pemberitahuan penting dalam perangkat mobile', 'Salah'),
(90, 23, 'Representasi fiksi pengguna aplikasi', 'Benar'),
(91, 23, 'Sebuah sistem operasi yang aman', 'Salah'),
(92, 23, 'Sebuah jenis bahasa pemrograman', 'Salah'),
(93, 24, 'Desain UI berkaitan dengan desain tampilan antarmuka pengguna, sedangkan desain UX berkaitan dengan pengalaman pengguna secara keseluruhan', 'Benar'),
(94, 24, 'Desain UI berkaitan dengan desain aplikasi seluler, sedangkan desain UX berkaitan dengan desain situs web', 'Salah'),
(95, 24, 'Desain UI berfokus pada analisis data pengguna, sedangkan desain UX berfokus pada pengembangan aplikasi', 'Salah'),
(96, 24, 'Desain UI lebih penting daripada desain UX dalam pengembangan perangkat lunak', 'Salah'),
(97, 25, 'Untuk menambahkan kebingungan pada pengguna', 'Salah'),
(98, 25, 'Untuk memastikan data yang dimasukkan sesuai dengan aturan dan format yang benar', 'Benar'),
(99, 25, 'Hanya untuk menyulitkan pengembang perangkat lunak', 'Salah'),
(100, 25, 'Untuk menghambat kinerja perangkat keras', 'Salah'),
(101, 26, 'Sebuah bahasa pemrograman untuk membuat program', 'Salah'),
(102, 26, 'Proses mengubah data menjadi format yang sesuai dengan standar', 'Salah'),
(103, 26, 'Proses mengorganisasi data dalam tabel', 'Benar'),
(104, 26, 'Sebuah metode mengenkripsi data', 'Salah'),
(105, 27, 'Dengan menggunakan grafik dalam laporan transaksi', 'Salah'),
(106, 27, 'Melalui penggunaan otentikasi ganda (multi-factor authentication)', 'Salah'),
(107, 27, 'Dengan mengelompokkan layanan menjadi modul-modul yang independen', 'Benar'),
(108, 27, 'Dengan menggunakan bahasa pemrograman tertentu dalam pengelolaan transaksi', 'Salah'),
(109, 28, 'Prinsip-prinsip aksesibilitas adalah panduan tentang bagaimana membuat aplikasi dapat diakses oleh semua orang, termasuk mereka dengan berbagai kemampuan dan disabilitas', 'Benar'),
(110, 28, 'Prinsip-prinsip aksesibilitas adalah panduan tentang bagaimana mengamankan data pengguna dari serangan cyber', 'Salah'),
(111, 28, 'Prinsip-prinsip aksesibilitas adalah panduan tentang bagaimana mempercepat kecepatan koneksi internet', 'Salah'),
(112, 28, 'Prinsip-prinsip aksesibilitas adalah panduan tentang bagaimana membuat antarmuka pengguna lebih rumit', 'Salah'),
(113, 29, 'Warna hanya berperan sebagai elemen estetika dalam desain UI dan tidak memiliki peran fungsional', 'Salah'),
(114, 29, 'Warna dapat digunakan untuk mengarahkan perhatian pengguna, membedakan elemen, dan menciptakan suasana tertentu', 'Benar'),
(115, 29, 'Warna tidak memiliki pengaruh terhadap pengalaman pengguna dalam desain aplikasi', 'Salah'),
(116, 29, 'Warna hanya diperlukan dalam desain grafis dan tidak berpengaruh pada desain antarmuka pengguna', 'Salah'),
(117, 30, 'Dokumen kebutuhan adalah dokumen yang menggambarkan kebutuhan fungsional dari suatu perangkat lunak yang akan dikembangkan', 'Benar'),
(118, 30, 'Dokumen kebutuhan hanya berisi daftar fitur yang diinginkan oleh pengguna', 'Salah'),
(119, 30, 'Dokumen kebutuhan adalah dokumen yang berisi perangkat keras yang diperlukan untuk menjalankan perangkat lunak', 'Salah'),
(120, 30, 'Dokumen kebutuhan hanya diperlukan pada tahap akhir pengembangan perangkat lunak', 'Salah'),
(121, 31, 'Pola perancangan adalah algoritma khusus yang digunakan dalam pengelolaan basis data.', 'Salah'),
(122, 31, 'Pola perancangan adalah pedoman atau solusi umum yang dapat digunakan untuk mengatasi masalah desain perangkat lunak.', 'Benar'),
(123, 31, 'Pola perancangan adalah konsep dalam UX yang membantu pengguna merancang tata letak halaman web.', 'Salah'),
(124, 31, 'Pola perancangan adalah bahasa pemrograman khusus untuk pengembangan basis data.', 'Salah'),
(125, 32, 'Kesalahan dalam SOA tidak perlu dikelola.', 'Salah'),
(126, 32, 'Manajemen kesalahan dalam SOA melibatkan pemantauan layanan dan pemecahan masalah saat terjadi kesalahan.', 'Benar'),
(127, 32, 'SOA tidak dapat mengalami kesalahan.', 'Salah'),
(128, 32, 'SOA hanya berfungsi pada perangkat keras yang sangat andal.', 'Salah'),
(129, 33, 'Kebutuhan pengguna dapat diidentifikasi dengan mengamati pengguna saat mereka menggunakan perangkat lunak.', 'Benar'),
(130, 33, 'Kebutuhan pengguna hanya dapat diidentifikasi melalui dokumen tertulis yang diajukan oleh pengguna.', 'Salah'),
(131, 33, 'Kebutuhan pengguna tidak perlu diidentifikasi dalam proses UX.', 'Salah'),
(132, 33, 'Identifikasi kebutuhan pengguna hanya melibatkan analis bisnis, bukan desainer UX.', 'Salah'),
(133, 34, 'Tata letak (layout) dalam desain UI merujuk pada urutan pembuatan kode sumber untuk aplikasi.', 'Salah'),
(134, 34, 'Tata letak (layout) adalah elemen desain yang mengacu pada tata letak elemen-elemen visual dalam antarmuka pengguna.', 'Benar'),
(135, 34, 'Tata letak (layout) adalah alat untuk memeriksa keamanan perangkat lunak.', 'Salah'),
(136, 34, 'Tata letak (layout) hanya berlaku untuk halaman web, bukan aplikasi desktop.', 'Salah'),
(137, 35, 'Pemangku kepentingan (stakeholder) adalah individu atau kelompok yang memiliki kepentingan dalam proyek perangkat lunak.', 'Benar'),
(138, 35, 'Pemangku kepentingan hanya perlu diberi tahu tentang proyek setelah selesai.', 'Salah'),
(139, 35, 'Pemangku kepentingan tidak mempengaruhi keputusan dalam proyek perangkat lunak.', 'Salah'),
(140, 35, 'Pemangku kepentingan hanya dapat ditemukan di departemen TI perusahaan.', 'Salah'),
(141, 36, 'SQL adalah singkatan dari \"Structured Query Language\" dan digunakan untuk mengelola dan mengakses basis data.', 'Benar'),
(142, 36, 'SQL adalah singkatan dari \"Software Quality Language\" dan digunakan untuk menguji perangkat lunak.', 'Salah'),
(143, 36, 'SQL adalah singkatan dari \"System Query Language\" dan digunakan untuk mengelola sistem operasi.', 'Salah'),
(144, 36, 'SQL adalah singkatan dari \"Service Query Language\" dan digunakan dalam arsitektur berorientasi layanan (SOA).', 'Salah'),
(145, 37, 'Manajemen identitas dalam SOA adalah proses mengidentifikasi pengguna dengan menggunakan teknologi biometrik.', 'Salah'),
(146, 37, 'Manajemen identitas dalam SOA adalah proses mengelola informasi pengguna dan hak akses ke layanan berbasis peran.', 'Benar'),
(147, 37, 'Manajemen identitas dalam SOA adalah proses membuat cadangan data pengguna.', 'Salah'),
(148, 37, 'Manajemen identitas dalam SOA tidak diperlukan.', 'Salah'),
(149, 38, 'Pengujian pengguna (user testing) adalah proses pengujian perangkat lunak yang dilakukan oleh pengguna akhir.', 'Benar'),
(150, 38, 'Pengujian pengguna hanya melibatkan tim pengembang perangkat lunak.', 'Salah'),
(151, 38, 'Pengujian pengguna hanya dilakukan setelah perangkat lunak selesai.', 'Salah'),
(152, 38, 'Pengujian pengguna hanya berlaku untuk perangkat keras.', 'Salah'),
(153, 39, 'Interaksi pengguna (user interaction) adalah proses menganalisis preferensi warna dalam desain UI.', 'Salah'),
(154, 39, 'Interaksi pengguna (user interaction) merujuk pada cara pengguna berinteraksi dengan elemen-elemen dalam antarmuka.', 'Benar'),
(155, 39, 'Interaksi pengguna hanya berlaku pada perangkat mobile.', 'Salah'),
(156, 39, 'Interaksi pengguna hanya berlaku pada halaman web.', 'Salah'),
(157, 40, 'Peran analis bisnis adalah merancang tata letak (layout) dalam desain UI.', 'Salah'),
(158, 40, 'Peran analis bisnis adalah memahami kebutuhan pengguna dan mengartikulasikannya kepada tim pengembang.', 'Benar'),
(159, 40, 'Peran analis bisnis hanya berlaku pada perusahaan besar.', 'Salah'),
(160, 40, 'Peran analis bisnis tidak diperlukan dalam pengembangan perangkat lunak.', 'Salah'),
(161, 41, 'Bahasa pemrograman yang digunakan untuk mengakses dan mengelola database', 'Benar'),
(162, 41, 'Bahasa pemrograman yang digunakan untuk mengolah gambar dan media', 'Salah'),
(163, 41, 'Bahasa pemrograman yang digunakan untuk membuat presentasi slide', 'Salah'),
(164, 41, 'Bahasa pemrograman yang digunakan untuk mengatur sistem operasi', 'Salah'),
(165, 42, 'Dengan mengatur tata letak halaman web', 'Salah'),
(166, 42, 'Dengan mengatur tampilan antarmuka pengguna', 'Salah'),
(167, 42, 'Dengan mengelola dan memantau layanan yang digunakan dalam arsitektur SOA', 'Benar'),
(168, 42, 'Dengan memproses gambar dan video dalam sistem SOA', 'Salah'),
(169, 43, 'Metode untuk mengirim email kepada pengguna', 'Salah'),
(170, 43, 'Metode untuk mengumpulkan masukan dari pengguna untuk perbaikan produk', 'Benar'),
(171, 43, 'Metode untuk menghitung berapa kali pengguna menggunakan perangkat lunak', 'Salah'),
(172, 43, 'Metode untuk mengukur kecepatan koneksi internet pengguna', 'Salah'),
(173, 44, 'Prinsip yang menekankan kecepatan dalam desain antarmuka pengguna', 'Salah'),
(174, 44, 'Prinsip yang menekankan estetika dan tampilan visual yang menarik', 'Benar'),
(175, 44, 'Prinsip yang menekankan keamanan data pengguna', 'Salah'),
(176, 44, 'Prinsip yang menekankan kebutuhan perangkat keras yang tinggi', 'Salah'),
(177, 45, 'Dengan mengumpulkan masukan dari pengguna', 'Salah'),
(178, 45, 'Dengan menguji apakah perangkat lunak memenuhi persyaratan yang telah ditentukan', 'Benar'),
(179, 45, 'Dengan mengubah tampilan antarmuka pengguna secara teratur', 'Salah'),
(180, 45, 'Dengan mengumpulkan data tentang kinerja perangkat keras', 'Salah'),
(181, 46, 'Proses pembuatan cadangan (backup) dan pemulihan (recovery) data dalam database', 'Benar'),
(182, 46, 'Proses pengaturan konfigurasi perangkat keras', 'Salah'),
(183, 46, 'Proses pemasangan perangkat keras baru', 'Salah'),
(184, 46, 'Proses mengganti sistem operasi', 'Salah'),
(185, 47, 'Dengan mengatur tampilan antarmuka pengguna', 'Salah'),
(186, 47, 'Dengan menghubungkan berbagai sistem dan layanan', 'Benar'),
(187, 47, 'Dengan menguji perangkat lunak', 'Salah'),
(188, 47, 'Dengan mengatur kecepatan koneksi internet', 'Salah'),
(189, 48, 'Pembelajaran pengguna untuk mengatur sistem operasi', 'Salah'),
(190, 48, 'Pembelajaran pengguna untuk mengembangkan perangkat lunak', 'Salah'),
(191, 48, 'Pembelajaran pengguna untuk menggunakan perangkat lunak dengan baik', 'Benar'),
(192, 48, 'Pembelajaran pengguna untuk mengganti tampilan antarmuka pengguna', 'Salah'),
(193, 49, 'Prinsip yang menekankan koneksi internet yang stabil', 'Salah'),
(194, 49, 'Prinsip yang menekankan tampilan yang menarik pada perangkat mobile', 'Salah'),
(195, 49, 'Prinsip yang menekankan responsivitas dan penyesuaian tampilan pada berbagai perangkat', 'Benar'),
(196, 49, 'Prinsip yang menekankan penggunaan bahasa pemrograman tertentu', 'Salah'),
(197, 50, 'Dengan mengganti tampilan antarmuka pengguna secara teratur', 'Salah'),
(198, 50, 'Dengan memonitor kinerja perangkat keras server', 'Salah'),
(199, 50, 'Dengan memantau layanan dan mengukur kinerjanya dalam arsitektur SOA', 'Benar'),
(200, 50, 'Dengan mengukur konsumsi daya perangkat keras pengguna', 'Salah'),
(201, 51, 'Application Programming Interface', 'Benar'),
(202, 51, 'Advanced Programming Interface', 'Salah'),
(203, 51, 'Application Process Interface', 'Salah'),
(204, 51, 'Application Protocol Interface', 'Salah'),
(205, 52, 'Menyimpan File', 'Salah'),
(206, 52, 'Mengelola dan Mengakses Data', 'Benar'),
(207, 52, 'Mengirim Email', 'Salah'),
(208, 52, 'Mencetak Dokumen', 'Salah'),
(209, 53, 'HTTP', 'Salah'),
(210, 53, 'FTP', 'Benar'),
(211, 53, 'REST', 'Salah'),
(212, 53, 'WebSocket', 'Salah'),
(213, 54, 'Satuan Tunggal untuk Otentikasi', 'Salah'),
(214, 54, 'Protokol Otentikasi Terbuka', 'Benar'),
(215, 54, 'Organisasi untuk Otentikasi', 'Salah'),
(216, 54, 'Sistem Keamanan OAuth', 'Salah'),
(217, 55, 'Format Data', 'Salah'),
(218, 55, 'Metode Komunikasi', 'Salah'),
(219, 55, 'Keduanya Benar', 'Benar'),
(220, 55, 'Application Programming Interface', 'Salah'),
(221, 56, 'Berdasarkan panjang pertanyaan', 'Salah'),
(222, 56, 'Dengan memberikan bobot nilai', 'Benar'),
(223, 56, 'Secara acak', 'Salah'),
(224, 56, 'Berdasarkan jumlah karakter pertanyaan', 'Salah'),
(225, 57, 'Proses mengubah objek menjadi format yang dapat disimpan', 'Benar'),
(226, 57, 'Proses membuat salinan data', 'Salah'),
(227, 57, 'Proses penghapusan objek', 'Salah'),
(228, 57, 'Proses mencari objek di database', 'Salah'),
(229, 58, 'Menentukan tipe media konten yang dikirimkan atau diminta dari server', 'Benar'),
(230, 58, 'Menentukan tipe browser yang digunakan', 'Salah'),
(231, 58, 'Menentukan bahasa yang digunakan', 'Salah'),
(232, 58, 'Menentukan ukuran layar pengguna', 'Salah'),
(233, 59, 'Menggunakan metode otentikasi yang kuat', 'Benar'),
(234, 59, 'Menggunakan password yang mudah diingat', 'Salah'),
(235, 59, 'Tidak perlu menjaga keamanan API', 'Salah'),
(236, 59, 'Menggunakan fingerprint untuk otentikasi', 'Salah'),
(239, 61, 'Application Programming Interface', 'Benar'),
(240, 61, 'Advanced Programming Interface', 'Salah'),
(241, 61, 'Application Process Interface', 'Salah'),
(242, 61, 'Application Protocol Interface', 'Salah'),
(243, 62, 'Berdasarkan panjang pertanyaan', 'Salah'),
(244, 62, 'Dengan memberikan bobot nilai', 'Benar'),
(245, 62, 'Secara acak', 'Salah'),
(246, 62, 'Berdasarkan jumlah karakter pertanyaan', 'Salah'),
(247, 63, 'Menyimpan File', 'Salah'),
(248, 63, 'Mengelola dan Mengakses Data', 'Benar'),
(249, 63, 'Mengirim Email', 'Salah'),
(250, 63, 'Mencetak Dokumen', 'Salah'),
(279, 64, 'Prinsip yang menekankan kecepatan dalam desain antarmuka pengguna', 'Salah'),
(280, 64, 'Prinsip yang menekankan estetika dan tampilan visual yang menarik', 'Benar'),
(281, 64, 'Prinsip yang menekankan keamanan data pengguna', 'Salah'),
(282, 64, 'Prinsip yang menekankan kebutuhan perangkat keras yang tinggi', 'Salah'),
(289, 75, 'Prinsip yang menekankan kecepatan dalam desain antarmuka pengguna', 'Salah'),
(290, 75, 'Prinsip yang menekankan estetika dan tampilan visual yang menarik', 'Benar'),
(291, 75, 'Prinsip yang menekankan keamanan data pengguna', 'Salah'),
(292, 75, 'Prinsip yang menekankan kebutuhan perangkat keras yang tinggi', 'Salah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_soal`
--
ALTER TABLE `bank_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_soal_id` (`bank_soal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_soal`
--
ALTER TABLE `bank_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`bank_soal_id`) REFERENCES `bank_soal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

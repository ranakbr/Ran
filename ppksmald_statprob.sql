-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2024 pada 14.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppksmald_statprob`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_responses`
--

CREATE TABLE `quiz_responses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `question1` varchar(255) DEFAULT NULL,
  `question2` varchar(255) DEFAULT NULL,
  `question3` varchar(255) DEFAULT NULL,
  `question4` varchar(255) DEFAULT NULL,
  `question5` varchar(255) DEFAULT NULL,
  `question6` varchar(255) DEFAULT NULL,
  `question7` varchar(255) DEFAULT NULL,
  `question8` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `quiz_responses`
--

INSERT INTO `quiz_responses` (`id`, `user_id`, `user_name`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`) VALUES
(1, 3, 'Nurul Diva Ristania', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(2, 4, 'Muhammad Ikhwan', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 28', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Gambar yang bergerak atau animasi', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(3, 5, 'Adrian Maulana Rizieq Habiby', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(4, 6, 'Eka Afrilia', 'Merasa Ayu tidak akan bisa melawan', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 2 Tahun 2011', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(5, 7, 'Muhammad Riza Aljauzy', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 2 Tahun 2011', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(6, 8, 'Fachry Gribaldi', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Tombol yang dapat ditekan untuk playback, pause, dan volume', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(7, 9, 'Ardy Putra Fachrozi', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(8, 10, 'Farrel Fabian Putra', 'Semua jawaban di atas benar', 'Diam saja dan bersabar agar masalah tidak membesar dan harga dirinya tidak ternodai', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(9, 11, 'Raffa Radhitia Hendrawan', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Melanjutkan jalan, pura-pura tidak liat'),
(10, 12, 'Fadhil', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(11, 13, 'Naufal Irbad Albayhaqqi', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(12, 14, 'Jinan Salsabila', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(13, 15, 'Nur Syamsi Istiqomah', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual'),
(14, 16, 'Nafisa Azzahra Sarmini', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Melanjutkan jalan, pura-pura tidak liat'),
(15, 17, 'Zahwa Fariza Putri', 'Semua jawaban di atas benar', 'Mengadukannya ke call center atau email MRT dengan menyertakan keterangan kejadian serta lampiran bukti berupa rekaman cctv di dalam MRT', 'UU Nomor 12 Tahun 2022', 'Mengintrupsi', 'Mencegah terjadinya kekerasan seksual karena toilet tidak bersebelahan', 'Semua jawaban benar', 'Strategi ini merupakan langkah yang bagus agar dapat mencegah pelaku kembali melakukan kejahatannya', 'Menegur para pria kalau catcalling merupakan bentuk kekerasan seksual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `nim` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `gender`, `nim`, `email`, `password`) VALUES
(3, 'Nurul Diva Ristania', 'Female', '2370405109', 'nuruldiva_r@gmail.com', '$2y$10$ibwrWse98IN3uragwuN98Of5QqbTNPL1QNNTHnHGH2aFn/sPDz7Ji'),
(4, 'Muhammad Ikhwan', 'Male', '23903430821', 'm_ikhwan@gmail.com', '$2y$10$Tt1tp9m5lkQAZM.kzAimoOae28kraEMX5F02miyRqDwmbmTT8SNXy'),
(5, 'Adrian Maulana Rizieq Habiby', 'Male', '2390343005', 'rzq_habiby@gmail.com', '$2y$10$zxfL1J21FJOilqt7JHOmh.zsNCvAnGdpotiJTXBoPUcUo/iqr9ecC'),
(6, 'Eka Afrilia', 'Female', '2390343037', 'eka_lia@gmail.com', '$2y$10$8n2RDz.1ZB30TAnr5BGvsu2TL4YLj8bPiLPOz/7yehxh8Kh8GVFaG'),
(7, 'Muhammad Riza Aljauzy', 'Male', '2390343091', 'rz_aljauzy@gmail.com', '$2y$10$9LHmqJjWoBy8rVSEJ8RGg..IL7E6DXSkfHw7n1CE0G0..0vQ2rBK6'),
(8, 'Fachry Gribaldi', 'Male', '2390343041', 'ry_gribaldi@gmail.com', '$2y$10$U1/ju8vJGykRkSSeIsiTkeVr64mUjMle.yGt9qhc/vMI/0CItA94m'),
(9, 'Ardy Putra Fachrozi', 'Male', '2390343017', 'ardyp@gmail.com', '$2y$10$cUfqa0bHHoaOcbSRuM8PYOvkpwBbGah2EgmRVfU/EvI90ANJu/abG'),
(10, 'Farrel Fabian Putra', 'Male', '2390434043', 'relfarrel@gmail.com', '$2y$10$1WWOmKprQwErZvDMM7nUB.GiWpiBblbAJBs7d6ZJez.UUgWREM5.6'),
(11, 'Raffa Radhitia Hendrawan', 'Male', '2390343105', 'raff_dhit@gmail.com', '$2y$10$bsRTLrJRmAPeG/Ikwt2LHe/fdswHq/Mf6s.N7SL.8REAAGd.go14W'),
(12, 'Fadhil', 'Male', '19231266', 'dhilfad_@gmail.com', '$2y$10$xhIltXd4/IjMYouXshRqNOZ8rrnQqnrA..yVThx66qSPoK0kT3MMq'),
(13, 'Naufal Irbad Albayhaqqi', 'Male', '2390343098', 'falbad_qi@gmail.com', '$2y$10$eg9iVFkEcIbuDPxJavJmeu9A8iXxDtH2GYTaZDsuYSKJwYZuGQ6BS'),
(14, 'Jinan Salsabila', 'Female', '2370405054', 'jinanbila@gmail.com', '$2y$10$vFgRt.Ka266SOOYUkWnK2.pYLh2Cm.1vmwws1YIEeEK2mixdJxy86'),
(15, 'Nur Syamsi Istiqomah', 'Female', '64232643', 'nsyam_istqmh@gmail.com', '$2y$10$guy/cODpklpFmZHQ8Cw2Hen8B8Siev16sz9f44VEZZWekaJbANHOm'),
(16, 'Nafisa Azzahra Sarmini', 'Female', '2390331037', 'fisazahra@gmail.com', '$2y$10$uPEmsfdGEm0lNjdNUY7WT.LgqjTUb/J9uIErfiev.nRYqQcMerhdi'),
(17, 'Zahwa Fariza Putri', 'Female', '2370404156', 'zhwafrza@gmail.com', '$2y$10$nCkGhwO8f9clWJ50OXUk.OHIlI3TQwZuW6u9b87mIc.Dk9F3lJJRK');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `quiz_responses`
--
ALTER TABLE `quiz_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `quiz_responses`
--
ALTER TABLE `quiz_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `quiz_responses`
--
ALTER TABLE `quiz_responses`
  ADD CONSTRAINT `quiz_responses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

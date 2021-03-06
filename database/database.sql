-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 11 Jan 2020 pada 23.11
-- Versi Server: 10.1.43-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `eannovate`
--

create database `eannovate`;
use `eannovate`;
-- --------------------------------------------------------

--
-- Struktur dari tabel `T_Fakultas`
--

CREATE TABLE `T_Fakultas` (
  `id` int(11) NOT NULL,
  `title` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Not Publish',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `T_Fakultas`
--

INSERT INTO `T_Fakultas` (`id`, `title`, `description`, `publish`, `modify_date`, `create_date`) VALUES
(3, 'Fakultas Hukum', 'Ilmu Hukum, Kenotariatan', 'Not Publish', '2020-01-11 16:10:35', '2018-07-30 11:58:01'),
(2, 'Fakultas Teknik', 'Teknik Sipil, Electro, Mesin, Komputer', 'Publish', '2018-07-30 04:57:28', '2018-07-30 11:42:34'),
(4, 'Fakultas Farmasi', 'Ilmu Farmasi, Herbal', 'Not Publish', '2020-01-11 10:22:57', '2018-07-30 11:58:34'),
(5, 'Ilmu Komputer', 'Jurusan sistem informasi, teknik informatika', 'Publish', '2020-01-11 08:27:36', '2020-01-11 15:27:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `T_Student`
--

CREATE TABLE `T_Student` (
  `id` int(11) NOT NULL,
  `fakultas_id` int(11) NOT NULL,
  `nim` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Laki-laki | Perempuan',
  `birth_place` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Not Publish',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `T_Student`
--

INSERT INTO `T_Student` (`id`, `fakultas_id`, `nim`, `name`, `gender`, `birth_place`, `dob`, `phone`, `publish`, `modify_date`, `create_date`) VALUES
(1, 3, '41815110084', 'Sony Darmawan', 'L', 'Jakarta', '1996-09-17', '08561969052', 'Publish', '2020-01-11 16:06:43', '2020-01-11 22:55:45'),
(2, 5, '41815110082', 'Khairunnisa Lubis', 'P', 'Medan', '1994-04-21', '09398719837', 'Publish', '2020-01-11 16:10:14', '2020-01-11 23:10:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `T_Fakultas`
--
ALTER TABLE `T_Fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `T_Student`
--
ALTER TABLE `T_Student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `T_Fakultas`
--
ALTER TABLE `T_Fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `T_Student`
--
ALTER TABLE `T_Student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

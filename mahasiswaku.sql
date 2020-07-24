-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2020 pada 12.48
-- Versi server: 10.1.33-MariaDB
-- Versi PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswaku`
--

CREATE TABLE `mahasiswaku` (
  `id` int(11) NOT NULL,
  `no_induk` int(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswaku`
--

INSERT INTO `mahasiswaku` (`id`, `no_induk`, `nama`, `alamat`) VALUES
(1, 1806, 'Moh. Aflah Azzaky', 'Sidoarjo'),
(2, 1807, 'Alyssa Novianda', 'Surabaya'),
(5, 1810, 'Silviana Hikmah', 'Malang Kota'),
(6, 1811, 'Zikri Muhammad', 'Magetan'),
(7, 1812, 'Deni Fatoni', 'Blitar'),
(8, 1813, 'Achmad Yusuf Nur Rohman', 'Jombang'),
(9, 2989, 'Rifki Ardi', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswaku`
--
ALTER TABLE `mahasiswaku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswaku`
--
ALTER TABLE `mahasiswaku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Feb 2024 pada 20.36
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playground2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(4) NOT NULL,
  `id_pegawai_user` int(4) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `maker_pegawai` int(4) NOT NULL,
  `tanggal_pegawai` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `id_pegawai_user`, `nama_pegawai`, `no_telp`, `maker_pegawai`, `tanggal_pegawai`) VALUES
(1, 3, 'naruto', '42342342', 3, '2024-02-20 16:57:51'),
(4, 6, 'kakashi', '423423223', 3, '2024-02-21 13:26:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permainan`
--

CREATE TABLE `permainan` (
  `id_permainan` int(4) NOT NULL,
  `nama_permainan` varchar(255) NOT NULL,
  `harga_permainan` text NOT NULL,
  `maker_permainan` int(4) NOT NULL,
  `tanggal_permainan` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `permainan`
--

INSERT INTO `permainan` (`id_permainan`, `nama_permainan`, `harga_permainan`, `maker_permainan`, `tanggal_permainan`) VALUES
(1, 'bouncy castle', '10000', 3, '2024-02-20 17:58:23'),
(2, 'kolam bol', '20000', 3, '2024-02-20 17:58:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `playground`
--

CREATE TABLE `playground` (
  `id_playground` int(4) NOT NULL,
  `id_permainan_playground` int(4) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `durasi` varchar(24) NOT NULL,
  `jam_mulai` time NOT NULL DEFAULT current_timestamp(),
  `jam_selesai` time NOT NULL,
  `total_harga` text NOT NULL,
  `status` int(1) NOT NULL,
  `maker_playground` int(4) NOT NULL,
  `tanggal_playground` datetime NOT NULL DEFAULT current_timestamp(),
  `tanggal_laporan` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `playground`
--

INSERT INTO `playground` (`id_playground`, `id_permainan_playground`, `nama_anak`, `durasi`, `jam_mulai`, `jam_selesai`, `total_harga`, `status`, `maker_playground`, `tanggal_playground`, `tanggal_laporan`) VALUES
(18, 2, 'tes', '1', '17:42:01', '18:46:01', '20000', 2, 3, '2024-02-21 17:42:01', '2024-02-21'),
(19, 1, 'tes2', '1', '17:42:07', '18:47:07', '10000', 2, 3, '2024-02-21 17:42:07', '2024-02-21'),
(20, 2, 'halo', '1', '01:51:38', '02:36:38', '20.000', 1, 3, '2024-02-23 01:51:38', '2024-02-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(6, 'petugas', '095e3a1cb5cbb579195f0a6eacc84483', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD UNIQUE KEY `NO_TELP` (`no_telp`);

--
-- Indeks untuk tabel `permainan`
--
ALTER TABLE `permainan`
  ADD PRIMARY KEY (`id_permainan`),
  ADD UNIQUE KEY `NAMA_PERMAINAN` (`nama_permainan`);

--
-- Indeks untuk tabel `playground`
--
ALTER TABLE `playground`
  ADD PRIMARY KEY (`id_playground`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `USERNAME` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `permainan`
--
ALTER TABLE `permainan`
  MODIFY `id_permainan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `playground`
--
ALTER TABLE `playground`
  MODIFY `id_playground` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

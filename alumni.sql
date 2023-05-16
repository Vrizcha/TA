-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2023 pada 08.30
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alumni`
--

CREATE TABLE `data_alumni` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `tahun_masuk` int(4) NOT NULL,
  `tahun_lulus` int(4) NOT NULL,
  `alamat_sekarang` varchar(40) NOT NULL,
  `jenis_pekerjaan` varchar(15) NOT NULL,
  `nama_kantor` varchar(15) NOT NULL,
  `alamat_kantor` varchar(15) NOT NULL,
  `status_alumni` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_alumni`
--

INSERT INTO `data_alumni` (`id`, `nama`, `jurusan`, `program_studi`, `tahun_masuk`, `tahun_lulus`, `alamat_sekarang`, `jenis_pekerjaan`, `nama_kantor`, `alamat_kantor`, `status_alumni`) VALUES
(1, 'Lusi Nur Agustin', 'Peternakan', 'Produksi Ternak', 2012, 2016, 'Jember, Perumahan taman gading blok z 11', 'Staff', 'PT PNM MEKAAR', 'Sumber Sari', 'Sudah Bekerja'),
(2, 'Use Etica', 'Produksi Pertanian', 'PTH', 1994, 1997, 'Ponorogo', 'Staff', 'Unida Gontor', 'Ponorogo', 'Sudah Bekerja'),
(3, 'Gracia Andhita Praisedayanti B', 'TI', 'MIF', 2019, 2022, 'Jember, Perum. Taman Gading AC / 12', '-', '-', '-', 'Belum Bekerja'),
(4, 'Aisya', 'MNA', 'MNA', 2019, 2022, 'Jember, Jl Samanhudi V/53 jember', '-', '-', '-', 'Belum Bekerja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_grup`
--

CREATE TABLE `tb_grup` (
  `id_grup` int(2) NOT NULL,
  `grup` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_grup`
--

INSERT INTO `tb_grup` (`id_grup`, `grup`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `grup` int(2) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_login`
--

CREATE TABLE `user_login` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `level` int(2) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `nama`, `email`, `level`, `password`) VALUES
(1, 'Marc', 'Marquez', 'MIF', 1, '123'),
(2, 'Fabio', 'Quartararo', '@gmail.com', 2, '123'),
(3, 'Jay Park', 'Jay', 'dgefhd', 1, '1213'),
(4, 'Izcha', 'Intel speed', 'e31200549@polije.ac.', 1, '1213'),
(5, 'Theo', 'Intel speed', 'e31200549@polije.ac.', 2, '2345'),
(6, 'Theo', 'Intel speed', 'gfdh12', 1, '2345'),
(7, 'tutut', 'wiwi', 'e31200549@polije.ac.', 2, '1234'),
(8, 'jini', 'Zach McKenzie', 'vrizchaulia182@gmail', 1, '123'),
(13, 'Zachcy', 'Zach McKenzie', 'vrizchaulia182@gmail', 1, '2345'),
(14, 'Bambang', 'Izcha', 'Vriskalmj@gmail.com', 1, '123'),
(15, 'hullll', 'oooo', 'vrizchaulia182@gmail', 0, '1234'),
(16, 'ffffwww', 'rrrrfr', 'Vriskalmj@gmail.com', 0, '123'),
(17, 'koko', 'Izcha', 'Vriskalmj@gmail.com', 0, '123'),
(18, 'Ika', 'Intel speed', 'gfdh12', 2, '123'),
(19, 'Luluk', 'Intel speed', 'vrizchaulia182@gmail', 1, '123'),
(20, 'Bambang', 'Izcha', 'e31200700@polije.ac.', 0, '123'),
(21, 'Vlavia', 'Izcha', 'Vriskalmj@gmail.com', 0, '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_alumni`
--
ALTER TABLE `data_alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_grup`
--
ALTER TABLE `tb_grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_alumni`
--
ALTER TABLE `data_alumni`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_grup`
--
ALTER TABLE `tb_grup`
  MODIFY `id_grup` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 08.52
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `kode_anggota` char(10) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'foto_default.png',
  `no_telp` char(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_kelamin` int(11) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nama_anggota`, `foto`, `no_telp`, `email`, `alamat`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 'A001', 'Angga', 'foto_default.png', '089999901', 'a1@gmail.com', 'batujajar', 1, 'BANDUNG', '2005-10-22'),
(2, 'A002', 'Wahyudi', 'foto_default.png', '089999902', 'a2@gmail.com', 'Cipanas', 1, 'Bandung', '2005-10-23'),
(3, 'A003', 'Ramdan', 'foto_default.png', '089999903', 'a3@gmail.com', 'Cimahi', 1, 'Bekasi', '2005-10-24'),
(4, 'A004', 'Adam', 'foto_default.png', '089999904', 'a4@gmail.com', 'Cipatat', 1, 'Bali', '2005-10-25'),
(5, 'A005', 'Yudi', 'foto_default.png', '089999905', 'a5@gmail.com', 'Cililin', 1, 'Banten', '2005-10-26'),
(6, 'A006', 'Ardi Suhendi', 'foto_default.png', '(021)73168768', 'a6@gmail.com', 'Cikeas', 1, 'Aceh', '2005-10-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan_perpustakaan`
--

CREATE TABLE `aturan_perpustakaan` (
  `id` int(11) NOT NULL,
  `waktu_peminjaman` int(11) NOT NULL,
  `maksimal_peminjaman` int(11) NOT NULL,
  `denda_keterlambatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aturan_perpustakaan`
--

INSERT INTO `aturan_perpustakaan` (`id`, `waktu_peminjaman`, `maksimal_peminjaman`, `denda_keterlambatan`) VALUES
(0, 7, 3, 500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id_detail_peminjaman` int(11) NOT NULL,
  `kode_peminjaman` varchar(10) NOT NULL,
  `kode_pustaka` varchar(10) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` int(11) NOT NULL,
  `jenis_denda` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`id_detail_peminjaman`, `kode_peminjaman`, `kode_pustaka`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `jenis_denda`, `denda`) VALUES
(1, '00001', 'P0032', '2024-02-18', '0000-00-00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `kode_karyawan` char(9) NOT NULL,
  `nip` char(10) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `jk` char(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `kode_karyawan`, `nip`, `nama_karyawan`, `jk`, `email`, `alamat`, `no_telp`, `foto`) VALUES
(27, 'K001', '2102001', 'Admin', '1', 'admin@gmail.com', 'Jl Solo km 89', '08394348347', 'user5.png'),
(41, 'K028', '2402028', 'adham', '1', 'k1@gmail.com', 'Cibereum', '087777701', 'foto_default.png'),
(42, 'K042', '2402042', 'Antika', '2', 'k2@gmail.com', 'Pasteur', '087777702', 'foto_default.png'),
(43, 'K043', '2402043', 'adudu', '1', 'k3@gmail.com', 'Dago', '087777703', 'foto_default.png'),
(44, 'K044', '2402044', 'Adel', '2', 'k4@gmail.com', 'Osaka', '087777704', 'foto_default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_pustaka`
--

CREATE TABLE `kategori_pustaka` (
  `id_kategori_pustaka` int(11) NOT NULL,
  `kode_kategori_pustaka` varchar(10) NOT NULL,
  `nama_kategori_pustaka` varchar(50) NOT NULL,
  `gambar_kategori_pustaka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_pustaka`
--

INSERT INTO `kategori_pustaka` (`id_kategori_pustaka`, `kode_kategori_pustaka`, `nama_kategori_pustaka`, `gambar_kategori_pustaka`) VALUES
(11, 'K001', 'Bisnis', ''),
(12, 'K012', 'Komputer', ''),
(13, 'K013', 'Pariwisata', ''),
(14, 'K014', 'Pendidikan', ''),
(15, 'K015', 'Novel', ''),
(16, 'K016', 'Agama', ''),
(17, 'K017', 'Kesehatan', ''),
(18, 'K018', 'Sosial', ''),
(19, 'K019', 'Politik', ''),
(20, 'K020', 'Sejarah', ''),
(21, 'K021', 'Psikologi', ''),
(22, 'K022', 'Komik', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `kode_peminjaman` varchar(10) NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `kode_peminjaman`, `kode_anggota`, `tanggal`) VALUES
(1, '00001', 'A001', '2024-02-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` int(11) NOT NULL,
  `kode_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `kode_penerbit`, `nama_penerbit`) VALUES
(3, 'U003', 'Andistar'),
(5, 'U004', 'Elex Media Komputindo'),
(6, 'U006', 'Informatika'),
(7, 'U007', 'Andi'),
(8, 'U008', 'Penebar Plus+'),
(9, 'U009', 'Gramedia Pustaka Utama'),
(10, 'U010', 'Padang Makhsyar Press/Padma'),
(11, 'U011', 'Cable Book'),
(12, 'U012', 'Real Books'),
(13, 'U013', 'Change Publication'),
(15, 'U014', 'Mizan'),
(17, 'U016', 'Kompas'),
(18, 'U018', 'Elex Media Komputindo'),
(19, 'U019', 'Zikrul Hakim'),
(20, 'U020', 'Marjin Kiri'),
(21, 'U021', 'Sahima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `kode_pengguna` char(9) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `kode_pengguna`, `username`, `password`, `level`, `status`) VALUES
(37, 'K001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Karyawan', 1),
(106, 'A001', 'angga', '8479c86c7afcb56631104f5ce5d6de62', 'Anggota', 1),
(107, 'A002', 'wahyudi', 'c6b5cef6327916d6260a80de98184581', 'Anggota', 1),
(108, 'A003', 'ramdan', '889752dcb81b4ad98ad6e36e9db2cd43', 'Anggota', 1),
(109, 'A004', 'adam', '1d7c2923c1684726dc23d2901c4d8157', 'Anggota', 1),
(110, 'A005', 'yudi', 'c232864d5de2064450915c0b9e4cc0b5', 'Anggota', 1),
(111, 'P001', 'abidal', '37a6ab47beccb87b864ed1a37d27b639', 'Petugas', 1),
(112, 'P002', 'abigel', 'c2044c8f0a44c74acd562f9b56dd884a', 'Petugas', 1),
(113, 'P003', 'abdul', '82027888c5bb8fc395411cb6804a066c', 'Petugas', 1),
(114, 'P004', 'abdi', '311eba6dada049960e16974e652ef134', 'Petugas', 1),
(115, 'P005', 'adolf', 'c9f3795ef24a9355bb016518114cd9ff', 'Petugas', 1),
(116, 'K028', 'adham', '15c2d42f6f0694655f9dcfff86eaba67', 'Karyawan', 1),
(117, 'K042', 'antika', '3bf1e3273cf75fae0a6aab88ef8833f2', 'Karyawan', 1),
(118, 'K043', 'adudu', '0a9aa59f9fa5f1b71d8580d181a42d08', 'Karyawan', 1),
(119, 'K044', 'adel', '94c93d4f9686cfeae29e9cbc3230cbf9', 'Karyawan', 1),
(120, 'A006', '', '', 'Anggota', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id_penulis` int(11) NOT NULL,
  `kode_penulis` varchar(10) NOT NULL,
  `nama_penulis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `kode_penulis`, `nama_penulis`) VALUES
(6, 'P001', 'Didip Diandra'),
(7, 'P007', 'Paul Sloane'),
(8, 'P008', 'Febriana Werdiningsih'),
(9, 'P009', 'Tim Ems'),
(10, 'P010', 'Hendi Hendratman'),
(11, 'P011', 'Madcoms'),
(12, 'P012', 'Rina Dewi Lina,mm.cfp,luf'),
(13, 'P013', 'Yudha Eris Setiawan'),
(14, 'P014', 'Didip Diandra'),
(15, 'P015', 'Agus Mustofa'),
(16, 'P016', 'Afin Murtie'),
(17, 'P017', 'M.nur Aini, M.kes'),
(18, 'P018', 'Ralp Epperson'),
(19, 'P019', 'Steven J. Martin'),
(20, 'P020', 'Tere Liye'),
(23, 'P021', 'Rhenald Kasali'),
(24, 'P024', 'Kaiu Shirai, Posuka Demizu'),
(25, 'P025', 'Kak Adah, Abang Kerel'),
(26, 'P026', 'Agus Sudibyo'),
(27, 'P027', 'Gadisturatea');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `kode_petugas` char(10) NOT NULL,
  `nip` char(13) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `jk` char(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `kode_petugas`, `nip`, `nama_petugas`, `jk`, `email`, `alamat`, `no_telp`, `foto`) VALUES
(1, 'P001', '1001', 'Abidal', '1', 'p1@gmail.com', 'cilame', '08888801', 'foto_default.png'),
(2, 'P002', '1002', 'Abigel', '2', 'p2@gmail.com', 'cirata', '08888802', 'foto_default.png'),
(3, 'P003', '1003', 'Abdul', '1', 'p3@gmail.com', 'Ciranjang', '08888803', 'foto_default.png'),
(4, 'P004', '1004', 'Abdi', '1', 'p4@gmail.com', 'Citatah', '08888804', 'foto_default.png'),
(5, 'P005', '1005', 'Adolf', '1', 'p5@gmail.com', 'Garut', '08888805', 'foto_default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_aplikasi`
--

CREATE TABLE `profil_aplikasi` (
  `id` int(11) NOT NULL,
  `nama_aplikasi` varchar(30) NOT NULL,
  `nama_pimpinan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `website` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `profil_aplikasi`
--

INSERT INTO `profil_aplikasi` (`id`, `nama_aplikasi`, `nama_pimpinan`, `alamat`, `no_telp`, `website`, `logo`) VALUES
(0, 'E-Perpus', 'Wahyudi Ramdan', 'Laksanamekar', '(021)7316876', 'www.e-perpus.com', 'mhd.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pustaka`
--

CREATE TABLE `pustaka` (
  `id_pustaka` int(11) NOT NULL,
  `kode_pustaka` varchar(10) NOT NULL,
  `judul_pustaka` varchar(100) NOT NULL,
  `kategori_pustaka` int(11) NOT NULL,
  `penerbit` int(11) NOT NULL,
  `penulis` int(11) NOT NULL,
  `tahun` char(4) NOT NULL,
  `gambar_pustaka` varchar(100) NOT NULL,
  `halaman` int(11) NOT NULL,
  `dimensi` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `rak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pustaka`
--

INSERT INTO `pustaka` (`id_pustaka`, `kode_pustaka`, `judul_pustaka`, `kategori_pustaka`, `penerbit`, `penulis`, `tahun`, `gambar_pustaka`, `halaman`, `dimensi`, `stok`, `rak`) VALUES
(9, 'P0009', 'Pemrograman Android Dalam Sehari', 12, 5, 9, '2015', 'Pemrograman Android Dalam Sehari.PNG', 168, '-', 6, 'R001'),
(10, 'P0010', 'The Magic of Adobe Photoshop Edisi Revisi 2', 12, 6, 10, '2017', 'The Magic of Adobe Photoshop Edisi Revisi 2.PNG', 752, '-', 9, 'ROO1'),
(11, 'P0011', 'Microsoft Visual Basic 6.0 Untuk Pemula', 12, 7, 11, '2008', 'Microsoft Visual Basic 6.0 Untuk Pemula.PNG', 230, '-', 8, 'ROO1'),
(12, 'P0012', 'Bisa Investasi Dengan Gaji', 11, 3, 12, '2016', 'Bisa Investasi Dengan Gaji.PNG', 231, '-', 14, 'ROO1'),
(13, 'P0013', 'Cara Mudah Buka Bisnis Travel', 11, 9, 13, '2016', 'Cara Mudah Buka Bisnis Travel.PNG', 162, '14 x 21 cm', 5, 'ROO1'),
(14, 'P0014', 'Strategi Membangun Bisnis Mandiri', 11, 9, 6, '2016', 'Strategi Membangun Bisnis Mandiri.PNG', 129, '-', 8, 'ROO1'),
(16, 'P0015', 'Dzikir Tauhid', 16, 10, 15, '2006', 'Dzikir Tauhid.PNG', 0, '13 x 20 cm', 7, 'B005'),
(17, 'P0017', 'Hujan', 15, 9, 20, '2016', 'Hujan.PNG', 318, '14 x 21 Cm', 10, 'B006'),
(18, 'P0018', 'Aneka Buah Berkhasiat Obat', 17, 12, 17, '2015', 'Aneka Buah Berkhasiat Obat.PNG', 162, '14 x 20 Cm', 10, 'B006'),
(19, 'P0019', 'Invisible Hand', 20, 13, 18, '2013', 'Invisible Hand.PNG', 492, '-', 10, 'B007'),
(25, 'P0020', 'The Small Big', 11, 9, 19, '2016', 'The Small Big.PNG', 246, '14 x 21 Cm', 9, 'R009'),
(29, 'P0026', 'Self Driving', 11, 15, 23, '2014', 'Self Driving.PNG', 272, '14 x 21 Cm', 10, 'R005'),
(31, 'P0030', 'The Promised Neverland 16', 22, 18, 24, '2021', 'The Promised Neverland 16.PNG', 208, '11 x 17 Cm', 10, 'R009'),
(32, 'P0032', 'Jujutsu Kaisen 1', 22, 3, 24, '2021', 'Jujutsu Kaisen 1.PNG', 0, '11 x 17 Cm', 3, 'R009'),
(33, 'P0033', 'Seri Sweet Ana Salehah 2 Ida & Kecoak', 22, 19, 25, '2019', 'Seri Sweet Ana Salehah  Ida & Kecoak.PNG', 92, '13 x 18 Cm', 4, 'R009'),
(34, 'P0034', 'Demokrasi dan Kedaruratan Memahami Filsafat Politik Giorgio Agamben', 19, 20, 26, '2019', 'Demokrasi dan Kedaruratan Memahami Filsafat Politik Giorgio Agamben.PNG', 0, '14 x 21 Cm', 6, 'R008');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `kode_pelanggan` (`kode_anggota`);

--
-- Indeks untuk tabel `aturan_perpustakaan`
--
ALTER TABLE `aturan_perpustakaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id_detail_peminjaman`),
  ADD KEY `kode_peminjaman` (`kode_peminjaman`),
  ADD KEY `kode_pustaka` (`kode_pustaka`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `kode_karyawan` (`kode_karyawan`);

--
-- Indeks untuk tabel `kategori_pustaka`
--
ALTER TABLE `kategori_pustaka`
  ADD PRIMARY KEY (`id_kategori_pustaka`),
  ADD UNIQUE KEY `kode_kategori_pustaka` (`kode_kategori_pustaka`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD UNIQUE KEY `kode_peminjaman` (`kode_peminjaman`),
  ADD KEY `kode_anggota` (`kode_anggota`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id_penulis`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `kode_petugas` (`kode_petugas`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `profil_aplikasi`
--
ALTER TABLE `profil_aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pustaka`
--
ALTER TABLE `pustaka`
  ADD PRIMARY KEY (`id_pustaka`),
  ADD UNIQUE KEY `kode_pustaka` (`kode_pustaka`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id_detail_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `kategori_pustaka`
--
ALTER TABLE `kategori_pustaka`
  MODIFY `id_kategori_pustaka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id_penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pustaka`
--
ALTER TABLE `pustaka`
  MODIFY `id_pustaka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD CONSTRAINT `detail_peminjaman_ibfk_1` FOREIGN KEY (`kode_peminjaman`) REFERENCES `peminjaman` (`kode_peminjaman`),
  ADD CONSTRAINT `detail_peminjaman_ibfk_2` FOREIGN KEY (`kode_pustaka`) REFERENCES `pustaka` (`kode_pustaka`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`kode_anggota`) REFERENCES `anggota` (`kode_anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

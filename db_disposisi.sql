-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 07:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_disposisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `id_surat` varchar(255) NOT NULL,
  `sifat_surat` varchar(11) NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `id_surat`, `sifat_surat`, `catatan`, `id_user`) VALUES
(2, 'JKT/123/2023', '1', 'tes', '2'),
(3, 'B/2820/440/V/2023', '1', 'Segera tindak lanjuti', '3'),
(34, '4', '2', 'Mohon segera tindak lanjuti', '5'),
(36, '5', '1', 'Cek Kembali', '18'),
(37, '5', '5', 'Mohon dicek ulang', '5'),
(38, '10', '2', 'Siapkan tempat pelaksanaan', '18'),
(39, '11', '3', 'Segera tinjau ulang', '18'),
(40, '10', '2', 'Harap Perthatikan', '18'),
(41, '7', '1', 'Mohon persiapkan untuk undangan pelaksanaan', '4'),
(42, '8', '6', 'Segera hadiri dan tindak lanjuti undangan', '18'),
(43, '8', '2', 'Mohon tindak lanjuti segera', '16'),
(44, '11', '3', 'Mohon segera tindak lanjuti', '17'),
(46, '14', '6', 'Segera tindak lanjuti', '18');

-- --------------------------------------------------------

--
-- Stand-in structure for view `disposisi_masuk`
-- (See below for the actual view)
--
CREATE TABLE `disposisi_masuk` (
`id_disposisi` int(11)
,`id_surat` varchar(255)
,`sifat_surat` varchar(11)
,`catatan` varchar(50)
,`id_user` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `tanggal_pelaksanaan` date NOT NULL,
  `jam` time NOT NULL,
  `tempat_pelaksanaan` varchar(255) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `disposisi` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `tanggal_pelaksanaan`, `jam`, `tempat_pelaksanaan`, `kegiatan`, `penyelenggara`, `disposisi`, `no_surat`) VALUES
(1, '2023-06-05', '09:00:00', 'DP3A', 'Sosialisasi', 'PPDB', '4', '5'),
(2, '2023-06-16', '10:00:00', 'Dinas Sosial', 'Undangan Memperingati Hari Lahir Pancasila', 'Pemprov', '5', '4'),
(3, '2023-06-21', '08:00:00', 'UNDIP', 'Sosialisasi', 'Undip', '18', '5'),
(5, '2023-06-23', '08:00:00', 'Gedung Graha Mustika', 'Sosialisasi', 'Badan Perancangan dan Pembangunan', '18', '7'),
(6, '2023-06-27', '08:00:00', 'Gedung Pancasila Sakti', 'Undangan verifikasi dan peninjauan lapangan', 'Dinas Pengendalian Penduduk dan keluarga Berencana', '18', '11'),
(8, '2023-06-26', '13:00:00', 'Ruang A102', 'Seminar PKL', 'Undip', '18', '14');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` text DEFAULT NULL,
  `golongan` varchar(30) NOT NULL,
  `pangkat` varchar(30) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `nip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `golongan`, `pangkat`, `jabatan`, `nip`) VALUES
(1, 'Maya Nurul Nikmah', 'III/a', 'Penata Muda', 'Developer', '240601020120024'),
(2, 'Drs. AKHMAD MASRUL HELMI', 'III/d', 'Penata Tingkat I', 'Sub Koordinator Peningkatan Kualitas Hidup Perempu', '196706031994031009'),
(3, 'AMALIA SUKMA YULIASTANTI, S.STP', 'III/d', 'Penata Tingkat I', 'Sub Koordinator Pengembangan Usaha Ekonomi Masyara', '198107062000122001'),
(4, 'ANI WARDANI, S.I.Kom.', 'III/a', 'Penata Muda', 'PENYUSUN BAHAN INFORMASI DAN PUBLIKASI', '198610112022032001'),
(5, 'ANNISA DWIJAYANTI SARTIKA, S.I.Kom', 'III/b', 'Penata Muda Tingkat I', 'PENYUSUN BAHAN INFORMASI DAN PUBLIKASI', '199003062015032003'),
(6, 'ARTANTYO BUDI NUGROHO, S.Sos', 'III/a', 'Penata Muda', 'Penggerak Swadaya Masyarakat Pelaksana Lanjutan', '198801082010011003'),
(7, 'ARUM SUCI SARASWATI, S.E.', 'III/c', 'Penata ', 'PENYUSUN RENCANA KERJA DAN ANGGARAN SISTEM DAN MET', '198506172010012029'),
(8, 'ASMARA DIAN KUSUMA, S.E', 'III/b ', 'Penata Muda Tingkat I', 'Sub Koordinator Perencanaan dan Evaluasi', '198304032006041010'),
(9, 'ATA NURIDHA, SH', 'III/d', 'Penata Tingkat I', 'Sub Koordinator Perlindungan Perempuan dan Khusus ', '197312301999032007'),
(10, 'Drs. BAMBANG TEGUH MURTIYONO, MM', 'IV/a', 'Pembina', 'Sub Koordinator Hak Sipil, Informasi dan Partisipa', '196710141994031009');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(8, 'Bidang'),
(3, 'Kepala Dinas'),
(2, 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(3542, 4, 'disposisi', 'list'),
(3543, 4, 'disposisi', 'view'),
(3544, 4, 'disposisi', 'add'),
(3545, 4, 'disposisi', 'edit'),
(3546, 4, 'disposisi', 'editfield'),
(3547, 4, 'disposisi', 'delete'),
(3548, 4, 'disposisi', 'import_data'),
(3549, 4, 'sifat_surat', 'list'),
(3550, 4, 'sifat_surat', 'view'),
(3551, 4, 'sifat_surat', 'add'),
(3552, 4, 'sifat_surat', 'edit'),
(3553, 4, 'sifat_surat', 'editfield'),
(3554, 4, 'sifat_surat', 'delete'),
(3555, 4, 'sifat_surat', 'import_data'),
(3556, 4, 'surat_masuk', 'list'),
(3557, 4, 'surat_masuk', 'view'),
(3558, 4, 'surat_masuk', 'add'),
(3559, 4, 'surat_masuk', 'edit'),
(3560, 4, 'surat_masuk', 'editfield'),
(3561, 4, 'surat_masuk', 'delete'),
(3562, 4, 'surat_masuk', 'import_data'),
(3563, 4, 'user', 'accountedit'),
(3564, 4, 'user', 'accountview'),
(3565, 4, 'disposisi_masuk', 'list'),
(3566, 4, 'disposisi_masuk', 'view'),
(3567, 4, 'pegawai', 'list'),
(3568, 4, 'pegawai', 'view'),
(3569, 4, 'laporan', 'list'),
(3570, 4, 'laporan', 'view'),
(3571, 4, 'laporan', 'add'),
(3572, 4, 'laporan', 'edit'),
(3573, 4, 'laporan', 'editfield'),
(3574, 4, 'laporan', 'delete'),
(3575, 5, 'disposisi', 'list'),
(3576, 5, 'disposisi', 'view'),
(3577, 5, 'disposisi', 'add'),
(3578, 5, 'disposisi', 'edit'),
(3579, 5, 'disposisi', 'editfield'),
(3580, 5, 'disposisi', 'delete'),
(3581, 5, 'disposisi', 'import_data'),
(3582, 5, 'surat_masuk', 'list'),
(3583, 5, 'surat_masuk', 'view'),
(3584, 5, 'surat_masuk', 'add'),
(3585, 5, 'surat_masuk', 'edit'),
(3586, 5, 'surat_masuk', 'editfield'),
(3587, 5, 'surat_masuk', 'delete'),
(3588, 5, 'surat_masuk', 'import_data'),
(3589, 5, 'user', 'accountedit'),
(3590, 5, 'user', 'accountview'),
(3591, 5, 'disposisi_masuk', 'list'),
(3592, 5, 'disposisi_masuk', 'view'),
(3593, 5, 'pegawai', 'list'),
(3594, 5, 'pegawai', 'view'),
(3595, 6, 'disposisi', 'list'),
(3596, 6, 'disposisi', 'view'),
(3597, 6, 'disposisi', 'add'),
(3598, 6, 'disposisi', 'edit'),
(3599, 6, 'disposisi', 'editfield'),
(3600, 6, 'disposisi', 'delete'),
(3601, 6, 'disposisi', 'import_data'),
(3602, 6, 'surat_masuk', 'list'),
(3603, 6, 'surat_masuk', 'view'),
(3604, 6, 'surat_masuk', 'add'),
(3605, 6, 'surat_masuk', 'edit'),
(3606, 6, 'surat_masuk', 'editfield'),
(3607, 6, 'surat_masuk', 'delete'),
(3608, 6, 'surat_masuk', 'import_data'),
(3609, 6, 'user', 'accountedit'),
(3610, 6, 'user', 'accountview'),
(3611, 6, 'disposisi_masuk', 'list'),
(3612, 6, 'disposisi_masuk', 'view'),
(3613, 6, 'pegawai', 'list'),
(3614, 6, 'pegawai', 'view'),
(3615, 7, 'disposisi', 'list'),
(3616, 7, 'disposisi', 'view'),
(3617, 7, 'disposisi', 'add'),
(3618, 7, 'disposisi', 'edit'),
(3619, 7, 'disposisi', 'editfield'),
(3620, 7, 'disposisi', 'delete'),
(3621, 7, 'disposisi', 'import_data'),
(3622, 7, 'surat_masuk', 'list'),
(3623, 7, 'surat_masuk', 'view'),
(3624, 7, 'surat_masuk', 'add'),
(3625, 7, 'surat_masuk', 'edit'),
(3626, 7, 'surat_masuk', 'editfield'),
(3627, 7, 'surat_masuk', 'delete'),
(3628, 7, 'surat_masuk', 'import_data'),
(3629, 7, 'user', 'accountedit'),
(3630, 7, 'user', 'accountview'),
(3631, 7, 'disposisi_masuk', 'list'),
(3632, 7, 'disposisi_masuk', 'view'),
(3633, 7, 'pegawai', 'list'),
(3634, 7, 'pegawai', 'view'),
(3717, 9, 'surat_masuk', 'list'),
(3718, 9, 'surat_masuk', 'view'),
(3719, 9, 'user', 'accountedit'),
(3720, 9, 'user', 'accountview'),
(3721, 9, 'disposisi_masuk', 'list'),
(3722, 9, 'disposisi_masuk', 'view'),
(3723, 9, 'pegawai', 'list'),
(3724, 9, 'pegawai', 'view'),
(3725, 9, 'laporan', 'list'),
(3726, 9, 'laporan', 'view'),
(3727, 9, 'laporan', 'add'),
(3728, 9, 'laporan', 'edit'),
(3729, 9, 'laporan', 'editfield'),
(3730, 9, 'laporan', 'delete'),
(3745, 10, 'disposisi', 'list'),
(3746, 10, 'disposisi', 'view'),
(3747, 10, 'disposisi', 'add'),
(3748, 10, 'disposisi', 'edit'),
(3749, 10, 'disposisi', 'editfield'),
(3750, 10, 'disposisi', 'delete'),
(3751, 10, 'disposisi', 'import_data'),
(3752, 10, 'sifat_surat', 'list'),
(3753, 10, 'sifat_surat', 'view'),
(3754, 10, 'sifat_surat', 'add'),
(3755, 10, 'sifat_surat', 'edit'),
(3756, 10, 'sifat_surat', 'editfield'),
(3757, 10, 'sifat_surat', 'delete'),
(3758, 10, 'sifat_surat', 'import_data'),
(3759, 10, 'surat_masuk', 'list'),
(3760, 10, 'surat_masuk', 'view'),
(3761, 10, 'surat_masuk', 'add'),
(3762, 10, 'surat_masuk', 'edit'),
(3763, 10, 'surat_masuk', 'editfield'),
(3764, 10, 'surat_masuk', 'delete'),
(3765, 10, 'surat_masuk', 'import_data'),
(3766, 10, 'user', 'accountedit'),
(3767, 10, 'user', 'accountview'),
(3768, 10, 'disposisi_masuk', 'list'),
(3769, 10, 'disposisi_masuk', 'view'),
(3770, 10, 'pegawai', 'list'),
(3771, 10, 'pegawai', 'view'),
(3772, 10, 'laporan', 'list'),
(3773, 10, 'laporan', 'view'),
(3774, 10, 'laporan', 'add'),
(3775, 10, 'laporan', 'edit'),
(3776, 10, 'laporan', 'editfield'),
(3777, 10, 'laporan', 'delete'),
(3778, 11, 'disposisi', 'list'),
(3779, 11, 'disposisi', 'view'),
(3780, 11, 'disposisi', 'add'),
(3781, 11, 'disposisi', 'edit'),
(3782, 11, 'disposisi', 'editfield'),
(3783, 11, 'disposisi', 'delete'),
(3784, 11, 'disposisi', 'import_data'),
(3785, 11, 'surat_masuk', 'list'),
(3786, 11, 'surat_masuk', 'view'),
(3787, 11, 'surat_masuk', 'add'),
(3788, 11, 'surat_masuk', 'edit'),
(3789, 11, 'surat_masuk', 'editfield'),
(3790, 11, 'surat_masuk', 'delete'),
(3791, 11, 'surat_masuk', 'import_data'),
(3792, 11, 'user', 'accountedit'),
(3793, 11, 'user', 'accountview'),
(3794, 11, 'disposisi_masuk', 'list'),
(3795, 11, 'disposisi_masuk', 'view'),
(3796, 11, 'pegawai', 'list'),
(3797, 11, 'pegawai', 'view'),
(3798, 12, 'disposisi', 'list'),
(3799, 12, 'disposisi', 'view'),
(3800, 12, 'disposisi', 'add'),
(3801, 12, 'disposisi', 'edit'),
(3802, 12, 'disposisi', 'editfield'),
(3803, 12, 'disposisi', 'delete'),
(3804, 12, 'disposisi', 'import_data'),
(3805, 12, 'surat_masuk', 'list'),
(3806, 12, 'surat_masuk', 'view'),
(3807, 12, 'surat_masuk', 'add'),
(3808, 12, 'surat_masuk', 'edit'),
(3809, 12, 'surat_masuk', 'editfield'),
(3810, 12, 'surat_masuk', 'delete'),
(3811, 12, 'surat_masuk', 'import_data'),
(3812, 12, 'user', 'accountedit'),
(3813, 12, 'user', 'accountview'),
(3814, 12, 'disposisi_masuk', 'list'),
(3815, 12, 'disposisi_masuk', 'view'),
(3816, 12, 'pegawai', 'list'),
(3817, 12, 'pegawai', 'view'),
(3818, 13, 'disposisi', 'list'),
(3819, 13, 'disposisi', 'view'),
(3820, 13, 'disposisi', 'add'),
(3821, 13, 'disposisi', 'edit'),
(3822, 13, 'disposisi', 'editfield'),
(3823, 13, 'disposisi', 'delete'),
(3824, 13, 'disposisi', 'import_data'),
(3825, 13, 'surat_masuk', 'list'),
(3826, 13, 'surat_masuk', 'view'),
(3827, 13, 'surat_masuk', 'add'),
(3828, 13, 'surat_masuk', 'edit'),
(3829, 13, 'surat_masuk', 'editfield'),
(3830, 13, 'surat_masuk', 'delete'),
(3831, 13, 'surat_masuk', 'import_data'),
(3832, 13, 'user', 'accountedit'),
(3833, 13, 'user', 'accountview'),
(3834, 13, 'disposisi_masuk', 'list'),
(3835, 13, 'disposisi_masuk', 'view'),
(3836, 13, 'pegawai', 'list'),
(3837, 13, 'pegawai', 'view'),
(3838, 14, 'disposisi', 'list'),
(3839, 14, 'disposisi', 'view'),
(3840, 14, 'disposisi', 'add'),
(3841, 14, 'disposisi', 'edit'),
(3842, 14, 'disposisi', 'editfield'),
(3843, 14, 'disposisi', 'delete'),
(3844, 14, 'disposisi', 'import_data'),
(3845, 14, 'surat_masuk', 'list'),
(3846, 14, 'surat_masuk', 'view'),
(3847, 14, 'surat_masuk', 'add'),
(3848, 14, 'surat_masuk', 'edit'),
(3849, 14, 'surat_masuk', 'editfield'),
(3850, 14, 'surat_masuk', 'delete'),
(3851, 14, 'surat_masuk', 'import_data'),
(3852, 14, 'user', 'accountedit'),
(3853, 14, 'user', 'accountview'),
(3854, 14, 'disposisi_masuk', 'list'),
(3855, 14, 'disposisi_masuk', 'view'),
(3856, 14, 'pegawai', 'list'),
(3857, 14, 'pegawai', 'view'),
(4599, 1, 'disposisi', 'list'),
(4600, 1, 'disposisi', 'view'),
(4601, 1, 'disposisi', 'add'),
(4602, 1, 'disposisi', 'edit'),
(4603, 1, 'disposisi', 'editfield'),
(4604, 1, 'disposisi', 'delete'),
(4605, 1, 'disposisi', 'import_data'),
(4606, 1, 'sifat_surat', 'list'),
(4607, 1, 'sifat_surat', 'view'),
(4608, 1, 'sifat_surat', 'add'),
(4609, 1, 'sifat_surat', 'edit'),
(4610, 1, 'sifat_surat', 'editfield'),
(4611, 1, 'sifat_surat', 'delete'),
(4612, 1, 'sifat_surat', 'import_data'),
(4613, 1, 'surat_masuk', 'list'),
(4614, 1, 'surat_masuk', 'view'),
(4615, 1, 'surat_masuk', 'add'),
(4616, 1, 'surat_masuk', 'edit'),
(4617, 1, 'surat_masuk', 'editfield'),
(4618, 1, 'surat_masuk', 'delete'),
(4619, 1, 'surat_masuk', 'import_data'),
(4620, 1, 'user', 'list'),
(4621, 1, 'user', 'view'),
(4622, 1, 'user', 'add'),
(4623, 1, 'user', 'edit'),
(4624, 1, 'user', 'editfield'),
(4625, 1, 'user', 'delete'),
(4626, 1, 'user', 'import_data'),
(4627, 1, 'user', 'accountedit'),
(4628, 1, 'user', 'accountview'),
(4629, 1, 'role_permissions', 'list'),
(4630, 1, 'role_permissions', 'view'),
(4631, 1, 'role_permissions', 'add'),
(4632, 1, 'role_permissions', 'edit'),
(4633, 1, 'role_permissions', 'editfield'),
(4634, 1, 'role_permissions', 'delete'),
(4635, 1, 'roles', 'list'),
(4636, 1, 'roles', 'view'),
(4637, 1, 'roles', 'add'),
(4638, 1, 'roles', 'edit'),
(4639, 1, 'roles', 'editfield'),
(4640, 1, 'roles', 'delete'),
(4641, 1, 'disposisi_masuk', 'list'),
(4642, 1, 'disposisi_masuk', 'view'),
(4643, 1, 'pegawai', 'list'),
(4644, 1, 'pegawai', 'view'),
(4645, 1, 'pegawai', 'add'),
(4646, 1, 'pegawai', 'edit'),
(4647, 1, 'pegawai', 'editfield'),
(4648, 1, 'pegawai', 'delete'),
(4649, 1, 'laporan', 'list'),
(4650, 1, 'laporan', 'view'),
(4651, 1, 'laporan', 'add'),
(4652, 1, 'laporan', 'edit'),
(4653, 1, 'laporan', 'editfield'),
(4654, 1, 'laporan', 'delete'),
(4655, 1, 'laporan', 'list'),
(4656, 1, 'laporan', 'view'),
(4657, 1, 'laporan', 'add'),
(4658, 1, 'laporan', 'edit'),
(4659, 1, 'laporan', 'editfield'),
(4660, 1, 'laporan', 'delete'),
(4661, 2, 'surat_masuk', 'list'),
(4662, 2, 'surat_masuk', 'view'),
(4663, 2, 'user', 'accountedit'),
(4664, 2, 'user', 'accountview'),
(4665, 2, 'disposisi_masuk', 'list'),
(4666, 2, 'disposisi_masuk', 'view'),
(4667, 2, 'pegawai', 'list'),
(4668, 2, 'pegawai', 'view'),
(4669, 3, 'surat_masuk', 'list'),
(4670, 3, 'surat_masuk', 'view'),
(4671, 3, 'user', 'accountedit'),
(4672, 3, 'user', 'accountview'),
(4673, 3, 'disposisi_masuk', 'list'),
(4674, 3, 'disposisi_masuk', 'view'),
(4675, 3, 'pegawai', 'list'),
(4676, 3, 'pegawai', 'view'),
(4677, 8, 'disposisi', 'list'),
(4678, 8, 'disposisi', 'view'),
(4679, 8, 'disposisi', 'add'),
(4680, 8, 'disposisi', 'edit'),
(4681, 8, 'disposisi', 'editfield'),
(4682, 8, 'disposisi', 'delete'),
(4683, 8, 'disposisi', 'import_data'),
(4684, 8, 'surat_masuk', 'list'),
(4685, 8, 'surat_masuk', 'view'),
(4686, 8, 'user', 'accountedit'),
(4687, 8, 'user', 'accountview'),
(4688, 8, 'disposisi_masuk', 'list'),
(4689, 8, 'disposisi_masuk', 'view'),
(4690, 8, 'pegawai', 'list'),
(4691, 8, 'pegawai', 'view');

-- --------------------------------------------------------

--
-- Table structure for table `sifat_surat`
--

CREATE TABLE `sifat_surat` (
  `id_sifat` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sifat_surat`
--

INSERT INTO `sifat_surat` (`id_sifat`, `sifat_surat`) VALUES
(1, 'Biasa'),
(2, 'Segera'),
(3, 'Penting'),
(4, 'Rahasia'),
(5, 'Khusus'),
(6, 'Sangat Segera');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat` int(11) NOT NULL,
  `nomor_surat` varchar(50) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `diterima_oleh` varchar(35) NOT NULL,
  `asal_surat` varchar(255) NOT NULL,
  `nomor_agenda` varchar(255) NOT NULL,
  `klasifikasi_surat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat`, `nomor_surat`, `tanggal_surat`, `perihal_surat`, `tanggal_terima`, `file_surat`, `diterima_oleh`, `asal_surat`, `nomor_agenda`, `klasifikasi_surat`) VALUES
(4, 'B/2820/440/V/2023', '2023-05-23', 'Penilaian Kinerja Kabupaten Kota dalam Pelaksanaan Aksi Konvergensi Penurunan Stunting', '2023-05-23', 'http://localhost/apkdisposisisurat/uploads/files/pa6qog40mstv3cf.pdf', '1', 'BADAN PERENCANAAN PEMBANGUNAN', '10', 'Undangan'),
(5, 'DB/2820/440/V/2023', '2023-06-05', 'Pengumuman penting', '2023-06-04', 'http://localhost/apkdisposisisurat/uploads/files/ptbvqocljh3rd4k.pdf', '1', 'UNDIP', '12', 'PENGUMUMAN'),
(7, 'B/1375/463/V/2023', '2023-06-21', 'kegiatan sosialisasi', '2023-06-06', 'http://localhost/apkdisposisisurat/uploads/files/yxeu7orm2q5dbf9.pdf', '1', 'BADAN PERENCANAAN PEMBANGUNAN', '1', 'Undangan'),
(8, 'P / 3073 / 005 / VI / 2023', '2023-06-07', 'Rapat Koordinasi Penyelenggaraan Daycare “Rumah Pelita”', '2023-06-07', 'http://localhost/apkdisposisisurat/uploads/files/q9zpjwyh7be2u51.pdf', '1', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', '01', 'Undangan'),
(9, 'B / 3017 / 005 / VI / 2023', '2023-06-07', 'Rapat Koordinasi Pembahasan Usulan Lokasi TMMD Kota Semarang TA 2024', '2023-06-07', 'http://localhost/apkdisposisisurat/uploads/files/d0jmaq2g59soiw6.pdf', '1', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', '02', 'Undangan'),
(10, 'B/3593/060/VI/2023', '2023-06-19', 'Pengisian Aksi Konvergensi Stunting', '2023-06-19', 'http://localhost/apkdisposisisurat/uploads/files/kbr0_1ypcanzj5f.pdf', '1', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', '03', 'perencanaan'),
(11, 'S/3556/861.1/VI/2023', '2023-06-18', 'Undangan Verifikasi  dan  Peninjauan  Lapangan  Calon  Penerima  Tanda Kehormatan Satyalancana Wira Karya Gubernur Jawa Tengah Tahun 2023', '2023-06-18', 'http://localhost/apkdisposisisurat/uploads/files/4f8lx97eucd5_1r.pdf', '1', 'DINAS PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', '04', 'Bintang / Satyalencana'),
(12, 'B/3233/050/VI/2023', '2023-06-12', 'Desk Pengisian Data Inovasi Daerah untuk Penilaian Indek Inovasi Daerah', '2023-06-12', 'http://localhost/apkdisposisisurat/uploads/files/gunvafwtyokph_6.pdf', '1', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', '05', 'Undangan'),
(14, 'N/2010/440/2023', '2023-06-19', 'Undangan Seminar', '2023-06-26', 'http://localhost/apkdisposisisurat/uploads/files/czyhxiln3bt2_7g.pdf', '1', 'Universitas Diponegoro', '17', 'Undangan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_pengguna` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2023-09-10 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_pengguna`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`, `alamat`, `telepon`) VALUES
(1, 'admin', '$2y$10$YHLSryBr9LfcU/4jKDez0uhY0flNTZJg5fzzdbpyNAlpSZ6/6aOXW', 'admin', 'admin@admin.com', 'http://localhost/apkdisposisisurat/uploads/files/ulfc5dvomqnysgb.png', NULL, NULL, '2023-09-10 00:00:00', NULL, 1, 'JL garuda, Semarang', '08213654312'),
(4, 'ANNISA DWIJAYANTI SARTIKA', '$2y$10$VY1qA7rznyh.ne52jDrQ3OPsRuk2B2JZcvlnpe98bhfRBoYV9TTSi', 'ANNISA DWIJAYANTI SARTIKA, S.I.Kom', 'annisa@gmail.com', 'http://localhost/apkdisposisisurat/uploads/files/br36wgc4y_5i98o.png', NULL, NULL, '2023-06-12 20:07:45', 'aba6d452af5076e2f164b29ab2ce1628', 2, 'Tembalang, Semarang', '082137761560'),
(5, 'ULFI IMRAN BASUKI', '$2y$10$K0UVGbD0s4MbbGH25OciseV6hhzx4QUHD.w6Y9S4dBR1VeRLxj1I2', 'ULFI IMRAN BASUKI', 'ulfibasuki@gmail.com', 'http://localhost/apkdisposisisurat/uploads/files/32n0mbjh857ay4c.png', NULL, NULL, '2023-09-10 00:00:00', NULL, 3, 'JL. Imam Bonjol No 16 Guwo, Wonosegoro, Boyolali', '081213654134'),
(15, 'bidangPPUG', '$2y$10$XSfIvOzgoJ20I/WNQn.C/OAdHHc5R7v5Nmnd/My/RmDI2YTdWjE12', 'Bidang Pemberdayaan Perempuan dan Pengarustamaan Gender', '', '', NULL, NULL, '2023-09-10 00:00:00', NULL, 8, '', ''),
(16, 'bidangpermasdatin', '$2y$10$.wiR0LyZ..KELTrH4QhJD.pwxj9oMJrtuX04IoaGEmetQ8eLk6l5O', 'Bidang Pemberdayaan Masyarakat dan Data Informasi', '', '', NULL, NULL, '2023-09-10 00:00:00', NULL, 8, '', ''),
(17, 'bidangPHA', '$2y$10$06.fp19vcKMZYHLWmPp40OYQT3A7wdEsFKbuqPFUQVKc6kbFwx/f2', 'Bidang Pemenuhan Hak Anak', '', '', NULL, NULL, '2023-09-10 00:00:00', NULL, 8, '', ''),
(18, 'bidangPPA', '$2y$10$ud5sl4q4T3QoAVq6bm4W8OeYOhK73UFNB6DLOKRf6SYYCBD2Os5Xy', 'Bidang Perlindungan Perempuan dan Anak', '', 'http://localhost/apkdisposisisurat/uploads/files/5ufw4gxptd360cv.jpg', NULL, NULL, '2023-09-10 00:00:00', NULL, 8, '', '');

-- --------------------------------------------------------

--
-- Structure for view `disposisi_masuk`
--
DROP TABLE IF EXISTS `disposisi_masuk`;

CREATE ALGORITHM=UNDEFINED ` SQL SECURITY DEFINER VIEW `disposisi_masuk`  AS  select `disposisi`.`id_disposisi` AS `id_disposisi`,`disposisi`.`id_surat` AS `id_surat`,`disposisi`.`sifat_surat` AS `sifat_surat`,`disposisi`.`catatan` AS `catatan`,`disposisi`.`id_user` AS `id_user` from `disposisi` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `sifat_surat`
--
ALTER TABLE `sifat_surat`
  ADD PRIMARY KEY (`id_sifat`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4692;

--
-- AUTO_INCREMENT for table `sifat_surat`
--
ALTER TABLE `sifat_surat`
  MODIFY `id_sifat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

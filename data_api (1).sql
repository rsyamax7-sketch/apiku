-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2026 pada 04.33
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `address`) VALUES
(1, 'Leanne Graham', 'Bret', 'Sincere@april.biz', '{\"street\":\"Kulas Light\",\"suite\":\"Apt. 556\",\"city\":\"Gwenborough\",\"zipcode\":\"92998-3874\"}'),
(2, 'Ervin Howell', 'Antonette', 'Shanna@melissa.tv', '{\"street\":\"Victor Plains\",\"suite\":\"Suite 879\",\"city\":\"Wisokyburgh\",\"zipcode\":\"90566-7771\"}'),
(3, 'Clementine Bauch', 'Samantha', 'Nathan@yesenia.net', '{\"street\":\"Douglas Extension\",\"suite\":\"Suite 847\",\"city\":\"McKenziehaven\",\"zipcode\":\"59590-4157\"}'),
(4, 'Patricia Lebsack', 'Karianne', 'Julianne.OConner@kory.org', '{\"street\":\"Hoeger Mall\",\"suite\":\"Apt. 692\",\"city\":\"South Elvis\",\"zipcode\":\"53919-4257\"}'),
(5, 'Chelsey Dietrich', 'Kamren', 'Lucio_Hettinger@annie.ca', '{\"street\":\"Skiles Walks\",\"suite\":\"Suite 351\",\"city\":\"Roscoeview\",\"zipcode\":\"33263\"}'),
(6, 'Mrs. Dennis Schulist', 'Leopoldo_Corkery', 'Karley_Dach@jasper.info', '{\"street\":\"Norberto Crossing\",\"suite\":\"Apt. 950\",\"city\":\"South Christy\",\"zipcode\":\"23505-1337\"}'),
(7, 'Kurtis Weissnat', 'Elwyn.Skiles', 'Telly.Hoeger@billy.biz', '{\"street\":\"Rex Trail\",\"suite\":\"Suite 280\",\"city\":\"Howemouth\",\"zipcode\":\"58804-1099\"}'),
(8, 'Nicholas Runolfsdottir V', 'Maxime_Nienow', 'Sherwood@rosamond.me', '{\"street\":\"Ellsworth Summit\",\"suite\":\"Suite 729\",\"city\":\"Aliyaview\",\"zipcode\":\"45169\"}'),
(9, 'Glenna Reichert', 'Delphine', 'Chaim_McDermott@dana.io', '{\"street\":\"Dayna Park\",\"suite\":\"Suite 449\",\"city\":\"Bartholomebury\",\"zipcode\":\"76495-3109\"}'),
(10, 'Clementina DuBuque', 'Moriah.Stanton', 'Rey.Padberg@karina.biz', '{\"street\":\"Kattie Turnpike\",\"suite\":\"Suite 198\",\"city\":\"Lebsackbury\",\"zipcode\":\"31428-2261\"}');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

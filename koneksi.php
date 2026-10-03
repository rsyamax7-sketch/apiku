<?php

$koneksi = mysqli_connect(
    "localhost",
    "root",
    "",
    "data_api"
);

if (!$koneksi) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}
?>
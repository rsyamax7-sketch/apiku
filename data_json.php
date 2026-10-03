<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

include "koneksi.php";

$query = mysqli_query($koneksi, "SELECT * FROM users ORDER BY id ASC");

$data = [];

while ($row = mysqli_fetch_assoc($query)) {

    $row["id"] = (int) $row["id"];

    // Ubah address dari JSON string menjadi object
    $row["address"] = json_decode($row["address"]);

    $data[] = $row;
}

echo json_encode($data, JSON_PRETTY_PRINT);
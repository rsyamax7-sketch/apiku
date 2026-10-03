<?php

header("Content-Type: application/json");
include "koneksi.php";

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    echo json_encode([
        "status" => false,
        "message" => "Gunakan method POST"
    ]);
    exit;
}

$id = $_POST["id"] ?? "";

$stmt = mysqli_prepare(
    $koneksi,
    "DELETE FROM users WHERE id = ?"
);

mysqli_stmt_bind_param($stmt, "i", $id);

if (mysqli_stmt_execute($stmt)) {

    echo json_encode([
        "status" => true,
        "message" => "Data berhasil dihapus"
    ]);

} else {

    echo json_encode([
        "status" => false,
        "message" => "Gagal menghapus data"
    ]);
}
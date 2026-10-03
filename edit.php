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
$name = $_POST["name"] ?? "";
$username = $_POST["username"] ?? "";
$email = $_POST["email"] ?? "";

$address = [
    "street" => $_POST["street"] ?? "",
    "suite" => $_POST["suite"] ?? "",
    "city" => $_POST["city"] ?? "",
    "zipcode" => $_POST["zipcode"] ?? ""
];

$address_json = json_encode($address);

$stmt = mysqli_prepare(
    $koneksi,
    "UPDATE users
     SET name = ?, username = ?, email = ?, address = ?
     WHERE id = ?"
);

mysqli_stmt_bind_param(
    $stmt,
    "ssssi",
    $name,
    $username,
    $email,
    $address_json,
    $id
);

if (mysqli_stmt_execute($stmt)) {

    echo json_encode([
        "status" => true,
        "message" => "Data berhasil diubah"
    ]);

} else {

    echo json_encode([
        "status" => false,
        "message" => "Gagal mengubah data"
    ]);
}
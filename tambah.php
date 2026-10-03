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
    "INSERT INTO users (name, username, email, address)
     VALUES (?, ?, ?, ?)"
);

mysqli_stmt_bind_param(
    $stmt,
    "ssss",
    $name,
    $username,
    $email,
    $address_json
);

if (mysqli_stmt_execute($stmt)) {

    echo json_encode([
        "status" => true,
        "message" => "Data berhasil ditambahkan"
    ]);

} else {

    echo json_encode([
        "status" => false,
        "message" => "Gagal menambahkan data"
    ]);
}
<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "db_gitar";

// Membuat koneksi
$conn = new mysqli($server, $username, $password, $database);

// Mengecek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

echo "Koneksi berhasil";

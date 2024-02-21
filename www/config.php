<?php
$servername = "database";
$username = "user";
$password = "test";
$dbname = "example_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname, null, 'utf8');

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'recipe_website';

$conn = mysqli_connect($host, $user, $pass, $db,3307);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>

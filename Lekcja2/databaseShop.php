<?php
$host = "localhost";
$dbname = "sklep_db";
$user = "root";
$password = "";

$mysqli = new mysqli($host, $user, $password, $dbname);

if ($mysqli->connect_errno) {
    die("Connection failed: " . $mysqli->connect_error);
}

return $mysqli;
?>
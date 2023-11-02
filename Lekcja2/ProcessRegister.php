<?php

if (empty($_POST["name"])) {
    die("Name is required");
}

if ( ! filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
    die("Valid email is required");
}



$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

$mysqli = require __DIR__. "/database.php";

$sql = "INSERT INTO user (name, email, password_hash) VALUES (?, ?, ?)";

$stmt = $mysqli->stmt_init();

if ( ! $stmt->prepare($sql)) {
    die("Sql failed: ". $mysqli->error);
}

$stmt->bind_param("sss", $_POST["name"], $_POST["email"], $password_hash);

if ($stmt->execute()) {
    header("Location: login.php");
    exit;
}   else {
    
    if ($mysqli->errno === 1062) {
        die("email already taken");
    } else {
        die($mysqli->error . " " . $mysqli->errno);
    }
}
<?php

$PasswordHash = password_hash($_POST["password"], PASSWORD_DEFAULT);

$mysqli = require __DIR__. "/database.php";

print_r($_POST);
var_dump($PasswordHash);
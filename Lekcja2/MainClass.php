<?php
class MainClass
{
    static function dbConnect()
    {
        return $dbConnection = require __DIR__ . '/database.php';
    }

    static function dbConnectShop()
    {
        return $dbConnection = require __DIR__ . '/databaseShop.php';
    }

    static function blockEntrance($move_to = 'login.php')
    {
        if (!isset($_SESSION['user_name'])) {
            header("Location: $move_to");
        }
    }

    static function printHead($title = 'Document', $stylesPath = './styles/main.css')
    {
        echo "
                <meta charset='UTF-8'>
                <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                <link rel='stylesheet' href='$stylesPath'>
                <link rel='icon' href='styles/favico.ico'>
                <title>$title</title>
            ";
    }

    static function printFoot()
    {
        echo "
            <p>Prawa autorskie © Grzegorz Tereszkiewicz</p>
        ";
    }
}

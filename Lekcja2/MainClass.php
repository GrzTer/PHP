<?php
class MainClass {
    public function dbConnect() {
        return $dbConnection = require __DIR__ . "/database.php";
    }

    public function blockEntrance($move_to){
        if(!isset($_SESSION["user_name"])){
            header("Location: $move_to");
        }

    }


}
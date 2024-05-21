<?php

require_once 'MainClass.php';
require_once 'LayoutClass.php';
session_start();
$connection = MainClass::dbConnect();
MainClass::blockEntrance("login.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php
    MainClass::printHead("Sklep");
    ?>
</head>

<body>
    <header>
        <?php
        LayoutClass::printHeader("Sklep internetowy");
        ?>
    </header>
    <div class="Sklep_body">
        <main class="Sklep">
            <div class="Filtr">
                <h1>Filter Kategorii</h1>
                <div>

                    <?php
                    LayoutClass::printMenu();
                    ?>
                </div>


            </div>
            <div class="products_container">
                <h1>Produkty</h1>
                <?php LayoutClass::getProducts();?>

            </div>

        </main>

    </div>
    <footer>
        <?php
            MainClass::printFoot()
            ?>
    </footer>
    <script src="scripts/filter.js"></script>
</body>

</html>
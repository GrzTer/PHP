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
        LayoutClass::printHeader();
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
                <!-- <div id="layer2"></div>
                <div id="layer3"></div> -->
            </div>
            <div class="Products">
                <h1>Produkty</h1>
                
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
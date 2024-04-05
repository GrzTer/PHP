<?php

require_once 'MainClass.php';
require_once 'LayoutClass.php';
// session_start();
$connection = MainClass::dbConnect();
// $connection -> blockEntrance('login.php');


// $result1 = $connection->query("SELECT id, name FROM product_1");

// $result2 = $connection->query("SELECT product_1_Id, name FROM product_2");

// $result3 = $connection->query("SELECT product_2_Id, name FROM product_3");

// $result4 = $connection->query("SELECT product_3_Id, name FROM product_4");

// if (!$result1) {
//     die("Query failed: " . $connection->error);
// }

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
                <select class="custom-select" style="width:200px;" onchange="fetchProducts(2, this.value)">
                    <option>Select Category</option>
                    <!-- <?php while ($row = mysqli_fetch_assoc($result1)) : ?>
                        <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                    <?php endwhile; ?> -->
                </select>
                <div id="layer2"></div>
                <div id="layer3"></div>
            </div>
            <div class="Products">
                <h1>Produkty</h1>
                
            </div>
        <footer>
            <?php
            MainClass::printFoot()
            ?>
        </footer>
        </main>
    </div>
    <script src="scripts/filter.js"></script>
</body>

</html>
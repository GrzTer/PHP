<?php

require_once "MainClass.php";
$main = new MainClass();

$connection = $main -> dbConnect();
$main -> blockEntrance("login.php");


$result1 = $connection->query("SELECT id, name FROM product_1");

$result2 = $connection->query("SELECT product_1_Id, name FROM product_2");

$result3 = $connection->query("SELECT product_2_Id, name FROM product_3");

$result4 = $connection->query("SELECT product_3_Id, name FROM product_4");

if (!$result1) {
    die("Query failed: " . $connection->error);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/main.css">
    <link rel="icon" href="styles/favico.ico">
    <title>Sklep</title>
</head>
<body>
<header>
    <div class="header_container">
        <h4>Grzegorz Tereszkiewicz</h4>
        <ul>
            <li><a href="home.php">Strona Główna</a></li>
            <li><a href="shop.php">Sklep</a></li>
            <?php if (isset($_SESSION["user_name"])): ?>
                <li><a href="logout.php">Wyloguj się</a></li>
            <?php else: ?>
                <li><a href="login.php">Zaloguj się</a></li>
                <li><a href="RegisterPage.php">Zarejestruj się</a></li>
            <?php endif; ?>
        </ul>
    </div>
</header>
<div class="Sklep_body">
    <main class="Sklep">
    <div class="Filtr">
        <h1>Filter Kategorii</h1> 
        <select class="custom-select" style="width:200px;" onchange="fetchProducts(2, this.value)">
            <option>Select Category</option>
            <?php while ($row = mysqli_fetch_assoc($result1)): ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
            <?php endwhile; ?>
        </select>
            <div id="layer2"></div>
            <div id="layer3"></div>
    </div>
    <div class="Products">
        <h1>Produkty</h1>
        <div class="Products">
            
        </div>
    </div>
</main>
</div>
    <footer>
    <p>Prawa autorskie © Grzegorz Tereszkiewicz</p>
    </footer>
    <script src="scripts/filter.js"></script>
</body>
</html>
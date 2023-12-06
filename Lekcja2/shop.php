<!-- <?php
session_start();
$mysqli = require_once 'databaseShop.php';


$categories = [];
$result = $mysqli->query("SELECT * FROM product_1");
while ($row = $result->fetch_assoc()) {
    $categories[] = $row;
}


$filter = isset($_GET['category']) ? $_GET['category'] : null;
$products = [];

if ($filter) {
    $stmt = $mysqli->prepare("SELECT p4.* FROM product_4 p4
                             INNER JOIN product_3 p3 ON p4.product_3_Id = p3.Id
                             INNER JOIN product_2 p2 ON p3.product_2_Id = p2.Id
                             WHERE p2.product_1_Id = ?");
    $stmt->bind_param("i", $filter);
    $stmt->execute();
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
        $products[] = $row;
    }

    $stmt->close();
} else {
    $result = $mysqli->query("SELECT * FROM product_4");
    while ($row = $result->fetch_assoc()) {
        $products[] = $row;
    }
}

?> -->

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
        <h1>Product Filter</h1>
        <div>
            <label for="category-filter">Filter by Category:</label>
            <select id="category-filter" onchange="filterProducts()">
                <option value="">All Categories</option>
                <?php foreach ($allCategories as $category): ?>
                    <option value="<?= $category ?>" <?= $filter == $category ? 'selected' : '' ?>>
                        <?= $category ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
    </div>
    <div class="Products">
        <h1>Produkty</h1>
    </div>
</main>
</div>
    <footer>
    <p>Prawa autorskie © Grzegorz Tereszkiewicz</p>
    </footer>
</body>
</html>
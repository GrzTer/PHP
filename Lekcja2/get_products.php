<?php
include_once("databaseShop.php");

$layer = $_GET['layer'];
$parentId = $_GET['parent_id'];

$query = "SELECT id, name FROM product_" . $layer . " WHERE product_" . ($layer - 1) . "_Id = " . $parentId;
$result = $mysqli->query($query);

$html = "<select onchange='fetchProducts(" . ($layer + 1) . ", this.value)'>";
$html .= "<option>Select Product</option>";
while ($row = $result->fetch_assoc()) {
    $html .= "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
}
$html .= "</select>";

$html .= "<div id='productsLayer" . $layer . "'></div>";

echo $html;
?>
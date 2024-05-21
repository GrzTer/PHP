<?php

require_once 'MainClass.php';
require_once 'LayoutClass.php';
session_start();
$connection = MainClass::dbConnect();
?>
<!DOCTYPE html>
<html lang="en">

<?php 
    MainClass::printHead("Stona produktu");
?>

<body>
    <?php 
        LayoutClass::printHeader();
    ?>

    <main class="product_container">
        <section class="product_image">
            <img src="styles/joystick.png" />
        </section>
        <section class="product_data">
            <h2>Product1</h2>
            <p>Product descript</p>
            <span>Price 12122.12 PLN</span>
            <button>Add to cart</button>
    </main>
</body>

</html>
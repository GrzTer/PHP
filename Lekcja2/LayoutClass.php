<?php
require_once 'MainClass.php';
class LayoutClass {
    static function printHeader(){
        $conditionalRender = "";
        if (isset($_SESSION['user_name'])) {
            $conditionalRender = "<li>  <a href='logout.php'>   Wyloguj się </a></li>";
        } else {
            $conditionalRender = "
                <li>    <a href='login.php'>    Zaloguj się </a></li>
                <li>    <a href='RegisterPage.php'> Zarejestruj się </a></li>
            ";
        }


        echo "
                <div class='header_container'>
                    <h4>    Grzegorz Tereszkiewicz  </h4>
                    <ul>
                        <li>    <a href='home.php'>     Strona Główna   </a></li>
                        <li>    <a href='shop.php'>     Sklep   </a></li>
                        <li>    <a href='#about-me'>    O Mnie  </a></li>
                        <li>    <a href='#projects'>    Projekty    </a></li>
                        <li>    <a href='#contact-me'>  Kontakt </a></li>
                        $conditionalRender
                    </ul>
                </div>
            ";
    }
    static function printMenu(){
        $connection = MainClass::dbConnectShop();
        $sql = "
        SELECT
            CONE. `Id` as `one_id`, 
            CONE. `name` as `one_name`,

            CTWO. `Id` as `two_id`, 
            CTWO. `name` as `two_name`,
            
            CTHREE. `Id` as `three_id`, 
            CTHREE. `name` as `three_name`,

            CFOUR. `Id` as `four_id`, 
            CFOUR. `name` as `four_name`

        FROM `product_1` CONE
        LEFT JOIN `product_2` CTWO ON CTWO. `product_1_Id` = CONE. `Id`
        LEFT JOIN `product_3` CTHREE ON CTHREE. `product_2_Id` = CTWO. `Id`
        LEFT JOIN `product_4` CFOUR ON CFOUR. `product_3_Id` = CTHREE. `Id`
        ";
        $res = (mysqli_query($connection, $sql));
        $menu = array();
        while ($row = mysqli_fetch_assoc($res)){
            if(!isset($menu[$row['one_id']])) {
                $menu[$row['one_id']] = array(
                    'Id'=>$row['one_id'],
                    'name'=>$row['one_name'],
                    'category'=>array()
                );
            }

            if(!isset(
            $menu
            [$row['one_id']]
            ['category']
            [$row['two_id']]
            )) {
                $menu[$row['one_id']]['category'][$row['two_id']] = array(
                    'Id'=>$row['two_id'],
                    'name'=>$row['two_name'],
                    'subcategory'=>array()
                );
            }    

            if(!isset(
            $menu
            [$row['one_id']]
            ['category']
            [$row['two_id']]
            ['subcategory']
            [$row['three_id']]
            )) {
                $menu[$row['one_id']]['category'][$row['two_id']]['subcategory'][$row['three_id']] = array(
                    'Id'=>$row['three_id'],
                    'name'=>$row['three_name'],
                    'subsubcategory'=>array()
                );
            }
        }

        echo '<aside class="products_menu"';
        echo '<ul>';

        foreach ($menu as $id1 => $level1) {
            ?>
<li>
    <a href="shop.php?level1=<?=$id1?>">
        <?=$level1['name']?>
    </a>
    <ul>
        <?php
                            foreach ($level1['category'] as $id2 => $level2) {
                                ?>
        <li>
            <a href="shop.php?level1=<?=$id1?>&level2=<?=$id2?>">
                <?=$level2['name']?>
            </a>
            <ul>
                <?php
                                                foreach ($level2['subcategory'] as $id3 => $level3) {
                                                    ?>
                <li>
                    <a href="shop.php?level1=<?=$id1?>&level2=<?=$id2?>&level3=<?=$id3?>">
                        <?=$level3['name']?>
                    </a>
                </li>
                <?php
                                                }
                                            ?>
            </ul>
        </li>
        <?php
                            }
                        ?>
    </ul>
</li>
<?php
        }

        echo '</ul>';
        echo '</aside>';

    }

    static function printTile($row){
        $img = $row['img'];
        $name = $row['name'];
        $price = $row['prices'];
        $Id = $row['Id'];

        echo "
            <a href='productPage.php?product_id=$Id'>
                <div class='products_item'>
                    <img src='$img'>
                    <h2>$name</h2>
                    <span>$price</span>
                    <button>Go to product</button>
                </div>
            </a>
        ";
    }

    static function getProducts(){
        $connection = MainClass::dbConnectShop();
        $sql = "SELECT * FROM product_4";
        $result = mysqli_query($connection, $sql);
        
        echo '<section class="products_listening">';
            while($row = mysqli_fetch_assoc($result)){
                LayoutClass::printTile($row);
            }
        echo '</section>';
    }
    
    static function showProduct(){
        $connection = MainClass::dbConnectShop();
        $product_id = $_REQUEST['product_id'];
        $sql = "SELECT * FROM product_4 WHERE Id=$product_id";
        $result = mysqli_query($connection, $sql);
        $row = mysqli_fetch_assoc($result);
        
        $img = $row['img'];
        $name = $row['name'];
        $desc = $row['description'];
        $price = $row['prices'];
        $Id = $row['Id'];

        echo "
        <section class='product_image'>
            <img src='$img'/>
        </section>
        <section class='product_data'>
        <h2>$name</h2>
        <p>$desc</p>
        <span>$price</span>
        <button>Add to cart</button>
        </section>";
    }
}
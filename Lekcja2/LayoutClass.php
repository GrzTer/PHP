<?php

class LayoutClass {
    static function printHeader(){
        $conditionalRender = "";
        if (isset($_SESSION['user_name'])) {
            $conditionalRender = "<li><a href='logout.php'>Wyloguj się</a></li>";
        } else {
            $conditionalRender = "
                <li><a href='login.php'>Zaloguj się</a></li>
                <li><a href='RegisterPage.php'>Zarejestruj się</a></li>
            ";
        }


        echo "
            <header>
                <div class='header_container'>
                    <h4>Grzegorz Tereszkiewicz</h4>
                    <ul>
                        <li><a href='home.php'>Strona Główna</a></li>
                        <li><a href='shop.php'>Sklep</a></li>
                        <li><a href='#about-me'>O Mnie</a></li>
                        <li><a href='#projects'>Projekty</a></li>
                        <li><a href='#contact-me'>Kontakt</a></li>
                        $conditionalRender
                    </ul>
                </div>
            </header>";
    }
}
?>
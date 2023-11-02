<?php

session_start();

if (isset($_SESSION["user_id"])) {
    
    $mysqli = require __DIR__ . "/database.php";
    
    $sql = "SELECT * FROM user
            WHERE id = {$_SESSION["user_id"]}";
            
    $result = $mysqli->query($sql);
    
    $user = $result->fetch_assoc();
}

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/main.css">
    <link rel="icon" href="styles/favico.ico">
    <title>Strona Główna</title>
</head>
<body>
<header>
        <div class="header_container">
            <h4>Grzegorz Tereszkiewicz</h4>
                <ul>
                    <li><a href="Home.php">Strona Główna</a></li>
                    <li><a href="#about-me">O Mnie</a></li>
                    <li><a href="#projects">Projekty</a></li>
                    <li><a href="#contact-me">Kontakt</a></li>
                    <li><a href="Login.php">Zaloguj się</a></li>
                    <li><a href="RegisterPage.php">Zarejestruj się</a></li>
                </ul>
        </div>
    </header>

    <div class="underheader">
        <h1>Witaj na Moim Portfolio</h1>
        <!-- Jak tu wypisać zalogowaną osobę [imię] -->
        <p>Tutaj znajdziesz informacje o mnie i moich projektach.</p>
    </div>

    <section id="about-me">
        <h2>O Mnie</h2>
        <p>Cześć, jestem Grzegorz Tereszkiewicz z ponad [Liczba Lat] lat doświadczenia w branży.<br><br>
            Uzyskałem stopień [Stopień] na [Uniwersytet/Uczelnia] i od tego czasu osiągnąłem wiele sukcesów zawodowych, w tym [Sukces Zawodowy 1], [Sukces Zawodowy 2] i [Sukces Zawodowy 3].<br><br>
            Moje obszary ekspertyzy obejmują [Ekspertyza 1], [Ekspertyza 2] i [Ekspertyza 3]. Poza pracą, pasjonuję się [Hobby/Zainteresowanie 1], [Hobby/Zainteresowanie 2] i [Hobby/Zainteresowanie 3]. Mnie motywuje [Co Cię Motywuje] i zawsze dążę do [Czego Dążysz].<br><br>
            To, co mnie wyróżnia w mojej dziedzinie, to [Co Cię Wyróżnia]. Dla wszystkich rozpoczynających pracę w tej branży, moją radą jest [Twoja Rada]. Patrząc w przyszłość, moje cele i aspiracje to [Cel na Przyszłość 1], [Cel na Przyszłość 2] i [Cel na Przyszłość 3].<br><br>
            Jestem podekscytowany ciągłym rozwojem i nauką w swojej dziedzinie oraz zawsze szukam nowych wyzwań i okazji, aby wpłynąć pozytywnie na otoczenie.</p>
        <img src="./styles/[removal.ai]_tmp-64198bbda4618.png"/>
    </section>

    <section id="projects">
        <h2>Projekty</h2>
        <ul>
            <li>
                <h3>Projekt 1</h3>
                <a href="#">Link do projektu 1</a>
                <p>Opis projektu 1.</p>
            </li>
            <li>
                <h3>Projekt 2</h3>
                <a href="#">Link do projektu 2</a>
                <p>Opis projektu 2.</p>
            </li>
        </ul>
    </section>

    <section id="contact-me">
        <h2>Kontakt</h2>
        <form action="{{ url_for('contact') }}" method="POST">
            <label for="name">Imię</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Wiadomość</label>
            <textarea id="message" name="message" required></textarea>

            <button type="submit">Wyślij Wiadomość</button>
        </form>
    </section>

    <footer>
        <p>Prawa autorskie © Grzegorz Tereszkiewicz</p>
    </footer>
</body>
</html>

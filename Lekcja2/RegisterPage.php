<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <div class="registration-container">
        <h1>Rejestracja</h1>
        <form action="Home.php" method="post">
            <label for="name">Imię</label>
            <input type="text" id="name" name="name" placeholder="_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _">
            <div class="error-message" id="name-error"></div>
            
            <label for="surname">Nazwisko</label>
            <input type="text" id="surname" name="surname" placeholder="_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _">
            <div class="error-message" id="surname-error"></div>
            
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _">
            <div class="error-message" id="email-error"></div>
            
            <label for="password">Hasło</label>
            <input type="password" id="password" name="password" placeholder="_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _">
            <div class="error-message" id="password-error"></div>
            
            <button type="submit">Zarejestruj się</button>
            
        </form>
    </div>

    <script src="scripts/register.js"></script>
</body>
</html>

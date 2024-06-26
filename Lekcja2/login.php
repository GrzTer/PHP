<?php
$is_invalid = false;
require_once "MainClass.php";
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $connection = MainClass::dbConnect();

    $sql = sprintf("SELECT * FROM user
                    WHERE email = '%s'",
                   $connection->real_escape_string($_POST["email"]));
    
    $result = $connection->query($sql);
    
    $user = $result->fetch_assoc();
    
    if ($user) {
        
        if (password_verify($_POST["password"], $user["password_hash"])) {
            
            session_start();
            
            session_regenerate_id();
            
            $_SESSION["user_name"] = $user["name"];

            header("Location: home.php");
            exit;
        }
    }
    
    $is_invalid = true;
}
?>
<!DOCTYPE html>
<html>
    <head>
        <?php
            MainClass::printHead("Login", './styles/style.css');
        ?>
    </head>
    <body>
        <div class="registration-container">
        <h1 class="log">Login</h1>
        
        <?php if ($is_invalid): ?>
            <em>Invalid login</em>
        <?php endif; ?>
        <div class="form">
            <form method="post">
                <label for="email">email</label>
                <input type="email" name="email" id="email"
                    value="<?= htmlspecialchars($_POST["email"] ?? "") ?>" placeholder="_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _">
                
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _">
                </div>
                <button type="submit">Log in</button>
            </form>

            <form action="RegisterPage.php" method="post">
                <h1 class="reg">Registration</h1>
                <button type="submit">Zarejestruj się</button>
            </form>
        </div>
    </body>
</html>
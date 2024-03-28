<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Sen:wght@400;700;800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <title>MovieFlix - Login</title>
    <link rel="icon" type="img/x-icon" href="logo.png">
</head>

<body>
    <div class="navbar">
        <div class="navbar-container">
            <img src="logo.png" width="50px">   
            <div class="logo-container">
                <h1 class="logo"><a href="index.php">MovieFlix</a></h1>
            </div>
        </div>
    </div>
    <h2>Login</h2>
    <form action="verifylogin.php" method="POST">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
            
        <label for="loginas">Login as:</label>
        <select id="loginas" name="loginas" required>
            <option value="">Select user</option>
            <option value="admin">Admin</option>
            <option value="customer">Customer</option>
        </select><br><br>

        <button type="submit">Login</button><br><br>
    </form>
    <p>Not registered? <a href="register.php">Click here to register</a></p>
</body>
</html>

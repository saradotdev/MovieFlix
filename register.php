<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Sen:wght@400;700;800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <title>MovieFlix - Registration</title>
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
    <h2>Registration</h2>
    <form action="storedataforcustomer.php" method="POST">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required><br><br>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <label for="subscription">Subscription Plan:</label>
        <select id="subscription" name="subscription" required>
            <option value="">Select a subscription plan</option>
            <option value="monthly">Monthly</option>
            <option value="yearly">Yearly</option>
        </select><br><br>

        <input type="submit" value="Register"><br><br>
    </form>
    <p>Already registered? <a href="login.php">Click here to login</a></p>
</body>
</html>

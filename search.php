<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "movierentalsystem";

$conn = new mysqli($servername, $username, $password, $dbname);

// Get the search query from the user
$searchQuery = $_GET['search'];

// Prepare the SQL query
$sql = "SELECT * FROM movie WHERE title LIKE '%" . $searchQuery . "%'";

// Execute the query
$result = $conn->query($sql);

// Check if any rows are returned
if (mysqli_num_rows($result) > 0) {
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <title>MovieFlix</title>
    <link rel="icon" type="img/x-icon" href="logo.png">
</head>
<body>
    <div class="navbar">
        <div class="navbar-container">
            <img src="logo.png" width="50px">   
            <div class="logo-container">
                <h1 class="logo"><a href="index.php">MovieFlix</a></h1>
            </div>
            <div class="search-container">
                <form action="search.php" method="GET">
                    <input type="text" name="search" placeholder="Search for movies">
                    <button type="submit">Search</button>
                </form>
            </div>
        </div>
    </div>

    <div class="searched-content-container">
        <div class="searched-movie-list-container">
            <div class="searched-movie-list-wrapper">
                <div class="searched-movie-list">

                    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                    
                    <div class="searched-movie-list-item">
                        <img class="searched-movie-list-item-img" src="img/<?php echo $row["image"]; ?>" alt="">
                        <span class="searched-movie-list-item-title"><?php echo $row["title"]; ?></span>
                        <p class="searched-movie-list-item-desc"><?php echo $row["description"]; ?></p>
                        <button class="searched-movie-list-item-button">WATCH</button>
                    
                    </div>

                    <?php } 
                    } ?>
                    
                </div>
                <i class="fas fa-chevron-right searched-arrow"></i>
            </div>
        </div>
    </div>
    <script src="app.js"></script>
</body>
</html>
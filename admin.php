<?php

require_once 'connection.php';

if(isset($_POST["submit"])){
  $title = $_POST["title"];
  $releaseYear = $_POST["releaseYear"];
  $genre = $_POST["genre"];
  $director = $_POST["director"];
  $description = $_POST["description"];
  $length = $_POST["length"];
  $rating = $_POST["rating"];

  $fileName = $_FILES["image"]["name"];
  $fileSize = $_FILES["image"]["size"];
  $tmpName = $_FILES["image"]["tmp_name"];

  $validImageExtension = ['jpg', 'jpeg', 'png'];
  $imageExtension = explode('.', $fileName);
  $imageExtension = strtolower(end($imageExtension));

  $newImageName = uniqid();
  $newImageName .= '.' . $imageExtension;

  move_uploaded_file($tmpName, 'img/' . $newImageName);

  $sql = "INSERT INTO movie(title, releaseYear, genre, director, description, length, rating, image) 
          VALUES('$title', '$releaseYear', '$genre', '$director', '$description', '$length', '$rating', '$newImageName')";
  $conn->query($sql);

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Sen:wght@400;700;800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <title>MovieFlix - Admin Panel</title>
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
    <div class="admin-panel">
    <h2>Admin Panel</h2>
    <div class="tabs">
      <button class="tablink active" onclick="openTab(event, 'dashboard')">Admin Dashboard</button>
      <button class="tablink" onclick="openTab(event, 'movies')">Movies</button>
    </div>

    <div id="dashboard" class="tabcontent">
      <div class="dashboard-info">

        <?php
        $sqlUsers = "SELECT COUNT(*) AS total_rows_users FROM customer";
        $resultUsers = $conn->query($sqlUsers);
        $rowUsers = $resultUsers->fetch_assoc();
        $totalRowsUsers = $rowUsers['total_rows_users'];

        $sqlMovies = "SELECT COUNT(*) AS total_rows_movies FROM movie";
        $resultMovies = $conn->query($sqlMovies);
        $rowMovies = $resultMovies->fetch_assoc();
        $totalRowsMovies = $rowMovies['total_rows_movies'];
        ?>

        <div class="dashboard-box">
          <p>Total Users: <span id="total-users"><?php echo $totalRowsUsers; ?></span></p>
        </div> 
        <div class="dashboard-box">
          <p>Total Movies: <span id="total-movies"><?php echo $totalRowsMovies; ?></span></p>
        </div>
      </div>
    </div>

    <div id="movies" class="tabcontent">
      <form action="" method="POST" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br><br>

        <label for="releaseYear">Release Year:</label>
        <input type="text" id="releaseYear" name="releaseYear" required><br><br>

        <label for="genre">Genre:</label>
        <input type="text" id="genre" name="genre" required><br><br>

        <label for="director">Director:</label>
        <input type="text" id="director" name="director" required><br><br>

        <label for="description">Description:</label>
        <input type="text" id="description" name="description" required><br><br>

        <label for="length">Length:</label>
        <input type="text" id="length" name="length" required><br><br>

        <label for="rating">Rating:</label>
        <input type="text" id="rating" name="rating" required><br><br>

        <label for="image">Image:</label>
        <input class="image" type="file" id="image" name="image" accept=".jpg, .jpeg, .png" value=""><br><br>
        <button type="submit" name="submit">Add Movie</button><br><br>
      </form>
    </div>
  </div>

  <script src="admin.js"></script>
</body>
</html>
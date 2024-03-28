<?php

require_once 'connection.php';

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Sen:wght@400;700;800&display=swap"
        rel="stylesheet">
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

    <br><br>

    <div class="container">
        <div class="content-container">
            <div class="featured-content" style="background: linear-gradient(to bottom, rgba(0, 0, 0, 0), #151515), url('Pride and Prejudice.jpg')">
                <img class="featured-title" src="Pride and Prejudice Title.jpg" alt="">
                <p class="featured-desc">A story of love and life among the landed English gentry during the Georgian era. Mr. Bennet is a gentleman living in Hertfordshire with his overbearing wife and five daughters, but if he dies their house will be inherited by a distant cousin whom they have never met, so the family's future happiness and security is dependent on the daughters making good marriages.</p>
                <button class="featured-button">WATCH</button>
            </div>

            <?php 
    
            $sql = "SELECT * FROM movie";
            $all_movies = $conn->query($sql);

            ?>

            <br><br>
            <div class="movie-list-container" id="newReleases">
                <br><br><br>
                <h1 class="movie-list-title1">NEW RELEASES</h1>
                <div class="movie-list-wrapper">
                    <div class="movie-list">

                        <?php while($row = mysqli_fetch_assoc($all_movies)) { 
                        $genre = $row['genre'];

                        if ($genre !== 'Action' && $genre !== 'Drama' && $genre !== 'Horror') {
                        ?>
                        
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="img/<?php echo $row["image"]; ?>" alt="">
                            <span class="movie-list-item-title"><?php echo $row["title"]; ?></span>
                            <p class="movie-list-item-desc"><?php echo $row["description"]; ?></p>
                            <button class="movie-list-item-button">WATCH</button>
                        
                        </div>

                        <?php }
                        } ?>
                        
                    </div>
                    <i class="fas fa-chevron-right arrow"></i>
                </div>
            </div>

            <?php 
            
            $sql = "SELECT * FROM movie";
            $all_movies = $conn->query($sql);

            ?>

            <div class="movie-list-container" id="action">
                <br><br><br>
                <h1 class="movie-list-title">ACTION</h1>
                <div class="movie-list-wrapper">
                    <div class="movie-list">

                        <?php while($row = mysqli_fetch_assoc($all_movies)) { 
                        $genre = $row['genre'];

                        if ($genre === 'Action') {
                        ?>
                        
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="img/<?php echo $row["image"]; ?>" alt="">
                            <span class="movie-list-item-title"><?php echo $row["title"]; ?></span>
                            <p class="movie-list-item-desc"><?php echo $row["description"]; ?></p>
                            <button class="movie-list-item-button">WATCH</button>
                        
                        </div>

                        <?php }
                        } ?>
                        
                    </div>
                    <i class="fas fa-chevron-right arrow"></i>
                </div>
            </div>

            <?php 
            
            $sql = "SELECT * FROM movie";
            $all_movies = $conn->query($sql);

            ?>

            <div class="movie-list-container" id="drama">
                <br><br><br>
                <h1 class="movie-list-title">DRAMA</h1>
                <div class="movie-list-wrapper">
                    <div class="movie-list">

                        <?php while($row = mysqli_fetch_assoc($all_movies)) { 
                        $genre = $row['genre'];

                        if ($genre === 'Drama') {
                        ?>
                        
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="img/<?php echo $row["image"]; ?>" alt="">
                            <span class="movie-list-item-title"><?php echo $row["title"]; ?></span>
                            <p class="movie-list-item-desc"><?php echo $row["description"]; ?></p>
                            <button class="movie-list-item-button">WATCH</button>
                        
                        </div>

                        <?php }
                        } ?>
                        
                    </div>
                    <i class="fas fa-chevron-right arrow"></i>
                </div>
            </div>

            <?php 
            
            $sql = "SELECT * FROM movie";
            $all_movies = $conn->query($sql);

            ?>

            <div class="movie-list-container" id="horror">
                <br><br><br>
                <h1 class="movie-list-title">HORROR</h1>
                <div class="movie-list-wrapper">
                    <div class="movie-list">

                        <?php while($row = mysqli_fetch_assoc($all_movies)) { 
                        $genre = $row['genre'];

                        if ($genre === 'Horror') {
                        ?>
                        
                        <div class="movie-list-item">
                            <img class="movie-list-item-img" src="img/<?php echo $row["image"]; ?>" alt="">
                            <span class="movie-list-item-title"><?php echo $row["title"]; ?></span>
                            <p class="movie-list-item-desc"><?php echo $row["description"]; ?></p>
                            <button class="movie-list-item-button">WATCH</button>
                        
                        </div>

                        <?php }
                        } ?>
                        
                    </div>
                    <i class="fas fa-chevron-right arrow"></i>
                </div>
            </div>
            
        </div>
    </div>
    <script src="app.js"></script>
</body>
</html>

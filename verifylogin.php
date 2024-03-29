<?php

$servername = "wm63be5w8m7gs25a.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306";
$username = "jlfcdi7acvjbml6h";
$password = "vpas1p2oom3j8agv";
$dbname = "l5fmjlhwzt8a6ja4";

$conn = new mysqli($servername, $username, $password, $dbname);

if($_SERVER["REQUEST_METHOD"] == TRUE) {
    $email = $_POST["email"];
    $password = $_POST["password"];
    $userType = $_POST["loginas"];
    $error = "";
}

$tableName = ($userType == 'admin') ? 'admin' : 'customer';

$sql = "SELECT * FROM $tableName WHERE email='$email' and password='$password'";
$result = $conn->query($sql);
$count = mysqli_num_rows($result);

if ($count > 0 and $userType == 'admin') {
    header("Location: admin.php");
}
else if ($count > 0 and $userType == 'customer'){
    header("Location: home.php");
}
else{
    header("Location: login.php");
}

?>
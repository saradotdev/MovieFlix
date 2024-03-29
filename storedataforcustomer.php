<?php

$servername = "wm63be5w8m7gs25a.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306";
$username = "jlfcdi7acvjbml6h";
$password = "vpas1p2oom3j8agv";
$dbname = "l5fmjlhwzt8a6ja4";

$conn = new mysqli($servername, $username, $password, $dbname);

if($_SERVER["REQUEST_METHOD"] == TRUE) {
    $firstName = $_POST["firstName"];
    $lastName = $_POST["lastName"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $subscription = $_POST["subscription"];

    $subscriptionValue = ($subscription === 'monthly') ? 'Monthly' : 'Yearly';

    $fullName = $firstName." ".$lastName;

    $amount = ($subscription === 'monthly') ? 299 : 2999;

    $currentDate = new DateTime(); // for monthly
    $monthlyDate = $currentDate->add(new DateInterval('P1M')); // add a month
    $currentDate = new DateTime(); // for yearly
    $yearlyDate = $currentDate->add(new DateInterval('P1Y')); // add a year

    // Format the dates as 'Y-m-d' string
    $currentDate = new DateTime(); // today's date
    $formattedCurrentDate = $currentDate->format('Y-m-d');
    $formattedMonthlyDate = $monthlyDate->format('Y-m-d');
    $formattedYearlyDate = $yearlyDate->format('Y-m-d');

    $futureDate = ($subscription === 'monthly') ? $formattedMonthlyDate : $formattedYearlyDate;
}

$sql1 = "INSERT INTO user(firstName, lastName, email, password) 
        VALUES ('$firstName', '$lastName', '$email', '$password')";
$conn->query($sql1);

$sql2 = "INSERT INTO customer(planName, email, password)
         VALUES ('$subscriptionValue', '$email', '$password')";
$conn->query($sql2);

$sql3 = "INSERT INTO rental(planName, rentalDate, returnDate, customerName)
         VALUES ('$subscriptionValue', '$formattedCurrentDate', '$futureDate', '$fullName')";
$conn->query($sql3);

$sql4 = "INSERT INTO payment(amount, paymentDate, customerName)
         VALUES ($amount, '$formattedCurrentDate', '$fullName')";
$conn->query($sql4);

header("Location: home.php");

?>
<!-- write a program to create to base using php -->
<?php
$link = mysqli_connect("localhost", "root", "") or die("Cannot Connect to the database!");

$sql = "CREATE DATABASE IF NOT EXISTS `db_vinay`";
if (mysqli_query($link, $sql)) {
    echo "Database test created successfully\n";
} else {
    echo 'Error creating database: ' . mysqli_error($link) . "\n";
}

mysqli_close($link);
?>

<!-- Database test created successfully  -->
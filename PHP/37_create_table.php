<?php
$link = mysqli_connect("localhost", "root", "","db_vinay") or die("Cannot Connect to the database!");

$sql = "CREATE TABLE FEEDBACK ( 
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    feedback VARCHAR(100)
    )";
if (mysqli_query($link, $sql)) {
    echo "Table Created Successfully..\n";
} else {
    echo 'Error creating database: ' . mysqli_error($link) . "\n";
}

mysqli_close($link);
?>


<!-- TABLE created successfully  -->
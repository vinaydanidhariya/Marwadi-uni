<?php
$link = mysqli_connect("localhost","root","","db_vinay");
if($link === false)
{
    die("ERROR: Could not connect." . mysqli_connect_error());
}
$sql ="UPDATE feedback SET email='kohli@gmail.com' WHERE name='vinay'";
if (mysqli_query($link, $sql)) {
    echo "Record were updated sucessfully";
    
} else {
    echo "ERROR: Could not able to execute $sql." . mysqli_error($link);
}
mysqli_close($link)
?>

<!-- Record were updated sucessfully -->
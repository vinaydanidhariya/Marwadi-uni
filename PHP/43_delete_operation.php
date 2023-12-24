<?php
$link = mysqli_connect("localhost","root","","db_vinay");
if($link === false)
{
    die("ERROR: Could not connect." . mysqli_connect_error());
}
$sql ="DELETE FROM FEEDBACK WHERE name='vinay'";
if (mysqli_query($link, $sql)) {
    echo "Record Deleted sucessfully";
    
} else {
    echo "ERROR: Could not able to execute $sql." . mysqli_error($link);
}
mysqli_close($link)
?>

<!-- Record were deleted sucessfully -->
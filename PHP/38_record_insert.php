<?php 

$conn = mysqli_connect('localhost',"root","","db_vinay") or die("Cannot Connect to the database!");

$sql = "INSERT INTO `feedback` (`name`, `email`, `feedback`) VALUES ( 'Vinay', 'vinay@gmail.com', 'This is my feedback')";

if(mysqli_query($conn,$sql)){
    echo "Record Inserted Successfully..\n";
}else{
    echo "Error in Inserting Record..\n";
}
mysqli_close($conn);

?>

<!-- Record Inserted Successfully..  -->
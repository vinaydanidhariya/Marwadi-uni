<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FORM REGISTRATION</title>
</head>

<body>
    <label>
        <h1>FORM REGISTRATION</h1>
    </label>
    <form action="39_form_insert.php" method="POST">
        <label for="fname">First name:</label><br>
        <input type="text" id="fname" name="fname" value=""><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value=""><br>
        <label for="feedback">Feedback:</label><br>
        <textarea name="feedback" id="feedback" cols="30" rows="10"></textarea><br>
        <input type="submit" value="Submit">
    </form>

</body>

</html>

<?php

$conn = mysqli_connect('localhost', "root", "", "db_vinay") or die("Cannot Connect to the database!");

$sql = "INSERT INTO `feedback` (`name`, `email`, `feedback`) VALUES ( '$_POST[fname]', '$_POST[email]', '$_POST[feedback]')";

if (mysqli_query($conn, $sql)) {
?>
    <p>Name: <?php echo $_POST['fname']; ?></p>
    <p>Email: <?php echo $_POST['email']; ?></p>
    <p>Feedback: <?php echo $_POST['feedback']; ?></p>
<?php
    echo "Record Inserted Successfully..\n";
} else {
    echo "Error in Inserting Record..\n";
}


mysqli_close($conn);

?>



<!-- FORM REGISTRATION
First name: vinay

Email:vinay@gmail.com

Feedback: vinay dandiahriay

Name: vinay

Email: vinay@gmail.com

Feedback: vinay dandiahriay
Record Inserted Successfully..  -->
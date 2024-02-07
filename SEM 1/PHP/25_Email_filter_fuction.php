<html>
<?php
$email = "abc@gmail.com";

$email = filter_var($email, FILTER_SANITIZE_EMAIL);

if (!filter_var($email, FILTER_VALIDATE_EMAIL) === true) {
    echo ("INVALID EMAIL ADDRESS");
} else {
    echo ("VALID EMAIL ADDRESS");
}
?>

</html>
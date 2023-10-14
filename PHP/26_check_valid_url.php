<html>
<?php
$URL = "http://vinay.me";

$URL = filter_var($URL, FILTER_SANITIZE_URL);

if (!filter_var($URL, FILTER_VALIDATE_URL) === true) {
    echo ("INVALID URL");
} else {
    echo ("VALID URL");
}
?>

</html>
<?php
setcookie('user1', 'MI');
setcookie('user2', 'CSK');
setcookie('user3', 'GT');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookie Session</title>
</head>

<body>
    <?php
    if (!isset($_COOKIE['user1'])) {
        echo "sorry , cookie is not found.";
    }else{
        echo "mentioned cookie is found !.";
    }
    ?>
</body>

</html>
<?php

?>
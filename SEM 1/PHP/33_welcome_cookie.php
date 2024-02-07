<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>welcome using cookie</title>
</head>
<body>
    <?php
    if (isset($_COOKIE['user3'])) {
        echo 'welcome '.$_COOKIE['user1'].'<br>';
    } else {
        echo 'welcome Guest ! <br/>';
    }
    ?>
</body>
</html>
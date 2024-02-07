<!-- 1. wap to find out factorial using user input 
- textbox submit factorial print
2. prime number display from given range by the user
-like 1-20
 -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FACTORIAL</title>
</head>

<body>
    <form method="post">
        <label>ENTER NUMBER TO FIND FACTORIAL NUMBER</label>\
        <input type="text" name="factNum">
        <input type="submit" value="FIND FACTORIAL">
    </form>
    <?php
    if (isset($_POST['factNum'])) {
        $num = $_POST['factNum'];
        $factorial = 1;
        for ($i = $num; $i > 1; $i--) {
            $factorial = $factorial * $i;
        }
        echo $factorial;
    }
    //     <!-- 5 
    // 5*4*3*2*1   -->
    ?>

</body>

</html>
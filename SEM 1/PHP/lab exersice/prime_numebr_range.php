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
        <label>ENTER NUMBER START</label>
        <input type="text" name="startPrime">
        <br>
        <label>ENTER NUMBER ENDING</label>
        <input type="text" name="endPrime">
        <br>
        <input type="submit" value="RANGE PRIME">
    </form>
    <?php
    if (isset($_POST['startPrime']) && isset($_POST['endPrime'])) {
        $start = $_POST['startPrime'];
        $ends = $_POST['endPrime'];
        function check_prime($num)
        {

            for ($i = 2; $i < $num; $i++) {
                if ($num % $i == 0) {
                    return 1;
                } else {
                    return 0;
                }
            }
        }
        for ($i = $start; $i < $ends; $i++) {
            if (check_prime($i)) {
                echo $i;
            }
        }
    }
    //     <!-- 5 
    // 5*4*3*2*1   -->
    ?>

</body>

</html>
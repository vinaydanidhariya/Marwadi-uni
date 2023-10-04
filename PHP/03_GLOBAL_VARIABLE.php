<?php
$x = 5;
$y = 10;
function myTest()
{
    $GLOBALS['y'] = $GLOBALS['x'] + $GLOBALS['y'];
}
myTest();
echo "Value of VARIABLE X is ".$y;
?>
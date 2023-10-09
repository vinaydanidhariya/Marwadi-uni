<?php
echo "Absolute Function \n";
$abs1 = abs(-4.5);
$abs2 = abs(5);
$abs3 = abs(-5);
echo $abs1 . " " . $abs2 . " " . $abs3;

echo "<br>";
echo "Ceiling Function \n";
echo ceil(4.3) . " ";
echo ceil(9.999) . " ";
echo ceil(-3.14) . " ";

echo "<br>";
echo "Floor Function \n";
echo floor(4.3) . " ";
echo floor(9.999) . " ";
echo floor(-3.14) . " ";

echo "<br>";
echo "Round Function \n";
echo round(3.4) . "<br>";
echo round(3.5) . "<br>";
echo round(3.6) . "<br>";
echo round(3.66, 0) . "<br>";
echo round(1.95583, 2) . "<br>";
echo round(1241557, -3) . "<br>";
echo round(5.045, 2) . "<br>";
echo round(5.055, 2) . "<br>";

echo "<br>";
echo "Fmod Function \n";
$x = 99;
$y = 5;
$result = fmod($x, $y);

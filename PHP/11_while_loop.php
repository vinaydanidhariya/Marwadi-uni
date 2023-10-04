<?php
$num = array(1, "Vinay", 3, 4, 6, 5);

echo "\n $num[0]\n";
foreach ($num as $digit) {
    if ($digit == 3) {
        continue;
    }
    echo "value is $digit \n";
}

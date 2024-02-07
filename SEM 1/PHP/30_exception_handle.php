<?php
function checkNum($number)
{
    if ($number > 5) {
        throw new Exception("value is above 5");
    }
    return true;
}
try {
    checkNum(4);
    echo "value is 5 or below";
} catch (Exception $e) {
    echo "" . $e->getMessage() . "";
}

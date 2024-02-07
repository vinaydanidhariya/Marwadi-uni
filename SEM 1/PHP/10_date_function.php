<?php
$day = date('D');
switch ($day) {
    case 'Mon':
        echo "Day is Monday";
        break;
    case 'Tue':
        echo "Day is Tuesday";
        break;
    case 'Wen':
        echo "Day is Wednesday";
        break;
    case 'Thu':
        echo "Day is Thursday";
        break;
    case 'Fri':
        echo "Day is Friday";
        break;
    case 'Sat':
        echo "Day is Saturday";
        break;
    case 'Sun':
        echo "Day is Sunday";
        break;
    default:
        echo "Wonder which day is this ?";
        break;
}

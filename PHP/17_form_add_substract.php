<?php


function add($x, $y)
{
    echo "Addition of Number" . $x + $y;
}
function sub($x, $y)
{
    echo "Substation of Number" . $x - $y;
}


if (isset($_POST['add'])) {
    add($_POST['first'], $_POST['second']);
}

if (isset($_POST['subS'])) {
    sub($_POST['first'], $_POST['second']);
}
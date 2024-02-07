<?php
function foo()
{
    $numArgs = func_num_args();
    echo "number of argument : $numArgs \n";
    if ($numArgs >= 2) {
        echo "Argument is 1" . func_get_arg(1) . "\n";
    }
    $arg_list = func_get_args();
    for ($i = 0; $i < $numArgs; $i++) {
        echo "Argument $i is " . $arg_list[$i] . "\n";
    }
}
foo(10, 20, 30);

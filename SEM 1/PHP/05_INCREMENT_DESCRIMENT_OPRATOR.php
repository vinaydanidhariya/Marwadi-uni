<?php
echo "<h3> POST INCREMENT</h3>";
$a = 5;
echo "should be 5: " . $a++ . "<br>\n";
echo "should be 6: " . $a . "<br>\n";

echo "<h3>Pre Increment</h3>";
//$a = 5;
echo "should be 7: " . ++$a . "<br>\n";
echo "should be 7: " . $a . "<br>\n";

echo "<h3>Post decrement</h3>";
//$a = 5;
echo "should be 7: " . $a-- . "<br>\n";
echo "should be 6: " . $a . "<br>\n";

echo "<h3>Pre decrement</h3>";
//$a = 5;
echo "should be 5: " . --$a . "<br>\n";
echo "should be 5: " . $a . "<br>\n";


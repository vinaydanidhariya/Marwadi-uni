<?php
echo "<h4> chr function</h4>";
echo chr(65); //A
echo chr(97); //a
echo "<BR>";

echo strtolower("WelCome To MEFGI");
echo "<h4>strtoupper function</h4>";
echo strtoupper("WelCome To MEFGI");

echo "<h4>strlen function</h4>";
echo strlen("WelCome To MEFGI");

echo "<BR>";

echo "<h4>sub string function</h4>";

$rest = substr("abcdef", -1); // returns "f" =
echo $rest;

$rest = substr("abcdef", -2); // returns "ef"
echo $rest;

$rest = substr("abcdef", -6, 2); // returns "abc"
echo $rest;

echo "<BR>";

echo "<h4>string comparison function</h4>";
echo strcmp("Hello", "Hello"); //0

echo "<BR>";
echo '<h4> String case comparison</h4>';

$var1 = "Hello";
$var2 = "Hello";

if (strcasecmp($var1, $var2) == 0) {
    echo "Matching String";
} else {
    echo "Mismatching String";
}

echo "<BR>";
echo "<h4>String Position Function</h4>";
$newstring = 'abcdef abcdef';

$pos1 = strpos($newstring, 'a');
echo $pos1;
echo "<br>";
$pos2 = strpos($newstring, 'a', 1);
echo $pos2;
echo "<br>";

echo "<h4>strstr function</h4>";
$email = 'name@example.com';
$domain = strstr($email, '@');

echo $domain; // prints @example.com

echo "<BR>";

$user = strstr($email, '@', true);

echo $user; // prints name

echo "<BR>";

echo "<h4>stristr (insensitive) function</h4>";
$email = 'USER@Example.com';

echo stristr($email, 'e'); // outputs ER@Example.com

echo "<BR>";

echo stristr($email, 'e', true); // outputs US echo "<BR>";

echo "<h4>string reverse function</h4>";

echo strrev("Hello"); // olleH

echo "<BR>";

echo strrev("This spans multiple lines. The newlines will be output as

well");

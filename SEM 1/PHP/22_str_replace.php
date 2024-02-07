<?php

$vowels = array('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U');
$onlyConsonants = str_replace($vowels, '*', 'HELLO WORLD OF PHP...', $count);
echo $onlyConsonants;
echo $count;
echo "<BR>";

$phrase = 'You should eat Fruits , Vegetables and Juice Daily....';
$healthy = array('Fruits', "Vegetables", "Juice");
$yummy = array('Pizza', "Cold-Drink", "Ice Cream");
$newPhrase = str_replace($healthy, $yummy, $phrase, $count);
echo $newPhrase;
echo  $count;
echo "<BR>";


$str1 = str_replace("ll", "@", "hollywood and bollywood...", $count);
echo $str1;
echo $count;

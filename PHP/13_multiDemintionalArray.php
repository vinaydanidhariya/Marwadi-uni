
<?php

$marks = array(
    "Amar" => array(
        "Physics" => 30,
        "Maths" => 20,
        "Chemistry" => 10
    ),
    "Jaymin" => array(
        "Physics" => 27,
        "Maths" => 25,
        "Chemistry" => 26
    ),
    "Umang" => array(
        "Physics" => 30,
        "Maths" => 29,
        "Chemistry" => 30
    )
);

echo "\nMarks For Amar is in Physics :".$marks["Amar"]["Physics"];
echo "\nMarks For Amar is in Marks :".$marks["Amar"]["Maths"];
echo "\nMarks For Amar is in Chemistry :".$marks["Amar"]["Chemistry"];


echo "\nMarks For Jaymin is in Physics :".$marks["Jaymin"]["Physics"];
echo "\nMarks For Jaymin is in Marks :".$marks["Jaymin"]["Maths"];
echo "\nMarks For Jaymin is in Chemistry :".$marks["Jaymin"]["Chemistry"];


echo "\nMarks For Umang is in Physics :".$marks["Umang"]["Physics"];
echo "\nMarks For Umang is in Marks :".$marks["Umang"]["Maths"];
echo "\nMarks For Umang is in Chemistry :".$marks["Umang"]["Chemistry"];

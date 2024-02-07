<?php

$salaries = array("Amar" => 10000, "Jaymin" => 20000, "Umang" => 50000);


echo "Salary of Amar is ".$salaries['Amar']."\n";
echo "Salary of Jaymin is ".$salaries['Jaymin']."\n";
echo "Salary of Umang is ".$salaries['Umang']."\n";

$salaries['Umang']="High";
$salaries['Amar']="Medium";
$salaries['Jaymin']="Low";


echo "Salary of Amar is ".$salaries['Amar']."\n";
echo "Salary of Jaymin is ".$salaries['Jaymin']."\n";
echo "Salary of Umang is ".$salaries['Umang']."\n";

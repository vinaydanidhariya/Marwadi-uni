<?php 
class customException extends Exception {
public function errorMessage() {    
    echo"Invalid Email id Formate";
}
}

$email = "viany@marwadi.com";
try {
    if(filter_var($email, FILTER_VALIDATE_EMAIL)==false) {
    throw new customException($email);
    }
    if (strpos($email,"marwadi") == true) {
        throw new Exception("$email MARWADI EMAIL ADDRESS");
    }
    else {
        throw new Exception("$email NOT MARWADI EMAIL ADDRESS");
    }
}
catch (customException $e) {
    echo $e->errorMessage();
}
catch (Exception $e) {    
    echo $e->getMessage();
}
?>
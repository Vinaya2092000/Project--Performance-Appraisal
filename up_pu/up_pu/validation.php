<?php
   $username = $_POST ["username"];  
   if (!preg_match ("/^[a-zA-z]*$/", $name) ) {  
       $ErrMsg = "Only alphabets and whitespace are allowed.";  
                echo $ErrMsg;  
   } else {  
       echo $username;  
   }  



   $mobileno = $_POST ["Mobile_no"];  
    if (!preg_match ("/^[0-9]*$/", $mobileno) ){  
        $ErrMsg = "Only numeric value is allowed.";  
        echo $ErrMsg;  
    } else {  
        echo $mobileno;  
    }



    $email = $_POST ["Email"];  
    $pattern = "^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$^";  
    if (!preg_match ($pattern, $email) ){  
        $ErrMsg = "Email is not valid.";  
                echo $ErrMsg;  
    } else {  
        echo "Your valid email address is: " .$email;  
    }  





?>
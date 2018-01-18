<?php

    /* Attempt MySQL server connection. Assuming you are running MySQL
    server with default setting (user 'root' with no password) */

    $link = mysqli_connect("localhost", "root", "", "detail");

    // Check connection

    if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }

    // Escape user inputs for security
	
    $na = mysqli_real_escape_string($link, $_POST['text_name']);
    $ag = mysqli_real_escape_string($link, $_POST['text_age']);
    $gender = mysqli_real_escape_string($link, $_POST['text_sex']);
	$st = mysqli_real_escape_string($link, $_POST['text_status']);
	$mob = mysqli_real_escape_string($link, $_POST['text_number']);
	$co = mysqli_real_escape_string($link, $_POST['text_country']);
    $sta = mysqli_real_escape_string($link, $_POST['text_state']);
    $are = mysqli_real_escape_string($link, $_POST['text_area']);
	$pin = mysqli_real_escape_string($link, $_POST['text_code']);
	$salary = mysqli_real_escape_string($link, $_POST['text_income']);
    $num = mysqli_real_escape_string($link, $_POST['text_marks']);
    $jo = mysqli_real_escape_string($link, $_POST['text_job']);
	$heal = mysqli_real_escape_string($link, $_POST['text_health']);
	$par = mysqli_real_escape_string($link, $_POST['text_parent']);
 
    // attempt insert query execution
    
	$sql1 = "INSERT INTO Address (Country,State,Area,Pincode) VALUES ('$co', '$sta', '$are','$pin')";
	$sql2 = "INSERT INTO other_details (income,percentage,type,Health_check,Parents) VALUES ('$salary', '$num', '$jo','$heal','$par')";
	$sql3 = "INSERT INTO details (name,age,sex,status) VALUES ('$na', '$ag', '$gender','$st')";

    if(mysqli_query($link, $sql1)){
        echo "...";
    } else{
        echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
    }
	 if(mysqli_query($link, $sql2)){
        echo "...";
    } else{
        echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
    }
	 if(mysqli_query($link, $sql3)){
        echo "..Records added successfully.";
    } else{
        echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
    }

    // close connection
    mysqli_close($link);
?>
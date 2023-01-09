<?php
    // Create connection
    $con =mysqli_connect("localhost","root","","su_store");
    // Check connection
    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
    }
    //echo "Connected successfully";
    //require("../index.php");
?>
<?php
    ob_start();

    // Start sessions
    session_start();

    // Sets timezone for saving datetimes in DB
    $timezone = date_default_timezone_set('Asia/Ho_Chi_Minh');

    // Create connection
    // URL, USER, PW, DB
    $con = mysqli_connect("localhost", "root", "", "spotify-project");

    if(mysqli_connect_errno()) {
        echo "Failed to connect" . mysqli_connect_errno();
    }
?>
<?php
    include("../../config.php");
    if(isset($_POST['name']) && isset($_POST['username'])) {
        $name = $_POST['name'];
        $username = $_POST['username'];
      //  $date = date("Y-m-d");
        echo $name ;
        $query = mysqli_query($con, "INSERT INTO playlists VALUES('', '$name', '$username', '')");
    }
    else {
        echo "Name or Username not passed";
    }
?>
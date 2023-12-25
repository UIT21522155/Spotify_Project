<?php
    include("../controller/config.php");
    include("../controller/model/User.php");
    include("../controller/model/Artist.php");
    include("../controller/model/Album.php");
    include("../controller/model/Song.php");
    include("../controller/model/Playlist.php");

    // LOGOUT
    // session_destroy();

    if(isset($_SESSION['userLoggedIn'])) {
        $userLoggedIn = new User($con, $_SESSION['userLoggedIn']);
        $username = $userLoggedIn->getUsername();
        echo "<script>userLoggedIn = '$username';</script>";
    }
    else {
        header("Location: register.php");
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Spotify: Music for everyone</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../item/css/perfect-scrollbar.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../item/css/style.css" />
    <script type="text/javascript" src="../item/js/jquery-3.3.1.min.js" ></script>
    <script src="../item/js/script.js"></script>
</head>
<body>
    <div id="mainContainer">
        <div id="topContainer">
            <?php include("../controller/navBarContainer.php"); ?>

            <div id="mainViewContainer">
                <div id="mainContent">
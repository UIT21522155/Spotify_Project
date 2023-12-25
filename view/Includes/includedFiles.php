<?php
    // If request was sent with AJAX not manually typing url
    if(isset($_SERVER['HTTP_X_REQUESTED_WITH'])) {
        include("Includes/config.php");
        include("Includes/model/User.php");
        include("Includes/model/Artist.php");
        include("Includes/model/Album.php");
        include("Includes/model/Song.php");
        include("Includes/model/Playlist.php");
        

        if(isset($_GET['userLoggedIn'])) {
            $userLoggedIn = new User($con, $_GET['userLoggedIn']);
        }
        else {
            echo "username not passed";
            exit(); //Dont load rest of the page
        }
    }
    else { //manualy url or pressed on link
        include("Includes/header.php");
        include("Includes/footer.php");
        $url = $_SERVER['REQUEST_URI'];
        echo "<script>openPage('$url')</script>";
        // To prevent from executing the if condition again after loading content with AJAX
        exit();
    }
?>
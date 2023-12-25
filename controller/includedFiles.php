<?php
    // If request was sent with AJAX not manually typing url
    if(isset($_SERVER['HTTP_X_REQUESTED_WITH'])) {
        include("../controller/config.php");
        include("../controller/model/User.php");
        include("../controller/model/Artist.php");
        include("../controller/model/Album.php");
        include("../controller/model/Song.php");
        include("../controller/model/Playlist.php");
        

        if(isset($_GET['userLoggedIn'])) {
            $userLoggedIn = new User($con, $_GET['userLoggedIn']);
        }
        else {
            echo "username not passed";
            exit(); //Dont load rest of the page
        }
    }
    else { //manualy url or pressed on link
        include("../controller/header.php");
        include("../controller/footer.php");
        $url = $_SERVER['REQUEST_URI'];
        echo "<script>openPage('$url')</script>";
        // To prevent from executing the if condition again after loading content with AJAX
        exit();
    }
?>
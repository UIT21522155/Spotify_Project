<?php
    // If request was sent with AJAX not manually typing url
    if(isset($_SERVER['HTTP_X_REQUESTED_WITH'])) {
<<<<<<< HEAD:view/Includes/includedFiles.php
        include("Includes/config.php");
        include("Includes/model/User.php");
        include("Includes/model/Artist.php");
        include("Includes/model/Album.php");
        include("Includes/model/Song.php");
        include("Includes/model/Playlist.php");
=======
        include("../controller/config.php");
        include("../controller/model/User.php");
        include("../controller/model/Artist.php");
        include("../controller/model/Album.php");
        include("../controller/model/Song.php");
        include("../controller/model/Playlist.php");
>>>>>>> c0337f45db05e67d47bc4cf194dd167340d96b3b:controller/includedFiles.php
        

        if(isset($_GET['userLoggedIn'])) {
            $userLoggedIn = new User($con, $_GET['userLoggedIn']);
        }
        else {
            echo "username not passed";
            exit(); //Dont load rest of the page
        }
    }
    else { //manualy url or pressed on link
<<<<<<< HEAD:view/Includes/includedFiles.php
        include("Includes/header.php");
        include("Includes/footer.php");
=======
        include("../controller/header.php");
        include("../controller/footer.php");
>>>>>>> c0337f45db05e67d47bc4cf194dd167340d96b3b:controller/includedFiles.php
        $url = $_SERVER['REQUEST_URI'];
        echo "<script>openPage('$url')</script>";
        // To prevent from executing the if condition again after loading content with AJAX
        exit();
    }
?>
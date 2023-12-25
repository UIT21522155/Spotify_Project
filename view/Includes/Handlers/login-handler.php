<?php 
    if (isset($_POST["loginButton"])) {
        $username = $_POST['loginUsername'];
        $password = $_POST['loginPassword'];

        $result = $account->login($username, $password);

        if ($result) {
            $_SESSION['userLoggedIn'] = $username;
            header("Location: index.php");
        }
    }
    if(isset($_POST["loginAsGuest"]))
    {
        $username = "Default";
        $password = "123456789";
        $result = $account->login($username,$password);
        if($result)
    {
        $_SESSION['userLoggedIn'] = $username ;
        header("Location: index.php");
    }
    }
?>
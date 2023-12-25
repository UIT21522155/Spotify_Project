<?php 
function sanitizeFormUserName($stringInput){
	$stringInput = strip_tags($stringInput);
	$stringInput = str_replace(" ", "", $stringInput);
	return $stringInput;
}

function sanitizeFormString($stringInput){
	$stringInput = strip_tags($stringInput);
	$stringInput = str_replace(" ", "", $stringInput);
	$stringInput=ucfirst(strtolower($stringInput));
	return $stringInput;
}

function sanitizeFormPassword($stringInput)
{
	$stringInput = strip_tags($stringInput);
	return $stringInput;
}

if (isset($_POST["registerButton"])) {
	$username = sanitizeFormUserName($_POST["username"]);
	$name = sanitizeFormString($_POST["name"]);
	$email = sanitizeFormString($_POST["email"]);
	$password = sanitizeFormPassword($_POST["password"]);
	$password2 = sanitizeFormPassword($_POST["password2"]);

	$wasSuccessful = $account->register($username,$name,$email,$password,$password2);
	if($wasSuccessful){
		$_SESSION['userLoggedIn'] = $username;
		header("Location:index.php");
	}
}

 ?>
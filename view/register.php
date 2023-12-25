<?php
include("Includes/config.php");
include("Includes/model/Account.php");
include("Includes/model/Constants.php");
$account = new Account($con);
include("Includes/Handlers/register-handler.php");
include("Includes/Handlers/login-handler.php");

function getInputValue($name) {
    if(isset($_POST[$name])) {
        echo $_POST[$name];
    }
}
// To return the user to index.php if he is logged in
if(isset($_SESSION['userLoggedIn'])) {
    if ($_SESSION['userLoggedIn']) {
        header("Location: index.php");
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spotify Log in</title>
    <script type="text/javascript" src="../item/js/jquery-3.3.1.min.js" ></script>
     <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../item/js/register.js"></script>
<style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    list-style: none;
}

html{
    font-family: CircularSpTitle, CircularSpTitle-Tall, CircularSp-Arab, CircularSp-Hebr, CircularSp-Cyrl, CircularSp-Grek, CircularSp-Deva, sans-serif;
}

header{
    background-color: #000;
    padding: 30px 0px 30px 51px;

}

header .logo img{
    width: 120px;

}

section {
    background: linear-gradient(rgba(11,1,1,0.9)0%,rgb(0,0,0)100%);
    display: flex;
    align-items: center;
    justify-content: center;
}

section div.main{
    margin: 16px 0;
    padding: 32px;
    width: 1600px;
    height: 1080px;

    flex-wrap: wrap;
}


section div.main h1{
    text-align: center;
    margin: 10px 0;
    color: white;
    font-size: 48px;
}

section div.main h2{
    text-align: center;
    margin: 25px 0;
    color: white;
    font-size: 40px;
}
 /* format cho hình ảnh của gg, fb, apple */
section div.main .account-connect{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}

section div.main .account-connect button{
    width: 324px;
    text-align: center;
    padding: 10px 20px;
    border: none;
    outline: none;
    margin: 5px 0;
    border-radius: 500px;
    color: white;
    background: transparent;
    border: 1px solid #878787;
    font-size: 15px;
    font-weight: bold;
}

/* format toàn bộ các nút  gg fb ap */
section div.main .account-connect button img{
    float: left;
    margin:  0 10px;
    width: 32px;
}

section div.main .account-connect button span{
    position: relative;
    top: 3px;
}

/* chỉnh lại thanh ngang */
section div.main hr {
    margin: 32px 100px;
    border-right: none;
    border-bottom: none;
    border-left: none;
    border-image: initial;
    border-top: 1px solid rgb(41,41,41);
}


/* Vừng đăng nhập tài khoản, mật khẩu */

section div.main .login-form{
    display: flex;
    align-items: flex-start;
    justify-content: center;
    font-weight: bold;
    background: black;
    border-radius: 10px;
}

section div.main .signin-form{
    display: flex;
    align-items: center;
    justify-content: space-around;
    font-weight: bold;
    flex-direction: column;
    background: black;
    border-radius: 10px;
}
section div.main form label{
    color: white;
    font-size: 14px;
    margin-bottom: 8px;
    display:  inline-block;
    flex-wrap: wrap;
}

section div.main form input{
    display: block;
    padding: 14px;
    width: 324px;
    margin-bottom: 15px;
    font-size: 15px;
    font-weight: 500;
    background: rgb(18,18,18);
    outline: none;
    border: none;
    appearance: none;
    border-radius: 4px;
    box-shadow: inset 0 0 0 1px #878787;
    color: white;
}

form.login-form {
    background: #000;

}

form.sig
.switch {
    margin: 0px;
    padding: 0px;
}

.switch input[type=checked]{
    height: 0;
    width: 0;
    visibility: hidden;
}

.switch label{
    margin: 10px 0px 20px 0px;
    cursor: pointer;
    padding: 3px;
    width: 32px;
    height: 16px;
    background: #727272;
    display: block;
    border-radius: 50em;
    position: relative;
    transition: .1s;
    box-sizing: border-box;
}

.switch label::after{
    content: '';
    position:absolute;
    width: 11px;
    height: 10px;
    background: black;
    border-radius: 50em;
    transition:  .1s;


}

.switch input:active+label{
    background-color: #727272;

}

.switch input:checked+label{
    background-color: #1ed760;
    
}

.switch input:checked+lable::after{
    transform: translateX(calc(100%+5px));
}

input#switch{
    display: none;
}

.switch span{
    color: white;
    font-size: 13px;
    font-weight: 400;
    position: relative;
    left: 7px;
    bottom: 11px;
}

section div.main button{
    background-color: #1ed760;
    border-radius: 30px;
    font-weight: bold;
    padding: 8px 32px;
    height: 48px;
    width: 324px;
    letter-spacing: .4px;
    font-size: 16px;
    margin: 20px 0s;
}
 /* fontmat lại vị trí của Forgot password */
section div.main .login-form a{
    display: block;
    text-align: center;
    color: white;
    font-weight: 400;
    text-decoration: underline;


}
/* Section quên pas */
section div.main .last{
    margin: 10px 0;
    text-align: center;
}

section div.main .last span{
    color: #A7A7A7;
    margin-right: 3px;
}

section div.main .last a{
    color: white;
    text-decoration: underline;
}
</style>
</head>
<body>
    <!-- Logo spotify -->
    <header>
        <div class = "logo">
            <a href="index.html"></a>
            <img src="../item/images/other_img/logo-signin.png" alt="logo spotify">

        </div>
    </header>

    <section>
<!-- chèn hình ảnh đăng nhập từ gg, fb, aple -->
        <div class="main">
            <div class="row">
            <h1>Welcome To Spotify</h1>
                <!-- <button class = "a-c-btn" id="g"><img src="img/google.png"><span>Continue with Google</span></button>
                <button class = "a-c-btn" id="f"><img src="img/facebook.png"><span>Continue with Facebook</span></button>
                <button class = "a-c-btn" id="a"><img src="img/apple.png"><span>Continue with Apple</span></button>

             -->
            

            <hr>
            <!-- Tạo vùng nhập Tài khoản, mật khẩu -->
            <div class="login-form col-6">
                <form class="login" action="register.php" id="loginForm" method="POST">
               
                    <h2>Login</h2>
                        
                        <label for="loginUsername">Username</label>
                        <input type="text" id="loginUsername" name="loginUsername" value="<?php getInputValue('loginUsername') ?>" placeholder="Email or username" required>
                    
                    
                        <label for="loginPassword">Password</label>
                        <input type="password" id="loginPassword" name="loginPassword" placeholder="Password" required>
                    

                    <button type="submit" name="loginButton">LOG IN</button>

                    
                    <hr>    
            
                    <button type = "submit" name="loginAsGuest">Continue As Guest</button>
                </form> 
            </div>
            


                <div class="signin-form col-6">
                <form class="signin" action="register.php" id="registerForm" method="POST"    >
                <h2>Create your free account</h2>
                    
                        
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" placeholder="username" value="<?php getInputValue("username") ?>" required>
                    

                    
                        
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" placeholder="name"  value="<?php getInputValue("name") ?>" required>
                    
                
                    
                       
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="email" value="<?php getInputValue("email") ?>" required>
                    
                    
                    
                        
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Your password" required>
                    
                
                        <label for="password2">Confirm password</label>
                        <input type="password" id="password2" name="password2" placeholder="Your password" required>
                    

                    <button type="submit" name="registerButton">SIGN UP</button>
                </form>
                </div>
            
            <hr>
            </div>
        </div>

    </section>
</body>
</html>
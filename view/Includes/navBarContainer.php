<div id="navBarContainer">
    <nav class="navBar ">
        <div onclick="openPage('index.php');" class="logo">
            <img  src="../item/images/other_img/logo.png" alt="Logo">
        </div>

        <div class="group">
            <div class="navItem" id="navItemSearch">
                <span onclick="openPage('search.php');" class="navItemLink">Search<img src="../item/images/other_img/search.png" alt="Search" class="icon"></span>
            </div>
        </div>

        <div class="group">
            <div class="navItem">
                <span onclick="openPage('browse.php');" class="navItemLink">Browse</span>
            </div>

            <div class="navItem">
                <span onclick="openPage('topRated.php');" class="navItemLink">Top 10</span>
            </div>

            <div class="navItem">
                <span onclick="openPage('yourMusic.php');" class="navItemLink">Your Music</span>
            </div>

            <div class="navItem">
                <span onclick="openPage('settings.php');" class="navItemLink"><?php echo $userLoggedIn->getName(); ?></span>
            </div>
        </div>
    </nav>
</div>

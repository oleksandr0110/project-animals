<?php
require_once 'core/config.php';
require_once 'core/function.php';
$conn = connect();
$data = select($conn);
require_once 'check_login.php';
$flash='';
if (isset($_COOKIE['bd_create_success']) AND $_COOKIE['bd_create_success']!=''){
    if ($_COOKIE['bd_create_success'] == 1) {
        setcookie('bd_create_success', 1, time()-10);
        // $flash =  "New record created successfully";
        echo "<div class='update mx-auto'><h3 class='mt-4 ml-4'>New record created successfully.</h3> <p class='ml-4'><i>Click this message to hide</i></p></div>";
    }
}
if (isset($_COOKIE['bd_update_success']) AND $_COOKIE['bd_update_success']!=''){
    if ($_COOKIE['bd_update_success'] == 1) {
        setcookie('bd_update_success', 1, time()-10);
        // $flash =  "New record update successfully";
        echo "<div class='update mx-auto'><h3 class='mt-4 ml-4'>New record update successfully.</h3> <p class='ml-4'><i>Click this message to hide</i></p></div>";
    }
}
?>
<?php
require_once 'template/header_admin_html.php';
?>

<?php
$route = $_GET['route'];
if ($route == '' OR $route == '/') {
    require_once 'main.php';
}
else if ($route == 'admin'){
    require_once 'admin.php';
}
else if ($route == 'admin-create'){
    require_once 'admin_create.php';
}
else if ($route == 'login'){
    require_once 'login.php';
}
else {
    $route = explode("/", $route);
    if ($route[0] == 'admin-update') {
        $_GET['id'] = $route[1];
        require_once 'admin_update.php';
    }
    if ($route[0] == 'admin-delete') {
        $_GET['id'] = $route[1];
        require_once 'admin_delete.php';
    }
    if ($route[0] == 'cat') {
        $_GET['id'] = $route[1];
        require_once 'category.php';
    }
    if ($route[0] == 'tag') {
        $_GET['tag'] = $route[1];
        require_once 'tag.php';
    }
    if ($route[0] == 'page') {
        $_GET['page'] = $route[1];
        require_once 'main.php';
    }
    if ($route[0] == 'admin') {
        $_GET['page'] = $route[1];
        require_once 'admin.php';
    }
    else if ($route[0] == 'arcticle'){
        $_GET['id'] = $route[1];
        require_once 'arcticle.php';
    }
}

?>

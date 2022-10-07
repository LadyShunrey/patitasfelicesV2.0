<?php

require_once('controllers/patitastienda.controller.php');

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if(!empty($_GET['action'])){
    $action = $_GET['action'];
}
else{
    $action = 'home';
}

$params = explode('/', $action);

$controller = new StoreController();

switch($params[0]){
    case 'home':
        $controller->showHome();
        $controller->showAllProducts();
        break;
    default:
        echo'404 - Página no encontrada';
        break;
}
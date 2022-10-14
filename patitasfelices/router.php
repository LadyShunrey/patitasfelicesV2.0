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
        break;
    case 'showAllProducts':
        $controller->showAllProducts();
        break;
    case 'adminTable':
        $controller->showAdminTable();
        break;
    case 'productDetails':
        $controller->productDetails($params[1]);
        break;
    case 'newProduct':
        $controller->newProduct();
        break;
    case 'addProduct':
        $controller->addProduct();
        break;
    case 'editProduct':
        $controller->editProduct($params[1]);
        break;
    case 'editProductOnDB':
        $controller->editProductOnDB($params[1]);
        break;
    case 'deleteProduct':
        $controller->deleteProduct($params[1]);
        break;
    case 'showCategories':
        $controller->showCategories();
        break;
    case 'productsByCategory':
        $controller->productsByCategory($params[1]);
        break;
    case 'newCategory':
        $controller->newCategory();
        break;
    case 'addCategory':
        $controller->addCategory();
        break;
    case 'editCategory':
        $controller->editCategory($params[1]);
        break;
    case 'editCategoryOnDB':
        $controller->editCategoryOnDB($params[1]);
        break;
    case 'deleteCategory':
        $controller->deleteCategory();
        break;
    case 'newType':
        $controller->newType();
        break;
    case 'addType':
        $controller->addType();
        break;
    case 'editType':
        $controller->editType($params[1]);
        break;
    case 'editTypeOnDB':
        $controller->editTypeOnDB($params[1]);
        break;
    default:
echo'404 - Página no encontrada';
        break;
}
<?php

require_once('controllers/product.controller.php');
require_once('controllers/category.controller.php');
require_once('controllers/type.controller.php');
require_once('controllers/auth.controller.php');

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');
define('LOGIN', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/login');

if(!empty($_GET['action'])){
    $action = $_GET['action'];
}
else{
    $action = 'home';
}

$params = explode('/', $action);




$authController = new AuthController();


switch($params[0]){
    case 'home':
        $productController = new ProductController();
        $productController->showHome();
        break;
    case 'login':
        // $authController = new AuthController();
        if ($_SERVER['REQUEST_METHOD'] == 'POST'){ //si vino por POST
            $authController->login();   
        }
        else { 
            $authController->showLogin();
        }
        break;
    case 'logout':
        // $authController = new AuthController();
        $authController->logout();
        break;
    case 'tienda':
        $productController = new ProductController();
        $productController->showAllProducts();
        break;
    case 'backoffice':
        $authController->showBackoffice();
        break;
    case 'backoffice-productos':
        $productController = new ProductController();
        $productController->showBackofficeProducts();
        break;
    case 'backoffice-categorias':
        $categoryController = new CategoryController();
        $categoryController->showBackofficeCategories();
        break;
    case 'backoffice-tipos':
        $typeController = new TypeController();
        $typeController->showBackofficeTypes();
        break;
    case 'product-details':
        $productController = new ProductController();
        $productController->productDetails($params[1], $params[2]);
        break;
    case 'newProduct':
        $productController = new ProductController();
        $productController->newProduct();
        break;
    case 'addProduct':
        $productController = new ProductController();
        $productController->addProduct();
        break;
    case 'editProduct':
        $productController = new ProductController();
        $productController->editProduct($params[1]);
        break;
    case 'editProductOnDB':
        $productController = new ProductController();
        $productController->editProductOnDB($params[1]);
        break;
    case 'deleteProduct':
        $productController = new ProductController();
        $productController->deleteProduct($params[1]);
        break;
    case 'showCategories':
        $categoryController = new CategoryController();
        $categoryController->showCategories();
        break;
    case 'productsByCategory':
        $productController = new ProductController();
        $productController->productsByCategory($params[1]);
        break;
    case 'newCategory':
        $categoryController = new CategoryController();
        $categoryController->newCategory();
        break;
    case 'addCategory':
        $categoryController = new CategoryController();
        $categoryController->addCategory();
        break;
    case 'editCategory':
        $categoryController = new CategoryController();
        $categoryController->editCategory($params[1]);
        break;
    case 'editCategoryOnDB':
        $categoryController = new CategoryController();
        $categoryController->editCategoryOnDB($params[1]);
        break;
    case 'deleteCategory':
        $categoryController = new CategoryController();
        $categoryController->deleteCategory();
        break;
    case 'newType':
        $typeController = new TypeController();
        $typeController->newType();
        break;
    case 'addType':
        $typeController = new TypeController();
        $typeController->addType();
        break;
    case 'editType':
        $typeController = new TypeController();
        $typeController->editType($params[1]);
        break;
    case 'editTypeOnDB':
        $typeController = new TypeController();
        $typeController->editTypeOnDB($params[1]);
        break;
    default:
echo'404 - Página no encontrada';
        break;
}
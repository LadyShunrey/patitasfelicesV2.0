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
        switch($params[1] ?? ""){
            case '':
                $productController = new ProductController();
                $productController->showAllProducts();
                break;
            case 'categorias':
                switch($params[2] ?? ""){
                    case'':
                        $categoryController = new CategoryController();
                        $categoryController->showCategories();
                        break;
                    case 'productos':
                        $productController = new ProductController();
                        $productController->productsByCategory($params[3]);
                        break;
                }
                break;
            case 'product':
                $productController = new ProductController();
                $productController->productDetails($params[2], $params[3]);
                break;
        }
        break;
    case 'backoffice':
        switch($params[1] ?? ""){
            case '':
                $authController->showBackoffice();
                break;
            case 'productos':
                switch($params[2] ?? ""){
                    case'':
                        $productController = new ProductController();
                        $productController->showBackofficeProducts();
                        break;
                    case 'detalle':
                        $productController = new ProductController();
                        $productController->productDetails($params[3], $params[4]);
                        break;
                    case 'editar':
                        $productController = new ProductController();
                        $productController->editProduct($params[3]);
                        break;
                    case'nuevo':
                        $productController = new ProductController();
                        $productController->newProduct();
                        break;
                }
                break;
            case 'categorias':
                switch($params[2] ?? ""){
                    case'':
                        $categoryController = new CategoryController();
                        $categoryController->showBackofficeCategories();
                        break;
                    case'productos':
                        $productController = new ProductController();
                        $productController->productsByCategory($params[3]);
                        break;
                    case'nueva':
                        $categoryController = new CategoryController();
                        $categoryController->newCategory();
                        break;
                    case 'editar':
                        $categoryController = new CategoryController();
                        $categoryController->editCategory($params[3]);
                        break;
                }
                break;
            case 'tipos':
                switch($params[2] ?? ""){
                    case'':
                        $typeController = new TypeController();
                        $typeController->showBackofficeTypes();
                        break;
                    case 'nuevo':
                        $typeController = new TypeController();
                        $typeController->newType();
                        break;
                    case'editar':
                        $typeController = new TypeController();
                        $typeController->editType($params[3]);
                        break;
                }
                break;
        }
        break;
    case 'addProduct':
        $productController = new ProductController();
        $productController->addProduct();
        break;        
    case 'editProductOnDB':
        $productController = new ProductController();
        $productController->editProductOnDB($params[1]);
        break;
    case 'deleteProduct':
        $productController = new ProductController();
        $productController->deleteProduct($params[1]);
        break;
    case 'addCategory':
        $categoryController = new CategoryController();
        $categoryController->addCategory();
        break;
    case 'editCategoryOnDB':
        $categoryController = new CategoryController();
        $categoryController->editCategoryOnDB($params[1]);
        break;
    case 'deleteCategory':
        $categoryController = new CategoryController();
        $categoryController->deleteCategory($params[1]);
        break;
    case 'addType':
        $typeController = new TypeController();
        $typeController->addType();
        break;
    case 'editTypeOnDB':
        $typeController = new TypeController();
        $typeController->editTypeOnDB($params[1]);
        break;
    case 'deleteType':
        $typeController = new TypeController();
        $typeController->deleteType($params[1]);
        break;
    default:
echo'404 - Página no encontrada';
        break;
}
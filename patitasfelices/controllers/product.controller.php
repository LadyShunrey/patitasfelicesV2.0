<?php

require_once('models/product.model.php');
require_once('views/product.view.php');
require_once('helpers/auth.helper.php');

class ProductController{
    
    private $model;
    private $view;
    private $authHelper;

    public function __construct(){
        $this->model = new ProductModel();
        $this->view = new ProductView();
        $this->authHelper = new AuthHelper();
    }

    public function showHome(){
        $this->view->showHome();
    }

    public function showBackofficeProducts(){
        //verificar que esté loggueado
        $this->authHelper->checkLoggedIn();

        $products = $this->model->getAllProducts();
        
        
        $this->view->showBackofficeProducts($products);
    }

    public function showAllProducts(){
        $products = $this->model->getAllProducts();
        $this->view->showAllProducts($products);
    }

    public function productDetails($id, $name){
        $product = $this->model->getProduct($id);
        
        $this->view->productDetails($product, $name);
    }

    public function newProduct(){
        $modelCategory = new CategoryModel();
        $modelType = new TypeModel();
        $categories = $modelCategory->getAllCategories();
        $types = $modelType->getAllTypes();
        $this->view->newProduct($categories, $types);
    }

    public function addProduct(){
        $name = $_REQUEST['name'];
        $description = $_REQUEST['description'];
        $color = $_REQUEST['color'];
        $size = $_REQUEST['size'];
        $price = $_REQUEST['price'];
        $stock = $_REQUEST['stock'];
        $category_fk = $_REQUEST['category_fk'];
        $type_fk = $_REQUEST['type_fk'];
        

        $this->model->addProduct($name, $description, $color, $size, $price, $stock, $category_fk, $type_fk);

        $this->showBackofficeProducts();
    }

    public function editProduct($id){
        $product = $this->model->getProduct($id);
        $modelCategory = new CategoryModel();
        $modelType = new TypeModel();
        $categories = $modelCategory->getAllCategories();
        $types = $modelType->getAllTypes();
        $this->view->editProduct($product, $categories, $types);
    }

    public function editProductOnDB($id){
        $name = $_REQUEST['name'];
        $description = $_REQUEST['description'];
        $color = $_REQUEST['color'];
        $size = $_REQUEST['size'];
        $price = $_REQUEST['price'];
        $stock = $_REQUEST['stock'];
        $category_fk = $_REQUEST['category_fk'];
        $type_fk = $_REQUEST['type_fk'];

        $this->model->editProduct($id, $name, $description, $color, $size, $price, $stock, $category_fk, $type_fk);
        $this->editProduct($id);
    }

    public function deleteProduct($id){
        $this->model->deleteProduct($id);
        $this->showBackofficeProducts();
    }

    public function productsByCategory($id_category){
        $products = $this->model->getProductByCategory($id_category);
        $this->view->showAllProducts($products);
    }

}
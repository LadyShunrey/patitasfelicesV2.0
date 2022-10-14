<?php

include_once('models/patitastienda.model.php');
include_once('views/patitastienda.view.php');

class StoreController{
    
    private $model;
    private $view;

    public function __construct(){
        $this->model = new StoreModel();
        $this->view = new StoreView();
    }

    public function showHome(){
        $this->view->showHome();
    }

    public function productDetails($id){
        $product = $this->model->getProduct($id);
        $this->view->productDetails($product);
    }

    public function showAdminTable(){
        $products = $this->model->getAllProducts();
        $this->view->showAdminTable($products);
    }

    public function newProduct(){
        $this->view->newProduct();
        // $this->model
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

        header("Location: " . BASE_URL);
    }
}
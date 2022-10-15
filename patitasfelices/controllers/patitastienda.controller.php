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

    public function showAllProducts(){
        $products = $this->model->getAllProducts();
        $this->view->showAllProducts($products);
    }

    public function productDetails($id, $name){
        $product = $this->model->getProduct($id);
        
        $this->view->productDetails($product, $name);
    }

    public function showAdminTable(){
        $products = $this->model->getAllProducts();
        $categories = $this->model->getAllCategories();
        $types = $this->model->getAllTypes();
        $this->view->showAdminTable($products, $categories, $types);
    }

    public function newProduct(){
        $this->view->newProduct();
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

        $this->showAdminTable();
    }

    public function editProduct($id){
        $product = $this->model->getProduct($id);
        $this->view->editProduct($product);
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
        $product = $this->model->deleteProduct($id);
        $this->showAdminTable();
    }

    public function showCategories(){
        $categories = $this->model->getAllCategories();
        $this->view->showCategories($categories);
    }

    public function productsByCategory($id_category){
        $products = $this->model->getProductByCategory($id_category);
        $this->view->showAllProducts($products);
    }

    public function newCategory(){
        $this->view->newCategory();
    }

    public function addCategory(){
        $category_name = $_REQUEST['category_name'];
        $this->model->addCategory($category_name);

        $this->showAdminTable();
    }

    public function editCategory($id_category){
        $category = $this->model->getCategory($id_category);
        $this->view->editCategory($category);
    }

    public function editCategoryOnDB($id_category){
        $category_name = $_REQUEST['category_name'];

        $this->model->editCategory($id_category, $category_name);
        $this->editCategory($id_category);
    }

    public function deleteCategory(){

    }

    public function newType(){
        $this->view->newType();
    }

    public function addType(){
        $type_name = $_REQUEST['type_name'];
        $this->model->addType($type_name);

        $this->showAdminTable();
    }

    public function editType($id_type){
        $type = $this->model->getType($id_type);
        $this->view->editType($type);
    }

    public function editTypeOnDB($id_type){
        $type_name = $_REQUEST['type_name'];

        $this->model->editType($id_type, $type_name);
        $this->editType($id_type);
    }
}
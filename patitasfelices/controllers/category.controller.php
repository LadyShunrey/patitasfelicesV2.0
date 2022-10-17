<?php

require_once('models/category.model.php');
require_once('views/category.view.php');
require_once('helpers/auth.helper.php');

class CategoryController{

    private $model;
    private $view;
    private $authHelper;

    public function __construct(){
        $this->model = new CategoryModel();
        $this->view = new CategoryView();
        $this->authHelper = new AuthHelper();
    }

    public function showBackofficeCategories(){
        //verificar que esté loggueado
        $this->authHelper->checkLoggedIn();

       
        $categories = $this->model->getAllCategories();
        
        $this->view->showBackofficeCategories($categories);
    }

    public function showCategories(){
        $categories = $this->model->getAllCategories();
        $this->view->showCategories($categories);
    }

    public function newCategory(){
        $this->view->newCategory();
    }

    public function addCategory(){
        $category_name = $_REQUEST['category_name'];
        $this->model->addCategory($category_name);

        $this->showBackofficeCategories();
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

    public function deleteCategory($id_category){
        $this->model->deleteCategory($id_category);
        $this->showBackofficeCategories();
    }
}
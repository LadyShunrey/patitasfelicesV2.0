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

    public function mostrarDetalles(){
        $this->view->mostrarDetalles();
    }

    public function showOtraTabla(){
        $this->view->showAnotherTable();
    }
}
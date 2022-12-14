<?php

require_once('models/type.model.php');
require_once('views/type.view.php');
require_once('helpers/auth.helper.php');

class TypeController{
    private $model;
    private $view;
    private $authHelper;

    public function __construct(){
        $this->model = new TypeModel();
        $this->view = new TypeView();
        $this->authHelper = new AuthHelper();
    }

    public function showBackofficeTypes(){
        //verificar que esté loggueado
        $this->authHelper->checkLoggedIn();
        $types = $this->model->getAllTypes();
        $this->view->showBackofficeTypes($types);
    }

    public function showTypes(){
        $types = $this->model->getAllTypes();
        $this->view->showTypes($types);
    } 

    public function newType(){
        $this->authHelper->checkLoggedIn();
        $this->view->newType();
    }

    public function addType(){
        $this->authHelper->checkLoggedIn();
        $type_name = $_REQUEST['type_name'];
        $this->model->addType($type_name);

        $this->showBackofficeTypes();
    }

    public function editType($id_type){
        $this->authHelper->checkLoggedIn();
        $type = $this->model->getType($id_type);
        $this->view->editType($type);
    }

    public function editTypeOnDB($id_type){
        $this->authHelper->checkLoggedIn();
        $type_name = $_REQUEST['type_name'];

        $this->model->editType($id_type, $type_name);
        $this->editType($id_type);
    }

    public function deleteType($id_type){
        $this->authHelper->checkLoggedIn();
        $this->model->deleteType($id_type);
        $this->showBackofficeTypes();
    }
}
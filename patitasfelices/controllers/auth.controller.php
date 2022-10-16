<?php
include_once ('views/auth.view.php');

class AuthController{
    private $view;

    public function __construct(){
        $this->view = new AuthView();
    }

    public function showLogin(){
        $this->view->showFormLogin();
    }


}
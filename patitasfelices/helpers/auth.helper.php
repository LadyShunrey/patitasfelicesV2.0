<?php

class AuthHelper{

    public function checkLoggedIn(){
        //verificar que esté logueado
        session_start();
        if(empty($_SESSION['USER_ID'])){
            header("Location: " . LOGIN);
            die();
        }
    }
}
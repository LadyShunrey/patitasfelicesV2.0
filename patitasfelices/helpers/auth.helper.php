<?php

class AuthHelper{

    public function openSession() {
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }  
        session_abort();
    }

    public function checkLoggedIn(){
        //verificar que esté logueado
        session_start();
        if(empty($_SESSION['USER_ID'])){
            header("Location: " . LOGIN);
            die();
        }
        session_abort();
    }
}
<?php

class UserModel{
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_patitasfelices_tienda;charset=utf8','root','');
    }

    //Obtengo el usuario de la base de datos
    function getUser($user_name){
        $query = $this->db->prepare('SELECT * FROM user WHERE user_name = ?');
        $query->execute([$user_name]);
        $user = $query->fetch(PDO::FETCH_OBJ);

        return $user;
    }
}




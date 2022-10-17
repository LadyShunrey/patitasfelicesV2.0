<?php

class TypeModel{
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_patitasfelices_tienda;charset=utf8','root','');
    }

    function getAllTypes(){
        $query = $this->db->prepare('SELECT * FROM type');
        $query->execute();
        $types = $query->fetchAll(PDO::FETCH_OBJ);
        return $types;
    }

    function addType($type_name){
        $query = $this->db->prepare('INSERT INTO type(type_name) VALUES(?)');
        $query->execute([$type_name]);

        return $this->db->lastInsertId();
    }

    function getType($id_type){
        $query = $this->db->prepare('SELECT * FROM type WHERE type.id_type=?');
        $query->execute([$id_type]);
        $type = $query->fetch(PDO::FETCH_OBJ);
        return $type;
    }

    function editType($id_type, $type_name){
        $query = $this->db->prepare('UPDATE type SET type_name = ? WHERE type.id_type = ?');
        $query->execute([$type_name, $id_type]);
    }
}
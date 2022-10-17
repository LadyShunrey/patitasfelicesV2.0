<?php

class CategoryModel{
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_patitasfelices_tienda;charset=utf8','root','');
    }

    function getAllCategories(){
        $query = $this->db->prepare('SELECT * FROM category');
        $query->execute();
        $categories = $query->fetchAll(PDO::FETCH_OBJ);
        return $categories;
    }

    function getCategory($id_category){
        $query = $this->db->prepare('SELECT * FROM category WHERE category.id_category=?');
        $query->execute([$id_category]);
        $category = $query->fetch(PDO::FETCH_OBJ);
        return $category;
    }

    function addCategory($category_name){
        $query = $this->db->prepare('INSERT INTO category(category_name) VALUES(?)');
        $query->execute([$category_name]);

        return $this->db->lastInsertId();
    }

    function editCategory($id_category, $category_name){
        $query = $this->db->prepare('UPDATE category SET category_name = ? WHERE category.id_category = ?');
        $query->execute([$category_name, $id_category]);
    }

    function deleteCategory($id_category){
        $query = $this->db->prepare('DELETE FROM category WHERE category.id_category = ?');
        $query->execute([$id_category]);
    }
}
<?php

class StoreModel{
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_patitasfelices_tienda;charset=utf8','root','');
    }

    function getAllProducts(){
        $query = $this->db->prepare('SELECT * FROM product');
        $query->execute();
        $products = $query->fetchAll(PDO::FETCH_OBJ);
        return $products;
    }

    function getProduct($id){
        $query = $this->db->prepare('SELECT * FROM product WHERE product.id_product=?');
        $query->execute([$id]);
        $product = $query->fetch(PDO::FETCH_OBJ);
        return $product;
    }

    function addProduct($name, $description, $color, $size, $price, $stock, $category_fk, $type_fk){
        $query = $this->db->prepare('INSERT INTO product(name, description, color, size, price, stock, category_fk, type_fk) VALUES(?, ?, ?, ?, ?, ?, ?, ?)');
        $query->execute([$name, $description, $color, $size, $price, $stock, $category_fk, $type_fk]);

        return $this->db->lastInsertId();
    }


    //NO ME ESTA SALIENDO EL DE EDITAR :c
    function editProduct($id, $name, $description, $color, $size, $price, $stock, $category_fk, $type_fk){
        $query = $this->db->prepare('UPDATE product SET name = ?, description = ?, color = ?, size = ?, price = ?, stock = ?, category_fk = ?, type_fk = ? WHERE product.id_product = ?');
        $query->execute([$name, $description, $color, $size, $price, $stock, $category_fk, $type_fk, $id]);

    }

    function deleteProduct($id){
        $query = $this->db->prepare('DELETE FROM `product` WHERE `product`.`id_product` = ?');
        $query->execute([$id]);
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

    function getProductByCategory($id_category){
        $query = $this->db->prepare('SELECT * FROM product WHERE category_fk=?');
        $query->execute([$id_category]);
        $products = $query->fetchAll(PDO::FETCH_OBJ);
        return $products;
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
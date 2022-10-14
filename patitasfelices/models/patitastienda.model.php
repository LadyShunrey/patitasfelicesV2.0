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
}
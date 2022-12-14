<?php

require_once 'libs/smarty-4.2.1/libs/Smarty.class.php';

class ProductView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showHome(){
        $this->smarty->display('templates/home.tpl');
    }

    function showAllProducts($products){
        $this->smarty->assign('products', $products);
        $this->smarty->display('templates/showAllProducts.tpl');
    }

    function showBackofficeProducts($products){
        $this->smarty->assign('products', $products);
        $this->smarty->display('templates/backofficeProducts.tpl');
    }

    function newProduct($categories, $types){
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('types', $types);
        $this->smarty->display('templates/newProduct.tpl');
    }

    function productDetails($product){
        $this->smarty->assign('product', $product);
        $this->smarty->display('templates/productDetails.tpl');
    }

    function editProduct($product, $categories, $types){
        $this->smarty->assign('product', $product);
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('types', $types);
        $this->smarty->display('templates/editProduct.tpl');
    }

    function showHomeLocation(){
        header("Location: " . BASE_URL. "home");
    }

}
<?php

require_once 'libs/smarty-4.2.1/libs/Smarty.class.php';

class StoreView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showHome(){
        $this->smarty->display('templates/home.tpl');
    }

    function showAdminTable($products){
        $this->smarty->assign('products', $products);
        $this->smarty->display('templates/adminTable.tpl');
    }

    function newProduct(){
        $this->smarty->display('templates/newProduct.tpl');
    }

    function productDetails($product){
        $this->smarty->assign('product', $product);
        $this->smarty->display('templates/productDetails.tpl');
    }

    function editProduct($product){
        $this->smarty->assign('product', $product);
        $this->smarty->display('templates/editProduct.tpl');
    }

    function showHomeLocation(){
        header("Location: " . BASE_URL. "home");
    }

}
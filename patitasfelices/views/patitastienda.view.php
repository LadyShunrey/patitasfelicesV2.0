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

    function showAllProducts($products){
        $this->smarty->assign('products', $products);
        $this->smarty->display('templates/showAllProducts.tpl');
    }

    function showAdminTable($products, $categories, $types){
        $this->smarty->assign('products', $products);
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('types', $types);
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

    function showCategories($categories){
        $this->smarty->assign('categories', $categories);
        $this->smarty->display('templates/showCategories.tpl');
    }

    function newCategory(){
        $this->smarty->display('templates/newCategory.tpl');
    }

    function editCategory($category){
        $this->smarty->assign('category', $category);
        $this->smarty->display('templates/editCategory.tpl');
    }

    public function newType(){
        $this->smarty->display('templates/newType.tpl');
    }

    function editType($type){
        $this->smarty->assign('type', $type);
        $this->smarty->display('templates/editType.tpl');
    }

}
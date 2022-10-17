<?php

require_once 'libs/smarty-4.2.1/libs/Smarty.class.php';

class CategoryView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showBackofficeCategories($categories){
        $this->smarty->assign('categories', $categories);
        $this->smarty->display('templates/backofficeCategories.tpl');
    }

    function showAllProducts($categories){
        $this->smarty->assign('categories', $categories);
        $this->smarty->display('templates/showAllProducts.tpl');
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

}
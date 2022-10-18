<?php

require_once 'libs/smarty-4.2.1/libs/Smarty.class.php';

class TypeView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showBackofficeTypes($types){
        $this->smarty->assign('types', $types);
        $this->smarty->display('templates/backofficeTypes.tpl');
    }

    function showAllProducts($types){
        $this->smarty->assign('types', $types);
        $this->smarty->display('templates/showAllProducts.tpl');
    }

    function showTypes($types){
        $this->smarty->assign('types', $types);
        $this->smarty->display('templates/showTypes.tpl');
    }

    public function newType(){
        $this->smarty->display('templates/newType.tpl');
    }

    function editType($type){
        $this->smarty->assign('type', $type);
        $this->smarty->display('templates/editType.tpl');
    }

}
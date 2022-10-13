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
        echo "hola! acá listo todos los productos de nuestra tienda";
        
        echo'<ul class="list-group mt-5">';
        foreach($products as $product){
                echo "<li>$product->name - $product->price - </li>";
        }
        echo'</ul>';

        echo '<button><a href="home"> VOLVER </a></button>';
    }

    function showAnotherTable(){
        $this->smarty->display('templates/adminTable.tpl');
    }

    function mostrarDetalles(){
        $this->smarty->display('templates/detallesProducto.tpl');
    }

    function showHomeLocation(){
        header("Location: " . BASE_URL. "home");
    }

}
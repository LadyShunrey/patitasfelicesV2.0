<?php

class StoreView{
    function showHome(){
        include './templates/header.php';
        include './templates/footer.php';
    }

    function showAllProducts($products){
        echo "hola! acá listo todos los productos de nuestra tienda";
        
        echo'<ul class="list-group mt-5">';
        foreach($products as $product){
                echo "<li>$product->name - $product->price - </li>";
        }
        echo'</ul>';
    }

    function shoTable(){

    }
}
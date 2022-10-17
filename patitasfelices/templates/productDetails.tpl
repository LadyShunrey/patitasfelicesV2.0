{include file="templates/header.tpl"}

<h2> ACA ESTA EL DETALLE DEL PRODUCTO</h2>

<div class="container">
    <ul>
        <img src="images/products/{$product->image}" alt="">
        <li>Nombre: {$product->name}</li>
        <li>Descripción: {$product->description}</li>
        <li>Color: {$product->color}</li>
        <li>Tamaño: {$product->size}</li>
        <li>Precio: {$product->price}</li>
        <li>Stock: {$product->stock}</li>
        <li>Categoría: {$product->category_name}</li>
        <li>Tipo de producto: {$product->type_name}</li>
    </ul>
</div>

<h4> Holis que tal soy el detalle </h4>
<button><a href="tienda"> VOLVER </a></button>
<button><a href="backoffice"> VOLVER a la tabla admin </a></button>

{include file="templates/footer.tpl"}
{include file="templates/header.tpl"}

<h2> ACA ESTA EL DETALLE DEL PRODUCTO</h2>

<div class="container">
    <ul>
        <li>Nombre: {$product->name}</li>
        <li>Descripción: {$product->description}</li>
        <li>Color: {$product->color}</li>
        <li>Tamaño: {$product->size}</li>
        <li>Precio: {$product->price}</li>
        <li>Stock: {$product->stock}</li>
        <li>Categoría: {$product->category_fk}</li>
        <li>Tipo de producto: {$product->type_fk}</li>
    </ul>
</div>

<h4> Holis que tal soy el detalle </h4>
<button><a href="showAllProducts"> VOLVER </a></button>
<button><a href="adminTable"> VOLVER a la tabla admin </a></button>

{include file="templates/footer.tpl"}
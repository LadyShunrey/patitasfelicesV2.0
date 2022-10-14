{include file="templates/header.tpl"}

<h2> ACA ESTA EL DETALLE DEL PRODUCTO</h2>

<div class="container">
    <ul>
        <li>ID: {$product->id_product}</li>
        <li>Nombre: {$product->name}</li>
        <li>{$product->description}</li>
        <li>{$product->color}</li>
        <li>{$product->size}</li>
        <li>{$product->price}</li>
        <li>{$product->stock}</li>
        <li>{$product->category_fk}</li>
        <li>{$product->type_fk}</li>
    </ul>
</div>

<h4> Holis que tal soy el detalle </h4>
<button><a href="adminTable"> VOLVER </a></button>
{include file="templates/footer.tpl"}
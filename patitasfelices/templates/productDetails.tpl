{include file="templates/header.tpl"}


<div class="card" style= "width:400px">
    <img class="card-img-top" src="{$product->image}" alt="">
    <div class="card-body">
        <div class="card-title">
            {$product->name}
            <ul>
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
        <p class="card-text">
        </p>
    </div>
</div>
{* <div class="container">
    <h2>{$product->name} </h2>
    <ul>
        <img src="{$product->image}" alt="">
        <li>Nombre: {$product->name}</li>
        <li>Descripción: {$product->description}</li>
        <li>Color: {$product->color}</li>
        <li>Tamaño: {$product->size}</li>
        <li>Precio: {$product->price}</li>
        <li>Stock: {$product->stock}</li>
        <li>Categoría: {$product->category_name}</li>
        <li>Tipo de producto: {$product->type_name}</li>
    </ul>
</div> *}

<button><a href="tienda"> VOLVER </a></button>
{if isset($smarty.session.USER_ID)}
    <button><a href="backoffice"> VOLVER a la tabla admin </a></button>
{/if}
{include file="templates/footer.tpl"}
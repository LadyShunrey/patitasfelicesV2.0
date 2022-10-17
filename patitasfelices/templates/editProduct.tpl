{include file="templates/header.tpl"}

<h1>EDITAR UN PRODUCTO EXISTENTE!!!</h1>

<h1>ATENCION: El producto que está por modificar es "{$product->name}" que tiene número de ID = {$product->id_product}</h2>

<div class="container">
    <h4>Datos actuales del producto: </h4>
    <ul>
        <li><img src="{$product->image}" alt=""></li>
        <li>ID: {$product->id_product}</li>
        <li>Nombre: {$product->name}</li>
        <li>Descripción: {$product->description}</li>
        <li>Color: {$product->color}</li>
        <li>Tamaño: {$product->size}</li>
        <li>Precio: {$product->price}</li>
        <li>Stock: {$product->stock}</li>
        <li>Categoría: {$product->category_name}</li>
        <li>Tipo: {$product->type_name}</li>
    </ul>
</div>

<form action="editProductOnDB/{$product->id_product}" method="POST" class="my-4" enctype="multipart/form-data">
    <div class="row">
        <div class="col-9">
            <div class="form-group">
                <label>Nombre del producto que quiere modificar</label>
                <input name="name" type="text" class="form-control" value="{$product->name}"/>
            </div>
        </div>

        <div class="col-9">
            <div class="form-group">
                <label>Descripción del producto</label>
                <textarea name="description" type="text" class="form-control">{$product->description}</textarea>
            </div>
        </div>

        <div class="col-3">
            <div class="form-group">
                <label>Categoría a la que pertenece</label>
                <select name="category_fk" class="form-control">
                    {foreach from=$categories item=$category}
                    <option {if $product->category_name == $category->category_name} selected {/if}value="{$category->id_category}">{$category->category_name}</option>
                    {{/foreach}}
                    </div>
                </select>
        </div>
        <div class="col-3">
            <div class="form-group">
                <label>Tipo de producto</label>
                <select name="type_fk" class="form-control">
                    {foreach from=$types item=$type}
                        <option {if $product->type_name == $type->type_name} selected {/if} value="{$type->id_type}">{$type->type_name}</option>
                    {{/foreach}}
                </select>
            </div>
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Color</label>
            <input name="color" type="text" class="form-control" value="{$product->color}">
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Tamaño</label>
            <input name="size" type="text" class="form-control" value="{$product->size}">
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Precio</label>
            <input name="price" type="text" class="form-control" value="{$product->price}">
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Stock</label>
            <input name="stock" type="text" class="form-control" value="{$product->stock}">
        </div>
    </div>

    <label for="">Este es un checkbox no sé para qué</label>
    <input type="checkbox" name="completada" id="completada">

    <label>CAMBIAR LA IMAGEN QUE ESTÁ</label>
    <input type="file" name="image" id="image">

    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
</form>

<button><a href="adminTable"> VOLVER </a></button>

{include file="templates/footer.tpl"}
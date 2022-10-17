{include file="templates/header.tpl"}

<h1>AGREGAR UN NUEVO PRODUCTO</h1>

<form action="addProduct" method="POST" class="my-4" enctype="multipart/form-data">
    <div class="row">
        <div class="col-9">
            <div class="form-group">
                <label>Nombre del producto nuevo</label>
                <input name="name" type="text" class="form-control">
            </div>
        </div>

        <div class="col-9">
            <div class="form-group">
                <label>Descripción del producto</label>
                <textarea name="description" type="text" class="form-control"></textarea>
            </div>
        </div>

        <div class="col-3">
            <div class="form-group">
                <label>Categoría a la que pertenece</label>
                <select name="category_fk" class="form-control">
                    {foreach from=$categories item=$category}
                        <option value="{$category->id_category}">{$category->category_name}</option>
                    {{/foreach}}
                </select>
            </div>
        </div>
        <div class="col-3">
            <div class="form-group">
                <label>Tipo de producto</label>
                <select name="type_fk" class="form-control">
                    {foreach from=$types item=$type}
                        <option value="{$type->id_type}">{$type->type_name}</option>
                    {{/foreach}}
                </select>
            </div>
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Color</label>
            <input name="color" type="text" class="form-control">
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Tamaño</label>
            <input name="size" type="text" class="form-control">
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Precio</label>
            <input name="price" type="text" class="form-control">
        </div>
    </div>

    <div class="col-9">
        <div class="form-group">
            <label>Stock</label>
            <input name="stock" type="text" class="form-control">
        </div>
    </div>

    <label for="">Este es un checkbox no sé para qué</label>
    <input type="checkbox" name="completada" id="completada">

    <label>AGREGAR UNA IMAGEN</label>
    <input type="file" name="image" id="image">

    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
</form>

<button><a href="backoffice-productos"> VOLVER </a></button>

{include file="templates/footer.tpl"}
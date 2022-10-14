{include file="templates/header.tpl"}

<h1>EDITAR UNA CATEGORIA EXISTENTE!!!</h1>

<h1>ATENCION: LA categoría que está por modificar es la "{$category->category_name}" que tiene número de ID = {$category->id_category}</h2>

<div class="container">
    <h4>Datos actuales de la categoría: </h4>
    <ul>
        <li>ID: {$category->id_category}</li>
        <li>Nombre: {$category->category_name}</li>
    </ul>
</div>

<form action="editCategoryOnDB/{$category->id_category}" method="POST" class="my-4" enctype="multipart/form-data">
    <div class="row">
        <div class="col-9">
            <div class="form-group">
                <label>Nombre de la categoría que quiere editar</label>
                <input name="category_name" type="text" class="form-control" value="{$category->category_name}"/>
            </div>
        </div>

    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
</form>

<button><a href="adminTable"> VOLVER </a></button>

{include file="templates/footer.tpl"}
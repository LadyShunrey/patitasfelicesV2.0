{include file="templates/header.tpl"}

<h1>EDITAR UN TIPO DE PRODUCTO EXISTENTE!!!</h1>

<h1>ATENCION: El tipo de producto que está por modificar es el "{$type->type_name}" que tiene número de ID = {$type->id_type}</h2>

<div class="container">
    <h4>Datos actuales del tipo de producto: </h4>
    <ul>
        <li>ID: {$type->id_type}</li>
        <li>Nombre: {$type->type_name}</li>
    </ul>
</div>

<form action="editTypeOnDB/{$type->id_type}" method="POST" class="my-4" enctype="multipart/form-data">
    <div class="row">
        <div class="col-9">
            <div class="form-group">
                <label>Nombre del tipo de producto que quiere editar</label>
                <input name="type_name" type="text" class="form-control" value="{$type->type_name}"/>
            </div>
        </div>

    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
</form>

<button><a href="adminTable"> VOLVER </a></button>

{include file="templates/footer.tpl"}
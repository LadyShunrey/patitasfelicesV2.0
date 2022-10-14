{include file="templates/header.tpl"}

<h1>AGREGAR UN NUEVO TIPO DE PRODUCTO</h1>

<form action="addType" method="POST" class="my-4" enctype="multipart/form-data">
    <div class="row">
        <div class="col-9">
            <div class="form-group">
                <label>Nombre del nuevo tipo de producto</label>
                <input name="type_name" type="text" class="form-control">
            </div>
        </div>

    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
</form>

<button><a href="adminTable"> VOLVER </a></button>

{include file="templates/footer.tpl"}
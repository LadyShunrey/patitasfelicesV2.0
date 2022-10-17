{include file="templates/header.tpl"}

<h1>AGREGAR UNA CATEGORÍA NUEVA</h1>

<form action="addCategory" method="POST" class="my-4" enctype="multipart/form-data">
    <div class="row">
        <div class="col-9">
            <div class="form-group">
                <label>Nombre de la categoría nueva</label>
                <input name="category_name" type="text" class="form-control">
            </div>
        </div>

    <button type="submit" class="btn btn-primary mt-2">Guardar</button>
</form>

<button><a href="backoffice-categorias"> VOLVER </a></button>

{include file="templates/footer.tpl"}
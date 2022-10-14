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
                    <option value="1">Accesorios</option>
                    <option value="2">Librería</option>
                    <option value="3">Bazar</option>
                </select>
            </div>
        </div>
        <div class="col-3">
            <div class="form-group">
                <label>Tipo de producto</label>
                <select name="type_fk" class="form-control">
                    <option value="1">Bandanas</option>
                    <option value="2">Cartucheras</option>
                    <option value="3">Llaveros</option>
                    <option value="4">Anotadores</option>
                    <option value="5">Calendarios</option>
                    <option value="6">Cuadernos</option>
                    <option value="7">Lápices</option>
                    <option value="8">Lapiceras</option>
                    <option value="9">Bolsos</option>
                    <option value="10">Tazas</option>
                    <option value="11">Remeras</option>
                    <option value="12">Billeteras</option>
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

<button><a href="home"> VOLVER </a></button>

{include file="templates/footer.tpl"}
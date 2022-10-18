{include file="templates/header.tpl"}

<button><a href="backoffice">Volver el panel de administrador</a></button>
<button><a href="backoffice/productos">PRODUCTOS</a></button>
<button><a href="backoffice/categorias">CATEGORÍAS</a></button>

<h1>Gestion de todos los TIPOS DE PRODUCTOS de la tienda </h1>

<h2>Todos los tipos de productos de nuestra tienda </h2>

<td><button><a href="backoffice/tipos/nuevo"> AGREGAR UN NUEVO TIPO DE PRODUCTO! </a></button></td>
<table class="table">
	<thead>
		<tr>
			<th scope="col">Tipo de Producto: </th>
			<th scope="col">Acciones</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$types item=$type}
			<tr>
				<th scope="row">{$type->type_name}</th>
				<td><button><a href="backoffice/tipos/editar/{$type->id_type}"> EDITAR </a></button> --- <button type="button" class="btn btn-primary btn-danger"><a
                href='deleteType/{$type->id_type}'> BORRAR </a></button>
				<td><button><a href="backoffice/tipos/productos/{$type->id_type}"> Ver productos de este tipo </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="backoffice"> VOLVER </a></button>

{* <!-- Button trigger modal -->
<button type="button" class="btn btn -primary btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">BORRAR</button> *}

<!-- Modal -->
{* <div class="modal fade" id="borrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">ELIMINAR TIPO DE PRODUCTO "{$type->type_name}"</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<p>ATENCION!!! Está por eliminar un tipo de producto de la base de datos!!!!</p>
        <p>Está seguro que desea eliminar este tipo "{$type->type_name}" ?????</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary btn-danger"><a href='deleteType/{$type->id_type}'> BORRAR </a></button>
      </div>
    </div>
  </div>
</div> *}

{include file="templates/footer.tpl"}
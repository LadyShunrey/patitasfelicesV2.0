{include file="templates/header.tpl"}

<button><a href="backoffice">Volver el panel de administrador</a></button>
<button><a href="backoffice/productos">PRODUCTOS</a></button>
<button><a href="backoffice/tipos">TIPOS</a></button>

<h1>Esta es el area de GESTION de todas las CATEGORÍAS de la tienda </h1>

<td><button><a href="backoffice/categorias/nueva"> AGREGAR UNA CATEGORÍA NUEVA! </a></button></td>
<table class="table">
	<thead>
		<tr>
			<th scope="col">Categoría: </th>
			<th scope="col">Acciones</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$categories item=$category}
			<tr>
				<th scope="row">{$category->category_name}</th>
				<td><button><a href="backoffice/categorias/editar/{$category->id_category}"> EDITAR </a></button> --- <button type="button" class="btn btn-primary btn-danger"><a
                href='deleteCategory/{$category->id_category}'> BORRAR </a></button>
				<td><button><a href="backoffice/categorias/productos/{$category->id_category}"> Ver productos de esta categoría </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="backoffice"> VOLVER </a></button>

{* <!-- Button trigger modal -->
<button type="button" class="btn btn -primary btn-danger" data-bs-toggle="modal" data-bs-target="#borrar">BORRAR</button>
<button type="button" class="btn btn -primary btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">BORRAR</button> *}

{* <!-- Modal -->
<div class="modal fade" id="borrar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">ELIMINAR CATEGORIA "{$category->category_name}"</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<p>ATENCION!!! Está por eliminar una categoría de la base de datos!!!!</p>
        <p>Está seguro que desea eliminar esta categoría "{$category->category_name}" ?????</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary btn-danger"><a href='deleteCategory/{$category->id_category}'> BORRAR </a></button>
      </div>
    </div>
  </div>
</div> *}

{include file="templates/footer.tpl"}
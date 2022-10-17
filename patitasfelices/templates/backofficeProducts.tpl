{include file="templates/header.tpl"}

<button><a href="backoffice">Volver el panel de administrador</a></button>
<button><a href="backoffice/categorias">CATEGORÍAS</a></button>
<button><a href="backoffice/tipos">TIPOS</a></button>

<h1>Esta es el area de GESTION de todos los PRODUCTOS de la tienda </h1>

<td><button><a href="newProduct"> AGREGAR UN PRODUCTO NUEVO! </a></button></td>

<table class="table">
	<thead>
		<tr>
			<th scope="col">#ID</th>
			<th scope="col">Nombre</th>
			<th scope="col">Descripción</th>
			<th scope="col">Color</th>
			<th scope="col">Tamaño</th>
			<th scope="col">Precio</th>
			<th scope="col">Stock</th>
			<th scope="col">Categoría</th>
			<th scope="col">Tipo</th>
			<th scope="col">Imagen</th>
			<th scope="col">Acciones</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$products item=$product}
			<tr>
				<th scope="row">{$product->id_product}</th>
				<td>{$product->name}</td>
				<td>{$product->description}</td>
				<td>{$product->color}</td>
				<td>{$product->size}</td>
				<td>{$product->price}</td>
				<td>{$product->stock}</td>
				<td>{$product->category_name}</td>
				<td>{$product->type_name}</td>
				<td> <img src="{$product->image}" alt=""></td>
				<td><button><a href="backoffice/productos/editar/{$product->id_product}"> EDITAR </a></button> --- <button type="button" class="btn btn -primary btn-danger" data-bs-toggle="modal" data-bs-target="#deleteProduct">BORRAR</button></td>
				<td><button><a href="backoffice/productos/detalle/{$product->id_product}/{$product->name}"> VER EL PRODUCTO </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="backoffice"> VOLVER </a></button>

{* <!-- Button trigger modal -->
<button type="button" class="btn btn -primary btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">BORRAR</button> *}

<!-- Modal -->
<div class="modal fade" id="deleteProduct" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">ELIMINAR PRODUCTO "{$product->name}"</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<p>ATENCION!!! Está por eliminar un producto de la base de datos!!!!</p>
        <p>Está seguro que desea eliminar el producto "{$product->name}" ?????</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary btn-danger"><a href='deleteProduct/{$product->id_product}'> BORRAR </a></button>
      </div>
    </div>
  </div>
</div>

{include file="templates/footer.tpl"}
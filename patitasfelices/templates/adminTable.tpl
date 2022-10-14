{include file="templates/header.tpl"}

<h4>La tablaaaaaaa</h4>
<h4>hola! acá listo todos los productos de nuestra tienda</h4>

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
				<td>{$product->category_fk}</td>
				<td>{$product->type_fk}</td>
				<td>{$product->image}</td>
				<td><button><a href="editProduct/{$product->id_product}"> EDITAR </a></button> --- <button class='btn btn-danger'> <a href='deleteProduct/{$product->id_product}'> BORRAR </a></button></td>
				<td><button><a href="productDetails/{$product->id_product}"> VER EL PRODUCTO </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>
<button><a href="home"> VOLVER </a></button>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

{include file="templates/footer.tpl"}


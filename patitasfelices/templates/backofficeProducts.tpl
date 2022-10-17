{include file="templates/header.tpl"}
<button><a href="backoffice-productos">PRODUCTOS</a></button>
<button><a href="backoffice-categorias">CATEGORÍAS</a></button>
<button><a href="backoffice-tipos">TIPOS</a></button>

<h1>Estos son todos los PRODUCTOS de la tienda </h1>

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
				<td>{$product->image}</td>
				<td><button><a href="editProduct/{$product->id_product}"> EDITAR </a></button> --- <button type="button" class="btn btn -primary btn-danger" data-bs-toggle="modal" data-bs-target="#deleteProduct">BORRAR</button></td>
				<td><button><a href="productDetails/{$product->id_product}"> VER EL PRODUCTO </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="backoffice"> VOLVER </a></button>

{include file="templates/footer.tpl"}
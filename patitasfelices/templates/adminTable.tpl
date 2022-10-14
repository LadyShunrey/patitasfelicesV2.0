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
				<td>EDITAR BORRAR</td>
				<td><button><a href="productDetails/{$product->id_product}"> VER EL PRODUCTO </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="home"> VOLVER </a></button>

{include file="templates/footer.tpl"}
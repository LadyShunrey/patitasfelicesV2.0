{include file="templates/header.tpl"}

<h4>Bienvenidos a nuestra tienda </h4>
<h4>hola! acá listo todos los productos de nuestra tienda</h4>

<h1>Todos nuestros productos!</h1>

<table class="table">
	<thead>
		<tr>
			<th scope="col">Nombre</th>
			<th scope="col">Descripción</th>
			<th scope="col">Color</th>
			<th scope="col">Tamaño</th>
			<th scope="col">Precio</th>
			<th scope="col">Stock</th>
			<th scope="col">Categoría</th>
			<th scope="col">Tipo</th>
			<th scope="col">Imagen</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$products item=$product}
			<tr>
				<th scope="row">{$product->name}</th>
				<td>{$product->description}</td>
				<td>{$product->color}</td>
				<td>{$product->size}</td>
				<td>{$product->price}</td>
				<td>{$product->stock}</td>
				<td>{$product->category_name}</td>
				<td>{$product->type_name}</td>
				<td>{$product->image}</td>
				<td><button><a href="product-details/{$product->id_product}/{$product->name}"> VER EL PRODUCTO </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="showCategories"> Ver todas las categorías </a></button>

<button><a href="home"> VOLVER </a></button>

{include file="templates/footer.tpl"}
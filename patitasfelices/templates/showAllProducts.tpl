{include file="templates/header.tpl"}

<h4>Bienvenidos a nuestra tienda </h4>

<h1>Estos son todos nuestros productos!</h1>

<button><a href="tienda/categorias"> Ver todas las categorías </a></button>
<button><a href="tienda/tipos"> Ver todos los tipos de producto disponible </a></button>

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
				<td><img src="{$product->image}" alt=""></td>
				<td><button><a href="tienda/product/{$product->id_product}/{$product->name}"> VER EL PRODUCTO </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="home"> VOLVER </a></button>

{include file="templates/footer.tpl"}
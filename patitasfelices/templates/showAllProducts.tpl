{include file="templates/header.tpl"}

<h4>Bienvenidos a nuestra tienda </h4>

<h1>Estos son todos nuestros productos!</h1>

<a class="btn btn-primary" href="tienda/categorias"> Ver todas las categorías </a>
<a class="btn btn-primary" href="tienda/tipos"> Ver todos los tipos de producto disponible </a>

<table class="table table-striped">
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
				<td><img class="img-fluid" width="200" src="{$product->image}" alt=""></td>
				<td><a class="btn btn-secondary" href="tienda/product/{$product->id_product}/{$product->name}"> VER EL PRODUCTO </a></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<a class="btn btn-primary" href="home"> VOLVER </a>

{include file="templates/footer.tpl"}
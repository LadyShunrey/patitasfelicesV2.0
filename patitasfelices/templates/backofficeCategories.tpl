{include file="templates/header.tpl"}
<button><a href="backoffice-productos">PRODUCTOS</a></button>
<button><a href="backoffice-categorias">CATEGORÍAS</a></button>
<button><a href="backoffice-tipos">TIPOS</a></button>

<h1>Estos son todas las CATEGORÍAS de la tienda </h1>

<td><button><a href="newCategory"> AGREGAR UNA CATEGORÍA NUEVA! </a></button></td>
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
				<td><button><a href="editCategory/{$category->id_category}"> EDITAR </a></button> --- <button class='btn btn-danger'> <a href='deleteCategory/{$category->id_category}'> BORRAR </a></button></td>
				<td><button><a href="productsByCategory/{$category->id_category}"> Ver productos de esta categoría </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="backoffice"> VOLVER </a></button>

{include file="templates/footer.tpl"}
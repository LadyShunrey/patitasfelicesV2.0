{include file="templates/header.tpl"}

<h4>Todas las categorias de nuestra tienda </h4>

<table class="table">
	<thead>
		<tr>
			<th scope="col">Categoría: </th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$categories item=$category}
			<tr>
				<th scope="row">{$category->category_name}</th>
				
				<td><button><a href="productsByCategory/{$category->id_category}"> Ver productos de esta categoría </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="showCategories"> Ver todas las categorías </a></button>

<button><a href="showAllProducts"> VOLVER </a></button>

{include file="templates/footer.tpl"}
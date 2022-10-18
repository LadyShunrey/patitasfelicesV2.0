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
				
				{if isset($smarty.session.USER_ID)}
					<td><button><a href="backoffice/categorias/productos/{$category->id_category}"> Ver productos de esta categoría </a></button></td>
				{else}
					<td><button><a href="tienda/categorias/productos/{$category->id_category}"> Ver productos de esta categoría </a></button></td>
				{/if}
			</tr>
		{/foreach}
	</tbody>
</table>
{if isset($smarty.session.USER_ID)}
	<button><a href="backoffice"> VOLVER </a></button>
{else}
	<button><a href="tienda"> VOLVER </a></button>
{/if}

{include file="templates/footer.tpl"}
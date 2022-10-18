{include file="templates/header.tpl"}

<h4>Todaos los tipos de producto de nuestra tienda </h4>

<table class="table">
	<thead>
		<tr>
			<th scope="col">Tipo: </th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$types item=$type}
			<tr>
				<th scope="row">{$type->type_name}</th>
				
				{if isset($smarty.session.USER_ID)}
					<td><button><a href="backoffice/tipos/productos/{$type->id_type}"> Ver productos de este tipo </a></button></td>
				{else}
					<td><button><a href="tienda/tipos/productos/{$type->id_type}"> Ver productos de este tipo </a></button></td>
				{/if}
			</tr>
		{/foreach}
	</tbody>
</table>
{if isset($smarty.session.USER_ID)}
	<button><a href="backoffice/tipos"> VOLVER </a></button>
{else}
	<button><a href="tienda"> VOLVER </a></button>
{/if}

{include file="templates/footer.tpl"}
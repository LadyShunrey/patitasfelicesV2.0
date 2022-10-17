{include file="templates/header.tpl"}
<button><a href="backoffice-productos">PRODUCTOS</a></button>
<button><a href="backoffice-categorias">CATEGORÍAS</a></button>
<button><a href="backoffice-tipos">TIPOS</a></button>

<h1>Estos son todos los TIPOS DE PRODUCTOS de la tienda </h1>

<h2>Todos los tipos de productos de nuestra tienda </h2>

<td><button><a href="newType"> AGREGAR UN NUEVO TIPO DE PRODUCTO! </a></button></td>
<table class="table">
	<thead>
		<tr>
			<th scope="col">Tipo de Producto: </th>
			<th scope="col">Acciones</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$types item=$type}
			<tr>
				<th scope="row">{$type->type_name}</th>
				<td><button><a href="editType/{$type->id_type}"> EDITAR </a></button> --- <button class='btn btn-danger'> <a href='deleteType/{$type->id_type}'> BORRAR </a></button></td>
				<td><button><a href="productsByType/{$type->id_type}"> Ver productos de este tipo </a></button></td>
			</tr>
		{/foreach}
	</tbody>
</table>

<button><a href="backoffice"> VOLVER </a></button>

{include file="templates/footer.tpl"}
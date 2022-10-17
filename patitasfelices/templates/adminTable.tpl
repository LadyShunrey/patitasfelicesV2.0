{include file="templates/header.tpl"}







<button><a href="home"> VOLVER </a></button>

<!-- Button trigger modal -->
 <button type="button" class="btn btn -primary btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">BORRAR</button>

<!-- Modal -->
<div class="modal fade" id="deleteProduct" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">ELIMINAR PRODUCTO "{$product->name}"</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<p>ATENCION!!! Está por eliminar un producto de la base de datos!!!!</p>
        <p>Está seguro que desea eliminar el producto "{$product->name}" ?????</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary btn-danger"><a href='deleteProduct/{$product->id_product}'> BORRAR </a></button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">ELIMINAR PRODUCTO "{$product->name}"</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<p>ATENCION!!! Está por eliminar un producto de la base de datos!!!!</p>
        <p>Está seguro que desea eliminar el producto "{$product->name}" ?????</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary btn-danger"><a href='deleteProduct/{$product->id_product}'> BORRAR </a></button>
      </div>
    </div>
  </div>
</div>

{include file="templates/footer.tpl"}


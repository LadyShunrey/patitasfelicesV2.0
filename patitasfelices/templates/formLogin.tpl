{include file="templates/header.tpl"}
 <h2>Login</h2>
 <form method="POST" action="login">
 <input type="email" id="email" name="email" placeholder="Ingrese su email..."/>
 <input type="password" id="password" name="password" placeholder="Ingrese su password..."/>
 <button type="submit">Login</button>

 {* {if $error} *}
    <div class="alert alert-danger mt-3">
        {* {$error} *}
    </div>
 {* {/if} *}

 {include file="templates/footer.tpl"}
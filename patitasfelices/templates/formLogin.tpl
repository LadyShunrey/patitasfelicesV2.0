{include file="templates/header.tpl"}
<div class="flex-shrink-0">
<h2>Login</h2>
<form method="POST" action="login">
    <input type="text" id="user_name" name="user_name" placeholder="Ingrese su usuario..." />
    <input type="password" id="password" name="password" placeholder="Ingrese su password..." />
    <button type="submit">Login</button>

    {if $error}
        <div class="alert alert-danger mt-3">
            {$error}
        </div>
    {/if}
    </div>
{include file="templates/footer.tpl"}
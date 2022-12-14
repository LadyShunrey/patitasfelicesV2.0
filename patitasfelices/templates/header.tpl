<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <base href="{BASE_URL}">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patitas Felices</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body class="d-flex flex-column h-100">
<nav class="navbar navbar-expand-lg bg-light {if isset($smarty.session.USER_ID)} navbar-dark bg-dark {/if}">
        <div class="container-fluid">
            <a class="navbar-brand" href="home">
                <img src="images/logo_relleno.png" alt="Logo" width="30" height="24"
                    class="d-inline-block align-text-top">
            </a>
            <a class="navbar-brand" href="home">Patitas Felices</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Tienda
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="tienda">Productos</a></li>
                            <li><a class="dropdown-item" href="tienda/categorias">Categor??as</a></li>
                            <li><a class="dropdown-item" href="tienda/tipos">Tipos de productos</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        {if isset($smarty.session.USER_ID)}
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="backoffice">Gestionar productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="logout">{($smarty.session.USER_NAME)} Logout</a>
                            </li>
                            
                            
                        
                        {else}
                            <a class="nav-link active" aria-current="page" href="login">Ingresar</a>
                        {/if}
                    </li>
                    {* <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li> *}
                </ul>
            </div>
        </div>
</nav>

<div class="container text-center">
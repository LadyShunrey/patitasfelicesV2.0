<?php
include_once('views/auth.view.php');
include_once('models/user.model.php');

class AuthController
{
    private $view;
    private $model;

    public function __construct()
    {
        $this->model = new UserModel();
        $this->view = new AuthView();
    }

    public function showLogin()
    {
        $this->view->showFormLogin();
    }

    //verifica si los datos del user son correctos
    public function login()
    {
        if (!empty($_POST['user_name']) && !empty($_POST['password'])) {
            $user_name = $_POST['user_name'];
            $password = $_POST['password'];

            //Obtengo el usuario de la base de datos
            $user = $this->model->getUser($user_name);

            //Si el usuario existe y las contraseñas coinciden
            if ($user && password_verify($password, ($user->password))) {
                //si existe y está bien, inicio sesión
                session_start();
                $_SESSION['USER_ID'] = $user->id_user;
                $_SESSION['USER_NAME'] = $user->user_name;
                // $_SESSION['USER_ROLE'] = $user->role;
                // $_SESSION['logged'] = true;
                // $_SESSION["username"] = $email;
                header("Location: " . BASE_URL .'/backoffice');
            } else {
                // $this->view->showError();
                $this->view->showFormLogin("Usuario o contraseña no válido");
            }
        }
    }

    public function logout()
    {
        session_start();
        session_destroy();
        header("Location: " . LOGIN);
    }

    public function showBackoffice(){
        $this->view->showBackoffice();
    }
}

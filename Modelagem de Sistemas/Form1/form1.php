<link rel='stylesheet' href='estilo.css' type='text/css' />
<?php
$usuario = $_POST['usuario'];
$senha = $_POST['senha'];

if($senha == '1234' && $usuario == 'admin'){
    echo "Seja Bem Vindo!";
}
else{
    echo "Erro! Usuario ou Senha incorreta";
}
?>

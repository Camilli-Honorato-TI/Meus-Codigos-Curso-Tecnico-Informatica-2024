<link rel='stylesheet' href='estilo.css' type='text/css' />
<!DOCTYPE html>
<head>
    <title>Formulário</title>
</head>
<?php
$nome = $_POST['nome'];
$email = $_POST['email'];
$mensagem = $_POST['mensagem'];

if($nome == '' || $email == '' || $mensagem == ''){
    echo "Há campos em branco!";
    echo "Por gentileza, preencha-os:
        <a href=\"form2.php\">Clicando aqui</a>";
}
else{
    echo "Nome: $nome";
    echo "</br> Email: $email";
    echo "</br> Mensagem: $mensagem";
}

?>
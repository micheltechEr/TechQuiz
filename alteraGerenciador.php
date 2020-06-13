<?php
include 'conexao.php';
	$login = $_POST['login'];
    $_senha =$_POST['senha'];
    $login2 = $_POST['login2'];
    $senha2 = $_POST['senha2'];

   $conex = conectar();
    $sql1 = 'UPDATE gerenciador  SET  login = "'.$login2.'",senha = "'.$senha2.'" WHERE  gerenciador.login ="'.$login.'"'AND'"'.$_senha.'"';
    $mysqli->query($sql1);
    header("Location:../login_gerenciador.html");
?>
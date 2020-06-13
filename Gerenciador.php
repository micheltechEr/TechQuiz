<?php
include 'conexao.php';
	$login = $_POST['login'];
    $_senha =$_POST['senha'];
    $conex = conectar();
    $sql1 = 'INSERT INTO gerenciador(login,senha) VALUES("'.$login.'","'.$_senha.'")';
    $mysqli->query($sql1);
    $fech = fecharConexao();
       header("Location:../login_gerenciador.html");
       ?>
	
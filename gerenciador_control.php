<?php

include('conexao.php');
include('Gerenciador.php');
include('GerenciadorDAO.php');
$id = $_POST['id'];
$login = $_POST['login'];
$_senha = $_POST['senha'];

$g = new Gerenciador($id,$login,md5($_senha));
$gDAO = new GerenciadorDAO($g);
$gDAO->cadastrarGerenciador();




?>
<?php
$host = '127.0.0.1';
$usuario = 'root';
$senha = '';
$nomeDoBanco = "techquiz";
function conectar(){
global $mysqli,$host,$usuario,$senha,$nomeDoBanco;
$mysqli = new mysqli($host,$usuario,$senha,$nomeDoBanco);
	if($mysqli->connect_errno){
		echo "ERrro con";
		exit();
	}else{
		echo "bem sucedida";
	}
}

function fecharConexao(){
	global $mysqli;
	$mysqli->close();
}
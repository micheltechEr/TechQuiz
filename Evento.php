<?php
include 'conexao.php';
$nome_evento = $_POST['nome_evento'];
$semestre = $_POST['semestre'];
$conex = conectar();
$sql1 = 'INSERT INTO evento(nome,semestre) VALUES(null,"'.$nome_evento.'","'.$semestre.'")';
$mysqli->query($sql1);
$fech = fecharConexao();
?>
<?php
include('conexao.php');
$titulo = $_POST['titulo'];
$texto = $_POST['texto'];
$rubrica = $_POST['rubrica'];
$conex = conectar();
$sql1 = 'INSERT INTO questoes(id,nome,texto) VALUES(null,"'.$titulo.'","'.$texto.'")';
$mysqli->query($sql1);
$fech = fecharConexao();

$sql = 'INSERT INTO questaoaberta(Questoes_id,rubrica) VALUES(null,"'.$rubrica.'")';
$mysqli->query($sql);
 ?>

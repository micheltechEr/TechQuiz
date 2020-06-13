<?php
include('conexao.php');
$titulo = $_POST['titulo'];
$texto = $_POST['texto'];
$rubrica = $_POST['rubrica'];
$conex = conectar();


$sql = 'INSERT INTO questaoaberta(Questoes_id,rubrica) VALUES(null,"'.$rubrica.'");''INSERT INTO questoes(id,nome,texto) VALUES(null,"'.$titulo.'","'.$texto.'")''';
$mysqli->multiquery();
 ?>

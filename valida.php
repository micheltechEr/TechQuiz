	<?php 
	session_start();
	global $mysqli;
	include('backend/conexao.php');
	if(isset($_POST['login']) && isset($_POST['senha'])){
   $login = $_POST['login'];
	$_senha = $_POST['senha'];
	$sql = 'SELECT * FROM gerenciador WHERE login = ":login" && senha = ":_senha"';
	$result = $mysqli->query($sql);
	if(isset($result)){
    $_SESSION['usuarioNome'] = $result['login'];
    $_SESSION['usuarioSenha'] = $result['senha'];
     header("Location:index.html");
	}else{
		echo "ERRO";
		  header("Location:index.php");
	}

	}
	

	?>
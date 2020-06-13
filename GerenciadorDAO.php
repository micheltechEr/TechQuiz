<?php
class GerenciadorDAO{
function __construct($g){
      $this->gerenciador = $g;
	}
	function cadastrarGerenciador(){
       conectar();
       global $mysqli;
       $sql = 'INSERT INTO  gerenciador(id,login,senha) VALUES("'.$this->gerenciador->id.'","'.$this->gerenciador->login.'","'.$this->gerenciador->senha.'")';
       $result = $mysqli->query($sql);
       fecharConexao();
       header("Location:../login_gerenciador.html");
	}

}

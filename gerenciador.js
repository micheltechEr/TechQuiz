$(document).ready(function(){
function selecao(id){
  var equipe = document.getElementById('equip');
if(id.value === 'equipe'){                
                                              
      equipe.style.display = "block";
   }                                         
   else
   equipe.style.display = "none";  

var questao = document.getElementById('questt');
if(id.value === 'questao'){                
                                              
      questao.style.display = "block";
   }                                         
   else
   questao.style.display = "none";  

var questao_aberta = document.getElementById('aberta'); /* Armazena o input por meio do ID*/ 
if(id.value === 'open'){                /* Caso o valor selecionado seja 'masculino 
                                              O display que antes estava oculto é mostrado.*/
      questao_aberta.style.display = "block";
   }                                         /* Caso contrário ele é oculto*/
   else
   	questao_aberta.style.display = "none";

var multipla = document.getElementById('multipla');
if(id.value === 'multi'){                
                                              
      multipla.style.display = "block";
   }                                         
   else
   multipla.style.display = "none";  

var evento = document.getElementById('event');
if(id.value === 'evento'){                
                                              
      evento.style.display = "block";
   }                                         
   else
   evento.style.display = "none";  
}




function cadastrar (form){
	var dados = $(form).serialize(); /* Serializar os dados é converter em um conjunto de strings que o servidor entenda*/
	/* Nesse caso,estou armazenando os valores serializados em uma variavel*/
	$.ajax({
		type:'POST',
		url:'backend/gerenciador_control.php',
		data:dados, /* Para ser colocado aqui*/
		dataType:'json',
		sucess: function(data){
			alert(data);
		}
	});
	return false;
}

function deletar(id){
$.ajax({
		type:'POST',
		url:'backend/gerenciador_control.php',
		data:{"requisicao":"deletarpessoa","id":id},
		dataType:'json',
		sucess: function(data){
			alert(data);
		}
	});
	return false;
}
	});

/**
 * Confirmação de exclusão de um contato
*	@author Estudante Carlos Henrique Santos do Vale
 */

function confirmar(idcon){
	let resposta = confirm("confirmar a exclusão deste contato")
	if(resposta === true){
		//alert("tudo certo " + idcon)
		window.location.href = "delete?idcon=" + idcon
	}
}

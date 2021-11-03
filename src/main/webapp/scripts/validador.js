/**author Carlos do Vale
 * Validação de formulario 
 */

function validar(){
	let nome = frmContatos.nome.value;
	let fone = frmContatos.fone.value;
	
	if(nome === ""){
		alert("preencha o campo nome")
		frmContatos.nome.focus()
		return false
	}else if (fone === ""){
		alert("preencha o campo fone")
			frmContatos.fone.focus()
			return false
		
	}else{
		document.forms["frmContatos"].submit();
	}
}

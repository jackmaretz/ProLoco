function valida(campi)
{

	var nessuno = false;
	for(var i=0; 1<campi.length; i++)
	{
		if (document.getElementById(campi[i]).value == "") 
		{
			nessuno = true;
			document.getElementById(campi[i]).style.border = "2px solid red";	
		}
	}
	return nessuno;

}


function controllaCampi() 
{	
	var errore = "";
	var campi = ["Nome", "Cognome" , "Email" , "Messaggio"];

	
	if (valida(campi)) 
	{
		errore = "Alcuni campi non sono stati compilati!";
		alert("merda");
	} 

	
	else 
	{
		document.forms[0].submit();
	}	
	
	if (errore != "") 
	{
		document.getElementById("errore").innerHTML = "Errore!" +errore;
		document.getElementById("errore").style.display = "block";
	}
	
}


function valida(campi)
{

	var nessuno = false;
	for(var i=0; 1<campi.length; i++)
	{
		if (document.getElementById(campi[i]).value == "") 
		{
			nessuno = true;
<<<<<<< Updated upstream
			document.getElementById(campi[i]).style.border = "2px solid red";
			alert('Attenzione! Alcuni campi non sono stati completati');
=======
			document.getElementById(campi[i]).style.border = "2px solid red";	
			
>>>>>>> Stashed changes
		}
	}
	return nessuno;

}


function controllaCampi() 
{	
	var errore = "";
	var campi = ["name", "surname" , "email" , "message"];

	
	if (valida(campi)) 
	{
		errore = "Alcuni campi non sono stati compilati!";
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


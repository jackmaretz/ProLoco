<?xml version="1.0" encoding="UTF-8" ?>
   <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xml:space="preserve">  
  <xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes' />

<xsl:template match="opinioni">
<html xmlns="http://www.w3.org/1999/xhtml"  xml:lang="it" lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Opinioni - Pro Loco di Zero Branco</title>
    <meta name="keywords" content="Pro Loco Zero Branco, Eventi Zero Branco, Feste Zero Branco" />
    <meta name="description" content="Pagina degli eventi della Pro Loco di Zero Branco." />
    <meta name="HandheldFriendly" content="True" />
		<meta name="MobileOptimized" content="320" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />	
    <meta name="viewport" content="height=device-height, initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />	
    <meta name="author" content="Giulia Zanibellato, Giacomo Maretto, Patrizio Stella" />
    <meta name="rating" content="general" />
<link rel="stylesheet" type="text/css" href="main2.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Cabin" />
<link rel="stylesheet" type="text/css" href="cssStampa.css" media="print" />
<link  rel="stylesheet" type="text/css" href="cssMobile.css" 
	media="handheld, only screen and (max-width: 658px), only screen and (max-device-width: 658px)" />  
</head>

<body>
  <div class="lista">
    <ul>
      <li><a href="template.html">Home</a></li>
      <li><a href="eventi.html">Eventi</a></li>
      <li><a href="curiosita.html">Curiosit&#224; </a></li>
      <li><a href="contatti.html">Contatti</a></li>
      <li class="CurrentLink">Opinioni</li>
    </ul>
  </div>
<div class="inizio">  
	<div class="header">
		<h1>Pro Loco di Zero Branco</h1>   
	</div>
	<div class="path">
		<p>Ti trovi in: Home > Eventi</p>
	</div>
</div> 
<div class="opinioni">
	<h2>Opinioni</h2>  
	<div id="introp">
		<h3>Sei stato ad uno dei nostri eventi? Hai partecipato a qualche festa organizzata dalla Pro Loco? Lasciaci la tua opinione! </h3>
		<form id="form" action="/server2/2/2014/pstella/Documents/Progetto/cgi-bin/submit.cgi" method="post">
			<ul>
				<li><label for="nome">Il tuo nome: </label></li>
				<li><input name="nome" id="nome" value="" /></li>
				<li><label for="pensiero">Scrivici la tuo opinione: </label></li>
				<li><textarea rows="24" cols="28" name="pensiero"></textarea></li>
			</ul>
			<ul>
				<li><p><input type="button" name="controlla" id="controlla" value="Controlla campi"  tabindex="11" onclick="controllaCampi();"/></p></li>
				<li><p><input type="reset" name="cancella"  id="cancella" value="Cancella tutto" tabindex="12" /></p></li>
				<li><p><input type="submit" name="bottoneinvia" id="bottoneinvia" value="Invia" tabindex="13"  /></p></li>
			</ul>
		</form>
		<p>Queste sono le opinioni della gente che ci ha visitato</p> 
	</div>     
	
				<xsl:apply-templates select="//opinione" />

</div>
<div class="footer">
	<p>Pro Loco di Zero Branco</p>
	<p>Telefono: <a href="tel:+39042297613">0422 97613</a></p>
	<p>Email: <a href="mailto:segreteria@prolocozerobranco.it">segreteria@prolocozerobranco.it</a></p>
</div>
</body>
</html>
</xsl:template> 

<xsl:template match="//opinione">
    <li id="nome"><p><span><xsl:value-of select="nome" /></span></p> </li>
      <li id="listafinale"><p><xsl:value-of select="pensiero" /></p></li> 
 </xsl:template>
<<<<<<< HEAD
</xsl:transform>     
=======
>>>>>>> origin/master
</xsl:stylesheet>

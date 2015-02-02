<?xml version="1.0" encoding="UTF-8" ?>
   <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes' />

<xsl:template match="eventi">
<html xmlns="http://www.w3.org/1999/xhtml"  xml:lang="it" lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Eventi - Pro Loco di Zero Branco</title>
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
</head>

<body>
  <div class="lista">
    <ul>
      <li>Home</li>
      <li>Eventi</li>
      <li>Foto</li>
      <li>Contatti</li>
      <li>Curiosita</li>
    </ul>
  </div>
<div class="inizio">  
  <div class="header">
   <h1>Pro Loco di Zero Branco</h1>
   <img src="unipd.png" alt="Logo dell'Universit&#224; di Padova" />     
  </div>
  <div class="path">
     <p>Ti trovi in: Home > Eventi</p>
  </div>
 </div> 
  <div class="eventi">
  <h2>Eventi</h2>        
    <ul>
      <xsl:apply-templates select="//evento" />
    </ul>
   </div>
  
  <div class="footer">
   <p>Pro Loco di Zero Branco</p>
   <p>Telefono: <a href="tel:+39042297613">0422 97613</a></p>
   <p>Email: segreteria@prolocozerobranco.it</p>
  </div>
  
  </body>
  </html>
</xsl:template> 

 <xsl:template match="//evento">
    <li><h3><xsl:value-of select="nome" /></h3>
        <p>Dal<xsl:value-of select="datainizio" /> al <xsl:value-of select="datafine" /></p>
        <p><xsl:value-of select="locazione" /></p>
        <xsl:element name="img">
          <xsl:attribute name="src">
            <xsl:value-of select="immagine"/>
          </xsl:attribute>
        </xsl:element>
      </li>
    </xsl:template>
        
</xsl:stylesheet>

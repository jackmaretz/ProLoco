#!/usr/bin/perl
use XML::LibXML;
use CGI;
use CGI::Carp qw(warningsToBrowsers fatalsToBrowser);
use HTML::Entities;
use Encode;

$pagina= new CGI;

$nome = $pagina->param('nome');
$pensiero = $pagina->param('pensiero');

my @errori = ();

if($nome eq '') {
  push(@errori, encode_entities("Nome non inserito"));
  }
if($nome !~ /^[a-zA-Z0-9'àèìòù]+$/ ){
  push(@errori, encode_entities("Nome non corretto"));
  }

if($pensiero eq '') {
  push(@errori, encode_entities("Opinione non inserita"));
  }

print "Content-type: text/html\r\n\r\n";
my $numeroerrori = @errori;
if ($numeroerrori > 0) {
  print $pagina ->header;
  print $pagina ->start_html('Pagina segnalazioni errori');
  print $pagina ->start_ul();
  foreach my $p (@errori){
    print $pagina->li($p);
  }
  print $pagina ->end_ul();
  print $pagina ->end_html;
  exit;
}
  
my $database='opinioni.xml';
my $parser=XML::LibXML->new("1.0", "UTF-8")    or die("Errore nel new");
my $doc=$parser->parse_file($database)         or die("Errore del parser");
my $radice=$doc->getDocumentElement            or die("Errore nel recupero della radice");

$nuovaOpinione = "\t<opinione>

  <nome>$nome</nome>
  <pensiero>$pensiero</pensiero>
  </opinione>\n";
  
$frammento = $parser->parse_balanced_chunk($nuovaOpinione);
$radice->appendChild($frammento)       or die("Inserimento fallito");
open(OUT, ">$database")                or die("Impossibile accedere al database");
print OUT $doc->toString;
close(OUT);


print <<'EOF';
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Pro Loco di Zero Branco</title>
<meta name="keywords" content="Pro Loco Zero Branco, Eventi Zero Branco, Feste Zero Branco" />
<meta name="description" content="Sito della Pro Loco; contiene informazioni sulle sagre e sugli eventi cittadini." />
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
		<li class="currentLink"><span xml:lang="en">Home</span></li>
		<li><a href="eventi.html">Eventi</a></li>
		<li><a href="foto.html">Foto</a></li>
		<li><a href="contatti.html">Contatti</a></li>
		<li><a href="opinioni.xml">Opinioni</a></li>
    </ul>
</div>
<div class="inizio">  
	<div class="header">
		<h1>Pro Loco di Zero Branco</h1> 
	</div>
	<div class="path">
		<p>Ti trovi in: Home</p>
	</div>
</div> 

<div class="articolo">
  <h2>Inserimento dell'opinione avvenuto con successo!</h2>
  <p>Grazie per il tuo contributo</p>
  <p>Torna alla <a href="index.html">homepage</a></p>
  </div>
  
<div class="footer">
   <p>Pro Loco di Zero Branco</p>
   <p>Telefono: <a href="tel:+39042297613">0422 97613</a></p>
   <p>Email: <a href="mailto:segreteria@prolocozerobranco.it">segreteria@prolocozerobranco.it</a></p>
</div>  
</body>
</html>


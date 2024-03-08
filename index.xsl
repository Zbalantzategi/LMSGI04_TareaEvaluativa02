<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />

<xsl:template match="/club_voleibol" >

<html lang="es">

	<head>
        <!--Hoja de estilo enlazada-->
		<link href="./css/estilo.css" rel="stylesheet" type="text/css" />
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="equpos.xsl">Tienda</a>
			<a href="web/equipos.html">Equipos</a>
			<a href="web/partidos.html">Partidos</a>
		</header>
		
		<main class="principal">
				<h1>TRABAJANDO CON PLANTILLAS XSLT</h1>
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>


</xsl:stylesheet>
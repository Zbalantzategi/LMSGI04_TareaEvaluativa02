<?xml version="1.0" encoding="UTF-8"?>
<!-- 
*
*	Módulo: LMSGI
*	UD: 04
*	Tarea: Tarea evaluativa 2.XSLT
*	Autor: Zuriñe Balantzategi Perez
*	Fecha: 08/03/2024
*	Enlace autoevaluación https://docs.google.com/document/d/1-BEXEunJM_vEl6h2_kUVGSYoNUMugbj5ctJk4XlXOYw/edit?usp=sharing 
*
 -->


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />

<xsl:template match="/club_voleibol" >

<html lang="es">

	<head>
		<link href="./css/estilo.css" rel="stylesheet" type="text/css" />
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "img/logotipo.png" alt= "Reservas" />
			<a href="tienda.xml">Tienda</a>
			<a href="equipos.xml">Equipos</a>
			<a href="partidos.xml">Partidos</a>
		</header>
		
		<main>
			<xsl:apply-templates select="equipo"/>
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>

<!-- Plantilla para el equipo, dentro tiene otra plantilla para los jugadores -->
<xsl:template match="equipo">
<xsl:variable name="entrena" select="entrenador/nombre"/>
    <xsl:variable name="URL" select="entrenador/url"/>
    <h1><a href="{$URL}"><xsl:value-of select="$entrena"/></a></h1>

    <article class="equipos">
        <h4><xsl:value-of select="nombre"/></h4>
        <xsl:apply-templates select="jugadores/jugador[@titular='si']"/>
    </article>
</xsl:template>

<!--Plantilla que visualiza los datos de un jugador siempre y cuando sea titular -->
<xsl:template match="jugador[@titular='si']">
    <p><xsl:value-of select="@camiseta"/> - <xsl:value-of select="nombre"/></p>
</xsl:template>

</xsl:stylesheet>
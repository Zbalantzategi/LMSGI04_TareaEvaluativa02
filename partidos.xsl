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
			<img src="img/logotipo.png" alt= "Reservas" />
			<a href="tienda.xml">Tienda</a>
			<a href="equipos.xml">Equipos</a>
			<a href="partidos.xml">Partidos</a>
		</header>
		
		<main>
			<h1>PARTIDOS</h1>
			<table>
				<tr>
					<th>PARTIDO</th>
					<th>FECHA</th>
					<th>RESULTADO</th>
				</tr>
				<xsl:apply-templates select="partido"/>
			</table>			
		</main>
		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>

<!-- Plantilla con choose when para que cuando gane el equipo visitante la puntuación aparezca en azul. -->
<xsl:template match="partido" >
	<tr>
		<td><xsl:value-of select="equipos"/></td>
		<td><xsl:value-of select="fecha"/></td>
	<xsl:choose>
        <xsl:when test="equipos/visitante/@puntuacion > equipos/local/@puntuacion">
            <td class="azul"><xsl:value-of select="equipos/local/@puntuacion"/> - <xsl:value-of select="equipos/visitante/@puntuacion"/></td>
        </xsl:when>
        <xsl:otherwise>
            <td><xsl:value-of select="equipos/local/@puntuacion"/> - <xsl:value-of select="equipos/visitante/@puntuacion"/></td>
        </xsl:otherwise>
    </xsl:choose>
	</tr>
</xsl:template>

</xsl:stylesheet>
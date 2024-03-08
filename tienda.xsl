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
		<meta charset="utf-8"/>
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
		
		<main class="principal">
			<!-- For each para conseguir las imagenes de los articulos, los precios y los comentarios, así como la cantidad. -->
			<xsl:for-each select="tienda/articulo">
				<article>
					<section>
						<img class= "articulo" src="{concat('img/', @foto)}"/>
					</section>
					<section>
						<h2><xsl:value-of select="precio"/></h2>
						<h3>Comentarios: <xsl:value-of select="count(comentarios)"/></h3>
						<ul>
							<li><xsl:value-of select="comentarios/@fecha"/>: <xsl:value-of select="comentarios"/></li>
						</ul>
					</section>
				</article>
			</xsl:for-each>	
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>

</xsl:stylesheet>
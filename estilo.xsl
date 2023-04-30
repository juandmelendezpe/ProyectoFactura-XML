<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<title>Facturacion</title>
				<link rel="stylesheet" href="css/style.css" type="text/css" />
			</head>

			<body>
				<main>
					<section class="container">
						<header>
							<img src="img/img/logo.png" alt="logo"/>
							<h1>factura</h1>
						</header>

						<div class="container_factura"> 

							<div class="id_factura"><span>Factura Nro:<xsl:value-of select="factura/@numero"/> </span> </div>
							<div class="id_fecha"><span>Fecha: <xsl:value-of select="factura/@fecha"/> </span></div>
							
							<div class="datos_emisor">
								<div class="factura_titulo_Emisor">Emisor</div>
								<p><xsl:value-of select="factura/emisor/@empresa"/> </p>
								<p><xsl:value-of select="factura/emisor/direccion/calle"/>||<xsl:value-of select="factura/emisor/direccion/numero"/> <xsl:value-of select="factura/emisor/direccion/cp	"/><xsl:value-of select="factura/emisor/direccion/localidad"/> <xsl:value-of select="factura/emisor/direccion/provincia"/> </p>
								<p><xsl:value-of select="factura/emisor/nif"/> </p>
							</div>

					
							<div class="datos_receptor">
								<div class="factura_titulo_receptor">Receptor</div>
									<p><xsl:value-of select="factura/receptor/@empresa"/></p>
									<p><xsl:value-of select="factura/receptor/direccion/calle"/><xsl:value-of select="factura/receptor/direccion/numero"/> <xsl:value-of select="factura/receptor/direccion/cp	"/><xsl:value-of select="factura/receptor/direccion/localidad"/> <xsl:value-of select="factura/receptor/direccion/provincia"/> </p>
									<p><xsl:value-of select="factura/receptor/nif"/></p>
								</div>

						
							<div class="tabla_productos">
									<table>
										<tr>
										  <th>&nbsp;</th>
										  <th>DESCRIPCION</th>
										  <th>CANTIDAD </th>
										  <th>PRECIO UNITARIO </th>
										  <th>IVA </th>
										  <th>IMPORTE </th>

										</tr>
										<xsl:for-each select="factura/concepto">

										<tr>
										  <td><img src="img/img/{@descripcion}.png" alt="gafas" /> </td>
										  <td><xsl:value-of select="@descripcion"/> </td>
										  <td><xsl:value-of select="cantidad"/></td>
										  <td><xsl:value-of select="preciouni"/></td>
										  <td><xsl:value-of select="iva"/> </td>
										  <td><xsl:value-of select="importe"/> </td>

										  </tr>

										</xsl:for-each>
									  </table>
							</div>
						</div>
					</section>
				</main>
      			
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
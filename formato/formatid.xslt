<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="objetoIoT ">
    <html>
      <body>
        <h1>Dispositivo Inteligente IoT</h1>
        <br></br>
        <xsl:value-of select="@id"/>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="propiedades">
     <h2>Propiedades del dispositivo</h2>
     <table border="1">
       <tr bgcolor="#9acd32">
        <th>Nombre</th>
        <th>Modelo</th>
        <th>Fabricante</th>
       </tr>
       <tr>
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="modelo"/></td>
        <td><xsl:value-of select="fabricante"/></td>
       </tr>
     </table>
  </xsl:template>

  <xsl:template match="recursoIoT">
     <p><xsl:value-of select="tipo"/></p>
     <p><xsl:value-of select="senal"/></p>
     <p><xsl:value-of select="voltaje"/></p>
  </xsl:template>

</xsl:stylesheet>
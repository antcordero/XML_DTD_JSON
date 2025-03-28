<?xml version="1.0"?>

<!--
    Document   : Ejercicio1Clase_XSLT.xsl
    Created on : 28 de marzo de 2025, 8:49
    Author     : AntonioCordero
    

    *************
        Este xsl se refiere al xml del ejercicio del aeropuerto
    *************

-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio1Clase_XSLT.xsl</title>
            </head>
            <body>
                <h1><xsl:value-of select="/aeropuerto/nombre" /> - <xsl:value-of select="/aereopuerto/@codigo"/></h1>
                ...
                <table>
                    <tr>
                        <th>Hora</th>
                        <th>Ciudad</th>
                        <th>Estado</th>
                        <th>Aerolínea</th>
                    </tr>
                    
                    <xsl:for-each select="/aeropuerto/trafico/vuelo">
                        <xsl:sort select="ciudad" order="descending"/> <!-- Ordenar por ciudad, la etiqueta de sort debe ir dentro del for-each -->
                        <tr>
                            <td><xsl:value-of select="@hora"/></td>  <!-- Aquí la raíz parte de /vuelo, no de /aeropuerto/ -->
                            <td><xsl:value-of select="ciudad"/></td>
                            <td><xsl:value-of select="aerolinea"/></td>
                            <td><xsl:value-of select="@estado"/></td>
                        </tr>
                    </xsl:for-each>
                    
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

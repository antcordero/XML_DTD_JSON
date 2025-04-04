<?xml version="1.0"?>

<!--
    Document   : EjemploClase_040425.xsl
    Created on : 4 de abril de 2025, 8:37
    Author     : AntonioCorderoMolina
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>EjemploClase_040425.xsl</title>
            </head>
            <body>
                <h1>Años de lanzamiento</h1>
                
                <ul>
                    <!--<xsl:for-each select="/consolas//consola"> -> la doble barra coge consola a cualquier nivel de profundidad, es más genérico al igual que solamente //consola -->
                    <xsl:for-each select="/consolas/consola">
                        <li>
                            <!-- primero atributos y luego el contenido -->
                            <xsl:if test="lanzamiento=1990">
                                <xsl:attribute name="style">color:red</xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="lanzamiento"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

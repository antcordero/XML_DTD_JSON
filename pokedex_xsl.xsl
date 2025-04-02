<?xml version="1.0"?>

<!--
    Document   : pokedex_xsl.xsl
    Created on : 2 de abril de 2025, 20:00
    Author     : Antonio Cordero
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
                <title>Pokedex</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    .pokemon { border: 1px solid #ccc; padding: 10px; margin: 10px; border-radius: 10px; }
                    img { width: 150px; height: auto; }
                    .tipos, .ataques { margin-top: 5px; }
                </style>
            </head>
            <body>
                <h1>Pokédex</h1>
                <xsl:for-each select="pokemones/pokemon">
                    <div class="pokemon">
                        <h2><xsl:value-of select="nombre"/></h2>
                        <p><xsl:value-of select="descripcion"/></p>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="imagen/@url"/>
                            </xsl:attribute>
                        </img>
                        <div class="tipos">
                            <strong>Tipos: </strong>
                            <xsl:for-each select="tipos/tipo">
                                <span><xsl:value-of select="."/> </span>
                            </xsl:for-each>
                        </div>
                        <div class="ataques">
                            <strong>Ataques:</strong>
                            <ul>
                                <xsl:for-each select="ataques/ataque">
                                    <li><xsl:value-of select="."/> (Poder: <xsl:value-of select="@poder"/>)</li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

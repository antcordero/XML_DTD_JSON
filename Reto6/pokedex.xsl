<?xml version="1.0"?>

<!--
    Document   : pokedex.xsl
    Created on : 1 de abril de 2025, 18:45
    Author     : Antonio Cordero Molina
    Description:
        Archivo XSLT para el archivo pokedex_XML_DTD.xml
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
    <html>
    <head>
        <title>Pokedex</title>
        <style>
            body { 
                font-family: Arial; 
                background-color: #f0f0f0; 
                text-align: center;
            }
            
            h1 {
                text-align: center;
                margin-top: 20px;
                font-size: 36px;
                color: #e63946;
            }
            
            
            .contenido {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .pokemon { 
                border: 2px solid #ccc; 
                margin: 10px; 
                padding: 10px; 
                border-radius: 8px; 
                background: white; 
                text-align: center;
                display: inline-block;
                width: 200px;
            }
            
            img { 
                width: 150px;
                height: 150px;
                display: block; 
                margin-left: auto; 
                margin-right: auto;
                margin-bottom: 10px;
            }
            
            h2 { 
                color: #e63946; 
                font-size: 18px;
                margin: 10px 0;
            }
            
            .tipos span { 
                padding: 4px 8px; 
                border-radius: 5px; 
                margin-right: 5px; 
                color: white;
            }
            
            .descripcion {
                text-align: center;
                margin: 10px 0;
            }

            .descripcion strong {
                display: block;
                font-size: 1em;
                margin-bottom: 5px;
            }

            .descripcion p {
                margin: 0;
            }

            .ataques {
                margin-top: 15px;
                text-align: left;
            }

            .ataques strong {
                display: block;
                margin-bottom: 5px;
            }

            .ataques ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            .ataques li {
                background-color: #fff9c4;
                border-radius: 10px;
                padding: 6px 10px;
                margin-bottom: 8px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                font-size: 14px;
            }

            .ataque-poder {
                background-color: #ccc799;
                border-radius: 50%;
                width: 30px;
                height: 30px;
                display: flex;
                justify-content: center;
                align-items: center;
                font-weight: bold;
            }

            .tipo-fire { background-color: #f44336; }
            .tipo-electric { background-color: #ffeb3b; color: black; }
            .tipo-water { background-color: #2196f3; }
            .tipo-poison { background-color: #9c27b0; }
            .tipo-flying { background-color: #9e9e9e; }
            .tipo-normal { background-color: #9e9e9e; }
            .tipo-bug { background-color: #4caf50; }
            .tipo-grass { background-color: #4caf50; }
        </style>
    </head>
    <body>
        
        <h1>Pokedex</h1>
        
        <div class="contenido">
            <xsl:for-each select="pokemones/pokemon">
                <div class="pokemon">

                    <h2>
                        <xsl:value-of select="nombre"/> (#<xsl:value-of select="@numero"/>)
                    </h2>

                    <img>
                        <xsl:attribute name="src">
                          <xsl:value-of select="imagen/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                          <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                    </img>

                    <div class="descripcion">
                        <strong>Descripción:</strong>
                        <p><xsl:value-of select="descripcion"/></p>
                    </div>

                    <div class="tipos">
                        <!--<strong>Tipos:</strong>-->
                        <xsl:for-each select="tipos/tipo">
                            <xsl:choose>
                                <xsl:when test=". = 'Fire'">
                                    <span class="tipo-fire">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                                <xsl:when test=". = 'Electric'">
                                    <span class="tipo-electric">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                                <xsl:when test=". = 'Water'">
                                    <span class="tipo-water">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                                <xsl:when test=". = 'Poison'">
                                    <span class="tipo-poison">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                                <xsl:when test=". = 'Flying'">
                                    <span class="tipo-flying">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                                <xsl:when test=". = 'Normal'">
                                    <span class="tipo-normal">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                                <xsl:when test=". = 'Bug'">
                                    <span class="tipo-bug">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                                <xsl:when test=". = 'Grass'">
                                    <span class="tipo-grass">
                                        <xsl:value-of select="."/>
                                    </span>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:for-each>

                    </div>
                    <div class="ataques">
                        <strong>Ataques:</strong>
                        <ul>
                            <xsl:for-each select="ataques/ataque">
                                <li>
                                    <span><xsl:value-of select="."/></span>
                                    <span class="ataque-poder"><xsl:value-of select="@poder"/></span>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>          
                </div>       
            </xsl:for-each>
        </div>
        
    </body>
    </html>
    </xsl:template>

</xsl:stylesheet>

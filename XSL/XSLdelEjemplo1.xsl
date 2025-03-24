<?xml version="1.0"?>

<!--
    Document   : XSLdelEjemplo1.xsl
    Created on : 24 de marzo de 2025, 13:58
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
                <title>XSL del XML - Ejemplo1</title>
                <style>
                    body{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    }
                    table {
                        border-spacing: none;
                    }
                    th,td {
                        border: solid;
                        padding: 10px;
                    }
                    
                    tr.daw {
                        background-color: lightgreen;
                    }
                    
                    tr.dam {
                        background-color: lightblue;
                    }
                </style>
            </head>
            <body>
                <h1>Listado de Alumnos</h1>
                <table>
                    <tr>
                        <th>Ciclo</th>
                        <th>DNI</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                    <xsl:for-each select="//alumno">
                        <xsl:sort select="@ciclo" order="ascending"/>
                        <xsl:sort select="nombre" order="ascending"/> <!-- ordenda por el select que se seleccione -->
                        <tr>
                            <xsl:attribute name="class"><xsl:value-of select="@ciclo"/></xsl:attribute> <!-- attribute crea un atributo en el elemento en el que se encuentre -->
                            <td> <xsl:value-of select="@ciclo"/> </td>
                            <td><xsl:value-of select="@dni"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellido"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

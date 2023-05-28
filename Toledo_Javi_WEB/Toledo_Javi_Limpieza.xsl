<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación XML a HTML</title>
            </head>
            <body>

                <section class="cajaTienda">
                    <div class="caja">
                        <h2 class="Titulo2"> Nuestros productos de limpieza y hogar</h2>
                        <div class="productos">
                            <xsl:for-each select="productos/limpieza">

                                <h3>
                                    <xsl:value-of select="articulo" />
                                </h3>

                                <h4>
                                    <xsl:value-of select="descripcion" />
                                </h4>
                                <h5 class="Texto">
                                    <xsl:value-of select="precio" />
                                </h5>
                            </xsl:for-each>
                        </div>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
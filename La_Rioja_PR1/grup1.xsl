<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <title>ITB Tours</title>
                <link rel="stylesheet" href="./css/itinerari.css" />
            </head>
            <body>
                <header>
                        <img alt="logo ITB" src="./img/logoitb.jpeg" />
                
            
                    <nav id="fijo">
                        <ul class="menunav">
                            <li><a href="#">Inicio</a></li>
                            <li><a href="#">Grupos propios</a></li>
                            <li><a href="#">Viajes a medida</a></li>
                            <li><a href="#">Cruceros</a></li>
                            <li><a href="#">Ofertas</a></li>
                            <li><a href="#">Contacto</a></li>
                        </ul>
                    </nav>
                </header>
            
                
                <main>
                    <article class="main_art">
                        <xsl:for-each select="grups/grup">
                            <div class="tot">
                                <div class="info_tit"><h1 class="h1"><xsl:value-of select="nom"/><xsl:value-of select="@fecha"/></h1></div>
                                <div class="div_superior">
                                    <img class="foto_grup" src="{concat('./img/',informacio_general/foto)}"/> 
                                    <div class="superior">
                                        <div class="grup_preu">
                                            <div class="grup_div"><h2 class="h2_grup"><b>Grupo Mínimo: </b> <xsl:value-of select="informacio_general/grupMin"/></h2></div>
                                            <div class="grup_div"><h2 class="h2_grup"><b>Precio: </b> <xsl:value-of select="informacio_general/preu"/> <b>Duración: </b> <xsl:value-of select="informacio_general/dies"/></h2></div>
                                        </div>

                                    
                                        <div class="div_inclou">
                                            <div class="inclou_h2"><h2><b>El viaje incluye:</b></h2></div>
                                            <section>
                                                <xsl:for-each select="inclos/inclou">
                                                    <div class="p_inclou"><b> - </b><xsl:value-of select="."/></div>
                                                </xsl:for-each>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <div>
                                    <h2>Itinerario:</h2>
                                    <section>
                                        <xsl:for-each select="itinerari/dia">
                                            <div><xsl:value-of select="."/></div>
                                        </xsl:for-each>
                                    </section>
                                </div>
                        </xsl:for-each> 
                    </article>
                </main>
                <footer>
                    <adress>
                        <img alt="ig" src="./img/instagram_icon.png"/>
                        <img alt="fb" src="./img/facebook.png"/>  
                        <p>Copyright</p>
                    </adress>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

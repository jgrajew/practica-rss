<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:media="http://search.yahoo.com/mrss/">
  <xsl:output method="html" encoding="UTF-8" />
  
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Blog de Noticias Deportivas</title>
        <link rel="stylesheet" href="algo.css"/>
      </head>
      <body>
        <div class="cabecera_blog">
          <h1>Mi blog</h1>
        </div>
        <div class="centro">
        <div class="blogs">
            <div class="blog">
            <article class="blog_tecnologia" onclick="window.location.href='tecnologia.xml'">
              <ul>
                <xsl:for-each select="//item_tecno">
                <li><xsl:value-of select="//item_tecno/title"/></li>
                <li>
                </li>
                <li> <img src="{foto}" alt="A1" class="imagen"/> </li>
                </xsl:for-each>
              </ul>
              </article>
            </div>

            <div class="blog">
              <article class="blog_deporte" onclick="window.location.href='tecnologia.xml'">
                <ul>
                  <xsl:for-each select="//item_deporte">
                  <li><xsl:value-of select="title"/></li>
                  <li>
                  </li>
                  <li> <img src="{foto}" alt="A1" class="imagen"/> </li>
                </xsl:for-each>
                </ul>
                </article>
              </div>

              <div class="blog">
                <article class="blog_noticia" onclick="window.location.href='tecnologia.xml'">
                  <ul>
                    <xsl:for-each select="//item_noticia">
                    <li><xsl:value-of select="title"/></li>
                    <li>
                    </li>
                    <li> <img src="{foto}" alt="A1" class="imagen"/> </li>
                  </xsl:for-each>
                  </ul>
                  </article>
                </div>
        </div>
      </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
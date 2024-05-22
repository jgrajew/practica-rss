<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:media="http://search.yahoo.com/mrss/">
  <xsl:output method="html" encoding="UTF-8" />
  
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
          <link rel="preconnect" href="https://fonts.gstatic.com"/>
          <link href="https://fonts.googleapis.com/css2?family=Poetsen+One&amp;family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&amp;display=swap" rel="stylesheet"/>
          <link rel="preconnect" href="https://fonts.googleapis.com"/>
            <link rel="preconnect" href="https://fonts.gstatic.com"/>
            <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;family=Roboto+Slab:wght@100..900&amp;family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet"/>
        <title>Blog de Noticias Deportivas</title>
        <link rel="stylesheet" href="algo.css"/>
      </head>
      <body>
        <div class="cabecera_noticia">
        <div class="cabecera_izquierda" onclick="window.location.href='index.html'">
          <h2>Volver</h2>
      </div>
        <div class="cabecera_derecha">
          <h1>NEWS</h1>
          <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExdndhd3QxaTEzbHY2NXdscGJxaTNxY2d6MmJvdDdqbm9kc3Z4NTB3ZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/J1jzHAAHdED3N1IZs6/giphy.gif"/>
        </div>
      </div>
        <div class="centro_blog">
        <div class="blogs_blog">
          <xsl:for-each select="//item">
            <div class="blog_blog">
              <xsl:variable name="url" select="guid" />
            <article class="blog1" onclick="window.location.href='{$url}'">
                
                    <h2><xsl:value-of select="title"/></h2>
                  <ul>
                    <li><xsl:value-of select="description"/></li>
                    <li> <img src="{foto}" alt="A1" class="imagen_blog"/> </li>
                    <li></li>
                    <li><xsl:value-of select="pubDate"/></li>
                  </ul>
                  
            </article>
          </div>
          </xsl:for-each>
        </div>
      </div>
      <div class="pie">
        <a>© 2024 News Zero.Todos los derechos reservados.</a>
      </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
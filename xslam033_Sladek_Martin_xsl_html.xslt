<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="text" />
  <xsl:template match="musicLibrary">
    <html>
      <body>
        <h2>Hudební knihovna</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Umělec</th>
            <th>Autor</th>
            <th>Název skladby</th>
            <th>Název alba</th>
            <th>Rok vydání</th>
            <th>Trvání skladby</th>
            <th>Hodnocení skladby</th>
            <th>Cena skladby</th>
            <th>Cena alba</th>
            <th>Název vydavatelství</th>
            <th>Procudent</th>
            <th>Počet přehrání</th>
            <th>Žánr(y)</th>
          </tr>
          <xsl:for-each select="song">
            <tr>
              <td><xsl:value-of select="artist/nameArtist" /></td>
              <td><xsl:value-of select="author/nameAuthor" /></td>
              <td><xsl:value-of select="originalTitle" /></td>
              <td><xsl:value-of select="album/albumName" /></td>
              <td><xsl:value-of select="releaseDate/date/year" /></td>
              <td><xsl:value-of select="lenght" /></td>
              <td><xsl:value-of select="rating" /></td>
              <td><xsl:value-of select="price" />&#160;<xsl:value-of select="price/@currency" /></td>
              <td><xsl:value-of select=" album/albumPrice" />&#160;<xsl:value-of select=" album/albumPrice/@currency" /></td>
              <td><xsl:value-of select="label/labelName" /></td>
              <td><xsl:value-of select="label/producer"/></td>
              <td><xsl:value-of select="played"/></td>
              <td><xsl:value-of select="genres" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
   
  </xsl:template>
</xsl:stylesheet>

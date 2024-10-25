<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#ff0000">
      <th>Title</th>
      <th>Artist</th>
      <th>Country</th>
      <th>Price</th> 
      <th>Color</th>
    </tr>
    <!-- <xsl:for-each select="catalog/cd[country='USA']"> -->
    <xsl:for-each select="catalog/cd">
    <!-- <xsl:sort select='price'/>-->
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="country"/></td>
      <td><xsl:value-of select="price"/></td>
      <td>
        <xsl:if test="price &lt; 10">
        &#128994;
        </xsl:if>
        <xsl:if test="price &gt; 10">
        &#128997;
        </xsl:if>
      </td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
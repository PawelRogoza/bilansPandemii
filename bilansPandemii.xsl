<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>Bilans Pandemii</h1>
    <h2>Ogólnokrajowy</h2>
    <h4>1-30 listopada 2020</h4>
    <table style="width: 800px; border: 2px solid black">
      <tr bgcolor="#479CDF">
        <th>Zachorowania</th>
        <th>Zgony</th>
        <th>Wyzdrowienia</th>
        <th>Wykonane testy</th>
        <th>Testy pozytywne</th>
      </tr>
      <xsl:for-each select="bilans-pandemii/statystyka/bilans-ogólnokrajowy">
        <tr>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="zachorowania"/></td>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="zgony"/></td>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="wyzdrowienia"/></td>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="wykonane-testy"/></td>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="testy-pozytywne"/></td>
        </tr>
      </xsl:for-each>
    </table>

    <h2>Bilans z podziałem na województwa</h2>
    <h4>1-08 listopada 2020</h4>
    <table style="width: 800px; border: 2px solid black">
      <tr bgcolor="#479CDF">
        <th>Województwo</th>
        <th>Zachorowania</th>
        <th>Wyzdrowienia</th>
        <th>Zgony</th>
      </tr>
      <xsl:for-each select="bilans-pandemii/statystyka/bilans-szczegółowy/województwa/województwo">
        <xsl:sort select="zachorowania" order="descending" data-type="number"/>
        <tr>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="@name"/></td>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="zachorowania"/></td>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="zgony"/></td>
          <td style="text-align: center; vertical-align: middle;"><xsl:value-of select="wyzdrowienia"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
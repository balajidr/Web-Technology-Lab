 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<h1><center>CARS CATALOG</center></h1>
<table border="1.2" width="100%" height="100%">
<tr bgcolor="pink">
<th>Year</th>
<th>Make</th>
<th>Model</th>
<th>Color</th>
<th>Number of Doors</th>
<th>Transmission type</th>
</tr>
<xsl:for-each select="car_catalog/car">
<tr>
<td>
<xsl:value-of select="year"/>
</td>
<td>
<xsl:value-of select="make"/>
</td>
<td>
<xsl:value-of select="model"/>
</td>
<td>
<xsl:value-of select="color"/>
</td>
<td>
<xsl:value-of select="number_of_doors"/>
</td>
<td>
<xsl:value-of select="transmission_type"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
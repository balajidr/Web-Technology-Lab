 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body bgcolor="grey">
<h1>Patients</h1>
<table border="5">
<tr bgcolor="pink">
<th>NAME</th>
<th>SSN</th>
<th>AGE</th>
<th>ROOM-NO</th>
<th>PHONE</th>
<th>ADDRESS</th>
<th>MEDICAL PROBLEM</th>
<th>DRUG ALLERGY</th>
</tr>

<tr>
<td>
<xsl:value-of select="hospital/patient/name"/>
</td>
<td>
<xsl:value-of select="hospital/patient/ssn"/>
</td>
<td>
<xsl:value-of select="hospital/patient/age"/>
</td>
<td>
<xsl:value-of select="hospital/patient/roomnumber"/>
</td>
<td>
<xsl:value-of select="hospital/patient/phonenumber"/>
</td>
<td>
<xsl:value-of select="hospital/patient/address"/>
</td>
<td>
<xsl:value-of select="hospital/patient/medicalproblem"/>
</td>
<td>
<xsl:value-of select="hospital/patient/drugallergies"/>
</td>
</tr>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
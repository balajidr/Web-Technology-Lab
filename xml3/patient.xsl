 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body bgcolor="lightblue">
<h1>Last Patient</h1>
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
<xsl:for-each select="hospital/patient[last()]">
<tr>
<td>
<xsl:value-of select="name"/>
</td>
<td>
<xsl:value-of select="ssn"/>
</td>
<td>
<xsl:value-of select="age"/>
</td>
<td>
<xsl:value-of select="roomnumber"/>
</td>
<td>
<xsl:value-of select="phonenumber"/>
</td>
<td>
<xsl:value-of select="address"/>
</td>
<td>
<xsl:value-of select="medicalproblem"/>
</td>
<td>
<xsl:value-of select="drugallergies"/>
</td>
</tr>
</xsl:for-each>
</table>


<h1>Age > 50 Patients</h1>
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
<xsl:for-each select="hospital/patient[age>50]">
<tr>
<td>
<xsl:value-of select="name"/>
</td>
<td>
<xsl:value-of select="ssn"/>
</td>
<td>
<xsl:value-of select="age"/>
</td>
<td>
<xsl:value-of select="roomnumber"/>
</td>
<td>
<xsl:value-of select="phonenumber"/>
</td>
<td>
<xsl:value-of select="address"/>
</td>
<td>
<xsl:value-of select="medicalproblem"/>
</td>
<td>
<xsl:value-of select="drugallergies"/>
</td>
</tr>
</xsl:for-each>
</table>



<h1>All Patients</h1>
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
<xsl:for-each select="hospital/patient">
<tr>
<td>
<xsl:value-of select="name"/>
</td>
<td>
<xsl:value-of select="ssn"/>
</td>
<td>
<xsl:value-of select="age"/>
</td>
<td>
<xsl:value-of select="roomnumber"/>
</td>
<td>
<xsl:value-of select="phonenumber"/>
</td>
<td>
<xsl:value-of select="address"/>
</td>
<td>
<xsl:value-of select="medicalproblem"/>
</td>
<td>
<xsl:value-of select="drugallergies"/>
</td>
</tr>
</xsl:for-each>
</table>


</body>
</html>
</xsl:template>
</xsl:stylesheet>
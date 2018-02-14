 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body bgcolor="lightblue">




<h2>ROOT ELEMENT - Document Node</h2>
<xsl:value-of select="name(/*)"/>
<h2>NAMESPACE</h2>
<xsl:value-of select="hospital/namespace::*"/>
<h2>COMMENT</h2>
<xsl:value-of select="/hospital/patient/preceding-sibling::comment()"/>
<h2>PROCESSING INSTRUCTION</h2>
<xsl:value-of select="/hospital/preceding-sibling::processing-instruction()"/>
<h2>ATTRIBUTE</h2>
<table border="5">
<tr bgcolor="pink">
<th>NAME</th>
<th>SSN</th>
<th>AGE</th>
<th>ROOM-NO</th>
<th>PHONE</th>
<th>STREET ATTRIBUTE</th>
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
<xsl:value-of select="address/@st"/>
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
<h2>ELEMENTS</h2>

<xsl:value-of select="//*"/>

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






<h1>Sibling</h1>
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
<xsl:for-each select="hospital/patient[4]/preceding-sibling::patient">
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


<h1>Descendent</h1>
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
<xsl:for-each select="hospital/descendant::patient[last()]">
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


<h1>Ancestor</h1>
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
<xsl:for-each select="hospital/patient/name/ancestor::hospital/patient[1]">
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
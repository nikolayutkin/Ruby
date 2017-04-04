<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body bgcolor="#ADD8E6">
<table border="1px">
<tr>
<th>Value</th>
</tr>
<xsl:for-each select="//fixnum">
<tr><td><xsl:value-of select="."/></td></tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
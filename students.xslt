<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
              

    <xsl:template match="/">
      <html>
        <head>
          <title>Classroll</title>
        </head>
        <body>
          <p>COMPUTER SCIENCE MAJORS</p>
          <xsl:for-each select="students/student">
            
            <xsl:sort select="lastName"/>
            Name: <xsl:value-of select="lastName"/>, <xsl:value-of select="firstName"/>
            <br />
            ID: <xsl:value-of select="id"/>           
            <br />
            Date Enrolled: <xsl:value-of select="dateEnrolled"/>
            <br />
            Major: <xsl:value-of select="major/@catalogYear"/>
            <br />
            Must complete the Senior Project course.
            
          </xsl:for-each>
        </body>
      </html>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html"/>

  <xsl:template match="/">
      <!--για κάθε attraction κοιτάμε το attribute booking και ζητάμε να είναι required-->
      <xsl:for-each select="London_Sightseeing/Attractions/Attraction[@booking='required']">
            <xsl:value-of select="Attraction_title"/>
            <br></br>
      </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
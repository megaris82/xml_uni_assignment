<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" />

    <xsl:template match="/">
        <html>
            <body>
                <!--apply templates σε κάθε attraction, ταξινομημενα-->
                <xsl:apply-templates select="London_Sightseeing/Attractions/Attraction">
                    <xsl:sort select="Attraction_title"/><!--by default αύξουσα-->
                </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Attraction">
        <br>
            <xsl:value-of select="Attraction_title" />
        </br>
    </xsl:template>

</xsl:stylesheet> 
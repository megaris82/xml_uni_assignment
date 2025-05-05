<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml"/><!-- για να επιστρέφει την xml λίστα-->

    <xsl:template match="/">
        <attractions_to_see>
            <xsl:for-each select="London_Sightseeing/Attractions/Attraction">
                <Attraction>
                    <attraction_title>
                        <xsl:value-of select="Attraction_title" />
                    </attraction_title>
                    <!--τα highlights-->
                    <br></br>
                    <xsl:for-each select="doing/Highlights/Highlight">
                        <Highlight>
                            <xsl:value-of select="." />
                        </Highlight>
                        <br></br>
                    </xsl:for-each>

                    <Address>
                        <xsl:value-of select="Address" />
                    </Address>
                </Attraction>
                <br></br>
            </xsl:for-each>
        </attractions_to_see> 
    </xsl:template>
<!--προσθήκη των br για readability-->
</xsl:stylesheet>
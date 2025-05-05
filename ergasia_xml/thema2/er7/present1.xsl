<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>London Attractions</title>
                <style>
                    table {
                        text-align:center;
                        border-collapse: collapse;
                    }
                    th {
                        background-color: blue;
                        color: white;
                        padding: 20px;
                    }
                    td {
                        padding: 20px;
                        border-bottom: 1px solid;
                    }
                </style>
            </head> 
            <body>
                <table>
                    <tr>
                        <th>Attraction</th>
                        <th>Booking</th>
                        <th>Normal Price</th>
                    </tr>
                    <!--template application για το κάθε attraction -->
                    <xsl:apply-templates select="London_Sightseeing/Attractions/Attraction" />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Attraction">
        <tr>
            <td>
                <xsl:apply-templates select="Attraction_title" />
            </td>
            <td>
                <xsl:choose>
                    <xsl:when test="string-length(@booking) > 0">
                        <xsl:value-of select="@booking" />
                    </xsl:when>
                    <xsl:otherwise>
                        <span>Not Specified</span>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
            <td>
                <xsl:value-of select="@normal_value" />
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
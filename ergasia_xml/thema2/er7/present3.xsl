<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body {
                        text-align: center;
                    }
                    table {
                        width: 50%;
                        border-collapse: collapse;
                        margin: auto;
                        text-align: center;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 10px;
                    }
                    th {
                        background-color: lightblue;
                    }
                </style>
            </head>
            <body>
                <h1>Αξιοθέατα με κανονική τιμή εισόδου πάνω από 38.00</h1>
                <table>
                    <tr>
                        <th>Τίτλος</th>
                        <th>Περιγραφή</th>
                        <th>Κανονική Τιμή Εισόδου</th>
                        <th>URL</th>
                    </tr>
                    <!--επανάληψη και ταξινόμηση -->
                    <xsl:for-each select="London_Sightseeing/Attractions/Attraction">
                        <xsl:sort select="@normal_value" data-type="number" order="descending" />
                        <!--if για να πάρουμε μόνο αυτά με τιμή καθαρά >38-->
                        <xsl:if test="@normal_value &gt; 38.00">
                            <tr>
                                <td>
                                    <xsl:value-of select="Attraction_title" />
                                </td>
                                <td>
                                    <xsl:value-of select="small_decription" />
                                </td>
                                <td>
                                    <xsl:value-of select="@normal_value" />
                                </td>
                                <td>
                                    <a href="{extra_attraction_info/@URL}">
                                        <xsl:value-of select="extra_attraction_info/@URL" />
                                    </a>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
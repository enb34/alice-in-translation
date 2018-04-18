<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xs:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:variable name="docs" select="collection(//text_files)"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Table</title>
            </head>
            <body>
                <h1>Japanese</h1>
                <!--<table>
                    <tr>
                        <th>Element</th>
                        <th>Quantity</th>
                </tr>
                <xsl:apply-templates select="//book"/>
                </table>-->
                <h1>English</h1>
                <!--<table>
                        <tr>
                            <th>Element</th>
                            <th>Quantity</th>
                        </tr>
                 </table>-->
            </body>
        </html>
    <!--</xsl:template>
    <xsl:template match="book">
        <tr>
            <td>Nonsense</td>
            <xsl:variable name="ns" select="count(//word[@kind ='ns']) + count(//phrase[@type = 'ns'])"/>
            <td><xsl:value-of select="$ns"/></td>
        </tr>
        <tr>
            <td>Play on Words</td>
            <xsl:variable name="pow" select="count(//word[@kind = 'pow']) + count(//phrase[@type = 'pow'])"/>
            <td><xsl:value-of select="$pow"/></td>
        </tr>
        <tr>
            <td>Incorrect Usage</td>
            <xsl:variable name="iu" select="count(//word[@kind = 'iu']) + count(//phrase[@type = 'iu'])"/>
            <td><xsl:value-of select="$iu"/></td>
        </tr>
        <tr>
            <td>Rhyme Phrase</td>
            <xsl:variable name="rp" select="count(//rp)"/>
            <td><xsl:value-of select="$rp"/></td>
        </tr>
        <tr>
            <td>Repetition</td>
            <xsl:variable name="rep" select="count(//repetition)"/>
            <td><xsl:value-of select="$rep"/></td>
        </tr>
        <tr>
            <td>Onomatopoeia</td>
            <xsl:variable name="onom" select="count(//onomatopoeia)"/>
            <td><xsl:value-of select="$onom"/></td>
        </tr>-->
    </xsl:template>
</xsl:stylesheet>
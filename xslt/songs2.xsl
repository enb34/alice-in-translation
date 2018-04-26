<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xs:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Songs and Poems</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="div">
        <div id="{@id}">
            <xsl:apply-templates select="@id">
                <xsl:sort select="replace(., '[^\d]', '')" data-type="number"/>
            </xsl:apply-templates>
        </div>
    </xsl:template>
</xsl:stylesheet>
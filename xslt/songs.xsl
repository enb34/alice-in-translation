<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/XHTML"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Songs and Poems</title>
            </head>
        </html>
        <body>
            <xsl:apply-templates select="//song"/>
        </body>
    </xsl:template>
    <xsl:template match="song">
        <div id="song{position()}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="stanza">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="l">
        <xsl:apply-templates/>
        <xsl:if test="following-sibling::l">
            <br/>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
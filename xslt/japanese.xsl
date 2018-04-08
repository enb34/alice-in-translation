<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs" version="3.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Alice's Adventures in Wonderland</title>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//book/bookTitle">
        <h1><xsl:apply-templates /></h1>
    </xsl:template>
    <xsl:template match="chapter">
        <div>
            <xsl:attribute name="id">
                <xsl:value-of select="@n"/>
            </xsl:attribute>
            <h2><xsl:apply-templates select="title" /></h2>
            <xsl:apply-templates /></div>
    </xsl:template>
    <xsl:template match="//p">
        <p><xsl:apply-templates /></p>
    </xsl:template>
</xsl:stylesheet>
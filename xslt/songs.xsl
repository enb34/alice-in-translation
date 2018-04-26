<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xs:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:variable name="docs" as="document-node()+"
        select="collection('../text_files/?select=*fullwork*.xml')"/>

    <xsl:template match="/">

        <doc>
            <body>
                <xsl:for-each select="$docs">
                    <xsl:apply-templates select="//song"/>
                </xsl:for-each>
            </body>
        </doc>
    </xsl:template>
    <xsl:template match="song">
        <xsl:if test=".[//bookTitle = 'ALICE’S ADVENTURES IN WONDERLAND']">
            <div id="song{position()}1">
                <xsl:apply-templates/>
            </div>
        </xsl:if>
        <xsl:if test=".[//bookTitle = 'アリスはふしぎの国で']">
            <div id="song{position()}2">
                <xsl:apply-templates/>
            </div>
        </xsl:if>
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

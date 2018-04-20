<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg"
    version="3.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <svg><g transform="translate(5,15)">
            <xsl:apply-templates select="book/chapter"/></g>
        </svg>
    </xsl:template>
    <xsl:template match="chapter">
        <xsl:variable name="o_count" as="xs:integer" select="count(descendant::onomatopoeia)"/>
        <xsl:variable name="r_count" as="xs:integer" select="count(descendant::rhyme)"/>
        <xsl:variable name="c_count" as="xs:integer" select="count(descendant::cultural)"/>
        <xsl:variable name="iu_count" as="xs:integer" select="count(//@kind='iu')"/>
        <xsl:variable name="pow_count" as="xs:integer" select="count(//@kind='pow')"/>
        <text x="0" y="0">O</text>
        <text x="15" y="0">R</text>
        <text x="30" y="0">C</text>
        <text x="45" y="0">I</text>
        <text x="60" y="0">P</text>
        <xsl:for-each select="0 to $o_count">
            <rect x="0" y="{(position() - 1) * 10 + 20}" fill="pink" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $r_count">
            <rect x="15" y="{(position() - 1) * 10 + 20}" fill="green" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $c_count">
            <rect x="30" y="{(position() - 1) * 10 + 20}" fill="yellow" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $iu_count">
            <rect x="45" y="{(position() - 1) * 10 + 20}" fill="purple" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $pow_count">
            <rect x="60" y="{(position() - 1) * 10 + 20}" fill="orange" height="8" width="8"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

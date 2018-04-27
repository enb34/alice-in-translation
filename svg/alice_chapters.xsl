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
        <xsl:variable name="iu_count" as="xs:integer" select="(count(descendant::word[@kind='iu'])+count(descendant::phrase[@type='iu'])-1)"/>
        <xsl:variable name="pow_count" as="xs:integer" select="(count(descendant::word[@kind='pow'])+count(descendant::phrase[@type='pow'])-1)"/>
        <xsl:variable name="non_count" as="xs:integer" select="(count(descendant::word[@kind='ns'])+count(descendant::phrase[@type='ns'])-1)"/>
        <xsl:variable name="uc_count" as="xs:integer" select="(count(descendant::word[@kind='uc'])+count(descendant::phrase[@type='uc'])-1)"/>
        <text x="0" y="0">O</text>
        <text x="15" y="0">R</text>
        <text x="30" y="0">C</text>
        <text x="45" y="0">I</text>
        <text x="60" y="0">P</text>
        <text x="75" y="0">N</text>
        <text x="90" y="0">U</text>
        <xsl:for-each select="0 to $o_count">
            <rect x="0" y="{(position() - 1) * 10 + 20}" fill="pink" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $r_count">
            <rect x="15" y="{(position() - 1) * 10 + 20}" fill="green" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $c_count">
            <rect x="30" y="{(position() - 1) * 10 + 20}" fill="gold" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $iu_count">
            <rect x="45" y="{(position() - 1) * 10 + 20}" fill="purple" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $pow_count">
            <rect x="60" y="{(position() - 1) * 10 + 20}" fill="orange" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $non_count">
            <rect x="75" y="{(position() - 1) * 10 + 20}" fill="navy" height="8" width="8"/>
        </xsl:for-each>
        <xsl:for-each select="0 to $uc_count">
            <rect x="90" y="{(position() - 1) * 10 + 20}" fill="silver" height="8" width="8"/>
        </xsl:for-each>
        <text x="120" y="0">O = onomotopoeia</text>
        <text x="120" y="15">R = rhyme</text>
        <text x="120" y="30">C = cultural reference</text>
        <text x="120" y="45">I = incorrect usage</text>
        <text x="120" y="60">P = play on words</text>
        <text x="120" y="75">N = nonsense</text>
        <text x="120" y="90">U = uncommon usage</text>
    </xsl:template>
</xsl:stylesheet>

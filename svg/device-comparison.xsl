<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs" version="3.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:variable name="barWidth" select="50"/>
    <xsl:variable name="objbarSpace" select="$barWidth div 2"/>
    <xsl:variable name="sambarSpace" select="$objbarSpace div 4"/>
    <xsl:variable name="barInterval" select="$barWidth * 2 + $objbarSpace + $sambarSpace"/>
    <xsl:template match="/">
        <svg>
            <g transform="translate(35,500)">
                <line x1="10" y1="0" x2="{$barInterval * 6 + $objbarSpace}" y2="0" stroke="black" stroke-width="2"/>
                <line x1="10" y1="0" x2="10" y2="-300" stroke="black" stroke-width="2"/>
                <xsl:for-each select="//td[2]">
                    <xsl:variable name="engxPos" select="(position() -1) * $barInterval + $objbarSpace"/>
                    <xsl:variable name="engBar" select=". * 2"/>
                    <rect x="{$engxPos}" y="-{$engBar}" width="{$barWidth}" height="{$engBar}" fill="purple"/>
                </xsl:for-each>
                <xsl:for-each select="//td[3]">
                    <xsl:variable name="jpnxPos" select="(position() -1) * $barInterval + $sambarSpace + $barWidth + $objbarSpace"/>
                    <xsl:variable name="jpnBar" select=". * 2"/>
                    <rect x="{$jpnxPos}" y="-{$jpnBar}" width="{$barWidth}" height="{$jpnBar}" fill="green"/>
                </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>

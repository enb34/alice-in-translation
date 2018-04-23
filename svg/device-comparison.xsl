<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs" version="3.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:variable name="barWidth" select="50"/>
    <xsl:variable name="objbarSpace" select="$barWidth div 2"/>
    <xsl:variable name="sambarSpace" select="$objbarSpace div 4"/>
    <xsl:variable name="barInterval" select="$barWidth * 2 + $objbarSpace + $sambarSpace"/>
    <xsl:variable name="xaxis" select="$barInterval * 6 + $objbarSpace"/>
    <xsl:variable name="yaxis" select="20"/>
    <xsl:template match="/">
        <svg>
            <g transform="translate(65,350)">
                <!--Graph Outline-->
                <line x1="10" y1="0" x2="{$xaxis}" y2="0" stroke="black" stroke-width="2"/>
                <text x="{$xaxis div 2}" y="75" text-anchor="middle" font-size="20px">Devices</text>
                <line x1="10" y1="0" x2="10" y2="-300" stroke="black" stroke-width="2"/>
                <text x="15" y="-150" text-anchor="middle" transform="rotate(270 0,-125)" font-size="20px">Devices Count</text>
                <xsl:for-each select="1 to 14">
                    <line x1="10" y1="-{position() * $yaxis}" x2="{$xaxis}" y2="-{position() * $yaxis}" stroke="lightgray" stroke-width="1"/>
                    <xsl:variable name="xlabels" select="position() * position()"/>
                    <text x="-5" y="-{position() * $yaxis}" text-anchor="middle">
                        <xsl:apply-templates select="$xlabels"/>
                    </text>
                </xsl:for-each>
                <text x="{$xaxis div 2}" y="-315" text-anchor="middle" font-size="25px">Number of Devices Used in the English and Japanese Texts</text>
                <!--Key-->
                <xsl:variable name="key" select="$xaxis div 3"/>
                <rect x="{$key - 10}" y="35" width="20" height="20" fill="purple"/>
                <text x="{$key + 15}" y="50">
                    <xsl:apply-templates select="//th[2]"/>
                </text>
                <rect x="{$key * 2 - 10}" y="35" width="20" height="20" fill="green"/>
                <text x="{$key * 2 + 15}" y="50">
                    <xsl:apply-templates select="//th[3]"/>
                </text>
                <!--English Bars-->
                <xsl:for-each select="//td[2]">
                    <xsl:variable name="engxPos" select="(position() - 1) * $barInterval + $objbarSpace"/>
                    <xsl:variable name="engBar" select="Math:sqrt(xs:double(.)) * 20" xmlns:Math="java:java.lang.Math"/>
                    <rect x="{$engxPos}" y="-{$engBar}" width="{$barWidth}" height="{$engBar}" fill="purple"/>
                    <text x="{$engxPos + $objbarSpace}" y="-{$engBar + 5}" text-anchor="middle">
                        <xsl:apply-templates select="."/>
                    </text>
                </xsl:for-each>
                <!--Japanese Bars-->
                <xsl:for-each select="//td[3]">
                    <xsl:variable name="jpnxPos" select="(position() - 1) * $barInterval + $sambarSpace + $barWidth + $objbarSpace"/>
                    <xsl:variable name="jpnBar" select="Math:sqrt(xs:double(.)) * 20" xmlns:Math="java:java.lang.Math"/>
                    <rect x="{$jpnxPos}" y="-{$jpnBar}" width="{$barWidth}" height="{$jpnBar}" fill="green"/>
                    <text x="{$jpnxPos + $objbarSpace}" y="-{$jpnBar + 5}" text-anchor="middle">
                        <xsl:apply-templates select="."/>
                    </text>
                </xsl:for-each>
                <!--Bar Labels-->
                <xsl:for-each select="//td[1]">
                    <xsl:variable name="textPos" select="(position() - 1) * $barInterval + $objbarSpace + $barWidth"/>
                    <text x="{$textPos}" y="15" text-anchor="middle">
                        <xsl:apply-templates select="."/>
                    </text>
                </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>

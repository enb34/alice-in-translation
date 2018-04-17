<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs" version="3.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>アリスはふしぎの国で</title>
                <link rel="stylesheet" type="text/css" href="alice.css" />
                <link href="https://fonts.googleapis.com/css?family=Arima+Madurai:900%7CMontserrat"
                    rel="stylesheet" />
            </head>
            <body>
                <xsl:apply-templates select="//book"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="bookTitle">
        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    <xsl:template match="author">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    <xsl:template match="translator">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    <xsl:template match="chapter">
        <div class="textChapter">
            <xsl:attribute name="id">
                <xsl:value-of select="@n"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="title">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    <xsl:template match="p">
        <p><xsl:apply-templates /></p>
    </xsl:template>
    <xsl:template match="song">
        <div class="song">
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
    <xsl:template match="break">
        <br/>
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    <xsl:template match="parenthesis">
        <xsl:text>（</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>）</xsl:text>
    </xsl:template>
    <xsl:template match="word[@kind = 'ns']">
        <span class="ns">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="word[@kind = 'ic']">
        <span class="ic">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="word[@kind = 'pow']">
        <span class="pow">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="phrase[@type = 'ns']">
        <span class="ns">
            <xsl:apply-templates></xsl:apply-templates>
        </span>
    </xsl:template>
    <xsl:template match="phrase[@type = 'ic']">
        <span class="ic">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="phrase[@type = 'pow']">
        <span class="pow">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="dash">
        <span class="emp.dash">
            <xsl:apply-templates></xsl:apply-templates>
        </span>
    </xsl:template>
    <xsl:template match="onomatopoeia">
        <span class="onom">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="emp">
        <span class="emp">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="foreign">
        <span class="lang">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="cultural">
        <span class="cultural">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="repetition">
        <span class="rep">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="fg">
        <ruby>
            <xsl:apply-templates/>
        </ruby>
    </xsl:template>
    <xsl:template match="h">
            <rp>(</rp>
        <rt>
            <xsl:apply-templates/>
        </rt>
        <rp>)</rp>
    </xsl:template>
</xsl:stylesheet>
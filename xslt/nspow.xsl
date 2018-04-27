<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xs:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:variable name="docs" as="document-node()+"
        select="collection('../text_files/?select=*fullwork*.xml')"/>
    <xsl:variable name="nsw" select="$docs//word[@kind = 'ns']"/>
    <xsl:variable name="nsp" select="$docs//phrase[@type = 'ns']"/>
    <xsl:variable name="poww" select="$docs//word[@kind = 'pow']"/>
    <xsl:variable name="powp" select="$docs//phrase[@type = 'pow']"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Nonsense Words and Play-on-Words</title>
            </head>
            <body>
                <xsl:for-each select="$docs">
                    <ul class="ns">
                        <xsl:for-each select="$nsw">
                            <li>
                                <xsl:apply-templates/>
                            </li>
                        </xsl:for-each>
                        <xsl:for-each select="$nsp">
                            <li>
                                <xsl:apply-templates/>
                            </li>
                        </xsl:for-each>
                    </ul>
                    <ul class="pow">
                        <xsl:for-each select="$poww">
                            <li>
                                <xsl:apply-templates/>
                            </li>
                        </xsl:for-each>
                        <xsl:for-each select="$powp">
                            <li>
                                <xsl:apply-templates/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
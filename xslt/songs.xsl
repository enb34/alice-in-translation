<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xs:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:variable name="docs" as="document-node()+"
        select="collection('../text_files/?select=*fullwork*.xml')"/>
    <xsl:template match="/">
        <doc>
            <body>
                <xsl:variable name="unsorted" as="element(div)+">
                    <xsl:for-each select="$docs">
                        <xsl:apply-templates select="//song"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:sequence
                    select="
                        sort($unsorted, (), function ($item) {
                            number(substring-after($item/@id, 'song'))
                        })"
                />
            </body>
        </doc>
    </xsl:template>
    <xsl:template match="song">
        <xsl:choose>
            <xsl:when test="//bookTitle = 'ALICE’S ADVENTURES IN WONDERLAND'">
                <div id="song{(position() - 1 ) * 2}">
                    <xsl:apply-templates/>
                </div>
            </xsl:when>
            <xsl:when test="//bookTitle = 'アリスはふしぎの国で'">
                <div id="song{(position() - 1 ) * 2 + 1}">
                    <xsl:apply-templates/>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <xsl:message terminate="yes">No English or Japanese title</xsl:message>
            </xsl:otherwise>
        </xsl:choose>
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

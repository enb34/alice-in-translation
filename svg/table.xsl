<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xs:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:variable name="docs" as="document-node()+"
        select="sort(collection('../text_files/?select=*fullwork*.xml'))"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Table</title>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Element</th>
                        <th>English</th>
                        <th>Japanese</th>
                    </tr>
                    <tr>
                        <td>Nonsense</td>
                        <xsl:for-each select="$docs">
                            <td>
                                <xsl:apply-templates
                                    select="count(//word[@kind = 'ns']) + count(//phrase[@type = 'ns'])"
                                />
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td>Play on Words</td>
                        <xsl:for-each select="$docs">
                            <td>
                                <xsl:apply-templates
                                    select="count(//word[@kind = 'pow']) + count(//phrase[@type = 'pow'])"
                                />
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td>Incorrect Usage</td>
                        <xsl:for-each select="$docs">
                            <td>
                                <xsl:apply-templates
                                    select="count(//word[@kind = 'iu']) + count(//phrase[@type = 'iu'])"
                                />
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td>Rhyme Phrase</td>
                        <xsl:for-each select="$docs">
                            <td>
                                <xsl:apply-templates
                                    select="count(//rp)"
                                />
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td>Repetition</td>
                        <xsl:for-each select="$docs">
                            <td>
                                <xsl:apply-templates
                                    select="count(//repetition)"
                                />
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <td>Onomatopoeia</td>
                        <xsl:for-each select="$docs">
                            <td>
                                <xsl:apply-templates
                                    select="count(//onomatopoeia)"
                                />
                            </td>
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ulu Kalpa</title>
                <link rel="stylesheet" href="msscss.css" type="text/css"/>
            </head>
            <!-- intro -->
            <div>
                <h1>Health, Medicine and Treatment in early modern North India</h1>
                <h2>Early Hindi medicine manuscripts in the Wellcome Collection</h2>
            </div>
            <!-- text -->
            <body>
                <xsl:apply-templates select="//body"/>
            </body>         
        </html>
    </xsl:template>
    <xsl:template match="metamark">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>
    <xsl:template match="pb">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="l">
        <br>
            <xsl:apply-templates/>
        </br>
    </xsl:template>
</xsl:stylesheet>
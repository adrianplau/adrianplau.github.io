<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Vaidyamanotsava - MS Hindi 114</title>
                <link rel="stylesheet" href="msscss.css" type="text/css"/>
            </head>
            <body>
                <!-- intro -->
                <div>
                    <h1>Health, Medicine and Treatment in early modern North India</h1>
                    <h2>Early Hindi medicine manuscripts in the Wellcome Collection</h2>
                </div>
                <!-- nav bar -->
                <div>
                    <ul>
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="../texts.html">Texts</a></li>
                        <li><a href="../about.html">About</a></li>
                        <li style="float:right"><a href="../contact.html">Contact</a></li>
                    </ul>
                </div>
                <!-- text -->
                <xsl:apply-templates select="//body"/>
            </body>         
        </html>
    </xsl:template>
    <xsl:template match="metamark">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>
    <xsl:template match="l">
        <br>
            <xsl:apply-templates/>
        </br>
    </xsl:template>
    
</xsl:stylesheet>
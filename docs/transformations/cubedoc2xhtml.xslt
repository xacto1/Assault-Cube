<?xml version="1.0" encoding="utf-8"?>
<!-- ZLIB licensed, (C) 2007 Adrian 'driAn' Henke, http://www.sprintf.org -->

<!--
  embeds a single xhtml documentation page into a common layout
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:h="http://www.w3.org/1999/xhtml">

  <xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"/>
  
  <xsl:template match="/h:html">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
        <head>
          <title>
            <xsl:value-of select="/h:html/h:head/h:title" />
          </title>
          <meta http-equiv="content-type" content="application/xhtml+xml;charset=utf-8" />
          <link rel="shortcut icon" href="pics/favicon.ico" /> 
          <link rel="stylesheet" href="styles/cubedoc.css" />
        </head>
        <body>
          <div id="main">
            <div id="logo">
              <img src="pics/head.gif" alt="AssaultCube logo" />
            </div>
            <div id="title">
              <h1>
                AssaultCube: <xsl:value-of select="/h:html/h:head/h:title" />
              </h1>
            </div>
            <div id="content">
              <xsl:copy-of select="/h:html/h:body/*"/>
            </div>
            <div id="footer">
              Rabid Viper Productions
            </div>
          </div>
        </body>
      </html>
  </xsl:template>

</xsl:stylesheet> 


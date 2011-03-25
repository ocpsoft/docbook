<?xml version='1.0'?>

<!--
  Copyright 2008 JBoss, a division of Red Hat
  License: LGPL
  Author: Mark Newton <mark.newton@jboss.org>
  Author: Lincoln Baxter, III <linbolnbaxter@gmail.com>
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:param name="use.simplified.author.group" select="1"/>

  <!-- XHTML settings -->
  <xsl:param name="html.stylesheet" select="'css/ocpsoft.css'"/>
     
  <xsl:param name="siteHref" select="'http://ocpsoft.com/'"/>
  <xsl:param name="docHref" select="'http://ocpsoft.com/'"/>
  <xsl:param name="siteLinkText" select="'OCPSoft.com - Simple Solutions'"/>
  
  <!-- XHTML and PDF --> 
  <xsl:param name="callout.graphics.path">
    <xsl:if test="$img.src.path != ''">
      <xsl:value-of select="$img.src.path"/>
    </xsl:if>
    <xsl:text>images/ocpsoft/docbook/callouts/</xsl:text>
  </xsl:param>
 
  <xsl:param name="admon.graphics.path">
    <xsl:if test="$img.src.path != ''">
      <xsl:value-of select="$img.src.path"/>
    </xsl:if>
    <xsl:text>images/ocpsoft/docbook/</xsl:text>
  </xsl:param>

   <xsl:template name="user.footer.content">
      <script type="text/javascript">
         var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
         document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
      </script>
      
      <script type="text/javascript">
         try{
         var pageTracker = _gat._getTracker("UA-5083245-1");
         pageTracker._trackPageview();
         } catch(err) {}
      </script>
   </xsl:template>
  
</xsl:stylesheet>

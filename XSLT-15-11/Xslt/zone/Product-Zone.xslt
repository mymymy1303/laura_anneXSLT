<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
   <h2>
   <xsl:value-of select="/ZoneList/Title"/>
   </h2>
	<div class="product-filter-categories-wrapper">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</div>
    
  </xsl:template>

	<xsl:template match="Zone">
		<ul class="product-filter-categories">
		   <xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					 <xsl:text>product-filter-categories product-filter-categories-active</xsl:text>
				</xsl:attribute>
		   </xsl:if>
			<xsl:apply-templates select="Zone" mode="Child"/>
		</ul>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<li class="main-categories">
			<a class="product-categories-title" href="javascript:void(0)">
				<xsl:attribute name="href">
				  <xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
				  <xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
			<div class="product-categories-toggle-button"><i class="lnr lnr-chevron-down"></i></div>
		</li>
	</xsl:template>
</xsl:stylesheet>
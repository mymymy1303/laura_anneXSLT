<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin Zone-->
	<xsl:template match="/">
		<section class="nth-gallery-nav">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<ul>
							<xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone" mode="Zone1">

		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nth-gallery-nav-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>

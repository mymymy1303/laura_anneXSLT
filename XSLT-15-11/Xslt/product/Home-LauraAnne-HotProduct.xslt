<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-3">
			<div class="container">
				<h2>
					<xsl:value-of select="/ProductList/ModuleTitle"> </xsl:value-of>
				</h2>
				<article class="home-lists owl-carousel owl-theme">

					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>

				</article>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Product">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div class="boxzoom">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<hgroup>
						<h3>
								<xsl:value-of select="Title"></xsl:value-of></h3>
						<h4>
								<xsl:value-of select="Code"></xsl:value-of></h4>
					</hgroup>
					<div class="price">
							<xsl:value-of select="Price"></xsl:value-of></div>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>
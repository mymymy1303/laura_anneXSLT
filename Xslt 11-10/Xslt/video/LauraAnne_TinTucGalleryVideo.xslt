<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="nth-gallery-7">
			<div class="container">
				<div class="row nth-gallery-7-wrapper">
					<xsl:apply-templates select="/VideoList/Video"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Video">
		<div class="col-12 col-md-6 col-lg-3">
			<a href="#">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="VideoUrl" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<figure class="gallery">
					<div class="box-zoom">
						<img src="" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</img>
						<i class="mdi mdi-play-circle-outline"></i>
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>

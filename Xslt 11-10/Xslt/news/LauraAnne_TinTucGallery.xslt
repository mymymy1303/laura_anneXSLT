<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-news-1">
			<!--Title-->
			<caption>
				<h1 class="title">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h1>
				<p class="lead">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</caption>
			<xsl:if test="count(/NewsList/News) > 0">
				<article class="list-items">
					<!--Call News Child-->
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</article>
			</xsl:if>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->
		<div class="item">
			<!--album target-->
			<xsl:attribute name="id">
				<xsl:text>news-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<!--image-->
				<a class="thumb">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<img>
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
				</a>
				<!--title-->
				<figcaption>
					<a class="titlelink">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<p class="sub">
							<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</a>
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<a class="readmore">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="/NewsList/ViewMore" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>

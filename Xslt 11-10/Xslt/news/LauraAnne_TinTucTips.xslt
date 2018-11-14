<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--Begin tips-->
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="nth-tips-3">
					<article class="nth-tips-tagline">
						<div class="container">
							<div class="row">
								<div class="col-12">
									<div class="nth-tips-tagline-wrapper">
										<h2 class="nth-tips-tagline-content">
											<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
										</h2>
									</div>
								</div>
							</div>
						</div>
					</article>
				</section>
				<section class="nth-tips-4">
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
						</div>
					</div>
				</section>
				<section class="nth-tips-5">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<xsl:apply-templates select="News" mode="ZoneNewsViewMore"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="nth-tips-6">
					<article class="nth-tips-tagline">
						<div class="container">
							<div class="row">
								<div class="col-12">
									<div class="nth-tips-tagline-wrapper">
										<h2 class="nth-tips-tagline-content">
											<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
										</h2>
									</div>
								</div>
							</div>
						</div>
					</article>
				</section>
				<section class="nth-tips-7">
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
						</div>
					</div>
				</section>
				<section class="nth-tips-8">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<xsl:apply-templates select="News" mode="ZoneNewsViewMore"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews1">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;section class="nth-tips-4"&gt; &lt;div class="container"&gt; &lt;div
				class="row"&gt;</xsl:text>
			<div class="col-12 col-lg-6">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="tips main-tips">
						<div class="box-zoom">
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
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<xsl:if test="position()=1">
								<div class="tips-viewmore-sub">
									<span>Xem tiếp</span>
									<i class="mdi mdi-arrow-right"></i>
								</div>
							</xsl:if>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>

		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6"&gt; &lt;div class="row tips-first-row"&gt;</xsl:text>
			<div class="col-12 col-md-6">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="tips">
						<div class="box-zoom">
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
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>

		<xsl:if test="position()=3">
			<div class="col-12 col-md-6">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="tips">
						<div class="box-zoom">
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
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>

		<xsl:if test="position()=4">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<div class="col-12 col-md-6">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="tips">
						<div class="box-zoom">
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
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>

		<xsl:if test="position()=5">
			<div class="col-12 col-md-6">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="tips">
						<div class="box-zoom">
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
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes"> &lt;/div&gt;&lt;/div&gt;&lt;/section&gt;</xsl:text>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNewsViewMore">
		<xsl:if test="position()=6">
			<a class="nth-tips-button" href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<!-- <section class="nth-news-4">
			<div class="container">
				<div class="row"> -->
		<div class="news-wrap">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
		<!-- </div>
			</div>
		</section> -->
		<!-- 
		<section class="nth-news-7">
			<div class="container">
				<div class="row nth-news-7-wrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section> -->
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;section class="nth-news-4"&gt; &lt;div class="container"&gt; &lt;div
				class="row"&gt;</xsl:text>
			<div class="col-12 col-lg-6">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="news main-news">
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
								<div class="news-viewmore-sub">
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
			<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6"&gt; &lt;div class="row news-first-row"&gt;</xsl:text>
			<div class="col-12 col-md-6">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="news">
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
					<figure class="news">
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
					<figure class="news">
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
					<figure class="news">
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

		<xsl:if test="position() = 6">
			<xsl:text disable-output-escaping="yes">&lt;section class="nth-news-7"&gt; &lt;div class="container"&gt; &lt;div
				class="row nth-news-7-wrapper"&gt;</xsl:text>
			<div class="col-12 col-md-6 col-lg-3">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="news">
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

		<xsl:if test="position() &gt; 6 and position() &lt; 9 ">
			<div class="col-12 col-md-6 col-lg-3">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="news">
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

		<xsl:if test="position()=9">
			<div class="col-12 col-md-6 col-lg-3">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure class="news">
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
			<xsl:text disable-output-escaping="yes"> &lt;/div&gt;&lt;/div&gt;&lt;/section&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
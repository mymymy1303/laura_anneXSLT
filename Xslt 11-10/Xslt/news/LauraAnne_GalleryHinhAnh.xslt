<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="nth-gallery-4">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="News">
		<xsl:choose>
			<xsl:when test="position() mod 6 = 1">
				<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6"&gt;</xsl:text>
				<div href="javascript:void(0)">
					<figure class="gallery main-gallery">
						<div class="box-zoom">
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
						</div>
						<div class="hidden">
							<xsl:if test="count(NewsImages)>1">
								<xsl:apply-templates select="NewsImages">
									<xsl:with-param name="position" select="position()"></xsl:with-param>
								</xsl:apply-templates>
							</xsl:if>
						</div>
					</figure>
				</div>
			</xsl:when>

			<xsl:when test="position() mod 6 = 2">
				<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
				<div class="col-12 col-md-6">
					<div href="javascript:void(0)">
						<figure class="gallery">
							<div class="box-zoom">
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
							</div>
							<div class="hidden">
								<xsl:if test="count(NewsImages)>1">
									<xsl:apply-templates select="NewsImages">
										<xsl:with-param name="position" select="position()"></xsl:with-param>
									</xsl:apply-templates>
								</xsl:if>
							</div>
						</figure>
					</div>
				</div>
			</xsl:when>

			<xsl:when test="position() mod 6 = 3">
				<div class="col-12 col-md-6">
					<div href="javascript:void(0)">
						<figure class="gallery">
							<div class="box-zoom">
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
							</div>
							<div class="hidden">
								<xsl:if test="count(NewsImages)>1">
									<xsl:apply-templates select="NewsImages">
										<xsl:with-param name="position" select="position()"></xsl:with-param>
									</xsl:apply-templates>
								</xsl:if>
							</div>
						</figure>
					</div>
				</div>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
			</xsl:when>

			<xsl:when test="position() mod 6 = 4">
				<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6 nth-gallery-reverse"&gt;</xsl:text>
				<div href="javascript:void(0)">
					<figure class="gallery main-gallery">
						<div class="box-zoom">
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
						</div>
						<div class="hidden">
							<xsl:if test="count(NewsImages)>1">
								<xsl:apply-templates select="NewsImages">
									<xsl:with-param name="position" select="position()"></xsl:with-param>
								</xsl:apply-templates>
							</xsl:if>
						</div>
					</figure>
				</div>
			</xsl:when>

			<xsl:when test="position() mod 6 = 5">
				<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
				<div class="col-12 col-md-6">
					<div href="javascript:void(0)">
						<figure class="gallery">
							<div class="box-zoom">
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
							</div>
							<div class="hidden">
								<xsl:if test="count(NewsImages)>1">
									<xsl:apply-templates select="NewsImages">
										<xsl:with-param name="position" select="position()"></xsl:with-param>
									</xsl:apply-templates>
								</xsl:if>
							</div>
						</figure>
					</div>
				</div>
			</xsl:when>

			<xsl:when test="position() mod 6 = 0">
				<div class="col-12 col-md-6">
					<div href="javascript:void(0)">
						<figure class="gallery">
							<div class="box-zoom">
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
							</div>
							<div class="hidden">
								<xsl:if test="count(NewsImages)>1">
									<xsl:apply-templates select="NewsImages">
										<xsl:with-param name="position" select="position()"></xsl:with-param>
									</xsl:apply-templates>
								</xsl:if>
							</div>
						</figure>
					</div>
				</div>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<!-- <xsl:template match="News" mode="ZoneNews1">

	</xsl:template> -->

	<xsl:template match="NewsImages">
		<xsl:param name="position"></xsl:param>
		<xsl:if test="position() &gt;= 1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

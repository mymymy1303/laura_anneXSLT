<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="nth-product-2">
			<div class="nth-product-2-sidemenu-togglebutton"><i class="mdi mdi-filter-outline"></i><span>bộ lọc</span></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-xl-3">
						<div id="productFilterMapTo"></div>
					</div>
					<div class="col-12 col-lg-8 col-xl-9">
						<div class="nth-product-2-intro">
							<h1 class="nth-product-2-title">
								Laura Anne <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<select bg-img="./img/_global/selectarrow.png">
								<option value="Mới nhất">Mới nhất</option>
								<option value="Mới nhất">Mới nhất</option>
								<option value="Mới nhất">Mới nhất</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- <section class="canhcam-product">
			<article>
				<div class="container">
					<div class="row justify-content-center">
						<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section> -->
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-md-6 col-lg-4 item">
			<figure class="figure">
				<div class="img-block">
					<img class="img-fluid" alt="">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption class="figcaption">
					<h2>
						<xsl:value-of select="SubTitle"></xsl:value-of>
					</h2>
					<p>
						<xsl:value-of select="BriefContent"></xsl:value-of>
					</p>
					<a class="btn btn-primary">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>Chi tiết<em class="lnr lnr-arrow-right"></em>
					</a>
				</figcaption>
				<a class="link" href="#">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
				</a>
			</figure>
			<h3>
				<xsl:value-of select="Title"></xsl:value-of>
			</h3>
		</div>
	</xsl:template>
</xsl:stylesheet>

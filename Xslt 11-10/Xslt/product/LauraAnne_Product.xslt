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
						<div class="productFilterMapTo"></div>
					</div>
					<div class="col-12 col-lg-8 col-xl-9">
						<div class="nth-product-2-intro">
							<h1 class="nth-product-2-title">
								Laura Anne <xsl:value-of select="/ProductList/ZoneTitle"></xsl:value-of>
							</h1>
							<select bg-img="/Data/Sites/1/skins/default/img/_global/selectarrow.png">
								<option value="Mới nhất">Mới nhất</option>
								<option value="Mới nhất">Mới nhất</option>
								<option value="Mới nhất">Mới nhất</option>
							</select>
						</div>
						<div class="row ajaxresponse product-list-wrapper">
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-12 col-sm-6 col-md-4 mt-4">
			<a href="javascript:void(0)">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<figure class="product">
					<div class="box-zoom">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3 class="product-brand">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<h4 class="product-name">
							<xsl:value-of select="Code" disable-output-escaping="yes"></xsl:value-of>
						</h4>
						<p class="product-price">
							<xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>

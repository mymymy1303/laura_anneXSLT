<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="nth-product-ct-1">
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="product-slider-wrapper">
							<div class="owl-carousel owl-theme" id="sync1">
								<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Images"></xsl:apply-templates>
							</div>
							<div class="owl-carousel owl-theme" id="sync2">
								<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbnail"></xsl:apply-templates>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-4">
						<div class="nth-product-ct-info">
							<div class="product-info-title">
								<h1>
									<xsl:value-of select="/ProductDetail/Code"></xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h1>
							</div>
							<div class="product-info-subtitle">
								<h2>
									<xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h2>
							</div>
							<div class="product-info-quantity">
								<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="product-info-price">
								<p>
									<xsl:value-of select="/ProductDetail/Price" disable-output-escaping="yes"></xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
							<div class="product-checkout-button">
								<a href="javascript:void(0)" class="product-checkout-button-style">
									<img src="/Data/Sites/1/skins/default/img/_global/cart.png" alt=""></img>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="nth-product-ct-2">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tabs">
							<div class="tabs-header">
								<ul class="mb-0">
									<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Nav"> </xsl:apply-templates>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="nth-product-ct-3">
			<div class="container">
				<div class="row">
					<div class="col">
						<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>

		<section class="nth-product-ct-4">
			<div class="container">
				<div class="row">
					<div class="col">
						<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
						<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>

		<section class="nth-product-ct-6">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2>Sản phẩm liên quan</h2>
						<p>Khám phá thêm những mùi hương mới</p>
					</div>
				</div>
			</div>
		</section>
		<section class="nth-product-ct-7">
			<div class="container">
				<article class="owl-carousel owl-theme" id="productCtList">
					<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
				</article>
			</div>
		</section>


	</xsl:template>


	<xsl:template match="ProductAttributes" mode="Nav">
		<li class="">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>tabs-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>tabs-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="#tab-pl-1" tab-pl-id="1">
				<xsl:attribute name="href">
					<xsl:text>#tab-pl-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="tab-pl-id">
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>


	<xsl:template match="ProductAttributes" mode="Content">
		<div class="tab tab-active nth-product-ct-fullcontent" tab-pl-id="1">
			<xsl:choose>
				<xsl:when test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>tab nth-product-ct-fullcontent tab-active</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position()=2">
					<xsl:attribute name="class">
						<xsl:text>tab nth-product-ct-testimotional</xsl:text>
					</xsl:attribute>
				</xsl:when>
			</xsl:choose>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>tab-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="tab-pl-id">
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>

	<xsl:template match="ProductImages" mode="Images">
		<div class="product-slider-image">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>


	<xsl:template match="ProductImages" mode="Thumbnail">
		<div class="product-slider-thumbnail">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
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
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<h4>
							<xsl:value-of select="Code" disable-output-escaping="yes"></xsl:value-of>
						</h4>
					</hgroup>
					<div class="price">
						<xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</figcaption>
			</figure>
		</a>
	</xsl:template>
</xsl:stylesheet>

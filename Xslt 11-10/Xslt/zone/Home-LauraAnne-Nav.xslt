<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-2" bg-img="/Data/Sites/1/skins/default/img/home/home_product_bg.png">
			<article class="home-lists">
				<div class="container">
					<h2>
						<xsl:value-of select="/ZoneList/ModuleTitle"> </xsl:value-of>
					</h2>
					<div class="row">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="col-lg-6 item">
			<figure>
				<div class="boxzoom">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="SecondImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<p>
						<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						<!-- Bạn là một cô nàng năng động, tràn đầy năng <br />lượng
						hay trẻ trung, sành điệu và quyến rũ? <br />Dòng nước hoa
						tinh tế và hiện đại dành cho <br />phái đẹp tự tin thể
						hiện cá tính riêng. -->
					</p>
					<div class="seemore">
						<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								Xem thêm
							</a>
						</div>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>
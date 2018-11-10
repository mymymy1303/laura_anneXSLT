<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<input type="hidden" id="hdnDealerLocatorSiteId">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SiteId"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdnDealerLocatorLanguageId">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/LanguageId"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdnDealerLocatorZoneGuid" value="">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/ZoneGuid"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectCountry">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectCountryText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectProvince">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectDistrict">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectZone">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectZoneText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorCulture">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/Culture"></xsl:value-of>
		</xsl:attribute>
		</input>
		<section class="nth-allocation-3">
			<div class="nth-allocation-3-sidemenu" id="allocationSidemenuWrapper">
				<div class="nth-allocation-3-placechooser">
					<select class="d-none" id="ddlCountry">
						<option value="">
							<xsl:value-of select="/DealerList/SelectCountryText"></xsl:value-of>
						</option>
					</select>
					<select bg-img="/Data/Sites/1/skins/default/img/_global/selectarrow.png" id="ddlProvince">
						<option>
							<xsl:attribute name="value">
								<xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
							</xsl:attribute>
						</option>
					</select>
					<select bg-img="/Data/Sites/1/skins/default/img/_global/selectarrow.png" id="ddlDistrict">
						<option>
							<xsl:attribute name="value">
								<xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
							</xsl:attribute>
						</option>
					</select>
					<select bg-img="/Data/Sites/1/skins/default/img/_global/selectarrow.png">
						<option value="">
						</option>
					</select>
				</div>
				<ul class="nth-allocation-3-mapchooser">
					<!-- <xsl:apply-templates select="Dealer" mode="load"></xsl:apply-templates> -->
					<li class="mapchooser-active">
						<h3>Chi nhánh Sài Gòn</h3>
						<p>162 Trần Hưng Đạo, Phường 7, Quận 5, TPHCM</p>
						<p>028.39.526.306</p>
					</li>
					<li>
						<h3>Chi nhánh An Phú</h3>
						<p>649/36 Điện Biên Phủ, Phường 25, Quận Bình Thạnh, TP.HCM</p>
						<p>Điện thoại: 028.38.995.995</p>
					</li>
				</ul>
				<a class="nth-allocation-3-closebutton" href="javascript:void(0)">
					<i class="mdi mdi-close"></i>
				</a>
			</div>
			<div class="nth-allocation-3-backdrop"></div>
		</section>
		<section class="nth-allocation-4">
			<div class="container">
				<div class="row">
					<div class="col-12 d-lg-flex">
						<div class="nth-allocation-4-mapchooser-toggle">
							<a href="javascript:void(0)" id="mapchoosertoggle">Tìm kiếm chi nhánh</a>
						</div>
						<div class="nth-allocation-4-mappreview">
							<!-- <h3>Chi nhánh Sài Gòn</h3>
							<p>162 Trần Hưng Đạo, Phường 7, Quận 5, TPHCM</p>
							<p>028.39.526.306</p> -->
							<xsl:value-of select="txtAddress" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="nth-allocation-4-sidemenu" id="allocationSidemenu">
							
						</div>
						<input type="hidden" id="distance" name="distance" value="1" />
						<div id="map_canvas" class="allocation_map">
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Dealer" mode="load">
		<li class="">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>mapchooser-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<h3>
				<xsl:value-of select="Phone" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<p>
				<xsl:value-of select="Address" disable-output-escaping="yes"></xsl:value-of>
			</p>
			<p>
				<xsl:value-of select="Phone" disable-output-escaping="yes"></xsl:value-of>
			</p>
		</li>
	</xsl:template>
</xsl:stylesheet>

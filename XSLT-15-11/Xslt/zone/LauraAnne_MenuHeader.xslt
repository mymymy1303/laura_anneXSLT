<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin Zone-->
	<xsl:template match="/">
		<ul class="nav ml-auto">
			<xsl:if test="count(/ZoneList/Zone) > 0">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</xsl:if>
		</ul>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="/ZoneList/Zone">
		<xsl:if test="count(Zone) > 0">
			<li class="nav-item nth-subnav-collapse" id="megamenu-link">
				<a class="nav-link">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-link header-active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<div class="nth1608-megamenu" id="megamenu">
					<xsl:apply-templates select="Zone" mode="Zone2_1"></xsl:apply-templates>
				</div>
				<a class="btn nth-toggle-subnav">
					<i class="mdi mdi-chevron-down"></i>
				</a>
				<div class="nth-subnav-1">
					<xsl:if test="position&gt;1">
						<a class="nth-subnav-1-item" href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</xsl:if>
					<xsl:apply-templates select="Zone" mode="Zone3_1"></xsl:apply-templates>
				</div>
			</li>
		</xsl:if>

		<xsl:if test="count(Zone) = 0">
			<li class="nav-item">
				<a class="nav-link" href="/">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-link header-active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</li>
		</xsl:if>

	</xsl:template>

	<xsl:template match="Zone" mode="Zone2_1">
		<div class="megamenu-block">
			<img class="megamenu-image">
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
			<div class="megamenu-content">
				<div class="nth-meganav-1">
					<a class="nth-meganav-1-item" href="#">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</div>
				<div class="nth-meganav-2">
					<xsl:apply-templates select="Zone" mode="Zone2_2"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone3_1">
		<a class="nth-subnav-1-item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>
		<div class="nth-subnav-2">
			<xsl:apply-templates select="Zone" mode="Zone3_2"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone3_2">
		<a class="nth-subnav-2-item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone2_2">
		<a class="nth-meganav-2-item" href="#">
			<xsl:attribute name="href">
				<xsl:value-of select="Description"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>
	</xsl:template>

</xsl:stylesheet>

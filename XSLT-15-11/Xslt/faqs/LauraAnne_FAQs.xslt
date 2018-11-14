<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--<FAQsList>
    <ModuleTitle>Hỏi đáp</ModuleTitle>
    <PageTitle>Hỏi đáp</PageTitle>
    <SubmitLink>Hỏi đáp</SubmitLink>
    <Culture>vi-VN</Culture>
    <FAQs>
      <Question>Câu hỏi</Question>
      <Answer>Trả lời</Answer>
      <Viewed>0</Viewed>
    </FAQs>
  </FAQsList>-->

	<xsl:template match="/">
		<div class="row">
			<div class="col-12 col-lg-3">
				<div id="accordionSideMenu"></div>
			</div>
			<div class="col-12 col-lg-9">
				<h1 class="nth-faq-2-title">
					<xsl:value-of select="/FAQsList/ZoneTitle"></xsl:value-of>
				</h1>
				<div class="accordion" id="accordionFAQ">
					<xsl:apply-templates select="/FAQsList/FAQs"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="FAQs">
		<div class="card">
			<div class="card-header" id="heading-1" data-toggle="collapse" data-target="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
				<xsl:attribute name="id">
					<xsl:text>heading-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-target">
					<xsl:text>#collapse-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="aria-controls">
					<xsl:text>collapse-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<h3 class="mb-0">
					<xsl:value-of select="Question" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<i class="lnr lnr-plus-circle"></i>
			</div>
			<div class="collapse" id="collapse-1" aria-labelledby="heading-1" data-parent="#accordionFAQ">
				<xsl:attribute name="id">
					<xsl:text>collapse-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="aria-labelledby">
					<xsl:text>heading-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<div class="card-body">
					<xsl:value-of select="Answer" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="nth-product-2-intro ajaxresponse">
       <h1 class="nth-product-2-title">
        <xsl:value-of select="/ProductList/ZoneTitle"></xsl:value-of>
      </h1> 
      <select class="ajaxsort" bg-img="/Data/Sites/1/media/img/_global/selectarrow.png">
          <xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
      </select>
      <div class="row ajaxresponsewrap">
        <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="PageSize">
    <option>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="selected">
          <xsl:text>selected</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="value">
        <xsl:value-of select="Url"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
  </xsl:template>

  <xsl:template match="SortBy">
    <option>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="selected">
          <xsl:text>selected</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="value">
        <xsl:value-of select="Url"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </option>
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
            <img src="./img/sanpham/sanpham-1.png" alt=""> 
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
            </div>
          <figcaption>
            <h3 class="product-brand">
                <xsl:value-of select="SubTitle"></xsl:value-of></h3>
            <h4 class="product-name">
                <xsl:value-of select="Title"></xsl:value-of></h4>
            <p class="product-price">
                <xsl:value-of select="Price"></xsl:value-of>
            </p>
          </figcaption>
        </figure>
      </a>
    </div>
  </xsl:template>
</xsl:stylesheet>
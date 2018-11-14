<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="product-filter-main-title">
      <h3>
        <xsl:value-of select="/ProductFilter/ModuleTitle"/>
      </h3>
      <div class="product-filter-toggle-button">
        <div class="product-filter-toggle-button-horizontal-line"></div>
        <div class="product-filter-toggle-button-vertical-line"></div>
      </div>
    </div>

    <div class="ajaxfilterresponse product-filter-attribute-wrapper">
      <xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
    </div>
    <div class="filter-group clearfix">
      <div class="filter-title">
        <span>
          <xsl:value-of select="/ProductFilter/PriceRangeText"></xsl:value-of>
        </span>
        <div class="btn-reset">
          <i class="fa fa-undo" aria-hidden="true"></i>
        </div>
      </div>
      <div class="filter-option clearfix">
        <div class="filter-range">
          <div id="slider-range"></div>
          <div class="price-range">
            <xsl:value-of select="/ProductFilter/FromPriceText"></xsl:value-of>
            <div class="sliderValue min-input" data-index="0"></div>
            <xsl:value-of select="/ProductFilter/ToPriceText"></xsl:value-of>
            <div class="sliderValue max-input" data-index="1"></div>
          </div>
          <div class="hidden">
            <a class="urlwithoutprice">
              <xsl:attribute name="href">
                <xsl:value-of select="/ProductFilter/UrlWithoutPrice"></xsl:value-of>
              </xsl:attribute>
            </a>
            <a class="urlwithprice">
              <xsl:attribute name="href">
                <xsl:value-of select="/ProductFilter/UrlWithPrice"></xsl:value-of>
              </xsl:attribute>
            </a>
            <a class="pricemin">
              <xsl:value-of select="/ProductFilter/PriceMin"></xsl:value-of>
            </a>
            <a class="pricemax">
              <xsl:value-of select="/ProductFilter/PriceMax"></xsl:value-of>
            </a>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Group">
    <div class="product-filter-attribute">
      <h4 class="product-filter-attribute-title">
        <xsl:value-of select="Title"></xsl:value-of>
      </h4>
      <xsl:choose>
        <xsl:when test="FieldType='1'">
          <div class="product-filter-attribute-item">
            <xsl:apply-templates select="Option" mode="Color"></xsl:apply-templates>
          </div>
        </xsl:when>
        <xsl:otherwise>
          <div class="product-filter-attribute-item">
            <xsl:apply-templates select="Option" mode="Default"></xsl:apply-templates>
          </div>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </xsl:template>

  <xsl:template match="Option" mode="Color">

    <li class="color">
      <a class="ajaxlink">
        <xsl:if test="IsActive='true'">
          <xsl:attribute name="class">
            <xsl:text>ajaxlink active</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <div class="color-img">
          <xsl:if test="Color!=''">
            <xsl:attribute name="style">
              <xsl:text>background-color:</xsl:text>
              <xsl:value-of select="Color"></xsl:value-of>
            </xsl:attribute>
          </xsl:if>
        </div>
        <div class="color-name">
          <xsl:value-of select="Title"></xsl:value-of>
        </div>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="Option" mode="Default">
    <div class="product-filter-attribute-option">
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>product-filter-attribute-option active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <a href="#" class="ajaxlink">  
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:if test="IsActive='true'">
          <xsl:attribute name="class">
            <xsl:text>ajaxlink active</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </div>
  </xsl:template>

</xsl:stylesheet>
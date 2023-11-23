<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:page="http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15"
  exclude-result-prefixes="page">

  <xsl:output method="xml" indent="yes" />
  <xsl:strip-space elements="*" />

  <!-- Identity template - copies all nodes and attributes -->
  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*" />
    </xsl:copy>
  </xsl:template>

  <!-- Match TextRegion elements with the specified custom attributes -->
  <xsl:template
    match="page:TextRegion[contains(@custom, 'type:Drawing') or contains(@custom, 'type:Photo')]">
    <ImageRegion xmlns="http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15">
      <xsl:apply-templates select="node() | @*" />
    </ImageRegion>
  </xsl:template>

  <!-- change namespace
  <xsl:template match="page:*">
    <xsl:element name="{local-name()}"
      xmlns="http://schema.primaresearch.org/PAGE/gts/pagecontent/2013-07-15">
      <xsl:apply-templates select="node()|@*" />
    </xsl:element>
  </xsl:template> -->

</xsl:stylesheet>
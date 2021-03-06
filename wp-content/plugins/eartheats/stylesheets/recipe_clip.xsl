<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>

<xsl:template match="/post">
	<![CDATA[<div class="recipe-clipping"> ]]>
	<xsl:if test="image">
			<![CDATA[<img src="]]><xsl:value-of select="image"/> <![CDATA[" />]]>
	</xsl:if>

	<![CDATA[<h3>]]> <![CDATA[<a href="]]><xsl:value-of select="permalink"/> <![CDATA[">]]><xsl:value-of select="title"/><![CDATA[</a></h3>]]>


        <xsl:if test="teaser">
			<![CDATA[<p class="first-child recipe-teaser">]]><xsl:value-of select="teaser"/><![CDATA[</p>]]>
	</xsl:if>
	<![CDATA[<p class="recipe-links">
			<a href="]]><xsl:value-of select="permalink"/> <![CDATA[">View Recipe</a>
			<a href="]]><xsl:value-of select="permalink"/> <![CDATA[">Print Recipe</a>
	</p>]]>
	<![CDATA[</div> ]]>
</xsl:template>
</xsl:stylesheet>

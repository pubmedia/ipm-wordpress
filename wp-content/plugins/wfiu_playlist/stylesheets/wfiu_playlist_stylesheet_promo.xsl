<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>

<xsl:template match="/post">


	<xsl:for-each select="item">
        <![CDATA[ <div class="show-item"> ]]>
        
        <![CDATA[ <div class="song"> ]]>
        
        <xsl:if test="composer">
			<![CDATA[ <span class="composer"> ]]><xsl:value-of select="composer"/> <![CDATA[ </span> ]]>
		</xsl:if>
	
        <xsl:if test="title">
			<![CDATA[ <span class="title"> ]]><xsl:value-of select="title"/><![CDATA[ </span> ]]>
	    </xsl:if>

	    <xsl:if test="artist">
			<![CDATA[ <span class="artist"> ]]><xsl:value-of select="artist"/><![CDATA[ </span> ]]>
	    </xsl:if>
	    
	    <xsl:if test="album">
			<![CDATA[<span class="album">]]> <xsl:value-of select="album"/> <![CDATA[</span> ]]>
		</xsl:if>
		
		<![CDATA[<span>]]>
		<xsl:if test="label">
			<xsl:value-of select="label"/> 
		</xsl:if>

		<xsl:if test="release_year">
			(<xsl:value-of select="release_year"/>)
		</xsl:if>
		
		<![CDATA[</span>]]>
		
	    <xsl:if test="asin">
			<![CDATA[<span><a target="_blank" href="http://www.amazon.com/gp/product/]]>
			<xsl:value-of select="asin"/>
			<![CDATA[?ie=UTF8&amp;tag=wfipubradfroi-20">]]>
			<![CDATA[<!--<img src="http://wfiu.org/wp-content/plugins/wfiu_playlist/images/amazon-button-verysmall.png" alt="Amazon button" />-->Buy from Amazon &raquo;</a>]]> <![CDATA[ </span> ]]>	
	    </xsl:if>
	    
        <![CDATA[ </div> ]]>
        
        <![CDATA[ <div class="album-image"> ]]>
		
		<xsl:if test="asin">
		<![CDATA[<a target="_blank" href="http://www.amazon.com/gp/product/]]>
			<xsl:value-of select="asin"/>
			<![CDATA[?ie=UTF8&amp;tag=wfipubradfroi-20">]]>
        <![CDATA[<img src="http://images.amazon.com/images/P/]]><xsl:value-of select="asin"/><![CDATA[.01_SL75_.jpg" alt="album cover" style="width: 90px;border: 1px solid #999;padding:1px;" /></a> ]]>
		</xsl:if>
		
	    
        <![CDATA[ </div> ]]>
		
        <![CDATA[ <div class="clearit"></div> ]]>
		
        <![CDATA[</div> ]]>
		
	</xsl:for-each>
	
	
</xsl:template>
</xsl:stylesheet>

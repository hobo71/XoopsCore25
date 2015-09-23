<!-- Theme others parameters -->
<{includeq file="$theme_name/xo_thm_parameters.tpl"}>
<!-- Metas, Titles, and Style Sheets -->
<{includeq file="$theme_name/xo_metas.tpl"}>
<!-- Additionals Scripts -->
<{includeq file="$theme_name/xo_scripts.tpl"}>
</head>
<body id="<{$xoops_dirname}>" class="<{$xoops_langcode}>">
<{if $xoBlocks.canvas_left and $xoBlocks.canvas_right}><{assign var=columns_layout value='threecolumns-layout'}>
<{elseif $xoBlocks.canvas_left}><{assign var=columns_layout value='leftcolumn-layout'}>
<{elseif $xoBlocks.canvas_right}><{assign var=columns_layout value='rightcolumn-layout'}>
<{/if}>
<div id="xo-wrapper">
    <div id="xo-bgstatic"></div>
    <div id="xo-canvas">
        <!-- Include Header -->
        <{includeq file="$theme_name/xo_header.tpl"}>
        <!-- Start Content -->
        <{includeq file="$theme_name/xo_page.tpl"}>
        <!-- End Content -->
        <!-- Include Footer -->
        <{includeq file="$theme_name/xo_footer.tpl"}>
    </div><!-- End xo-canvas -->
    <!--{xo-logger-output}-->
</div><!-- End xo-wrapper -->
<!-- Include Administration Bar -->
<{if $xoops_isadmin && $theme_view_baradmin}><{includeq file="$theme_name/xo_footerstatic.tpl"}><{/if}>
</body>
</html>

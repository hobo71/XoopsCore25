<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<{$xoops_langcode}>" lang="<{$xoops_langcode}>">
<head>
    <{* Center blocks display order valid values are: lrc (left right / center) lcr (left center right) clr (center / left right) *}>
    <{assign var=theme_top_order value=clr}>
    <{assign var=theme_bottom_order value=clr}>
    <!-- Theme name -->
    <{assign var=theme_name value=$xoTheme->folderName}>
    <!-- Directory html blocks files or additional html files by include -->
    <{assign var=theme_name value=$xoTheme->folderName|cat:'/xotpl'}>
    <!-- Directory html plugins files -->
    <{assign var=theme_plugin value=$xoTheme->folderName|cat:'/xoplugins'}>
    <!-- Metas, Titles, and Style Sheets -->
    <{includeq file="$theme_name/xometas.tpl"}>
    <!-- Additionals Scripts -->
    <{includeq file="$theme_name/xoscripts.tpl"}>
</head>
<body id="<{$xoops_dirname}>" class="<{$xoops_langcode}>">
<{if $xoBlocks.canvas_left and $xoBlocks.canvas_right}><{assign var=columns_layout value='threecolumns-layout'}>
<{elseif $xoBlocks.canvas_left}><{assign var=columns_layout value='leftcolumn-layout'}>
<{elseif $xoBlocks.canvas_right}><{assign var=columns_layout value='rightcolumn-layout'}>
<{/if}>
<{if $xoops_isadmin}>
    <{includeq file="$theme_name/xo_headerstatic.tpl"}>
<{/if}>
<div id="xo-wrapper" class="<{$xoops_dirname}> <{if $xoops_isadmin}>push_down<{/if}>">
    <div id="xo-bgstatic" class="<{$xoops_dirname}>"></div>
    <div id="xo-canvas"
            <{if $columns_layout}> class="<{$columns_layout}>"<{/if}>>
        <div id="xo-header" class="<{$xoops_dirname}>">
            <{if $xoops_banner and $xoops_banner != '&nbsp;'}>
                <{includeq file="$theme_name/xobanner_commercial.tpl"}>
            <{else}>
                <{includeq file="$theme_name/xobanner.tpl"}>
            <{/if}>
            <!-- include navigation bar -->
            <{includeq file="$theme_name/globalnav.tpl"}>
        </div>
        <div id="xo-canvas-content">
            <table id="xo-canvas-columns" cellspacing="0">
                <tr>
                    <{if $xoBlocks.canvas_left}>
                        <{includeq file="$theme_name/blockszone.tpl" blocks=$xoBlocks.canvas_left
                        zoneClass='xo-canvas-column' zoneId='xo-canvas-leftcolumn' zoneTag='td'
                        }>
                    <{/if}>
                    <td id="xo-page">
                        <{if $xoBlocks.page_topleft || $xoBlocks.page_topcenter || $xoBlocks.page_topright}>
                            <div class="xo-blockszone xo-<{$theme_top_order}>pageblocks" id="xo-page-topblocks">
                                <{includeq file="$theme_name/centerblocks.tpl" topbottom=top lcr=$theme_top_order|substr:0:1}>
                                <{includeq file="$theme_name/centerblocks.tpl" topbottom=top lcr=$theme_top_order|substr:1:1}>
                                <{includeq file="$theme_name/centerblocks.tpl" topbottom=top lcr=$theme_top_order|substr:2:1}>
                            </div>
                        <{/if}>
                        <{if $xoops_contents && ($xoops_contents != ' ') }>
                            <div id="xo-content"><{$xoops_contents}></div>
                        <{/if}>
                        <{if $xoBlocks.page_bottomleft || $xoBlocks.page_bottomcenter || $xoBlocks.page_bottomright}>
                            <div class="xo-blockszone xo-<{$theme_bottom_order}>pageblocks" id="xo-page-bottomblocks">
                                <{includeq file="$theme_name/centerblocks.tpl" topbottom=bottom lcr=$theme_bottom_order|substr:0:1}>
                                <{includeq file="$theme_name/centerblocks.tpl" topbottom=bottom lcr=$theme_bottom_order|substr:1:1}>
                                <{includeq file="$theme_name/centerblocks.tpl" topbottom=bottom lcr=$theme_bottom_order|substr:2:1}>
                            </div>
                        <{/if}>
                    </td>
                    <{if $xoBlocks.canvas_right}>
                        <{includeq file="$theme_name/blockszone.tpl" blocks=$xoBlocks.canvas_right
                        zoneClass='xo-canvas-column' zoneId='xo-canvas-rightcolumn' zoneTag='td'
                        }>
                    <{/if}>
                </tr>
            </table>
        </div>
        <!-- include footer -->
        <{includeq file="$theme_name/xofooter.tpl"}>
    </div>

    <!--{xo-logger-output}-->

</div>
</body>
</html>

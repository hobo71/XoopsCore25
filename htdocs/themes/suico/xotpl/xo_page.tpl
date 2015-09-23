<div id="xo-canvas-content" <{if $columns_layout}> class="<{$columns_layout}> <{$xoops_dirname}>"<{/if}>>
    <div id="xo-canvas-columns">
        <div id="xo-content-caption"><{if $xoops_pagetitle !=''}><{$xoops_pagetitle}> <{else}> <{$xoops_meta_description}><{/if}></div>
        <!-- Start Left Column -->
        <{if $xoBlocks.canvas_left && $theme_view_leftcolumn}>
            <{includeq file="$theme_name/blockszone.tpl" blocks=$xoBlocks.canvas_left
            zoneClass='xo-canvas-column' zoneId='xo-canvas-leftcolumn' zoneTag='div'
            }>
        <{/if}>

        <div id="xo-page">
            <!-- Start Center Column -->
            <!-- Display center top blocks loop if any -->
            <{if $theme_view_topblock && ($xoBlocks.page_topleft or $xoBlocks.page_topcenter or $xoBlocks.page_topright)}>
                <div id="xo-page-topblocks" class="xo-blockszone-xo-<{$theme_top_order}>pageblocks">
                    <{includeq file="$theme_name/centerblocks.tpl" topbottom=top lcr=$theme_top_order|substr:0:1}>
                    <{includeq file="$theme_name/centerblocks.tpl" topbottom=top lcr=$theme_top_order|substr:1:1}>
                    <{includeq file="$theme_name/centerblocks.tpl" topbottom=top lcr=$theme_top_order|substr:2:1}>
                </div>
            <{/if}>
            <!-- Display content module if any -->
            <{if $xoops_contents && ($xoops_contents != ' ') }>
                <div id="xo-content">
                    <{$xoops_contents}>
                </div>
            <{/if}>
            <!-- Start center bottom blocks loop if any -->
            <{if $theme_view_bottomblock && ($xoBlocks.page_bottomleft or $xoBlocks.page_bottomcenter or $xoBlocks.page_bottomright)}>
                <div id="xo-page-bottomblocks" class="xo-blockszone-xo-<{$theme_bottom_order}>pageblocks">
                    <{includeq file="$theme_name/centerblocks.tpl" topbottom=bottom lcr=$theme_bottom_order|substr:0:1}>
                    <{includeq file="$theme_name/centerblocks.tpl" topbottom=bottom lcr=$theme_bottom_order|substr:1:1}>
                    <{includeq file="$theme_name/centerblocks.tpl" topbottom=bottom lcr=$theme_bottom_order|substr:2:1}>
                </div>
            <{/if}>
        </div>

        <!-- Start Right Column -->
        <{if $xoBlocks.canvas_right && $theme_view_rightcolumn}>
            <{includeq file="$theme_name/blockszone.tpl" blocks=$xoBlocks.canvas_right
            zoneClass='xo-canvas-column' zoneId='xo-canvas-rightcolumn' zoneTag='div'
            }>
        <{/if}>
    </div>
</div>

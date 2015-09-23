<div id="menu1" class="menu clearfix">
    <div class="toggle"><span><{$smarty.const.THEME_NAVTITLE}>&#32;&#187;</span></div>
    <div class="items">
        <ul>
            <!-- menu in anonymous mode-->
            <li><a class="xo-gbnavmodhome" href="<{xoAppUrl}>" accesskey="a"
                   title="<{$smarty.const.THEME_HOME_DESC}>"><{$smarty.const.THEME_HOME}></a></li>
            <{if !$xoops_isuser}>
                <li><a class="xo-gbnavmod1<{$module.directory}>" href="<{xoAppUrl modules/news/}>" accesskey="n"
                       title="<{$smarty.const.THEME_MODULE1_DESC}>"><{$smarty.const.THEME_MODULE1}></a></li>
            <{else}>
                <!-- menu in mode recorded -->
                <li><a class="xo-gbnavmod1" href="<{xoAppUrl modules/news/}>" accesskey="n" title="<{$smarty.const.THEME_MODULE1_DESC}>"><{$smarty.const.THEME_MODULE1}></a>
                </li>
                <li><a class="xo-gbnavmod2" href="<{xoAppUrl modules/newbb/}>" accesskey="f" title="<{$smarty.const.THEME_MODULE2_DESC}>"><{$smarty.const.THEME_MODULE2}></a>
                </li>
                <li><a class="xo-gbnavmod3" href="<{xoAppUrl modules/tdgallery/}>" accesskey="g" title="<{$smarty.const.THEME_MODULE3_DESC}>"><{$smarty.const.THEME_MODULE3}></a>
                </li>
                <li><a class="xo-gbnavmod4" href="<{xoAppUrl modules/mytube/}>" accesskey="v" title="<{$smarty.const.THEME_MODULE4_DESC}>"><{$smarty.const.THEME_MODULE4}></a>
                </li>
                <li><a class="xo-gbnavmod5" href="<{xoAppUrl modules/mylinks/}>" accesskey="l" title="<{$smarty.const.THEME_MODULE5_DESC}>"><{$smarty.const.THEME_MODULE5}></a>
                </li>
                <li><a class="xo-gbnavmod6" href="<{xoAppUrl modules/mydownloads/}>" accesskey="d" title="<{$smarty.const.THEME_MODULE6_DESC}>"><{$smarty.const.THEME_MODULE6}></a>
                </li>
            <{/if}>
            <li><a class="xo-gbnavmodcontact" href="<{xoAppUrl modules/contact/}>" accesskey="c" title="<{$smarty.const.THEME_CONTACT_DESC}>"><{$smarty.const.THEME_CONTACT}></a>
            </li>
            <li><a class="xo-gbnavmodsitemap" href="<{xoAppUrl modules/sitemap/}>" accesskey="s" title="<{$smarty.const.THEME_MODULE6_DESC}>"><{$smarty.const.THEME_SITEMAP}></a>
            </li>
        </ul>
    </div>
</div>

<script type="text/javascript" charset="utf-8">
    $('#menu1').rb_menu();
    <!--$('#menu1').rb_menu({triggerEvent: 'click', hideOnLoad: true, loadHideDelay: 0, autoHide: false});-->
    <!--$('#menu1').rb_menu({transition: 'swing'});-->
</script>



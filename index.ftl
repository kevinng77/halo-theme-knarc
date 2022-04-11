<#include "module/macro.ftl">
<@head title="${blog_title!}"/>
<#include "module/sidebar.ftl">
<style type="text/css">
@media screen and (max-width: 960px) {
.sidebar { display:unset; width: 100%; position: absolute; border-right: none; z-index: 1;}
.sidebar .logo-title { padding-top: 120px;}
.sidebar .logo-title .title img { width: 100px; }
.sidebar .logo-title .title h3 { font-size: 20px;}
.content {margin-top:30em; width: 100%; z-index: 2; position: absolute;}
}
</style>
<div class="main">
    <#include "module/page-top.ftl">
    <div class="autopagerize_page_element">
        <div class="content">
            <#include "module/post-entry.ftl">
            <#if posts.totalPages gt 1>
                <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <div class="pagination">
                        <ul class="clearfix">
                            <#if pagination.hasPrev>
                                <li class="pre pagbuttons">
                                    <a class="btn" role="navigation" href="${pagination.prevPageFullPath!}">上一页</a>
                                </li>
                            </#if>
                            <#if pagination.hasNext>
                                <li class="next pagbuttons">
                                    <a class="btn" role="navigation" href="${pagination.nextPageFullPath!}">下一页</a>
                                </li>
                            </#if>
                        </ul>
                    </div>
                </@paginationTag>
            </#if>
             <#include "module/footer.ftl">
        </div>
    </div>
</div>
<@footer></@footer>

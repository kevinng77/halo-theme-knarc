<#include "module/macro.ftl">
<@head title="${blog_title!}"/>
<#include "module/sidebar.ftl">
<div class="main">
    <#include "module/page-top.ftl">
    <div class="mask"></div>
    <div class="autopagerize_page_element animated fadeInDown">
        <#include "module/slider.ftl">
        <div class="content min-screen-margin">
            <#include "module/post-entry.ftl">
            <#if posts.totalPages gt 1>
                <@paginationTag method="index" page="${posts.number?c}" total="${posts.totalPages?c}" display="3">
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

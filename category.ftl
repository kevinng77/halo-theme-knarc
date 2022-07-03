<#include "module/macro.ftl">
<@head title="${category.name} - ${blog_title!}"/>
<#include "module/sidebar.ftl">
<div class="main">
    <#include "module/page-top.ftl">
        <div class="mask"></div>

    <div class="autopagerize_page_element animated fadeInDown">
        <section class="category-nav">
            <div class="pattern-center">
                <div class="pattern-attachment-img">
                    <#if (settings.patternimg!true) && ((category.thumbnail?? && category.thumbnail!='') || (settings.category_patternimg?? && settings.category_patternimg!=''))>
                    <img src='${((category.thumbnail)?length>0)?string((category.thumbnail),"${settings.category_patternimg!}")}' >
                    </#if>
                </div>  
                <header class="pattern-header">
                    <div>
                        <span class="cat-title">${category.name!}</span>
                    </div>
                    <span class="cat-des">${category.description!}</span>
                </header>
            </div>
        </section>

        <div class="content grey-bg">
            <#include "module/post-entry.ftl">
            <#if posts.totalPages gt 1>
                <@paginationTag method="categoryPosts" page="${posts.number?c}" total="${posts.totalPages?c}" display="3" slug="${category.slug!}">
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

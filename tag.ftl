<#include "module/macro.ftl">
<@head title="标签：${tag.name} - ${blog_title!}"/>
<#include "module/sidebar.ftl">
<div class="main">
    <#include "module/page-top.ftl">
    <div class="autopagerize_page_element">
        <div class="content">
            <div class="tag-chips">
                <@tagTag method="list">
                    <#list tags as tag>
                    <a href="${tag.fullPath!}" title="${tag.name!}: ${tag.postCount!}">
                        <span class="tag-black animated fadeInDown" data-tagname="${tag.name!}">${tag.name!}
                        </span>
                    </a>
                    </#list>
                </@tagTag>
            </div>
            <#include "module/post-entry.ftl">
            <#if posts.totalPages gt 1>
                <@paginationTag method="tagPosts" page="${posts.number?c}" total="${posts.totalPages?c}" display="3" slug="${tag.slug!}">
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

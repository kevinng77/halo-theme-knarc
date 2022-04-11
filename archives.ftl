<#include "module/macro.ftl">
<@head title="归档 - ${blog_title!}"/>
<#include "module/sidebar.ftl">
<link rel="stylesheet" href="${theme_base!}/source/css/archive_css.min.css">

<div class="main">
    <#include "module/page-top.ftl">
    <div class="autopagerize_page_element">
        <div class="content">
            <div class="archive animated fadeInDown">
                 <ul class="list-with-title">
                    <#list archives as archive>
                        <div class="listing-title">${archive.year?c}</div>
                        <div class="listing">
                            <#list archive.posts?sort_by("createTime")?reverse as post>
                            <div class="listing-item">
                                <div class="listing-post">
                                    <a class="listing-post-title" href="${post.fullPath!}" title="${post.title!}">${post.title!}</a>
                                    <div class='list-post-info'>
                                        <div class="post-time">
                                            <i class='fa fa-sun-o'></i>
                                            <span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
                                        </div>
                                        <div class='list-tags'>
                                        <#list post.tags as tag>
                                        <i class='fa fa-tag' style="color:#6ba4e7"></i>
                                        <a class='tag' href="${tag.fullPath!}">${tag.name!}</a>
                                        </#list>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </#list>
                        </div>
                    </#list>
                </ul>
            </div>
            <#if posts.totalPages gt 1>
                <@paginationTag method="archives" page="${posts.number?c}" total="${posts.totalPages?c}" display="3">
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

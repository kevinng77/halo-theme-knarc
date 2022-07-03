<#include "module/macro.ftl">
<@head title="归档 - ${blog_title!}"/>
<#include "module/sidebar.ftl">
<link rel="stylesheet" href="${theme_base!}/source/css/archive_css.min.css">

<div class="main">
    <#include "module/page-top.ftl">
        <div class="mask"></div>

    <div class="autopagerize_page_element">
        <div class="content no-img">
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
                                        <#--  <div class="post-time">
                                            <svg class="link-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle>
                                            <polyline points="12 6 12 12 16 14"></polyline></svg> 
                                            <span class="info-text">${post.createTime?string("yyyy-MM-dd")}</span>
                                        </div>  -->
                                        <div class='list-tags'>
                                        <#list post.tags as tag>
                                        <svg class="link-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-tag"><path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path><line x1="7" y1="7" x2="7.01" y2="7"></line></svg>
                                        <a  href="${tag.fullPath!}">${tag.name!}</a>
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

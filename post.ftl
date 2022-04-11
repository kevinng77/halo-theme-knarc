<#include "module/macro.ftl">
<@head title="${post.title!} - ${blog_title!}"/>
<#include "module/sidebar.ftl">
<div class="main">
    <#include "module/page-top.ftl">
    <div class="autopagerize_page_element">
        <div class="content">
            <div class="post-page">
                <div class="post animated fadeInDown">
                    <div class="post-title">
                        <h3>
                            <a>${post.title}</a>
                        </h3>
                    </div>
                    <div class="post-content">
                        ${post.formatContent!}
                    </div>
                    <div class="post-footer">
                        <div class="meta">
                            <div class="info">
                                <i class="fa fa-sun-o"></i>
                                <span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
                                <i class="fa fa-comment-o"></i>
                                <a href="${post.fullPath!}#comment_widget">Comments</a>
                                <#if tags?size gt 0>
                                    <i class="fa fa-tag"></i>
                                    <#list tags as tag>
                                        <a href="${tag.fullPath!}" class="tag">&nbsp;${tag.name}</a>
                                    </#list>
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="pagination">
                    <ul class="clearfix">
                        <#if nextPost??>
                            <li class="next pagbuttons">
                                <a class="btn" role="navigation" href="${nextPost.fullPath!}" title="${nextPost.title}">下一篇</a>
                            </li>
                        </#if>
                        <#if prevPost??>
                            <li class="pre pagbuttons">
                                <a class="btn" role="navigation" href="${prevPost.fullPath!}" title="${prevPost.title}">上一篇</a>
                            </li>
                        </#if>
                    </ul>
                </div>
                <div id="comment_widget" style="margin: 30px;">
                    <#include "module/comment.ftl">
                    <@comment post=post type="post" />
                </div>
            </div>
            <#include "module/footer.ftl">

        </div>
    </div>
</div>
<#include "module/menu.ftl">

<@footer></@footer>

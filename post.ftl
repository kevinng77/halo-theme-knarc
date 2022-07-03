<#include "module/macro.ftl">
<@head title="${post.title!} - ${blog_title!}"/>
<#include "module/sidebar.ftl">
<div class="main">
    <#include "module/page-top.ftl">
        <div class="mask"></div>
    <div class="autopagerize_page_element">
        <div class="content">
            <div class="post-page">
                <div class="post animated fadeInDown">
                    <div class="post-title">
                        <h3>
                            <a>${post.title}</a>
                        </h3>
                    </div>
                    <div class="post-mid">
                        <div class="meta" style="padding:1.5em 0 1em 0">
                            <div style="display: flex;height: 50px;">
                                <div class="logo">
                                    <img class="blog_logo" src="<#if blog_logo?? && blog_logo!=''>${blog_logo!}<#else>${user.avatar!}</#if>" 
                                    style="width:50px;height:50px;" />
                                </div>
                                <div class="info">
                                    <div class="author" style="padding-right:5px"> 作者：${(user.nickname)!}</div>
                                    <div style="display:flex;align-items:center">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle>
                                        <polyline points="12 6 12 12 16 14"></polyline></svg>      
                                        <span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="link_logo" style="position:absolute;right:30px">
                                <#if settings.email??>
                                    <a target="_blank" href="mailto:${settings.email}">
                                        <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12.69,12.06a1,1,0,0,1-1.34,0L2.87,4.35A2,2,0,0,1,4,4H20a2,2,0,0,1,1.13.35Z"/><path d="M22,6.26V17a3,3,0,0,1-3,3H5a3,3,0,0,1-3-3V6.26l8.68,7.92a2,2,0,0,0,1.32.49,2,2,0,0,0,1.33-.51Z"/></svg>
                                    </a>
                                </#if>
                                <#if settings.github??>
                                    <a target="_blank" href="https://github.com/${settings.github}">
                                        <svg height="512px" id="Layer_1" style="enable-background:new 0 0 512 512;" version="1.1" viewBox="0 0 512 512"  xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><style type="text/css"><![CDATA[
                                        .st0{fill-rule:evenodd;clip-rule:evenodd;}
                                    ]]></style><g>
                                    <path class="st0" d="M256,32C132.3,32,32,134.8,32,261.7c0,101.5,64.2,187.5,153.2,217.9c11.2,2.1,15.3-5,15.3-11.1   c0-5.5-0.2-19.9-0.3-39.1c-62.3,13.9-75.5-30.8-75.5-30.8c-10.2-26.5-24.9-33.6-24.9-33.6c-20.3-14.3,1.5-14,1.5-14   c22.5,1.6,34.3,23.7,34.3,23.7c20,35.1,52.4,25,65.2,19.1c2-14.8,7.8-25,14.2-30.7c-49.7-5.8-102-25.5-102-113.5   c0-25.1,8.7-45.6,23-61.6c-2.3-5.8-10-29.2,2.2-60.8c0,0,18.8-6.2,61.6,23.5c17.9-5.1,37-7.6,56.1-7.7c19,0.1,38.2,2.6,56.1,7.7   c42.8-29.7,61.5-23.5,61.5-23.5c12.2,31.6,4.5,55,2.2,60.8c14.3,16.1,23,36.6,23,61.6c0,88.2-52.4,107.6-102.3,113.3   c8,7.1,15.2,21.1,15.2,42.5c0,30.7-0.3,55.5-0.3,63c0,6.1,4,13.3,15.4,11C415.9,449.1,480,363.1,480,261.7   C480,134.8,379.7,32,256,32z"/></g></svg>
                                    </a>
                                </#if>
                            </div>
                        </div>
                    </div>
                    <div class="post-content">
                        ${post.formatContent!}
                    </div>
                    <style>
                        .katex {
                            font-size: 1rem;
                            overflow-x: auto;
                            overflow-y: hidden;
                        }
                    </style>
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
                <#include "module/menu.ftl">
                <script>
                    var menu_icon = document.querySelector('.menu-open-icon');
                    menu_icon.onclick = ckMoonButton;
                    if ($(window).width() > 960){
                    menu_icon.click();
                    }
                </script>
                <div id="comment_widget">
                    <#include "module/comment.ftl">
                    <@comment post=post type="post" />
                </div>
            </div>
            <#include "module/footer.ftl">

        </div>
    </div>
</div>

<@footer></@footer>

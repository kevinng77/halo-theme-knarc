<#if settings.sidebar_style?? && settings.sidebar_style == 'arc'>
<style type="text/css">
.sidebar {
    background-color: ${settings.sidebar_color!'#3f434e'};
}

.sidebar .logo-title .description,
.sidebar .logo-title .title a,
.sidebar .social-links a {
    color: ${settings.sidebar_font_color!'#bac3cf'};
}

</style>
</#if>
<div class="sidebar">
    <div class="logo-title">
        <div class="title">
            <img src="<#if blog_logo?? && blog_logo!=''>${blog_logo!}<#else>${user.avatar!}</#if>" style="width:127px;height:127px;overflow:hidden;border-radius:50%" />
            <h3 title="">
                <a href="${blog_url!}">${blog_title!}</a>
            </h3>
            <div class="description">
                <#if settings.hitokoto!false>
                    <p id="yiyan">获取中...</p>
                <#else >
                    <p>${user.description!}</p>
                </#if>
            </div>
        </div>
    </div>
    <#include "social-list.ftl">
    <div>
    </div>

</div>

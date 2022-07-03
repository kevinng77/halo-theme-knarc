
<#if settings.sidebar_style?? && settings.sidebar_style == 'arc'>
<style type="text/css">
    .sidebar {
        background-color: ${settings.sidebar_color!'#3f434e'};
        border: 0px;
    }
    .sidebar .logo-title .description,
    .sidebar a,
    .social-links .link-icon {
        color: #bac3cf;
        fill: #bac3cf
    }
</style>
</#if>
<#if settings.sidebar_image?? && settings.sidebar_image != ''>
<style>
    .sidebar {
        background-image: linear-gradient( rgba(100, 100, 100, 0.5), rgba(100, 100, 100, 0.5) ), url(${settings.sidebar_image!});

    } 
    .sidebar .logo-title .description,
    .sidebar a,
    .social-links .link-icon {
        color: ${settings.sidebar_font_color!'#ffffff'};
        fill:  ${settings.sidebar_font_color!'#ffffff'};

    }   
</style>
</#if>

<div class="sidebar">
    <div class="logo-title">
        <div class="title">
            <img src="<#if blog_logo?? && blog_logo!=''>${blog_logo!}<#else>${user.avatar!}</#if>" 
            style="width:127px;height:127px;overflow:hidden;border-radius:50%;border: 2px #fff outset;" />
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
    <div class="sidebar_nav">
        <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <div>
                    <a href="${menu.url!}" target="${menu.target!}">${menu.name!} </a>
                </div>
            </#list>
        </@menuTag>
    </div>


    <#include "social-list.ftl">
    <div>
    </div>

</div>

<#assign count = 0> 
<div id="slider" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <@categoryTag method="list">
            <#list categories as category>
                <#if category.thumbnail! != ''>
                    <div class="carousel-item ${(count==0)?string("active","")}">
                        <div class="pattern-attachment-img">
                            <#if (settings.patternimg!true) && ((category.thumbnail?? && category.thumbnail!='') || (settings.category_patternimg?? && settings.category_patternimg!=''))>
                            <img src='${((category.thumbnail)?length>0)?string((category.thumbnail),"${settings.category_patternimg!}")}' >
                            </#if>
                        </div>
                        <header class="pattern-header">
                            <div class="cat-title">
                                <a href="${category.fullPath!}">${category.name!}</a>
                            </div>
                            <span class="cat-des">${category.description!}</span>
                        </header>                            
                    </div>
                    <#assign count = count + 1> 

                </#if>
            </#list>
        </@categoryTag>
    </div>

    <ol class="carousel-indicators">
        <#list 0..count-1 as i>
        <li data-target="#slider" data-slide-to="${i}" class="${(i==0)?string("active",'')}"></li>
        </#list>
    </ol>
    <a class="carousel-control-prev" href="#slider" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only"></span>
    </a>
    <a class="carousel-control-next" href="#slider" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only"></span>
    </a>
</div>
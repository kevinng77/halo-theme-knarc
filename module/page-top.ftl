<#if settings.sidebar_style?? && settings.sidebar_style == 'arc'>
<style type='text/css'>
.page-top {
    background-color: #f8f8f8;
}

.searchbox input::-webkit-input-placeholder {
    color: #fff;
}   

.searchtxt {
    border: 0px solid #000;
    background: #6ba4e7;
    color: #fff;
}
</style>
</#if>

<div class="page-top">
    <div class="nav">
        <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <li>
                    <a href="${menu.url!}" target="${menu.target!}">${menu.name!} </a>
                </li>
            </#list>
        </@menuTag>
    </div>
    <a class="searchbtn btn_off"><i class="fa fa-search"></i></a>

    <div class="searchbox">
        <form method="get" action="/search" role="search">
            <input class="searchtxt" type="search" name="keyword" placeholder="搜索文章" required>
        </form>
    </div>

</div>

<script>
var search_btn = document.querySelector('.searchbtn');
var box = document.querySelector('.searchbox');
var txt = document.querySelector('.searchtxt');

search_btn.onclick = function () {
    box.classList.toggle('active');
    txt.classList.toggle('active');

    search_btn.classList.toggle('btn_on');
    search_btn.classList.toggle('btn_off');
}
</script>
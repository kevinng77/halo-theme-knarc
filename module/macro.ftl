<#macro head title>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <title>${title!}</title>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content='#fff'>
    <meta name="author" content="${user.nickname!}" />
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    <@global.head />
    <link href="${theme_base!}/source/css/blog_basic.min.css?version=88107691fe" rel="stylesheet">
    <link href="${theme_base!}/source/css/style.min.css" type="text/css" rel="stylesheet" />

    <#if is_post?? || is_sheet??>
        <!--table style-->
        <style>
            table:not(.hljs-ln) {
                border-spacing: 0;
                border-collapse: collapse;
                margin-top: 0;
                margin-bottom: 16px;
                display: block;
                width: 100%;
                overflow: auto;
                font-size: 12px;
                line-height:1.6em;
            }
            table:not(.hljs-ln) th {
                font-weight: 600;
            }
            table:not(.hljs-ln) th,
            table:not(.hljs-ln) td {
                padding: 6px 13px;
                border: 1px solid #dfe2e5;
            }
            table:not(.hljs-ln) tr {
                background-color: #fff;
                border-top: 1px solid #c6cbd1;
            }
            table:not(.hljs-ln) tr:nth-child(2n) {
                background-color: #f6f8fa;
            }
            table:not(.hljs-ln) thead th {
                background-color: #f6f8fa;
            }
        </style>

    <!--代码高亮-->
        <link href="${theme_base!}/source/plugins/highlight/styles/${settings.code_pretty!''}.min.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="${theme_base!}/source/plugins/highlight/highlight.min.js"></script>
        <#if settings.code_line_number!false>
            <script type="text/javascript" src="${theme_base!}/source/plugins/lineNumber/highlightjs-line-numbers.js"></script>
            <link href="${theme_base!}/source/plugins/lineNumber/line-number.css" type="text/css" rel="stylesheet" />
        </#if>
        <script>hljs.highlightAll();</script>
        
        <#if settings.code_line_number!false>
            <script>hljs.initLineNumbersOnLoad();</script>
        </#if>
    </#if>

    <link rel="alternate" type="application/rss+xml" title="atom 1.0" href="${atom_url!}">
    <style>
        <#if !settings.post_title_uppper!true>
        .post .post-title h3 {
            text-transform: none;
        }
        </#if>
        <#if !settings.blog_title_uppper!true>
        .sidebar .logo-title .title h3 {
            text-transform: none;
        }
        </#if>
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
            background-color: #eee;
        }
        ::-webkit-scrollbar-thumb {
            background-color: ${settings.scrollbar!'#3798e8'};
        }
        ::-webkit-scrollbar-track {
            background-color: #eee;
        }
        ${settings.custom!}

    </style>
</head>
<body>
</#macro>
<#macro footer>
<script type="text/javascript" src="${theme_base!}/source/js/jquery.min.js"></script>


<#if is_index??>
    <script src="${theme_base!}/source/js/bootstrap.min.js"></script>
    <link href="${theme_base!}/source/css/slider.css" type="text/css" rel="stylesheet"/>
    <script>$('#carouselExampleIndicators').carousel(2000);</script>
</#if>

<script type="text/javascript">
    <#if settings.hitokoto!false>
	  var xhr = new XMLHttpRequest();
	  xhr.open('get', 'https://v1.hitokoto.cn');
	  xhr.onreadystatechange = function () {
          if (xhr.readyState === 4) {
              var data = JSON.parse(xhr.responseText);
              var yiyan = document.getElementById('yiyan');
              yiyan.innerText = data.hitokoto+"        -「"+data.from+"」";
          }
      };
	  xhr.send();
    </#if>

    // 侧边栏拓展插件
    $(function(){
    'use strict';
    var sidebar = $('.sidebar'); //选择侧栏
    var mask=$(".mask"); //选择遮罩
    // var backButton = $('.back-to-top'); //选择返回顶部
    var sidebar_trigger=$('#sidebar_trigger');//选择侧栏触发器
    var pagetop = $(".page-top");

    function showSidebar(){  //显示侧栏
        mask.fadeIn();  //显示mask
        if ($(window).width() > 960){
            sidebar.animate({'left':0});  //调整侧栏css
        } else {
            sidebar.css('display','unset')
            sidebar.animate({'top':pagetop.height()});  //调整侧栏css
        }
        }
    function hideSideBar(){  //隐藏mask
        mask.fadeOut();
        if ($(window).width() > 960){
            sidebar.css('left',-sidebar.width());
        } else {
            sidebar.css('top',-sidebar.height());
            <#--  sidebar.css('display','none');  -->
        }
        }
    sidebar_trigger.on('click',showSidebar); //监听侧栏触发器点击
    mask.click(hideSideBar);   //监听mask
})
</script>
<@global.statistics />
</body>

</html>
</#macro>

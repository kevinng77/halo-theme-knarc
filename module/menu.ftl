<link rel="stylesheet" href="${theme_base!}/source/css/moon-menu.css">
<link rel="stylesheet" href="${theme_base!}/source/font.css">

<div class="moon-menu" id="moonMenu">
    <div class="moon-menu-button" onclick="ckMoonButton()">
        <svg class="moon-menu-bg">
            <circle class="moon-menu-cricle" cx="50%" cy="50%" r="44%"></circle>
            <circle class="moon-menu-border" cx="50%" cy="50%" r="48%"></circle>
            <g class="moon-dot">
                <circle r=".2rem" cx="0" cy="-.8rem"></circle>
                <circle r=".2rem"></circle>
                <circle r=".2rem" cx="0" cy=".8rem"></circle>
            </g>
        </svg>
        <div class="moon-menu-content">
            <div class="moon-menu-icon"></div>
            <div class="moon-menu-text"></div>
        </div>
    </div>
</div>
<script src="${theme_base!}/source/js/tocbot.min.js"></script>

<#-- 目录 -->
<div class="moon-content menu-bg" id="moonToc">
</div>
<script type="text/javascript" src="${theme_base!}/source/js/jquery.min.js"></script>
<script src="${theme_base!}/source/js/moon.js"></script>

<#if settings.sidebar_style?? && settings.sidebar_style == 'arc'>
<style type='text/css'>
.menu-bg {
    background: ${settings.sidebar_color!'#3f434e'};
}
.moon-content a, .moon-content-title {
    color: ${settings.sidebar_font_color!'#bac3cf'};
}
</style>
</#if>

<script type="text/javascript">
  dealContentToc();
</script>
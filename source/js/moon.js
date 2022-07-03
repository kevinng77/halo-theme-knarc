"use strict";

/**
 * 点击页面处理小屏幕目录事件
 * @param target
 */
function documentClickToc(target) {
  var moonToc = $('.moon-content')
  if (moonToc && moonToc.hasClass('mm-active')) {
    if (target.id && target.id === "moonToc") {
    } else if (getClientWidth()<960){ 
      toggleSmallToc();
    } else{
    }
  }
}


function getHashCode(str, caseSensitive) {
  if (!caseSensitive) {
    str = str.toLowerCase();
  }
  var hash = 1315423911, i, ch;
  for (i = str.length - 1; i >= 0; i--) {
    ch = str.charCodeAt(i);
    hash ^= ((hash << 5) + ch + (hash >> 2));
  }
  return (hash & 0x7FFFFFFF);
}

/**
 * 处理目录
 */
function dealContentToc() {
  if (getClientWidth() > 1359) {
    initToc();
    scrollTocFixed();
  } else {
    var smallToc = $('.moon-menu-item.icon-toc');
    if (smallToc) {
      smallToc.toggleClass('hidden');
      // 渲染目录
      initMoonToc()
    }

    $(document).click(function (e) {
      var target = e.target;
      documentClickToc(target);
    });

  }
}

/**
 * 处理导航菜单
 */
function handleNavMenu() {
  if (getClientWidth() <= 800) {
    $('#navHeader .nav').addClass('opacity-100').removeClass('opacity-0')
    return;
  }
  if (hideMenu) {
    document.addEventListener('scroll', handleScrollMenu, false);
  }
}

function handleScrollMenu() {

  if (getClientWidth() <= 800) {
    $('#navHeader .nav').addClass('opacity-100').removeClass('opacity-0')
    return;
  }
  const scrollTop = getScrollTop();
  if (scrollTop > 29) {
    $('#navHeader').addClass('nav-bg-fff')
    $('#navHeader .nav').addClass('opacity-100').removeClass('opacity-0')
    $('#navHeader .collapse-nav').hide()
    $('.collapse-burger').removeClass('open');
  } else {
    $('#navHeader').removeClass('nav-bg-fff')
    $('#navHeader .nav').removeClass('opacity-100').addClass('opacity-0')
    $('#navHeader .collapse-nav').show()
  }
}

function collapseNav() {
  const burger = $('.collapse-burger');
  burger.toggleClass('open');
  const nav = $('#navHeader .nav');

  nav.toggleClass('opacity-100')
  if (nav.hasClass('opacity-100')) {
    nav.removeClass('slideOut');
    nav.addClass('slideIn');
  } else {
    nav.addClass('slideOut');
    nav.removeClass('slideIn');
  }
}

/********************************
 *
 *  文章页面相关
 *
 *******************************/

function scrollTocFixed() {
  document.addEventListener("scroll", tocScroll, false);
}

function removeScrollTocFixed() {
  document.removeEventListener('scroll', tocScroll, false);
}

function highlightCode() {
  if (enableLineNumber) {
    $('.content  pre>code[class*="language-"]').each(function (i, block) {
      lineNumbersBlock(block);
    });
  }

  if (collpaseCode) {
    $('.content  pre>code[class*="language-"]').each(function (i, block) {
      $(block).parent().wrap('<details></details>');
      $(block).parent().before('<summary>code</summary>')
    });
  }


}

//获取滚动条距离顶部位置
function getScrollTop() {
  return document.documentElement.scrollTop || document.body.scrollTop;
}

function tocScroll(event) {
  const tocId = "#toc";
  const Obj = $("#tocFlag");

  //判断元素是否存在
  if (Obj.length !== 1) {
    return false;
  }

  const tocFixed = $(tocId);
  const ObjTop = Obj.offset().top - $(window).height() * 0.5;

  // 滚动条离页面顶端的距离
  const scrollTop = getScrollTop();
  const postHeaderHeight = $("#postHeader").height();
  if (scrollTop > postHeaderHeight / 2) {
    tocFixed.show();
  } else {
    tocFixed.hide();
  }

  const tocEle = document.querySelector(tocId);
  if (!tocEle || !tocEle.getBoundingClientRect()) {
    return;
  }
  const tocHeight = tocEle.getBoundingClientRect().height;
  if (scrollTop > ObjTop - tocHeight * 0.5) {
    tocFixed.addClass("toc-right-fixed");
  } else {
    tocFixed.removeClass("toc-right-fixed");
  }

  // 设置目录right
  tocEleRight();

  event.preventDefault();
}

function getClientWidth() {
  return document.body.clientWidth;
}

function initToc() {
  const headerEl = "h1,h2,h3", //headers
    content = ".content"; //文章容器
  tocbot.init({
    tocSelector: "#toc",
    contentSelector: content,
    headingSelector: headerEl,
    scrollSmooth: true,
    headingsOffset: 0 - $("#postHeader").height(),
    // scrollSmoothOffset: -80, // 实现点击目录精准跳转到header
    hasInnerContainers: false,
  });

  $(".toc-link").each(function () {
    const linkContent = $(this).html();
    $(this).html('<span class="toc-link-dot"></span>' + linkContent);
  });
  // 设置目录right
  tocEleRight();
}

function tocEleRight() {
  const screenWidth = getClientWidth();
  const tocEle = document.getElementById("toc");
  if (tocEle) {
    tocEle.style.left = (screenWidth - 800) / 2 + 820 + "px";
  }
}

function scollTo() {
  const postHeight = $("#homeHeader").height();
  window.scroll({top: postHeight, behavior: "smooth"});
}


function toggleSmallToc() {
  var moonContent = $('#moonToc')
  moonContent.toggleClass('mm-active');

  if (moonContent.hasClass('mm-active')) {
    moonContent.show();
  } else {
    moonContent.hide()
  }
}

function initMoonToc() {
  var headerEl = 'h1,h2,h3',  //headers
    content = '.content';//文章容器
  tocbot.init({
    tocSelector: '#moonToc',
    contentSelector: content,
    headingSelector: headerEl,
    scrollSmooth: true,
    isCollapsedClass: '',
    headingsOffset: 0 - ($('#postHeader').height() + 58),
    scrollSmoothOffset: -80,
    hasInnerContainers: false,
  });

  var moonToc = $('#moonToc');
  // 没有生成目录
  if (moonToc && moonToc.children().length === 0) {
    $('.icon-toc').addClass('hidden');
  }
}

function ckMoonButton() {
  toggleSmallToc();
  $(".menu-open-icon").toggleClass("active");
}

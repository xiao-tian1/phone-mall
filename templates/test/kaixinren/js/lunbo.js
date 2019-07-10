$(function () {

    //第一张显示，opacity为1，图层为2
    //切换第二张，第一张opacity变为0，图层为1；第二张opacity为1，图层为2
    var num = 0;
    var timer = null;

    //最开始的定时器
    timer = setInterval(function () { autoplay('next') }, 2000);

    //显示当前及隐藏其他
    function animate(index) {
        $('#bannerCon ul li')
            .eq(index)
            .animate({ 'opacity': 1 }, 300).siblings()
            .animate({ 'opacity': 0 }, 300);

        $('.example2 ol span')
            .eq(index)
            .attr('class', 'seleted')
            .siblings().attr('class', '');
    }

    //自动播放，判断临界值
    function autoplay(btnor) {
        if (btnor == 'next') {
            num = ++num > $('#bannerCon ul li').size() - 1 ? 0 : num;
        } else {
            num = --num < 0 ? $('#bannerCon ul li').size() - 1 : num;
        }
        animate(num);
    }

    //点击焦点切换图片
    $('.example2 ol').on('mouseover', 'span', function () {
        $(this).attr('class', 'seleted').siblings().attr('class', '');
        num = $(this).index();
        animate(num);
    });

    //鼠标经过图片时停止轮播
    $('#bannerCon').hover(function () {
        clearInterval(timer);
    }, function () {
        timer = setInterval(function () { autoplay('next') }, 2000);
    });




});
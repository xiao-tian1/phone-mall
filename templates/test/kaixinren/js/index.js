$(function () {

    // 顶部导航栏
    $('.login-info a').hover(function () {
        $(this).stop().css('color', 'red').css('text-decoration', 'underline')
    }, function () {
        $(this).stop().css('color', '').css('text-decoration', '')
    })

    $('#top-nav a').hover(function () {
        $(this).stop().css('color', 'red').css('text-decoration', 'underline')
    }, function () {
        $(this).stop().css('color', '').css('text-decoration', '')
    });

    //吸顶菜单
    var borTop = $('.site-nav').outerHeight();
    // console.log(borTop)
    $(window).scroll(function () {
        var scrollTo = window.scrollY;
        // console.log(scrollTo)
        if (scrollTo >= borTop) {
            $('#header .site-nav').addClass('bottom');
        } else {
            $('#header .site-nav').attr('class', 'site-nav');
        }
    });

    //回到顶部
    window.onscroll = function () {
        if (window.scrollY >= 400) {
            $('.inreturntop').css('dispaly', 'block');
        } else {
            $('.inreturntop').css('dispaly', 'none');
        }
    }
    //2.点击回到顶部可以缓慢回到顶部
    $('.inreturntop').click(function () {
        var scrollTop = window.scrollY;
        var timer = setInterval(function () {
            if (scrollTop >= 0) {
                scrollTop -= 50;
                window.scrollTo(0, scrollTop);
            } else {
                clearInterval(timer);
            }
        }, 30);
    })





    // 鼠标滑过显示二级菜单
    $('.mc .item').hover(function () {
        $(this).children('.i-mc').toggle();
    });




    //轮播图右侧
    $('.move a').hover(function () {
        $(this).stop().animate({ 'left': -10 }, 600);
    }, function () {
        $(this).stop().animate({ 'left': 0 }, 600);
    });

    //第一张显示，opacity为1，图层为2
    //切换第二张，第一张opacity变为0，图层为1；第二张opacity为1，图层为2
    var num = 0;
    var timer = null;

    //最开始的定时器
    timer = setInterval(function () { autoplay('next') }, 2000);

    //显示当前及隐藏其他
    function animate(index) {
        $('.example3 ul li')
            .eq(index)
            .animate({ 'opacity': 1 }, 300).siblings()
            .animate({ 'opacity': 0 }, 300);

        $('.example3 ol span')
            .eq(index)
            .attr('class', 'seleted')
            .siblings().attr('class', '');
    }

    //自动播放，判断临界值
    function autoplay(btnor) {
        if (btnor == 'next') {
            num = ++num > $('.example3 ul li').size() - 1 ? 0 : num;
        } else {
            num = --num < 0 ? $('.example3 ul li').size() - 1 : num;
        }
        animate(num);
    }

    //点击焦点切换图片
    $('.example3 ol').on('mouseover', 'span', function () {
        $(this).attr('class', 'seleted').siblings().attr('class', '');
        num = $(this).index();
        animate(num);
    });

    //鼠标经过图片时停止轮播
    $('.example3').hover(function () {
        clearInterval(timer);
    }, function () {
        timer = setInterval(function () { autoplay('next') }, 2000);
    });


    //下期预告显示隐藏
    $('#next').hover(function () {
        $(this).html('返回');
        $('.title_clock_con').css('display', 'none');
        $('.title_clock_name').addClass('change_bg');
        $('.red_line').css('background', 'white');
    }, function () {
        $(this).html('下期预告');
        $('.title_clock_con').css('display', 'block');
        $('.title_clock_name').attr('class', 'title_clock_name');
        $('.red_line').css('background', '#d91519');
    })


    //正品保障
    $('#tabs li').hover(function () {
        //鼠标滑过当前的变高亮+排他
        $(this).attr('class', 'thistab')
            .siblings()
            .attr('class', '');
        //内容跟着出来
        $('#tab_conbox .tab_con')
            .eq($(this).index())
            .css('display', 'block')
            .siblings()
            .css('display', 'none');
    });



    //友情链接
    $('#tabs_r li').hover(function () {
        //鼠标滑过当前的变高亮+排他
        $(this).attr('class', 'thistab')
            .siblings()
            .attr('class', '');
        //内容跟着出来
        $('#tab_conbox_r .tab_con_r')
            .eq($(this).index())
            .css('display', 'block')
            .siblings()
            .css('display', 'none');
    });




    //刷新面板状态：根据登陆的状态进行刷新，从cookie读取登陆的状态

    //如果在cookie能拿到用户名证明：该用户已登录(隐藏注册和登陆面板，显示退出面板)
    update();

    function update() {//根据cookie显示面板状态

        var uid = cookie.get('id');
        var name = cookie.get('user');
        // console.log(name)
        if (uid) {//0是假，非0数字是真
            //已登录
            $('.gd-dengl').html(name);
            $('.gd-zcsjf').html('[退出]');
        } else {
            //未登录
            $('.gd-dengl').html('请登录');
            $('.gd-zcsjf').html('免费注册');
        }
    }



    
    //删除cookie
    $('.gd-zcsjf').on('click', function () {
        cookie.remove('id')
        update();
    })


});
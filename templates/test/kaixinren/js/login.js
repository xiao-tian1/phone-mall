$(function () {



    // 鼠标滑过显示二级菜单
    $('.categories-box').hover(function () {
        $(this).children('.categories-content').toggle();
    });

    $('.categories-content .item-box').hover(function () {
        $(this).children('.fast-show').toggle();
    });



    //二级菜单添加遮罩
    $('.categories-content .title').hover(function () {
        $(this).addClass('title-active');
    }, function () {
        $(this).attr('class', 'title');
    });



    //验证用户名
    $('.login-tj').on('click', function () {
        var $name = $('#LoginUserName').val().trim();
        var $psw = $('#LoginPassWord').val().trim();
        if ($name) {
            $.ajax({
                'type': 'post',
                'url': '../api/denglu.php',
                'data': 'username=' + $name + '&psw=' + $psw,
                success: function (str) {
                    // console.log(str);
                    var arr = JSON.parse(str);
                    console.log(arr.total);
                    if (arr.total) {
                        // alert('登录成功');
                        var now = new Date();
                        now.setDate(now.getDate() + 1);
                        cookie.set('user', arr.data[0].name, { expires: now, path: '/' });
                        cookie.set('id', arr.data[0].id, { expires: now, path: '/' });
                        location.href = '../html.html';

                    } else {
                        $('.titles').html('用户名或密码错误').css('color', 'red');
                    }
                }
            });
        } else {
            alert('请输入用户名')
        }
    });





     //刷新面板状态：根据登陆的状态进行刷新，从cookie读取登陆的状态

    //如果在cookie能拿到用户名证明：该用户已登录(隐藏注册和登陆面板，显示退出面板)
    update();
    
    function update() {//根据cookie显示面板状态

        var uid = cookie.get('id');
        var name = cookie.get('user');
        console.log(name)
        if (uid) {//0是假，非0数字是真
            //已登录
            $('.gb-dengl').html(name);
            $('.gb-zcsjf').html('[退出]');
        } else {
            //未登录
            $('.gb-dengl').html('请登录');
            $('.gb-zcsjf').html('免费注册');
        }
    }
    
    //删除cookie
    $('.gb-zcsjf').on('click', function () {
        cookie.remove('id')
        update();
    })





})
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


    var res = [];

    //验证用户名
    $('#u_username').on('blur', function () {
        var $name = $(this).val().trim();
        if ($name) {
            if (checkReg.user($name)) {
                $.ajax({
                    'type': 'post',
                    'url': 'http://127.0.0.1:8000/app/username_check/',
                    'data': 'username=' + $name,
                    success: function (str) {
                        console.log(str);
                        var arr = JSON.parse(str);
                        if (arr.total == 0) {
                            $('.titles').html('可以注册').css('color', '#58bc58');
                            res.push(1);
                        } else {
                            $('.titles').html('该用户名不可用或已被注册，请更换其他用户名').css('color', 'red');
                        }
                    }
                });
            } else {
                $('.titles').html('正则不通过').css('color', 'red');
            }
        } else {
            $('.titles').html('请输入用户名').css('color', 'red');
        }
    });

    //验证密码是否通过
    $('#u_password').on('blur', function () {
        var $passwords = $('#u_password').val().trim();
        if ($passwords) {
            if (checkReg.psweasy($passwords)) {
                $('.titles2').html('正则通过').css('color', '#58bc58');
                res.push(2);
            } else {
                $('.titles2').html('正则不通过').css('color', 'red');
            }
        } else {
            $('.titles2').html('请输入密码').css('color', 'red');
        }
    });

    //验证密码是否一致
    $('#u_password1').on('blur', function () {
        var $passwords = $('#u_password').val().trim();
        var $pswcf = $('#u_password1').val().trim();
        if ($pswcf) {
            if ($passwords == $pswcf) {
                $('.titles3').html('密码一致').css('color', '#58bc58');
                res.push(3);
            } else {
                $('.titles3').html('密码不一致，请重新输入').css('color', 'red');
            }
        } else {
            $('.titles3').html('密码不一致，请重新输入').css('color', 'red');
        }
    });

    //验证邮箱是否通过
    $('#u_email').on('blur', function () {
        var $email = $('#u_email').val().trim();
        if ($email) {
            if (checkReg.email($email)) {
                $('.titles4').html('正则通过').css('color', '#58bc58');
                res.push(4);
            } else {
                $('.titles4').html('正则不通过').css('color', 'red');
            }
        } else {
            $('.titles4').html('请输入邮箱').css('color', 'red');
        }
    });


    //点击按钮，随机生成4位数
    $('#reflashyz').on('click', function () {
        $(this).html(ranNum());
    });
    $('#reflashyz').html(ranNum())
    //验证随机验证码是否通过
    $('.login-yzm').on('blur', function () {
        var $yzm = $('.login-yzm').val().toLowerCase();
        var $yzms = $('#reflashyz').html().toLowerCase();
        // console.log($yzm,$yzms)
        if ($yzm) {
            if ($yzm == $yzms) {
                $('.huyz').html('验证通过').css('color', '#58bc58');
                res.push(5);
            } else {
                $('.huyz').html('验证码不一致，请重新输入').css('color', 'red');
            }
        } else {
            $('.huyz').html('请输入验证码').css('color', 'red');
        }
    });


    //点击注册按钮的时候，验证用户名是否存在，如果存在：不能注册
    //验证邮箱，密码是否一致,验证码是否通过
    $('button').click(function () {
      
 var $name = $('#u_username').val();
        var $psw = $('#u_password').val();
        console.log(res.length);
        if (res.length == 5) {
            $.ajax({
                'type': 'post',
                'url': 'http://127.0.0.1:8000/app/register/',
                'data': 'username=' +$name + '&psw='+$psw
               ,
                success: function (str) {
                    console.log(str);

                }
            });
            location.href = 'login.html';
        }
	
    })



    //刷新面板状态：根据登陆的状态进行刷新，从cookie读取登陆的状态

    //如果在cookie能拿到用户名证明：该用户已登录(隐藏注册和登陆面板，显示退出面板)
    update();
    
    function update() {//根据cookie显示面板状态

        var uid = cookie.get('id');
        var name = cookie.get('user');
        // console.log(name)
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
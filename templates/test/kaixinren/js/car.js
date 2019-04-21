$(function () {

    //更新
    //添加的商品内容

    $.ajax({
        'type': 'post',
        'url': '../api/02car.php',
        'async': false,
        success: function (str) {
            // console.log(str);
            var arr = JSON.parse(str);
            // console.log(arr);
            var res = arr.map(function (item) {
                return `<tr>
                        <td class="first-th">B01002109x</td>
                        <td style="text-align:left;">
                            <a href="">${item.name}</a>
                            <span class="redColor">(特例品)</span>
                        </td>
                        <td class="priceSign" width="90">￥${item.price}</td>
                        <td width="90">
                            <span class="minus-ico"></span>
                            <input type="text" value="${item.amount}" id="num_8076">
                            <span class="plus-ico"></span>
                        </td>
                        <td class="priceSig" width="90">￥${((item.price) * (item.amount)).toFixed(2)}</td>
                        <td width="90"><a class="del-cancle" href="###">删除</a>
                        </td>
                    </tr>`;
            }).join('');



            $('.listing-td tbody').html(res + $('.listing-td tbody').html());


        }
    })





    //增加减少商品
    $('#concar').on('click', '.minus-ico', function () {
        var num = $(this).next().val() * 1;
        num--;
        if (num <= 1) {
            //假设库存量
            num = 1;
        }
        $(this).next().val(num);//赋值
        // console.log(num);
        goodTotal($(this));
    })

    $('#concar').on('click', '.plus-ico', function () {
        var num = $(this).prev().val() * 1;
        num++;
        if (num >= 100) {
            //假设库存量
            num = 100;
        }
        $(this).prev().val(num);//赋值
        // console.log(num);
        goodTotal($(this));
    })


    //小计的改变：数量变就跟着变
    function goodTotal(now) {
        var num = now.parent().find('input').val() * 1;
        //数量
        var price = now.parent().prev().text().slice(1);
        //获取价格，减掉单位只要数字
        var totalPrice = (num * price).toFixed(2);//保留两位小数
        // console.log(num,price,totalPrice);
        now.parent().next().html('¥' + totalPrice);
        allNum();
    }

    //绑定事件
    $('#concar').on('input', '#num_8076', function () {
        goodTotal($(this));
    });


    //删除当行
    $('#concar').on('click', '.del-cancle', function () {
        var res = confirm('您确定要删除吗?');
        if (res) {
            $(this).parent().parent().remove();
            allNum();
        }
    });



    //计算总价钱
    allNum();
    var arr = [];

    function allNum() {
        arr = [];
        $('#concar input').each(function (i, item) {
            if ($('#concar input').eq(i)) {
          
            arr.push(i);
            }
        });
        var num = 0;
        var priceAll = 0;
        
        arr.forEach(function (item) {
            num += $('#concar #num_8076').eq(item).val() * 1;
            priceAll += $('#concar .priceSig').eq(item).text().slice(1) * 1;
        })

        $('#productcount').html(num);
        $('#showptsp').html('¥ ' + priceAll.toFixed(2));

    }

  







    //全删
    $('#clearshopcar').on('click', function () {
        var res = confirm('您确定要删除全部商品吗?');
        if (res) {
            $.ajax({
                'type': 'post',
                'url': '../api/delcar.php',
                success: function (str) {
                    if (str == 'no') {
                        $('#concar .listing-td').remove();
                        allNum();
                        
                    } else {

                    }
                }
            })
            $('.listing-td tbody').html(' ');
        }
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
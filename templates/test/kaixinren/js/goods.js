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



    //数据渲染

    var dat = decodeURI(location.search).slice(1);
    // console.log(dat);
    $.ajax({
        'type': 'post',
        "url": '../api/02list.php',
        'async': false,
        'data': 'dataId=' + dat,
        success: function (str) {
            // console.log(str)
            var arr = JSON.parse(str);
            // console.log(arr)
            var res = `<h1 title="汇仁  肾宝片 126片" id="pro_name">${arr[0].name}</h1>`;
            $('.titl').html(res);

            var html = `<li>
                            <div class="small-img">
                                <img src="${arr[0].img}" />
                            </div>
                        </li>
                        <li>
                            <div class="small-img">
                                <img src="${arr[0].img}" />
                            </div>
                        </li>
                        <li>
                            <div class="small-img">
                                <img src="${arr[0].img}" />
                            </div>
                        </li>
                        <li>
                            <div class="small-img">
                                <img src="${arr[0].img}" />
                            </div>
                        </li>`;
            $('.animation03').html(html);

            var res2 = `<h2 id="pro_func">${arr[0].use}</h2>
                        <ul class="introduc introduc-fcf" id="pro_details">
                            <li>通用名称：${arr[0].cnname}</li>
                            <li>商品编号：N02011807</li>
                            <li>商品规格：126片</li>
                            <li>批准文号：国药准字Z20080627</li>
                            <li>生产企业：<a href="/qiye/254.html">江西汇仁药业有限公司</a></li>
                        </ul>

                        <div class="fcf-price-box messages-common" style="background:none;height:84px;">
                            <div style="height: 30px;">
                                <div class="span-width" id="NotRushWord"
                                    style="width: 180px; height: 30px; float: left;">
                                    <div style="width: 60px; height: 30px; line-height: 30px; float: left;">优惠价：</div>
                                    <div style="height: 30px; line-height: 30px; font-size: 15px; width: 14px; float: left;
                                            color: red;">￥<span class="price" id="pro_mall_price">${arr[0].price}</span>
                                    </div>
                                </div><span class="span-width" id="RushWord" style="display: none; line-height: 30px;">
                                    <div style="float: left;">抢购价：</div>
                                    <span class="kxj" style="display: block; width: 120px; height: 30px; float: left;
                                            overflow: hidden;">
                                        <div style="width: 15px; height: 30px; line-height: 30px; color: Red; float: left;
                                                font-size: 15px; margin-left: -3px;">￥</div>
                                        <span style="width: 106px; overflow: hidden; display: block; float: left;">
                                            <img alt="" src=""></span>
                                    </span>
                                </span><span style="display: block; float: left; width: 40px; height: 30px;
                                                line-height: 30px;">节省：</span><span class="save-price"
                                    id="NotRushWord2">
                                    <div style="height: 30px; line-height: 30px; font-size: 15px; width: 14px; float: left;
                                                        color: black;">￥<span class="price3"
                                            id="Pro_NotRushWord2">${arr[0].save}</span></div>
                                </span><span class="save-price" id="RushWord2" style="display: none; float: left;
                                                    width: 120px;">
                                    <div style="height: 30px; line-height: 30px; font-size: 15px; width: 14px; float: left;
                                                        font-weight: bold; color: black;">￥<span class="price3"
                                            id="Pro_RushWord2">40.00</span></div><b style="display: block; float: left; height: 30px; line-height: 30px; width: 106px;
                                                        overflow: hidden;"><img style="margin-left: -5px;" alt=""
                                            src=""></b>
                                </span>
                            </div>
                            <p><span class="span-width">市 场 价：<del id="pro_market_price">￥328.00</del></span><a
                                    href="/Product/PriceComplaint/28003" target="_blank" rel="NOFOLLOW">价格投诉</a></p>
                        </div>
                        <ul class="shichang" style="padding-left:15px">
                            <li class="yhzx">
                                <dl>
                                    <dt>优惠专享：</dt>
                                    <dd>
                                        <p><b></b><a id="p_28003" title="汇仁  肾宝片 126片" class="bk">单盒专享价：288.00元
                                                立省40.00元</a></p>
                                        <p><a id="p_34455" title="汇仁肾宝片2盒+万艾可1片 ">汇仁肾宝片2盒+万艾可1.. 644.00元 立省12.00元</a>
                                        </p>
                                    </dd>
                                </dl>
                            </li>
                            <li class="cxmessage" id="zpnr">
                                <dl>
                                    <dt>促销信息：</dt>
                                    <dd>
                                        <p><em>该商品暂无促销活动...</em></p>
                                    </dd>
                                </dl>
                            </li>
                            <li class="shangpin-sl">商品数量：
                                <input type="button" value="-" class="input1" style="width:10px">
                                <input id="buynum" class="input2" style=" width:52px;" value="1">
                                <input type="button" value="+" class="input1">
                                <a href="" target="_blank" rel="nofollow">【价格投诉】</a>
                            </li>
                            <li class="jgts lisheng"></li>
                            <li class="gw-kf">
                                <img id="btn_car" title="放入购物车" src="../img/jrgwc.png">
                                <img class="car" title="放入购物车" src="../img/jrgwc.png">
                                <img class="kefu-btn" src="../img/zx.png">
                            </li>
                        </ul>`;
            $('.right-intro').html(res2);
        }
    })

   
    //点击添加到购物车
    $('#btn_car').click(function() {

        $('.car').css('top','0').css('right','270px').css('display','none');

        $('.car').animate({top:-484,right:-60,opacity:'toggle'},'slow');


        $.ajax({
            'type':'post', 
            'url':'../api/car.php',
            'data': 'dataId=' + dat,
            success:function(str) {
                // console.log(str);
                var arr = JSON.parse(str);
                // console.log(arr);
                if(arr[0]) {
                    var add = (arr[0].amount) * 1 + 1;
                    // console.log(add)
                    $.ajax({
                        'type': 'post',
                        'url': '../api/04list.php',
                        'data': 'amount=' + add + '&dataId=' + arr[0].id,
                        success: function (str) {
                            console.log(str);
                        }
                    })
                }else {
                    $.ajax({
                        'type': 'post',
                        'url': '../api/02list.php',
                        'data': 'dataId=' + dat,
                        success: function (str) {
                            // console.log(str);
                            var arr = JSON.parse(str);
                            // console.log(arr)
                            $.ajax({
                                'type': 'post',
                                'url': '../api/03list.php',
                                'data': 'amount=' + arr[0].amount + '&name=' + arr[0].name + '&price=' + arr[0].price + '&dataId=' + arr[0].id,
                                success: function (str) {
                                    console.log(str);
                                }
                            })
                        }
                    })
                }
            }
        })

       
    })



    //放大镜

    $(function () {

        var magnifierConfig = {
            magnifier: "#magnifier1",//最外层的大容器
            width: 310,//承载容器宽
            height: 310,//承载容器高
            moveWidth: null,//如果设置了移动盒子的宽度，则不计算缩放比例
            zoom: 5//缩放比例
        };

        var _magnifier = magnifier(magnifierConfig);

        /*magnifier的内置函数调用*/
        /*
            //设置magnifier函数的index属性
            _magnifier.setIndex(1);
    
            //重新载入主图,根据magnifier函数的index属性
            _magnifier.eqImg();
        */
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
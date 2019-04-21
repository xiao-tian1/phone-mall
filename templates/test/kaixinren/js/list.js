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


    //回到顶部
    // window.onscroll = function () {
    //     if (window.scrollY >= 400) {
    //         $('#returnTop').css('dispaly', 'block');
    //     } else {
    //         $('#returnTop').css('dispaly', 'none');
    //     }
    // }

    //点击回到顶部可以缓慢回到顶部
    // $('#returnTop').click(function () {
    //     var scrollTop = window.scrollY;
    //     console.log(scrollTop)
    //     var timer = setInterval(function () {
    //         if (scrollTop >= 0) {
    //             scrollTop -= 50;
    //             window.scrollTo(0, scrollTop);
    //         } else {
    //             clearInterval(timer);
    //         }
    //     }, 30);
    // })


    //点击更多显示
    $('.others-ico').on('click', function () {
        $('.display-none').toggle();
    })


    var ipage = 1;//第一页
    var inum = 16;//每页5条
    $.ajax({
        'type': 'post',
        'url': '../api/list.php',
        'data': 'page=' + ipage + '&num=' + inum,

        success: function (str) {
            // console.log(str);
            var datalist = JSON.parse(str);
            var arr = datalist.data;
            var res = arr.map(function (item) {
                return `<li data-id="${item.id}">
                <dl>
                    <div style="position:relative">
                        <div style="position:absolute;left:0;top:0;z-index:2">
                        </div>
                        <dt data-id="${item.id}">
 
                                <img title="999 感冒灵颗粒 10g*9袋" src="${item.img}" >

                        </dt>
                        <dd class="title">
                            <a href="###" class="fortext productName" title="999 感冒灵颗粒 10g*9袋">
                            ${item.name}
                            </a>
                        </dd>
                        <dd class="ms">
                            <a href="###" title="解热镇痛。用于感冒引起的头痛，发热，鼻塞，流涕，咽痛">
                            ${item.use}
                            </a>

                        </dd>
                        <dd class="price-box">
                            <span class="kxj">开心人价：</span>
                            <span class="priceSign dollor">￥</span>
                            <span class="price">${item.price}</span>
                        </dd>
                        <dd>
                            <div class="btn-box">
                                <p class="cart" id="put0" alt="放入购物车"   data-id="${item.id}"></p>
                                <p class="favorite margin0"></p>
                            </div>
                        </dd>
                    </div>
                </dl>
            </li>`;
            }).join('');
            $('.ul-list0').html(res);

            //根据总条数和一页显示16条，算出总页码
            // console.log(dataList);
            var pages = Math.ceil(datalist.total / datalist.num);//存总页码
            // console.log(pages);//28 5 =6页 
            var html = '';
            for (var i = 0; i < pages; i++) {
                html += `<span>${i + 1}</span>`;
            }
            $('#page').html(html);
            $('#page span').eq(0).addClass('active');


            //事件委托：点击页面可以切换内容：(分页功能)
            $('#page').on('click', 'span', function () {
                $(this).attr('class', 'active').siblings().attr('class', '');
                var ipage = $(this).html();
                // console.log(ipage);
                var num = 16;
                $.ajax({
                    'type': 'post',
                    'url': '../api/list.php',
                    'data': 'page=' + ipage + '&num=' + num,
                    success: function (str) {
                        var dataList = JSON.parse(str);
                        var arr = dataList.data;
                        var res = arr.map(function (item) {
                            return `<li data-id="${item.id}">
                            <dl>
                                <div style="position:relative">
                                    <div style="position:absolute;left:0;top:0;z-index:2">
                                    </div>
                                    <dt data-id="${item.id}">
                                       
                                            <img title="999 感冒灵颗粒 10g*9袋" src="${item.img}">
                                       
                                    </dt>
                                    <dd class="title">
                                        <a href="###" class="fortext productName" title="999 感冒灵颗粒 10g*9袋">
                                        ${item.name}
                                        </a>
                                    </dd>
                                    <dd class="ms">
                                        <a href="###" title="解热镇痛。用于感冒引起的头痛，发热，鼻塞，流涕，咽痛">
                                        ${item.use}
                                        </a>
            
                                    </dd>
                                    <dd class="price-box">
                                        <span class="kxj">开心人价：</span>
                                        <span class="priceSign dollor">￥</span>
                                        <span class="price">1${item.price}</span>
                                    </dd>
                                    <dd>
                                        <div class="btn-box">
                                            <p class="cart" id="put0" alt="放入购物车" data-id="${item.id}"></p>
                                            <p class="favorite margin0"></p>
                                        </div> 
                                    </dd>
                                </div>
                            </dl>
                        </li>`;
                        }).join('');//将数组转成字符串
                        $('.ul-list0').html(res);//数据渲染
                    }
                })
            })

        }
    });

    //清空表单内容
    $('#keyWord').click(function() {
        $(this).attr('value',' ');
    })

  
    //查询渲染
    $('#searchbutton').click(function() {
        // $(tihs).css()
    })




    //跳转详情
    $('.hunt-list-box').on('click', 'dt', function () {
        var $datas = $(this).data('id')
        location.href = 'goods.html?' +$datas; 
    })


    //添加商品到购物车
    $('.hunt-list-box').on('click', '.cart', function () {
        var $datas = $(this).attr('data-id');
       

        localStorage.setItem('state', $datas);
        // console.log($datas);
        $.ajax({
            'type': 'post',
            'url': '../api/02list.php',
            'data': 'dataId=' + $datas,
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr[0].amount);
                $.ajax({
                    'type': 'post',
                    'url': '../api/car.php',
                    'data': 'dataId=' + arr[0].id,
                    success: function (str) {
                        var arr = JSON.parse(str);
                        if (arr[0]) {
                            // console.log(1);
                            var add = (arr[0].amount) * 1 + 1;
                            $.ajax({
                                'type': 'post',
                                'url': '../api/04list.php',
                                'data': 'amount=' + add + '&dataId=' + arr[0].id,
                                success: function (str) {
                                    console.log(str);
                                }
                            })
                        } else {
                            $.ajax({
                                'type': 'post',
                                'url': '../api/02list.php',
                                'data': 'dataId=' + $datas,
                                success: function (str) {
                                    // console.log(str);
                                    var arr = JSON.parse(str);
                                    $.ajax({
                                        'type': 'post',
                                        'url': '../api/03list.php',
                                        'data': 'amount=' + arr[0].amount + '&name=' + arr[0].name + '&price=' + arr[0].price + '&dataId=' + arr[0].id,
                                        success: function (str) {
                                            // console.log(str);
                                        }
                                    })
                                }
                            })

                        }
                    }
                })

            }
        })

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
window.onload = function () {


    //2.计算时间差
    function timer() {
        //倒计时
        //1.设置截止时间
        //获取系统时间
        var nowtime = new Date();
        // console.log(nowtime);
        var years = nowtime.getFullYear();
        var month = nowtime.getMonth()+1;
        var day = nowtime.getDate();
        var shi = nowtime.getHours();
        var fen = nowtime.getMinutes();
        // var miao = nowtime.getSeconds();
        //判断当前时间是否为14:02:00之前，是则为今天的14:02结束抢购，否则为第二天14：02结束
        if (shi < 14 || shi == 14 && fen < 2 || shi == 14 && fen < 2) {
            //当天结束的
            var endtime = new Date(years + '-' + month + '-' + day + ' '+ '14:02:00');


        } else {
            //明天结束的
            day++;
            var haha=years + '-' + month + '-' + day +' '+'14:02:00';
            // console.log(haha);
            var endtime = new Date(haha);
            console.log(endtime);



        }

        // var starttime = new Date()
        // var endtime = new Date('years'+'-'+'month'+'-'28 14:02:00');
        // var endTime = new Date(endtime);//转成时间格式
        // console.log(parseInt(endtime))


        var dis = parseInt((endtime - nowtime) / 1000);
        console.log(dis);
        var days = parseInt(dis / 3600 / 24);
        var hours = parseInt(dis / 3600) % 24;
        var min = parseInt(dis / 60) % 60;
        var sec = dis % 60;
        var time1 = toDb(days);
        var time2 = toDb(hours);
        var time3 = toDb(min);
        var time4 = toDb(sec)
        // console.log(days,hours,min,sec);

        var res = '';//准备用于存放创建好的img标签
        var num = 0;
        for (var i = 0; i < time1.length; i++) {
            res += `<img src="img/${time1.charAt(i)}.png" alt="">`;
            num++;
            if (num % 2 == 0) {
                res += '天';
            }
        }
        for (var i = 0; i < time2.length; i++) {
            res += `<img src="img/${time2.charAt(i)}.png" alt="">`;
            num++;
            if (num % 2 == 0) {
                res += '时';
            }
        }
        for (var i = 0; i < time3.length; i++) {
            res += `<img src="img/${time3.charAt(i)}.png" alt="">`;
            num++;
            if (num % 2 == 0) {
                res += '分';
            }
        }
        for (var i = 0; i < time4.length; i++) {
            res += `<img src="img/${time4.charAt(i)}.png" alt="">`;
            num++;
            if (num % 2 == 0) {
                res += ' ';
            }
        }


        $('.xdsoft_size_sm').html(res);

        // if (dis <= 0) {
        //     // setInterval(timer);
        //     // dis = 24 * 60 * 60 *1000;
        //     clearInterval(arr);
        //     $('.xdsoft_size_sm').html(' ');
        // }

    };
    timer();
    var arr;
    arr = setInterval(timer, 1000);








}
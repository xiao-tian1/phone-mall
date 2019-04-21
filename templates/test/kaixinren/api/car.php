<?php

    //购物车渲染

    //连接数据库
    include 'conn.php';

    //接收数据
    $datad = isset($_POST['dataId']) ? $_POST['dataId'] : '';

    // echo $psw;//在前端的netword检测是否接收到响应000

    //查询数据库
    $sql = "SELECT * FROM car WHERE id='$datad'";

    //执行
    $res = $conn->query($sql);

    //得到结果集的内容部分
    $arr = $res->fetch_all(MYSQLI_ASSOC);//获取所有查询到的记录内容




    //结果集的num_rows属性，如果大于0代表查到了数据，用户名存在
    // if($res->num_rows){
    //     echo 'no';
    // }else{
    //     //不存在
    //     echo 'yes';
    // }
    
     //把数据做成字符串传给前端
     echo json_encode($arr,JSON_UNESCAPED_UNICODE);

    //关闭数据库
    // $res->close();
    // $conn->close();
?>
<?php

    //接收用户的相关信息，插入数据库，插入成功返回状态给前端
    include 'conn.php';

    //接收数据
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $pic = isset($_POST['price']) ? $_POST['price'] : '';
    $amt = isset($_POST['amount']) ? $_POST['amount'] : '';
    $dat = isset($_POST['dataId']) ? $_POST['dataId'] : '';

    // echo $psw;//在前端的netword检测是否接收到响应000

    //写spl语句
    $sql = "INSERT INTO car(name,price,amount,id) VALUES('$name','$pic','$amt','$dat')";

    //执行
    $res = $conn->query($sql);

    // var_dump($res);
    if($res){
        //插入成功
        echo 'yes';
    }else{
        echo 'no';
    }

    //关闭数据库
    // $res->close();
    // $conn->close();
?>
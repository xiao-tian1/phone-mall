<?php

    //6.接收用户的相关信息，插入数据库，插入成功返回状态给前端
    include 'conn.php';

    //接收数据
    $name = isset($_POST['username']) ? $_POST['username'] : '';
    $psw = isset($_POST['psw']) ? $_POST['psw'] : '';

    // echo $psw;//在前端的netword检测是否接收到响应000

    //写spl语句
    $sql = "INSERT INTO zhuce(name,psw) VALUES('$name','$psw')";

    //执行
    $res = $conn->query($sql);

    // var_dump($res);
    if($res){
        echo 'yes';
    }else{
        echo 'no';
    }

    //关闭数据库
    // $res->close();
    // $conn->close();
?>
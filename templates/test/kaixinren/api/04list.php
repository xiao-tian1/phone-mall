<?php

    //购物车渲染

    //连接数据库
    include 'conn.php';
    
    //接收数据
    $amt = isset($_POST['amount']) ? $_POST['amount'] : '';
    $dat = isset($_POST['dataId']) ? $_POST['dataId'] : '';

     //写sql语句：查询整个表
     $sql = "UPDATE car SET amount='$amt' WHERE id='$dat'";

     //执行
     $res = $conn ->query($sql);

    if($res) {
        //修改成功
        echo 'yes';
    }else {
        echo 'no';
    }

    //关闭数据库
    // $res->close();
    // $conn->close();
?>
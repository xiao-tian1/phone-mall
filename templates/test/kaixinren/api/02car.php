<?php

    //购物车渲染

    //连接数据库
    include 'conn.php';
   

     //写sql语句：查询整个表
     $sql = "SELECT * FROM car";

     //执行
     $res = $conn ->query($sql);

    //得到结果集的内容部分
     $arr = $res->fetch_all(MYSQLI_ASSOC);//获取所有查询到的记录内容
        
    
     //把数据做成字符串传给前端
     echo json_encode($arr,JSON_UNESCAPED_UNICODE);

    //关闭数据库
    // $res->close();
    // $conn->close();
?>
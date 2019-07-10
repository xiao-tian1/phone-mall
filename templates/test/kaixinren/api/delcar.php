<?php

    //购物车删除商品渲染

    //连接数据库
    include 'conn.php';
   

     //写sql语句：查询整个表
     $sql = "DELETE  FROM car";

     //执行
     $res = $conn ->query($sql);
    
     //得到结果集的内容部分
     $arr = $res->fetch_all(MYSQLI_ASSOC);//获取所有查询到的记录内容

     //把数据做成字符串传给前端
     echo json_encode($arr,JSON_UNESCAPED_UNICODE);
        
    // if($res->num_rows) {
    //     //存在
    //     echo 'no';
    // }else{
    //     //不存在
    //     echo 'yes';
    // }
    
    //关闭数据库
    // $res->close();
    // $conn->close();
?>
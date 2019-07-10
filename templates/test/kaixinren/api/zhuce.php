<?php

    //2、接收用户名，查询数据库，判断用户名是否存在，返回一些信息给前端

    //连接数据库
    include 'conn.php';

    //接收用户名：isset()判断是否接收到值，接收到就用接收的数据，否则为空
    $name = isset($_POST['username']) ? $_POST['username'] : '';

    //查询数据
    $sql = "SELECT * FROM zhuce WHERE NAME='$name'";

    //执行
    $res = $conn->query($sql);


    //得到结果集的内容部分
    $arr = $res->fetch_all(MYSQLI_ASSOC);//获取所有查询到的记录内容

    // var_dump($res);


    $list = array(
        'data' => $arr,//查询到的一段数据
        'total' => $res->num_rows,
       
    );

    echo json_encode($list,JSON_UNESCAPED_UNICODE);




    //结果集的num_rows属性，如果大于0代表查到了数据，用户名存在
    // if($res->num_rows) {
    //     //存在
    //     echo 'no';
    // }else{
    //     //不存在
    //     echo 'yes';
    // }

    //关闭结果集和数据库，避免资源浪费
    // $res->close();
    // $con->close();

?>
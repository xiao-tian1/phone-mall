<?php

    //2.接收用户名，查询数据库，判断用户名和密码是否存在，返回一些信息给前端

    //连接数据库
    include 'conn.php';

    //连接用户名：isset()判断是否接收到值，接收到就用接收的数据，否则为空
    $name = isset($_POST['username']) ? $_POST ['username'] : '';
    $psw = isset($_POST['psw']) ? $_POST ['psw'] : '';

    //查询数据库
    $sql = "SELECT * FROM zhuce WHERE NAME='$name' AND PSW='$psw'";

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
    


?>
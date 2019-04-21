<?php
    /*	
	 	需求：查询数据库数据，做成指定字符串格式传给前端
	 		* 查询第几页往后多少条
	 		* limit index,num;
	 		* (page-1)*num=index
	 		
	 */

     //连接数据库
     include 'conn.php';

     //接收前端的数据
     $page = isset($_POST['page']) ? $_POST['page'] : '';
     $num = isset($_POST['num']) ? $_POST['num'] : '';

    //  echo $page,$num;

    //写sql语句
    $index = ($page - 1) * $num;
    $sql = "SELECT * FROM shop LIMIT $index,$num";

    //执行sql语句
    $res = $conn->query($sql);

    //得到结果集的内容部分
    $arr = $res->fetch_all(MYSQLI_ASSOC);//获取所有查询到的记录内容

    // var_dump($res);

    //写sql语句：查询整个表
    $sql2 = "SELECT * FROM shop";

    //执行
    $res2 = $conn ->query($sql2);
    // var_dump($res2);

    //把查到的一段数据转成字符串
//	echo json_encode($arr,JSON_UNESCAPED_UNICODE);

    $list = array(
        'data' => $arr,//查询到的一段数据
        'total' => $res2->num_rows,//总条数
        'page' => $page,
        'num' => $num
    );

    echo json_encode($list,JSON_UNESCAPED_UNICODE);

?>

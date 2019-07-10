<?php
/*
    点击加入购物车，先查询订单表，然后更新订单表
        get:
            gid:商品id
            num：商品数量
        返回：
            订单表的所有数量
 */

    //加入购物车，把数据写入订单表
    include 'conn.php';

    $num=isset($_GET['amount']) ? $_GET['amount'] : '';
    $gid=isset($_GET['id']) ? $_GET['id'] : '';

    //查询订单表是否有该gid商品
    $sql="SELECT amount FROM car WHERE id='$gid'";
    $res=$conn->query($sql);
    $res2 = null;

    if($res->num_rows>0){
        $data = $res->fetch_all(MYSQLI_ASSOC);
        $gnum = $data[0]['amount'];
        $num = $num + $gnum;
        $sql2="UPDATE car SET amount='$num' WHERE id='$gid'";
        $res2=$conn->query($sql2);
    }else{
        $sql3="SELECT * FROM  shop WHERE id='$gid'";
        $res3=$conn->query($sql3);
        if($res3->num_rows>0){
            $data3=$res3->fetch_all(MYSQLI_ASSOC);
            $gname = $data3[0]['name'];
            $gprice = $data3[0]['price'];
            $sql4="INSERT INTO car(id,name,price,amount) VALUES ('$gid','$gname','$gprice','$num')";
            $res2=$conn->query($sql4);
        }
    }
    if($res2){
        echo 1;
    }else{
        echo 0;
    }
    

?>
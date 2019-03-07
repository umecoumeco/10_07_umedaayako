<?php
include('functions.php');

// 入力チェック
if (
    !isset($_POST['service_name']) || $_POST['service_name']=='' 
) {
    exit('ParamError');
}

//DB接続
$pdo = db_conn();

$sql ='SELECT * FROM company_master WHERE service_name LIKE (:like_service_name)';

//POSTデータ取得
$service_name = $_POST['service_name'];
$like_service_name = "%".$service_name."%";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':like_service_name', $like_service_name, PDO::PARAM_STR); 
$status = $stmt->execute();

//データ表示
if ($status==false) {
    errorMsg($stmt);
} else {
    $res = [];
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $res[] = $result; //配列に入れる
    }

    echo json_encode($res); //json形式にして出力
    
}












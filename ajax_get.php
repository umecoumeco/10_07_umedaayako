<?php
include('functions.php');

//POSTデータの受け渡し
//入力チェック(受信確認処理追加)
// if (
//     !isset($_POST['service_name']) || $_POST['service_name']==''
// ) {
//     exit('ParamError');
// }

// //POSTデータ取得
// $service_name = $_POST['service_name'];

//DB接続
$pdo = db_conn();

//データ表示SQL作成
$sql = 'SELECT * FROM reviews_table';
// $sql = 'SELECT * FROM reviews_table WHERE service_name = (:service_name)';

// $service_name = $_POST['service_name'];

$stmt = $pdo->prepare($sql);
// $stmt->bindValue(':like_service_name', $service_name, PDO::PARAM_STR); 
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
?>


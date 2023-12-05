<?php
//Kiem soat: Khai bao Cong ty dich vu Bao ve
session_start();
if(!isset($_SESSION['isLogined'])){ //Neu chua co the
    header("Location:login.php"); //Quay ra khai bao
    exit(1);
}
?>
<?php
//B1. ket noi DB Server
try{
    $conn = new PDO("mysql:host=localhost;dbname=project02", "root", "abc");
    //B2. thuc thi truy van
    if(isset($_GET['id'])){
        $id = $_GET['id'];
    }
    $sql = "DELETE FROM users WHERE id = '$id'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    //B3. xu ly truy van
    if($stmt->rowCount() > 0){
        header("Location: user_management.php");
    }
}catch(PDOException $e){
    echo $e->getMessage();
}
?>
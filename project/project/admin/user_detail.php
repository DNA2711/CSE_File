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
    $sql = "SELECT * FROM users WHERE id = '$id'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    //B3. xu ly truy van
    $user = $stmt->fetch();
}catch(PDOException $e){
    echo $e->getMessage();
}
?>
<?php
include "../layout/header.php";
?>
    <!--    Start main -->
    <main class="bg-warning mt-2">
        <div class="container">
            <h3 class="text-center">User Detail</h3>
            <div class="row">
                <div class="col-md-4">User ID</div>
                <div class="col-md-8"><?= $user['id']; ?></div>
            </div>
            <div class="row">
                <div class="col-md-4">Username</div>
                <div class="col-md-8"><?= $user['username']; ?></div>
            </div>
            <div class="row">
                <div class="col-md-4">Email</div>
                <div class="col-md-8"><?= $user['email']; ?></div>
            </div>
            <div class="row">
                <div class="col-md-4">Password</div>
                <div class="col-md-8"><?= $user['pass']; ?></div>
            </div>
            <div class="row">
<!--                <div class="col-md-4">User ID</div>-->
                <div class="col-md-8">
                    <a href="user_management.php" class="btn btn-success">Back</a>
                </div>
            </div>
        </div>

    </main>
    <!--    End main -->
<?php
include "../layout/footer.php";
?>
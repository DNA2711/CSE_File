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
    $sql = "SELECT * FROM users ORDER BY id DESC LIMIT 10";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    //B3. xu ly truy van
    $users = $stmt->fetchAll();
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
            <div class="row">
                <h3 class="text-center">User Management</h3>
                <a href="" class="btn btn-success mb-3" style="width:15%"><i class="bi bi-person-add"></i> Add New User</a>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">UserID</th>
                        <th scope="col">Username</th>
                        <th scope="col">Email</th>
                        <th scope="col" colspan="3" class="text-center">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                        <?php foreach($users as $user):  ?>
                            <tr>
                                <th scope="row"><?= $user['id']; ?></th>
                                <td><?= $user['username']; ?></td>
                                <td><?= $user['email']; ?></td>
                                <td>
                                    <a href="user_detail.php?id=<?= $user['id']; ?>"><i class="bi bi-eye"></i></a>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#A<?= $user['id']; ?>">
                                        <i class="bi bi-trash"></i>
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="A<?= $user['id']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Confirm Delete the User</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    Are you sure delete the user with id: <?= $user['id']; ?>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                    <a href="user_delete.php?id=<?= $user['id']; ?>" class="btn btn-primary">Yes</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </td>
                                <td>
                                    <a href=""><i class="bi bi-pencil"></i></a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>

    </main>
    <!--    End main -->
<?php
include "../layout/footer.php";
?>
<?php
    require 'db.php';

    session_start();
    // if ($_SESSION['loggedIn'] == 1) {
    //     header('Location: test.php');
    //     exit;
    // }

    $conn = createConnection();

    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM `teachers` WHERE `teacherName` = '$username' AND `teacherPassword` = '$password'";
    $result = mysqli_query($conn, $sql);
    $rows = mysqli_num_rows($result);
    if ($rows == 1) {
        while($data = mysqli_fetch_array($result)) {
            $_SESSION['teacherBranch'] = $data['teacherBranch'];
        }
        $_SESSION['loggedIn'] = 1;
        echo "Success"; 
    } else {
        echo "";
    }

    closeConnection($conn);
?>

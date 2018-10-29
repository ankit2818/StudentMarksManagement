<?php

	require "db.php";

	extract($_POST);

	$conn = createConnection();

	if(isset($_POST['updatestudentName']) && isset($_POST['updatestudentEmail']) && isset($_POST['updatestudentSem'])) {
		$sql = 'UPDATE `students` SET `studentName` = "'.$_POST["updatestudentName"].'", `studentEmail` = "'.$_POST["updatestudentEmail"].'", `studentSem` = '.$_POST["updatestudentSem"].' WHERE `studentId` = '.$_POST["updatestudentId"];
		$result = mysqli_query($conn, $sql);
		// echo $conn->error;
		// echo $result;
		if($result) {
			exit(true);
		} else {
			exit(false);
		}
		closeConnection($conn);
	}

?>

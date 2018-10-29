<?php

	// session_start();
	// if(!isset($_SESSION['loggedIn'])) {
	// 	header('Location: index.php');
	// }

	require 'db.php';

	// $conn = createConnection();

	function getSemesters() {
		$conn = createConnection();
		$sem = "";
		$sql = "SELECT * FROM `sem`";
		$result = mysqli_query($conn, $sql);
		while($row = mysqli_fetch_array($result)) {
			$sem .= '<option value="'.$row["semId"].'">'.$row["semName"].'</option>';
		}
		return $sem;
	}
	$conn = createConnection();
	if(isset($_POST['semId'])) {
		$semId = $_POST['semId'];
		$subject = '<option value="">Select Subject</option>';
		$sql = "SELECT * FROM `subject` WHERE `subjectSem`=".$semId;
		$result = mysqli_query($conn, $sql);
		while($row = mysqli_fetch_array($result)) {
			$subject .= '<option value="'.$row["subjectId"].'">'.$row["subjectName"].'</option>';
		}
		echo $subject;
		// echo $semId;
	}

	// closeConnection($conn);

?>

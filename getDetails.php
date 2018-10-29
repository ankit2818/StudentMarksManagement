<?php

	session_start();

	require 'db.php';

	if(isset($_POST["studentId"]) && isset($_POST["studentId"]) != ""){
		$conn = createConnection();
		$studentId = $_POST["studentId"];
		$displayquery = "SELECT * FROM `students` WHERE `studentId`='$studentId'";
		if(!$result = mysqli_query($conn , $displayquery)){
			exit(mysqli_error());
		}
		$response = array();
		if(mysqli_num_rows($result)>0){
			// $conn = createConnection();
			while($row = mysqli_fetch_assoc($result)){
				$response = $row;

				$sql = "SELECT * FROM `marks` WHERE `studentId` = ".$_POST['studentId']." AND `subjectId` = ".$_SESSION['subject'];
				$marks = mysqli_query($conn, $sql);
				if(mysqli_num_rows($marks)>0){
					while($marksrow = mysqli_fetch_array($marks)) {
						$ia1Marks = (string)$marksrow['ia1Marks'];
						$ia2Marks = (string)$marksrow['ia2Marks'];
						$practicalMarks = (string)$marksrow['practicalMarks'];
						$semesterMarks = (string)$marksrow['semesterMarks'];
					}
					array_push($response, $ia1Marks, $ia2Marks, $practicalMarks, $semesterMarks);
				}

			}
		}
		else{
			$response["status"] = 200;
			$response["message"] = "Data Not Found!";
		}
		echo json_encode($response);
	}
	else{
		$response["status"] = 200;
		$response["message"] = "Invalid Request!";
	}
	closeConnection($conn);

?>

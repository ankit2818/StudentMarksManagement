<?php

	session_start();
	if(!isset($_SESSION['loggedIn'])) {
		header('Location: index.php');
		exit;
	}
	require 'db.php';
	$conn = createConnection();
	$data = "";
	// if($_POST['subject']!="" && $_POST['sem']!="") {
	if($_POST['subject']!="" && $_POST['sem']!="") {
		$subject = $_POST['subject'];
		$sem = $_POST['sem'];
		$_SESSION['subject'] = $subject;

		// Add new record Button
		

		$data .= '<div class="col-lg-10 col-md-12 col-sm-12">
		 <div class="d-flex justify-content-end">
		 	<button type="button" class="btn btn-info mb-4" data-toggle="modal" data-target="#myModal">Add New Record</button>		
		</div>
				<table class="table table-bordered table-striped text-center text-white border-white table-dark mt-5">
					<tr>
						<th>No.</th>
						<th>Name</th>
						<th>IA-1</th>
						<th>IA-2</th>
						<th>Practical/Viva</th>
						<th>Semester</th>
						<th>Edit</th>
					</tr>';
		$displayqueryStudent = "SELECT * FROM `students` WHERE `studentSem` = ".$_POST['sem']." AND `studentBranch` = ".$_SESSION['teacherBranch'];
		$resultStudent = mysqli_query($conn , $displayqueryStudent);

		// $displayqueryMarks = "SELECT * FROM `marks` WHERE `studentId` = ".$_POST['sem']." AND `studentBranch` = ".$_SESSION['teacherBranch'];
		// $resultMarks = mysqli_query($conn , $displayqueryStudent);

		if(mysqli_num_rows($resultStudent)>0){
			$number = 1;
			while($row = mysqli_fetch_array($resultStudent)){
				$sql = "SELECT * FROM `marks` WHERE `studentId` = ".$row['studentId']." AND `subjectId` = ".$_POST['subject'];
				$marks = mysqli_query($conn, $sql);
				if(mysqli_num_rows($marks)>0){
					while($marksrow = mysqli_fetch_array($marks)) {
						$ia1Marks = $marksrow['ia1Marks'];
						$ia2Marks = $marksrow['ia2Marks'];
						$practicalMarks = $marksrow['practicalMarks'];
						$semesterMarks = $marksrow['semesterMarks'];
					}
				}
				$data .= '<tr>
							<td>'.$number.'</td>
							<td>'.$row['studentName'].'</td>
							<td>'.$ia1Marks.'</td>
							<td>'.$ia2Marks.'</td>
							<td>'.$practicalMarks.'</td>
							<td>'.$semesterMarks.'</td>
							<td>
								<button class="btn btn-warning" onclick="getUserDetails('.$row['studentId'].')">Edit</button>
							</td>
						</tr>';
				$number++;
			}
			$data .= '</table></div>';
		}
		else{
			$data = "<p class='text-danger mt-5 h3 font-weight-bold'>No Data Found!!!</p>";
		}
		echo "$data";
	} else {
		echo "$data";
	}

?>

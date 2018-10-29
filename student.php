<?php

	session_start();

	if(!isset($_SESSION['loggedIn'])) {
		header('Location: index.php');
		exit;
	}
	require 'getOptions.php';
	$sem = getSemesters();

	// if(isset($_SESSION['branch']) && isset($_SESSION['sem'])) {
	// 	$branch = $_SESSION['branch'];
	// 	$msgBranch = $branch;
	// 	$sem = $_SESSION['sem'];
	// 	$msgSem = $sem;
	// } else {
	// 	$branch = "";
	// 	$msgBranch = "Select Branch";
	// 	$sem = "";
	// 	$msgSem = "Select Sem";
	// }()

?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./css/bootstrap/css/bootstrap.min.css">
	<script src="js/script.js" charset="utf-8"></script>
	<title>Student</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
	$(function() {
		verifyValues();
		getOptions();
	});
	</script>
</head>
<body class="bg-dark">

	<center>
		<div class="d-flex justify-content-end">
			<button type="submit" class="btn btn-warning btn-md mt-lg-2 mr-lg-2 mt-md-2 mr-md-2 mt-sm-2 mr-sm-2" onclick="logout()">Logout</button>		
		</div>

		<div class="form-group">
			<!-- <label for="sem" class="mt-3 h5">Select Sem</label> -->
			<select class="form-control text-center bg-light col-lg-2 col-md-5 col-sm-3" id="sem">
				<option value="">Select Semester</option>
				<?php echo $sem; ?>
			</select>
			<!-- <label for="branch" class="mt-5 h5">Select Branch</label> -->
			<select class="form-control mt-3 text-center bg-light col-lg-2 col-md-5 col-sm-3" id="subject">
				<option value="">Select Subject</option>
			</select>
		</div>
		<button type="submit" class="btn btn-info col-lg-1 col-md-3 col-sm-3" onclick="verifyValues()">View Data</button>
		
		<div class="mt-3" id="putData"><!-- Student data comes here --></div>

	</center>


	<!-- The Add new Record Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Add Details</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<!-- <label>Student ID:</label> -->
						<input type="text" name="" id="studentId" class="form-control" placeholder="Student ID">
					</div>
					<div class="form-group">
						<!-- <label>Full Name:</label> -->
						<input type="text" name="" id="studentName" class="form-control" placeholder="Full Name">
					</div>
					<div class="form-group">
						<!-- <label>Student Email:</label> -->
						<input type="email" name="" id="studentEmail" class="form-control" placeholder="Email ID">
					</div>
					<!-- <div class="form-group">
						<label>Branch:</label>
						<input type="text" name="" id="studentBranch" class="form-control" placeholder="Branch">
					</div> -->
					<div class="form-group">
						<!-- <label>Semester:</label> -->
						<input type="text" name="" id="studentSem" class="form-control" placeholder="Semester">
					</div>
					<!------------------------------ Marks Details ---------------------------->
					<div class="form-group">
						<h5 class="modal-title">Marks</sub></h5>
					</div>
					<div class="form-group">
						<!-- <label>IA1:</label> -->
						<input type="text" name="" id="ia1Marks" class="form-control" placeholder="IA1">
					</div>
					<div class="form-group">
						<!-- <label>IA2:</label> -->
						<input type="text" name="" id="ia2Marks" class="form-control" placeholder="IA2">
					</div>
					<div class="form-group">
						<!-- <label>PRACTICAL:</label> -->
						<input type="text" name="" id="practicalMarks" class="form-control" placeholder="Practical / Viva">
					</div>
					<div class="form-group">
						<!-- <label>SEMESTER:</label> -->
						<input type="text" name="" id="semesterMarks" class="form-control" placeholder="Semester">
					</div>		
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-success" data-dismiss="modal" onclick="addRecord()">Save</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

<!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

	<!-- The Edit Modal -->
	<div class="modal fade" id="updateUserModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Edit Details</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<!-- <label>Student ID:</label> -->
						<input type="text" name="" id="updatestudentId" class="form-control" placeholder="Student ID">
					</div>
					<div class="form-group">
						<!-- <label>Full Name:</label> -->
						<input type="text" name="" id="updatestudentName" class="form-control" placeholder="Full Name">
					</div>
					<div class="form-group">
						<!-- <label>Student Email:</label> -->
						<input type="email" name="" id="updatestudentEmail" class="form-control" placeholder="Email ID">
					</div>
					<!-- <div class="form-group">
						<label>Branch:</label>
						<input type="text" name="" id="updatestudentBranch" class="form-control" placeholder="Branch">
					</div> -->
					<div class="form-group">
						<!-- <label>Semester:</label> -->
						<input type="text" name="" id="updatestudentSem" class="form-control" placeholder="Semester">
					</div>
					<!------------------------------ Marks Details ---------------------------->
					<div class="form-group">
						<h5 class="modal-title">Marks</h5>
					</div>
					<div class="form-group">
						<!-- <label>IA1:</label> -->
						<input type="text" name="" id="updateia1Marks" class="form-control" placeholder="IA1 Marks">
					</div>
					<div class="form-group">
						<!-- <label>IA2:</label> -->
						<input type="text" name="" id="updateia2Marks" class="form-control" placeholder="IA2 Marks">
					</div>
					<div class="form-group">
						<!-- <label>PRACTICAL:</label> -->
						<input type="text" name="" id="updatepracticalMarks" class="form-control" placeholder="Practical / Viva Marks">
					</div>
					<div class="form-group">
						<!-- <label>SEMESTER:</label> -->
						<input type="text" name="" id="updatesemesterMarks" class="form-control" placeholder="Semester Marks">
					</div>		
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-success" data-dismiss="modal" onclick="updateUserDetails()">Update</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<input type="hidden" id="hiddenuserid">
				</div>
			</div>
		</div>
	</div>


</body>
</html>

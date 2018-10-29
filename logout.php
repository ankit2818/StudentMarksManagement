<?php

	session_start();

	unset($_SESSION['loggedIn']);
	unset($_SESSION['teacherBranch']);
	unset($_SESSION['subject']);
	// session_destroy();

?>

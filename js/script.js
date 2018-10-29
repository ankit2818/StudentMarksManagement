function checkData() {
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;

    if (username.length == 0 || password.length == 0) {
        swal("Invalid","Enter Username & Password!","error");
        if (username.length == 0) {
            document.getElementById('username').focus();
        } else {
            document.getElementById('password').focus();
        }
    } else {
        $.ajax({
    		url:"checkData.php",
    		type:"post",
    		data:{
    			username:username,password:password
    		},

    		success:function(data , status){
    			if(data == "Success") {
                    var name = username.charAt(0).toUpperCase() + username.substr(1);
                    var msg = "Welcome "+name;
                    swal("LogIn Successful",msg,"success");
                    setInterval(function() {
                        window.location.assign('student.php');
                    }, 700);
                } else {
                    swal("Invalid Data","No data found!","error");
                    document.getElementById("password").value = '';
                    document.getElementById('username').focus();
                    // document.getElementById('username').select();
                }
    		}
        });
    }
}

var count = -1;
var getSem = "";
var getSubject = "";
function verifyValues() {
    var sem = document.getElementById('sem').value;
    var subject = document.getElementById('subject').value;
    count+=1;
    // alert(subject+" "+year+" "+sem);
    if((subject == "" || sem == "") && count > 0) {
        swal("Invalid Option","First Select Options!","warning");
    } else if(count > 0 && (subject != "" || sem != "")) {
        getSem = sem;
        getSubject = subject;
        $.ajax({
            url: "getData.php",
            type: "post",
            data: {
                subject:subject, sem:sem
            },
            success:function(data, status) {
                if(data) {
                    document.getElementById('putData').innerHTML = data;
                } else {
                    swal("Error", String(data), "error");
                }
            }
        });
    }
}

function onRefresh(getSem, getSubject) {
    // var sem = document.getElementById('sem').value;
    // var subject = document.getElementById('subject').value;
    // count+=1;
    // alert(subject+" "+year+" "+sem);
    if(getSubject == "" || getSem == "") {
        swal("Invalid Option","First Select Options!","warning");
    } else if(getSubject != "" || getSem != "") {
        // getSem = sem;
        // getSubject = subject;
        $.ajax({
            url: "getData.php",
            type: "post",
            data: {
                subject:getSubject, sem:getSem
            },
            success:function(data, status) {
                if(data) {
                    document.getElementById('putData').innerHTML = data;
                } else {
                    swal("Error", String(data), "error");
                }
            }
        });
    }
}


function getOptions() {
    $('#sem').change(function() {
        var semId = this.value;
        $.ajax({
            url: "getOptions.php",
            type: "post",
            data: {
                semId:semId
            },

            success: function(data, status) {
                $('#subject').html(data);
                // alert(data);
            }
        });
    });
}

function addRecord() {
    var studentId = $("#studentId").val();
    var studentName = $("#studentName").val();
    var studentEmail = $("#studentEmail").val();
    var studentSem = $("#studentSem").val();
    var ia1Marks = $("#ia1Marks").val();
    var ia2Marks = $("#ia2Marks").val();
    var practicalMarks = $("#practicalMarks").val();
    var semesterMarks = $("#semesterMarks").val();
    $.post("addRecord.php", {
        studentId:studentId,
        studentName:studentName,
        studentEmail:studentEmail,
        studentSem:studentSem,
        ia1Marks:ia1Marks,
        ia2Marks:ia2Marks,
        practicalMarks:practicalMarks,
        semesterMarks:semesterMarks
    }, function(data, status) {
        swal("Successful", data, "success");
    });
}

function getUserDetails(studentId){
    $("#hiddenuserid").val(studentId);

    $.post("getDetails.php" , {
        studentId:studentId
    } , function(data , status){
        var student = JSON.parse(data);

        $("#updatestudentId").val(student.studentId);
        $("#updatestudentName").val(student.studentName);
        $("#updatestudentEmail").val(student.studentEmail);
        $("#updatestudentSem").val(student.studentSem);
        $("#updateia1Marks").val(student[0]);
        $("#updateia2Marks").val(student[1]);
        $("#updatepracticalMarks").val(student[2]);
        $("#updatesemesterMarks").val(student[3]);

    });

    $("#updateUserModal").modal("show");
    document.getElementById("updatestudentId").disabled = true;
}

function updateUserDetails() {
    
    var updatestudentId = $("#updatestudentId").val();
    var updatestudentName = $("#updatestudentName").val();
    var updatestudentEmail = $("#updatestudentEmail").val();
    var updatestudentSem = $("#updatestudentSem").val();
    var updateia1Marks = $("#updateia1Marks").val();
    var updateia2Marks = $("#updateia2Marks").val();
    var updatepracticalMarks = $("#updatepracticalMarks").val();
    var updatesemesterMarks = $("#updatesemesterMarks").val();

    $.post("update.php", {
        updatestudentId: updatestudentId,
        updatestudentName: updatestudentName,
        updatestudentEmail: updatestudentEmail,
        updatestudentSem: updatestudentSem,
        updateia1Marks: updateia1Marks,
        updateia2Marks: updateia2Marks,
        updatepracticalMarks: updatepracticalMarks,
        updatesemesterMarks: updatesemesterMarks
    }, function(data, status) {
        // alert(data);
        onRefresh(getSem, getSubject);
        if(data) {
            swal("SuccessFul", "Data Updated Successfully.", "success");
        } else {
            // document.getElementById('putData').innerHTML = data;
            swal("Unsuccessful", "Updating Data Failed", "warning");            
        }
    });

}




function logout() {
    $.ajax({
        url: 'logout.php',
        type: 'post',
        data: {},

        success: function(data, status) {
            swal("Logged Out","Logged out successfully!","success");
            setInterval(function() {
                window.location.assign('index.php');
            }, 1200);
        }
    });
}

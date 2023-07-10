<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
    require_once('dbconnect.php');
    $name = $_POST['name'];
	$description = $_POST['description'];
	$goals = $_POST['goals'];
	$time_line = $_POST['time_line'];
    $time_line2 = $_POST['time_line2'];
   
	$id_doctor=$_POST['id_doctor'];
    // $doctor_name=$_POST['doctor_name'];
    $student_name=$_POST['student_name'];
    $university_id=$_POST['university_id'];
    $std_name1=$_POST['std_name1'];
    $std_name2=$_POST['std_name2'];
    $university_id1=$_POST['university_id1'];
    $university_id2=$_POST['university_id2'];
    $std_name4=$_POST['std_name4'];
    $std_id4=$_POST['std_id4'];
    $week1=$_POST['week1'];
    $task1=$_POST['task1'];
    $week2=$_POST['week2'];
    $task2=$_POST['task2'];
    $week3=$_POST['week3'];
    $task3=$_POST['task3'];
    


    $sql="INSERT INTO `projects`(
     `name`, `description`, `goals`, `time_line`, `status`, `id_doctor`,
     `student_name`, `university_id`, `std_name1`, `std_name2`, `university_id1`,
      `university_id2`, `time_line2`, `std_name4`, `std_id4`,`week1`,`task1`,
      `week2`,`task2`,`week3`,`task3`)
       
        VALUES ('$name','$description','$goals','$time_line',
        'Pinding','$id_doctor','$student_name','$university_id','$std_name1',
        '$std_name2','$university_id1','$university_id2','$time_line2',
        '$std_name4','$std_id4','$week1','$task1','$week2','$task2','$week3','$task3')";

if(mysqli_query($con,$sql)){
    $id_projects=mysqli_insert_id($con);
    $sql2="UPDATE `users` SET `id_projects`='$id_projects'
    WHERE `university_id` = '$university_id'";
    mysqli_query($con,$sql2);
    echo json_encode(array('result'=>true));
}
else{
    echo json_encode(array('result'=>false));
}
mysqli_close($con);

}


?>

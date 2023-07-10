<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	$name=$_POST['name'];
	$university_id=$_POST['university_id'];
	require_once('dbconnect.php');
	$sql="SELECT * from `users` where `name`='$name' and
	`id_user_type`='2'";
	$r = mysqli_query($con,$sql);
	$result = array();
	while($row = mysqli_fetch_array($r)){
		array_push($result,array(
			"university_id"=>$row['university_id'],
		));
		$sql2="INSERT INTO `projects`(`id_doctor`)
		VALUES('$university_id')";
	}
	echo json_encode(array('Projects'=>$result));
	mysqli_close($con);
}
?>
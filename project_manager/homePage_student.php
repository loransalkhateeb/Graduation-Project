<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
    $university_id  = $_POST['university_id'];
	require_once('dbConnect.php');	
	$sql = "SELECT * FROM `users` where 
    `university_id` = '$university_id' and
     `id_user_type`='3'";
	$r = mysqli_query($con,$sql);
	$result = array();
	while($row = mysqli_fetch_array($r)){
		array_push($result,array(
			"university_id"=>$row['university_id'],
			"name"=>$row['name'],
		));
	}
	echo json_encode(array('users'=>$result));
	mysqli_close($con);
}
<?php
include('dbconnect.php');	

$sql="SELECT * FROM `users` WHERE `id_user_type`=3"; 
$res=$con->query($sql);
while($row=$res->fetch_assoc()){
    $data[]=$row;
}
echo json_encode($data) ;
?>
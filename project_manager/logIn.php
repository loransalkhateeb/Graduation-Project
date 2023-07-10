<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
    $university_id= $_POST['university_id'];
    $pass = $_POST['pass'];
    $sql = "SELECT * from `users` where `university_id` = '$university_id'
     and `pass` = '$pass';";
     require_once("dbConnect.php");
    $result = mysqli_query($con, $sql);
    if(mysqli_num_rows($result)>0){
        $row = mysqli_fetch_array($result);
        echo json_encode(array('result'=>true, 
                            'university_id'=> $row['university_id'],
                            'pass'=> $row['pass'],
                            'id_user_type'=> $row['id_user_type'],
                            // 'name'=> $row['name'],
                        
                            // 'id_projects'=> $row['id_projects'],
                        )
                    );
    }else{
        echo json_encode(array('result'=>false, 'msg'=> 'id_university or password incorect'));
    }
    mysqli_close($con);
}
?>



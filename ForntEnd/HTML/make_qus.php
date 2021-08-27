<?php                   //question Entering script or enter a single question at a time
                        // enter multiple question at a time using loop                     
session_start();
require_once "config.php";
if(isset($_POST['qs']))
{
    $e_id=$_SESSION['exam_id'];
    $uid=$_SESSION['u_id'];
   
    
    $qs=$_POST['qs'];
    
    $q="INSERT INTO `qs` (`unique_id`, `question`, `e_id`) VALUES 
    ('$uid', '$qs', '$e_id')";

    $que=mysqli_query($con,$q);
    if($que)
    {
        echo "question enterd succesfull";
    }
    else
    {
        echo "u dumb bitch";
    }
 

    
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question make</title>

</head>
<body>
    <h1 style="text-align: center;">Make Question bitch</h1>
    <h3><a style="text-align: center; color: red;" href="profile.php">GO TO PROFILE</a></h3>

    <form action="" method="POST">
        
    <input type="text" name="qs" placeholder="Type ur question Here mother fucker">
    
    <button type="submit">submit</button>    
    </form>
     
</body>
</html>
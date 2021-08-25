<?php
session_start();
require_once "dept_config.php";
$uid=$_SESSION['u_id'];
if(isset($_POST['e_name']))
{
$exmname=$_POST['e_name'];
$sem=$_POST['sem'];
$course=$_POST['course'];
$fullmark=$_POST['f_mark'];
$passmark=$_POST['p_mark'];
$exm_id=$_POST['e_id'];
$duration=$_POST['e_duration'];

$q="INSERT INTO `q_set` (`nos`, `unique_id`, `sem`, `course`, `e_name`, `f_mark`, `p_mark`, `e_duration`, `e_id`) VALUES 
(NULL, '$uid', '$sem', '$course', '$exmname', '$fullmark', '$passmark', '$duration', '$exm_id')"; //testing for Exam id

$qu=mysqli_query($d_con, $q);
    if($qu)
    {
        header("location: make_qus.php");//making questions
        $_SESSION['exam_id']=$exm_id;
        session_create_id();
    }
    else{
        echo "error";
    }
}   
    $d_con->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Set question</title>
</head>
<body>
    <h1 style="text-align: center;">Set Question paper bitch</h1>
    <br>
    <?php echo $_SESSION['username']; ?>
    <div>
        <form action="set.php" method="POST">
        <input type="text" name="e_name" placeholder="Enter Exam Name">
            <label for="semister">Which Semister</label>
            <select name="sem" id="semister">   
                <option value="1">1st Sem</option>    
                <option value="2">2nd Sem</option>    
                <option value="3">3rd Sem</option>    
                <option value="4">4th Sem</option>    
                <option value="5">5th Sem</option>    
                <option value="6">6ht Sem</option>    
            </select> 
            <label for="crs">Which department</label>
            <select name="course" id="crs">   
                <option value="BCA">BCA Honours</option>    
                <option value="BCS">BCS Honours</option>    
                <option value="PASS">Computer Scinece Pass</option>   
            </select> 
            <input type="number" name="f_mark" placeholder="Enter Full Marks">
            <input type="number" name="p_mark" placeholder="Enter Pass Marks">
            <input type="number" name="e_duration" placeholder="Total Exam Duration in minutes">
            <input type="text" name="e_id" placeholder="Enter Exam Id,Must be diffrent">
            <button type="submit">Submit</button>   
        </form>

    </div>
</body>
</html>
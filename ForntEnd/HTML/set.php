<?php          // examination details section, to create templet for the question,he we enter all the exam deatils, and after that we enter questions
session_start();
require_once "config.php";
$uid=$_SESSION['u_id'];

$t="SELECT * FROM `t_registered` WHERE `unique_id` = '$uid' ";
$qry=mysqli_query($con,$t);
$dpt=mysqli_fetch_assoc($qry);
if(isset($_POST['e_name']))
{

$exmname=$_POST['e_name'];
$sem=$_POST['sem'];
$course=$_POST['course'];
$fullmark=$_POST['f_mark'];
$passmark=$_POST['p_mark'];
$duration=$_POST['e_duration'];
$strg="EID-";
$crss=strtoupper($course);
$cse=strtoupper($sem);
$d=mt_rand(1,999999);
$i=str_pad($d, 6,0,STR_PAD_LEFT);
$exm_id= "$strg"."$crss"."$cse"."$i"; //random exam id generate

$q="INSERT INTO `q_set` (`nos`, `unique_id`, `sem`, `course`, `e_name`, `f_mark`, `p_mark`, `e_duration`, `e_id`) VALUES 
(NULL, '$uid', '$sem', '$course', '$exmname', '$fullmark', '$passmark', '$duration', '$exm_id')"; //testing for Exam id

$qu=mysqli_query($con, $q);
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
    $con->close();
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
                <option value="1st">1st Sem</option>    
                <option value="2nd">2nd Sem</option>    
                <option value="3rd">3rd Sem</option>    
                <option value="4th">4th Sem</option>    
                <option value="5th">5th Sem</option>    
                <option value="6th">6th Sem</option>    
            </select> 
            <Label>Your Course is:<p style="text-transform:uppercase; color:red; margin:auto; border:.5px solid hotpink 50%;"><?php echo $dpt['t_dept'];?></p></Label>
            <label for="crs">Which department</label>
            <select name="course" id="crs">   
                <option value="BCA">BCA Honours</option>    
                <option value="BCS">BCS Honours</option>    
                <option value="PASS">Computer Scinece Pass</option>   
            </select> 
            <input type="number" name="f_mark" placeholder="Enter Full Marks">
            <input type="number" name="p_mark" placeholder="Enter Pass Marks">
            <input type="number" name="e_duration" placeholder="Total Exam Duration in minutes">
            <button type="submit">Submit</button>   
        </form>

    </div>
</body>
</html>
//question Entering script
// enter multiple question at a time using loop   
//TODO specify no. of question to enter
//TODO MCQ type question makeing

<?php          
session_start();

require_once "config.php";
/*-----------PREPAREING THE QUERY FOR FAST INSERTION---------------*/
$q = "INSERT INTO `qs` (`unique_id`, `question`, `e_id`) VALUES 
        (?,?,?)";

$stmt= $con->prepare($q);

$stmt->bind_param("sss", $uid, $qs,$eid );

$eid = $_GET['exmid'];

$uid = $_SESSION['u_id'];

if (isset($_POST['sub'])) {

    $n = $_POST['n'];

    for ($i = 0; $i < $n; $i++) {

        $qs = $_POST[$i . "qs1"];
        // $q = "INSERT INTO `qs` (`unique_id`, `question`, `e_id`) VALUES 
        //('$uid', '$qs', '$eid')";
        $stmt->execute();
        //$que = mysqli_query($con, $q);
    }
    if ($stmt) {
        echo "question enterd succesfull";
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

    <h3><a style="text-align: center; color: red;" href="mcq_question.php?exmid=<?php echo $eid; ?>">ADD MCQ Question</a></h3> 

    <h3><a style="text-align: center; color: red;" href="view_papers.php">View all questions SET</a></h3>
    Enter No. of questions:
        <input type="number" id="tnum" name="tnum" placeholder="enter total number of questions" >
        <button type="submit" id="sub" >GO</button>
        
        <form action="" method="POST">
        <?php
        $n= 2;
        for ($i = 0; $i < $n; $i++) {
        ?>
            <input type="text" name="<?php echo $i . 'qs1'; ?>" placeholder="Type ur question Here mother fucker">
            <input type="hidden" name="n" value="<?php echo $n; ?>">
        <?php
        }
        ?>
        <input type="submit" name="sub" value="SAVE">
    </form>
    

</body>

</html>
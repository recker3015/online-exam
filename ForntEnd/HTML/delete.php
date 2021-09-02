<?php
session_start();
require_once "config.php";
$eid = $_SESSION['ueid'];

if(isset($_POST['sub']))
{   
    $del= $_GET['delete'];
    $dd="DELETE FROM `qs` WHERE `qs`.`nos` = '$del' ";
    $del_query=mysqli_query($con,$dd);

    header('Location:view_questions.php?examid='.urlencode($eid));
}
if(isset($_POST['no']))
{
    header('Location:view_questions.php?examid='.urlencode($eid));  
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <H1>DELETE QUESTION</H1>
    <P>ARE U SURE TO DELETE</P>
    <form action="" method="post">
        <button type="submit" name="sub"> YES </button>
        <button type="submit" name="no"> NO </button>

    </form>
</body>
</html>
<?php //Todo SEND NOTICE
        //TODO publish EXAM to students
        //TODO promote student system
session_start();
$pinflag = 0;
$name = 0;
if (isset($_SESSION['u_id'])) {
    $name = 1;
}
require_once "config.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="pro.css">
    <title>Document</title>
    <h1>Welcome</h1>
    <?php
    if ($name == 1) {
        echo $_SESSION['username'];
        // echo $_SESSION['u_id'];
        echo '<br>
        <a href="logout.php">logout Here</a>';
    } else {
        echo "noone logged in";
        echo '<br />
        <a href="login.php">login Here</a>';
    } ?>
    <div>
        <a href="set_paper.php">Set Question Paper</a>

        <a href="view_papers.php">View all Questions</a>
        
    </div>

</head>

<body>

</body>

</html>
<?php //currntly not requied ,, not using in anywhere
session_start();
require_once "config.php";
$uid=$_SESSION['u_id'];

$q="SELECT * FROM `qs` WHERE `unique_id` = '$uid' ";
$p = mysqli_query($con, $q);
if ($p) {
    $num = mysqli_num_rows($p) ;
    if ($num) {      
?>

<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Set question</title>
</head>
<body>
    <h1 style="text-align: center;">Check Answer bitch</h1>
    <h1 style="text-align: center;">Hello,<?php echo $_SESSION['username']; ?></h1>
    <div class="product">
    <?php while ($f = mysqli_fetch_assoc($p)) {
    
    ?>
<h3>Q.1-<?php echo $f['question']; ?></h3>
<h3> Ans: <?php echo $f['ans']; ?></h3>
<br>
<?php
}
} else {
echo "Nothing found";
}
}
?>
</body>
</html>
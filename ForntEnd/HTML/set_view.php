<?php //viewing a single exams all questions dynamically AND ans portion not needed
session_start();
require_once "config.php";
$eid = $_GET['examid'];



$q = "SELECT * FROM `qs` WHERE `e_id` = '$eid' ";
$p = mysqli_query($con, $q);


if ($p) {
    $num = mysqli_num_rows($p);
    if ($num) {
?>
        <!DOCTYPE html>
        <html lang="en">

        <head>

            <title>Set question</title>
        </head>

        <body>
            <h1 style="text-align: center;">question set of </h1>
            <h1 style="text-align: center;">Hello,<?php echo $_SESSION['username']; ?></h1>

            <div class="product">
            <h2><a style="color: red;" href="ques_view.php?exmid=<?php echo $eid;?>"> Add Question</a></h2>
                <?php
                $i=1;
                 while ($f = mysqli_fetch_assoc($p)) {
                     
                ?>
                    <h3> Q.<?php echo $i;?>- <?php echo $f['question'];?></h3>
                    <button >update</button>
                    <a href="update.php?num=<?php echo $f['nos']; ?>">UPADTE</a>
                    <a href="delete.php?delete=<?php echo $f['nos']; ?>">DELETE</a>
                    <?php
                    $_SESSION['ueid']=$eid;
                    session_create_id();
                    ?>
                    <button id="delete" >Delete</button>
                    <h3> Ans: <?php echo $f['ans']; ?></h3>
                    <br>
        <?php
            $i++;    
            }
            } else {
                echo "Nothing found";
                ?>
            <h2><a style="color: red;" href="ques_view.php?exmid=<?php echo $eid;?>"> Add Question</a></h2>
            <?php
            }
        }
        ?>
        <script>
          
        </script>
        </body>

        </html>
<?php //viewing all questions of a paaper dynamically AND ans portion not needed
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
                <h2><a style="color: red;" href="make_question.php?exmid=<?php echo $eid; ?>"> Add Question</a></h2>
                <?php
                $i = 1;
                while ($f = mysqli_fetch_assoc($p)) {
                ?>
                    
                    <?php if($f['ca']!=null)
                    { ?>
                        <h3> Q.<?php echo $i; ?>- <?php echo $f['question']; ?></h3>
                        <label> <?php echo "A. ".$f['oa']; ?></label><br>
                        <label> <?php echo "B. ".$f['ob']; ?></label><br>
                        <label> <?php echo "C. ".$f['oc']; ?></label><br>
                        <label> <?php echo "D. ".$f['od']; ?></label><br>
                        <label> <?php echo "Correct Answer: ".$f['ca']; ?></label><br>
                    <?php }else{
                        ?>
                        <h3> Q.<?php echo $i; ?>- <?php echo $f['question']; ?></h3>
                        <?php
                    } 
                    
                    ?>

                    <button type="submit" onclick="location.href='update.php?num=<?php echo $f['nos']; ?>'"> UPDATE</button>
                    <?php
                    $_SESSION['ueid'] = $eid;
                    session_create_id();
                    ?>
                    <button type="submit" onclick="location.href='delete.php?delete=<?php echo $f['nos']; ?>'">DELETE</button>
                    
                    <br>
                <?php
                    $i++;
                }
            } else {
                echo "Nothing found";
                ?>
                <h2><a style="color: red;" href="make_question.php?exmid=<?php echo $eid; ?>"> Add Question</a></h2>
        <?php
            }
        }
        ?>
        <script>

        </script>
        </body>
        </html>
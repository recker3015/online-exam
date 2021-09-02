<?php //viewing a single exams all questions dynamically AND ans portion not needed
session_start();
require_once "config.php";
//udpate here
$num = $_GET['num'];


$q = "SELECT * FROM `qs` WHERE `nos` = '$num' ORDER BY `nos` ASC"; // to show what currnt question is...

$v = mysqli_query($con, $q);
if ($v) {
    $a = mysqli_fetch_assoc($v);
}
if (isset($_POST['sub'])) {

    if ($a['ca'] != null) {
        $oa = $_POST['oa'];
        $ob = $_POST['ob'];
        $oc = $_POST['oc'];
        $od = $_POST['od'];
        $ca = $_POST['ca'];
        $update = $_POST['qsn'];
        $up = "UPDATE `qs` SET `question`='$update',`oa`='$oa',`ob`='$ob',`oc`='$oc',`od`='$od',`ca`='$ca' WHERE `qs`.`nos` = '$num';";
        if($qq = mysqli_query($con, $up))
        {
            echo "updated";
            
        }
        else {
            echo "Error updating";
        }

    }else {
        $update = $_POST['qsn'];
        $upq = "UPDATE `qs` SET `question`='$update' WHERE `qs`.`nos` = '$num';";
        if($upt=mysqli_query($con,$upq))
        {
            echo "updated";
            
        }
        else {
            echo "Error updating";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>UPDATE</title>
</head>

<body>
    <h1 style="text-align: center;">question set of </h1>
    <h1 style="text-align: center;">Hello,<?php echo $_SESSION['username']; ?></h1>
    <div class="product">

        <form action="" method="POST">
            <input type="text" name="qsn" value="<?php echo $a['question']; ?>">

            <?php if ($a['ca'] != null)                    //updating question
            { ?>
                <legend>Input word for choice's</legend>
                <label for="oa">Option A</label><br>
                <input type="text" name="oa" value="<?php echo $a['oa']; ?>"><br>
                <label for="ob">Option B</label><br>
                <input type="text" name="ob" value="<?php echo $a['ob']; ?>"><br>
                <label for="oc">Option C</label><br>
                <input type="text" name="oc" value="<?php echo $a['oc']; ?>"><br>
                <label for="od">Option D</label><br>
                <input type="text" name="od" value="<?php echo $a['od']; ?>"><br>
                <label for="ca">Correct Answer was:<?php echo $a['ca']; ?></label><br>
                <span>Enter New correct answer:</span>
                <select name="ca" id="ca">
                    <option value="A">Option A</option>
                    <option value="B">Option B</option>
                    <option value="C">Option C</option>
                    <option value="D">Option D</option>
                </select>
            <?php } else {
            ?>

            <?php
            }
            ?>
            <button type="submit" name="sub">SAVE</button>
        </form>

        <?php
        if (isset($_POST['sub'])) {
            $q = "SELECT * FROM `qs` WHERE `nos` = '$num' ORDER BY `nos` ASC";       //after updated show questions

            $vquery = mysqli_query($con, $q);
            
            if ($vquery) {
                $i = 1;
                while ($f = mysqli_fetch_assoc($vquery)) {
        ?>
                    <?php if ($f['ca'] != null) { ?>
                        <h3> Q.<?php echo $i; ?>- <?php echo $f['question']; ?></h3>
                        <label> <?php echo "A. " . $f['oa']; ?></label><br>
                        <label> <?php echo "B. " . $f['ob']; ?></label><br>
                        <label> <?php echo "C. " . $f['oc']; ?></label><br>
                        <label> <?php echo "D. " . $f['od']; ?></label><br>
                        <label> <?php echo "Correct Answer: " . $f['ca']; ?></label><br>

                    <?php } else {
                    ?>
                        <h3> Q.<?php echo $i; ?>- <?php echo $f['question']; ?></h3>
                    <?php
                    }

                    ?>

                    <br>
        <?php
                }
            }
        }
        ?>

        </script>
</body>

</html>
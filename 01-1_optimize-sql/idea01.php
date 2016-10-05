<?php

// ####### Question 1: Optimize SQL for performance. ###########
$con=mysqli_connect("localhost:3306","root","12345","exp");
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$time_pre = microtime(true);
//queries
mysqli_query($con,"
    INSERT INTO stock_ledger (article_id, bin, quantity)
        SELECT article_id, (SELECT 'quality_control'), quantity
        FROM quality_control_articles
        WHERE qc_id = 720
        UNION ALL
        SELECT article_id, (SELECT 'main_bin'), quantity * -1
        FROM quality_control_articles
        WHERE qc_id = 720
");

$time_post = microtime(true);
$exec_time = $time_post - $time_pre;
echo "Execute time is : {$exec_time} seconds.<br>";
echo "The queries process is successful.";

// Close connection
mysqli_close($con);

?>

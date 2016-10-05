<?php

// ####### Question 1: Optimize SQL for performance. ###########
$con=mysqli_connect("localhost:3306","root","12345","exp");
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$time_pre = microtime(true);
//queries
mysqli_query($con,'CALL addStockLedger_by_qcID(720)');

$time_post = microtime(true);
$exec_time = $time_post - $time_pre;
echo "Execute time is : {$exec_time} seconds.<br>";
echo "The queries process is successful.";

// Close connection
mysqli_close($con);

?>

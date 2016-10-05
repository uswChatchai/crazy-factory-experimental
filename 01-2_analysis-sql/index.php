<?php

// ####### Question 1: Optimize SQL for performance. ###########
$con=mysqli_connect("localhost:3306","root","12345","exp");
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con, 'SELECT order_id, COUNT(*) AS number_of_lines FROM orders LEFT JOIN order_lines USING (order_id) WHERE !checked GROUP BY order_id');

while ( $row = mysqli_fetch_array($result) )
{
    mysqli_query($con,
        'UPDATE orders SET checked=1, is_empty='
            .($row['number_of_lines'] != 0 ? 1 : 0)
            .' WHERE order_id = "'.addslashes($row['order_id']).'"');
    if($row['number_of_lines'] != 0)
        echo 'sales@example.com<br>' ,
             'Emptyorderfound<br>' ,
             'OrderID'.$row['order_id'].'hasnolines!<br><hr>';
}


$time_post = microtime(true);

echo "The queries process is successful.";

// Close connection
mysqli_close($con);

?>

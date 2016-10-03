<?php

// ####### Question 1: Optimize SQL for performance. ###########
$con=mysqli_connect("localhost:3306","root","12345","exp");
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

//queries
$result = mysqli_query($con,'SELECT article_id, quantity FROM quality_control_articles WHERE qc_id = 720');

while ( $row = mysqli_fetch_array($result) ) {
  mysqli_query($con,'
    INSERT INTO stock_ledger SET
    article_id = "' . addslashes($row['article_id']) . '",
    bin = "quality_control",
    quantity = "' . addslashes($row['quantity']) . '"
  ');
  mysqli_query($con,'
    INSERT INTO stock_ledger SET
    article_id="' . addslashes($row['article_id']) . '",
    bin = "main_bin",
    quantity = "' . addslashes(-$row['quantity']) . '"
  ');
}
echo "The queries process is successful.";

// Close connection
mysqli_close($con);

?>

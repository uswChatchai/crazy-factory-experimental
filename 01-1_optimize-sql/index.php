<?php

// ####### Question 1: Optimize SQL for performance. ###########
$con=mysqli_connect("localhost","my_user","my_password","my_db");
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

//queries
$result = mysql_query('SELECT article_id, quantity FROM quality_control_articles WHERE qc_id=720');

    while ( $row =  mysql_fetch_array ( $result )) {
        mysql_query('
            INSERT INTO stock_ledger SET article_id="' . addslashes($row['article_id']) . '"
            bin="quality_control",
            quantity = "' . addslashes($row['quantity']) . '"
        ');
        mysql_query('
            INSERT INTO stock_ledger SET
            article_id="' . addslashes($row['article_id']) . '"  bin="main_bin",
            quantity = "' . addslashes($row['quantity']) . '"
        ');
}

//If have data print out the result
if ($result) {
    // Fetch one and one row
    while ($row=mysqli_fetch_row($result)) {
        printf ("%s (%s)\n",$row[0],$row[1]);
    }
    // Free result set
    mysqli_free_result($result);
}

// Close connection
mysqli_close($con);

?>

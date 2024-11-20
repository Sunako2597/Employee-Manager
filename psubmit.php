<?php
require_once('process/dbh.php');

// Check if the required parameters are set
if(isset($_GET['pid'], $_GET['id'])) {
    $pid = $_GET['pid'];
    $id = $_GET['id'];
    $date = date('Y-m-d');
    $prjlink = $_POST["prjlink"]; // Use correct input name "prjlink"

    // Update the project record
    $sql = "UPDATE `project` SET `subdate`='$date', `status`='Submitted', `prjlink`='$prjlink' WHERE pid = '$pid'";
    $result = mysqli_query($conn, $sql);

    if($result) {
        // Redirect to empproject.php after successful update
        header("Location: empproject.php?id=$id");
        exit; // Ensure that no further code execution happens after redirection
    } else {
        // Handle SQL query error
        echo "Error: " . mysqli_error($conn);
    }
} else {
    // Handle case where pid or id is not set
    echo "Error: pid or id not set";
}
?>

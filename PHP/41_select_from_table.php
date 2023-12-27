<?php
$conn = mysqli_connect('localhost', "root", "", "db_vinay") or die("Cannot Connect to the database!");

$sql = "SELECT * FROM `feedback`";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo "<table border='1'>";
    echo "<tr>";
    echo "<th>Name</th>";
    echo "<th>Email</th>";
    echo "<th>Feedback</th>";
    echo "</tr>";
    while ($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['email'] . "</td>";
        echo "<td>" . $row['feedback'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No Record Found..\n";
}

?>
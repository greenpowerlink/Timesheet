<?php

 $dbUsername = "root";
$dbPassword = "TeckGlobal";
$dbName = "Teckglobal";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);
/**or die ('Cannot connect to db');

    $result = $conn->query("select id, name from table");

    echo "<html>";
    echo "<body>";
    echo "<select name='id'>";

    while ($row = $result->fetch_assoc()) {

                  unset($id, $name);
                  $id = $row['id'];
                  $name = $row['name'];
                  echo '<option value="'.$id.'">'.$name.'</option>';

}

    echo "</select>";
    echo "</body>";
    echo "</html>";**/
?>

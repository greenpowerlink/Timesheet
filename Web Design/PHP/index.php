<?php
   $dbhost = 'localhost:3000';
   $dbuser = 'root';
   $dbpass = '12345';
   
   $conn = mysql_connect($dbhost, $dbuser, $dbpass);
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }
   
   $sql = 'SELECT emp_id, first_name, last_name, emailAddress FROM employee';
   mysql_select_db('teckglobal');
   $retval = mysql_query( $sql, $conn );
   
   if(! $retval ) {
      die('Could not get data: ' . mysql_error());
   }
   
   while($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {
      echo "EMP ID :{$row['emp_id']}  <br> ".
         "First Name : {$row['first_name']} <br> ".
         "Last Name : {$row['last_name']} <br> ".
         "Email : {$row['emailAddress']} <br> ";
   }
   
   echo "Fetched data successfully\n";
   
   mysql_close($conn);
?>
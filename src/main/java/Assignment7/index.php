<?php 
//including the database connection file 
include_once("config.php"); 
//fetching data in descending order (lastest entry first) 
// mysqli_query() function performs a query against a database. 
// For successful SELECT, SHOW, DESCRIBE, or EXPLAIN queries it will return a mysqli_result 
object.  
// For other successful queries it will return TRUE. FALSE on failure 
$result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id DESC"); // using 
mysqli_query instead 
 
?> 
 
<html> 
<head>   
    <title>Homepage</title> 
</head> 
 
<body> 
    <a href="add.html">Add New Data</a><br/><br/> 
 
    <table width='80%' border=1> 
        <tr bgcolor='#CCCCCC'> 
            <td>Name</td> 
            <td>Age</td> 
            <td>Email</td> 
            <td>Update</td> 
        </tr> 
         
        <?php  
        while($res = mysqli_fetch_array($result)) 
        {          
            echo "<tr>"; 
            echo "<td>".$res['name']."</td>"; 
            echo "<td>".$res['age']."</td>"; 
            echo "<td>".$res['email']."</td>";   
            echo "<td> <a href=\"edit.php?id=$res[id]\"> Edit </a> | <a 
href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to 
delete?')\"> Delete </a></td>";        
        } 
        ?> 
    </table> 
</body> 
</html>
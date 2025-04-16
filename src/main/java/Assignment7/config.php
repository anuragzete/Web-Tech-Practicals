<?php 
 
/* 
CREATE TABLE `users` ( 
    `id` int(11) NOT NULL auto_increment, 
    `name` varchar(100) NOT NULL, 
    `age` int(3) NOT NULL, 
    `email` varchar(100) NOT NULL, 
    PRIMARY KEY  (`id`) 
); 
*/ 
 
$databaseHost = 'localhost'; 
$databaseName = 'asg7db'; 
$databaseUsername = 'root'; 
$databasePassword = 'Sudarshan'; 
 
/* 
mysqli_connect() function opens a new connection to the MySQL server. 
syntax : mysqli_connect(host, username, password, dbname, port, socket) 
Details :  
host -  Optional. Specifies a host name or an IP address 
username -  Optional. Specifies the MySQL username 
password - Optional. Specifies the MySQL password 
dbname -    Optional. Specifies the default database to be used 
port -  Optional. Specifies the port number to attempt to connect to the MySQL server 
socket -    Optional. Specifies the socket or named pipe to be used 
*/ 
 
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, 
$databaseName);  
//$mysqli is global connection object for current request 
?>
<?php 
	$server ='localhost';
	$username = 'root';
	$password = '';
	$database ='php_login_database';

	try {
		$conn= new PDO("mysql:host:host=$server;dbname=$database;",$username,$password); 
		
	} catch (PDOException $e) {
		die('Connected failed: '.$e->getMessage());
	}
 ?>
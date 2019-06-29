<?php 

	session_start();

	if (isset($_SESSION['user_id'])) {
		header('LOCATION: /phplogin.php');
	}

	require 'database.php'; 

	if (!empty($_POST['email']) && !empty($_POST['password'])) {
		$records = $conn->prepare ('SELECT id, email, password FROM users WHERE email=:email');
		$records -> bindParam(':email', $_POST['email']);
		$records -> execute();
		$results = $records-> fetch(PDO::FETCH_ASSOC);

		$message = '';

		if (count($results)>0 && password_verify($_POST['password'], $results['password'])) {
			$_SESSION['user_id'] = $results['id'];
			header('Location:/phplogin');
		} else {
			$message = "Sorry,  those credentials do not match";
		}
	}



 ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>LOGIN</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<?php  require 'partials/header.php' ?> 
	<h1>Login</h1>
<span>or <a href="signup.php">Signup</a></span>

<?php if (!empty($message)) : ?>
<p><?=  $message ?></p> 
<?php endif; ?>
 

<form action="login.php">
	<input type="text" name="email" placeholder="Enter your mail">
	<input type="password" name="password" placeholder="Enter your password">
	<input type="submit" value="Send">
</form>
</body>
</html>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	


	$method = $_SERVER['REQUEST_METHOD'];
	switch($method){
		case 'GET':
			echo '<p>Hello ';
			echo $_SESSION['name']
			// echo ' from PHP on ' . date('Y-m-d h:i:s a') . '</p>';
			delete_session();
			break;
		case 'POST':
			echo '<p>Hello ';
			echo $_POST["name"];


			$_SESSION['name']  =  $_GET['name'];
			delete_session();

			// echo ' from PHP on ' . date('Y-m-d h:i:s a') . '</p>';
			break;
	}


$background_color = '#CCDDEE';

echo "<body style='background-color:$background_color'>";


	function delete_session(){
		echo "<button>Delete Session</button>";
	}


?>

</body>

</html>
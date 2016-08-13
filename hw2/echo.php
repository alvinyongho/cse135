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
			echo $_GET["name"];
			echo ' from PHP on ' . date('Y-m-d h:i:s a') . '</p>';

			break;
		case 'POST':
			echo '<p>Hello ';
			echo $_POST["name"];
			echo ' from PHP on ' . date('Y-m-d h:i:s a') . '</p>';
			break;
	}


$background_color = '#CCDDEE';

echo "<body style='background-color:$background_color'>";


?>

</body>

</html>
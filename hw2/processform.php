<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	


	$method = $_SERVER['REQUEST_METHOD'];
	switch($method){
		case 'GET':
			echo 'GET';

			echo '<p>Hello $_GET['name'] from PHP on ' . date('Y-m-d h:i:s a') . '</p>';

			break;
		case 'POST':
			echo 'POST';

			echo '<p>Hello $_POST['name'] from PHP on ' . date('Y-m-d h:i:s a') . '</p>';
			break;
	}


$background_color = '#CCDDEE';

echo "<body style='background-color:$background_color'>";


?>

</body>

</html>
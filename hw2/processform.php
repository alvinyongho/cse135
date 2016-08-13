<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	echo '<p>Hello World from PHP on ' . date('Y-m-d h:i:s a') . '</p>';


	$method = $_SERVER['REQUEST_METHOD'];
	switch($method){
		case 'GET':
			echo 'GET';
			break;
		case 'POST':
			echo 'POST';
			break;
	}


$background_color = '#CCDDEE';

echo "<body style='background-color:$background_color'>";


?>

</body>

</html>
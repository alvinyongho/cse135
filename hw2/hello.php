<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	echo '<p>Hello World from PHP on ' . date('Y-m-d h:i:s a') . '</p>';

	function random_color() {
    return random_color_part() . random_color_part() . random_color_part();
}

echo random_color();

?>

</body>

</html>
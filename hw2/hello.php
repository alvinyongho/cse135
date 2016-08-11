<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body style="background-color: yellow;">
	
<?php
	echo '<p>Hello World from PHP on ' . date('Y-m-d h:i:s a') . '</p>';

	function random_color_part() {
    return str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT);
}

	function random_color() {
    return random_color_part() . random_color_part() . random_color_part();
}

echo random_color();

?>

</body>

</html>
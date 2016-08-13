<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	Session_start();
	Session_destroy();

	echo "session cleared!";
?>

</body>

</html>
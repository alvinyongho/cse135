<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	echo '<p>Hello World from PHP on ' . date('Y-m-d h:i:s a') . '</p>';


$background_color = '#CCDDEE';

echo "<body style='background-color:$background_color'>";


?>




<form id='myForm' name='main_form' method='POST' onsubmit='validate()' action ='processform.php'>

	Name: <input type="text" name="name" value="<?php echo $name;?>">
	<br/>
	Favorite Color: <input type="text" name="color" value="<?php echo $color;?>">


</form>



</body>

</html>
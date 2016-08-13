<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	// echo '<p>Hello World from PHP on ' . date('Y-m-d h:i:s a') . '</p>';


$background_color = '#CCDDEE';

echo "<body style='background-color:$background_color'>";


?>




<form id='myForm' name='main_form' method='POST' onsubmit='validate()' action ='processform.php'>

	<p>Name: <input type="text" name="name" value="<?php echo $name;?>"></p>
	<p>Favorite Color: <input type="text" name="color" value="<?php echo $color;?>"></p>


	<select name="ins_method">
		<option value="POST">POST</option>
		<option value="GET">GET</option>
	</select>

	<input type="submit" value="Submit">

</form>



</body>

</html>
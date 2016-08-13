<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>

<script src='form.js'    type='text/javascript'></script>
<?php
	// echo '<p>Hello World from PHP on ' . date('Y-m-d h:i:s a') . '</p>';

	session_start();

	$background_color = '#CCDDEE';

	echo "<body style='background-color:$background_color'>";


?>




<form id='myForm' name='main_form' method='POST' onsubmit='validate_session()' action ='echo'>

	<p>Name: <input type="text" name="name" value="<?php sessionpage2 $name;?>"></p>
	<!-- <p>Favorite Color: <input type="text" name="color" value="<?php echo $color;?>"></p> -->


<!-- 	<select name="ins_method">
		<option value="POST">POST</option>
		<option value="GET">GET</option>
	</select>
 -->
	<input type="submit" value="Submit">

</form>



</body>

</html>
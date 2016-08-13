<!DOCTYPE HTML>
<html lang="en-US">
<head>
</head>

<body>
	
<?php
	
	session_start();
	echo session_id();

	$method = $_SERVER['REQUEST_METHOD'];
	switch($method){
		case 'GET':
			// echo $_SESSION['name']
			// echo ' from PHP on ' . date('Y-m-d h:i:s a') . '</p>';
			// delete_session();

			if (isset($_SESSION['name']))
			{
    			echo '<p>Hello ';

    			echo $_SESSION['name'];
    			delete_session();
			} else {
				echo "Howdy stranger...tell me your name on page1!";
			}


			break;
		case 'POST':
			echo '<p>Hello ';
			echo $_POST["name"];

			echo "adding name to session";
			$_SESSION['name']  =  $_POST['name'];
			delete_session();

			// echo ' from PHP on ' . date('Y-m-d h:i:s a') . '</p>';
			break;
	}


$background_color = '#CCDDEE';

echo "<body style='background-color:$background_color'>";

	function delete_session(){
		echo "<form id='myClear' name='main_clear' method='POST' action ='cleared'>";
		echo "<input type='submit' value='Submit'>";
		echo "</form>";

	}

?>

</body>

</html>
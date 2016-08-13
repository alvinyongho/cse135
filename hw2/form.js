function validate(){
	console.log("VALIDATING");
	var name = document.forms["main_form"]["name"].value;
	var color = document.forms["main_form"]["color"].value;
	var ins_method = document.forms["main_form"]["ins_method"].value;

	console.log(name);
	console.log(color);
	console.log(ins_method);

	document.getElementById("myForm").method = ins_method;
	// console.log(document.forms["main_form"].attr("method"));


	// document.getElementById('color')
	// $("#myPost").attr("method", "get");
}


function validate_session(){

}

function clear_session(){
	
}
<?php  
	$conn = new mysqli("localhost", "root", "", "mysqljquery");
	$sql = "SELECT * FROM divisions";
	$data = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Division</title>
</head>
<body>
	<form action="">
		<br>
		<label for="">Divisions: </label>
		<select name="" id="divisions">
			<option value="">Select</option>
			<?php while($row = $data->fetch_assoc()){ ?>
			<option value="<?php echo $row['div_id']; ?>"><?php echo $row['div_name']; ?></option>
			<?php } ?>
		</select>
		<label for="">District: </label>
		<select name="" id="district">
			<option value="">Select</option>
		</select>
		<label for="">Town: </label>
		<select name="" id="towns">
			<option value="">Select</option>
		</select><br><br>
		<textarea name="" id="town_info" cols="100" rows="20"></textarea>
	</form>
	<script src="jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#divisions").change(function(){
				var divisions = $("#divisions").val();
				$.get('divisions.php', {div:divisions}, function(divi){
					$("#district").html(divi);
				});
			});
			$("#district").change(function(){
				var district = $("#district").val();
				$.get('district.php', {dis:district}, function(dist){
					$("#towns").html(dist);
				});
			});
			$("#towns").change(function(){
				var towns = $("#towns").val();
				$.get('towns.php', {town:towns}, function(tow){
					$("#town_info").html(tow);
				});
			});
		});
	</script>
</body>
</html>
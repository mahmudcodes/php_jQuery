<?php
if(isset($_GET['batch'])){
	$id = $_GET['batch'];
} 
$conn = new mysqli("localhost", "root", "", "mysqljquery"); 
$sql = "SELECT * FROM course WHERE batch_id = '$id' ";
$course = $conn->query($sql);
?>
<?php while($row = $course->fetch_assoc() ){ ?>
	<option value="<?php echo $row['course_id']; ?>"><?php echo $row['course_name']; ?></option>
<?php } ?>
<?php
if(isset($_GET['div'])){
	$id = $_GET['div'];
}  
$conn = new mysqli("localhost", "root", "", "mysqljquery");
$sql = "SELECT * FROM districts WHERE div_id = '$id' ";
$data = $conn->query($sql);
?>
<option>Select</option>
<?php while($row = $data->fetch_assoc()){ ?>

	<option value="<?php echo $row['dis_id']; ?>"><?php echo $row['dis_name']; ?></option>
	<?php } ?>
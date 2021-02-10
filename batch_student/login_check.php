<?php
if(isset($_POST['email']) && isset($_POST['password'])){
	$email = $_POST['email'];
	$pass = $_POST['password'];
	$password = md5($pass);
} 
$conn = new mysqli("localhost", "root", "", "mysqljquery"); 
$sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password' ";
$conn->query($sql);
if($conn->affected_rows > 0){ ?>
	<div class="alert alert-success">
	  <strong>Successfully!</strong> <?php echo $email ?> logeed in.
	</div>
<?php	}
else{ ?>
	<div class="alert alert-warning">
	  <strong>Warning!</strong> user name and password wrong.
	</div>
<?php } ?>
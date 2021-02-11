<?php
require_once("dbcontroller.php");

$db_handle = new DBController();

$query ="SELECT * FROM divition";

$results = $db_handle->runQuery($query);
?>
<html>
<head>
	<TITLE>Division District</TITLE>
	<head>
		<style>
			body{width:610px;font-family:calibri;margin: auto;}
			.frmDronpDown {border: 1px solid red;background-color:white;margin: 2px 0px;padding:40px;border-radius:4px;}
			.demoInputBox {padding: 10px;border: #bdbdbd 1px solid;border-radius: 4px;background-color: #2AB8FA;width: 50%;}
			.row{padding-bottom:15px;}  
		</style>
		<script src="jquery.min.js" type="text/javascript"></script>
		<script>
			
			function getDistrict(val)
			{
				$.ajax({
					type: "POST",
					url: "getDistrict.php",
					data:'divition_id='+val,
					success: function(data)
					{
						$("#district-list").html(data);
					}
				});
			}

		</script>
	</head>
	<body>
		<br><br>
		<div class="frmDronpDown">
		<div class="row">
				<label>Divition:</label><br/>
				<select name="divition" id="divition-list" class="demoInputBox" onChange="getDistrict(this.value);">
					<option value="">Select Divition</option>
					<?php
					foreach($results as $divition) 
					{
						?>
						<option value="<?php echo $divition["id"]; ?>"><?php echo $divition["name"]; ?></option>
						<?php
					}
					?>
			 	</select>
			</div>
			<div class="row">
				<label>District:</label><br/>
				<select name="district" id="district-list" class="demoInputBox">
					<option value="">Select District</option>
				</select>
			</div>
		</div>
	</body>
	</html>
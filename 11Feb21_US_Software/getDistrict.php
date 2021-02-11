<?php
require_once ("dbcontroller.php");
$db_handle = new DBController();
if (! empty($_POST["divition_id"])) 
{
    $query = "SELECT * FROM district WHERE divitionID = '" . $_POST["divition_id"] . "' order by name asc";
    $results = $db_handle->runQuery($query);
    ?>
<option value disabled selected>Select District</option>
<?php
    foreach ($results as $district) 
    {
        ?>
<option value="<?php echo $district["id"]; ?>"><?php echo $district["name"]; ?></option>
<?php
    }
}
?>
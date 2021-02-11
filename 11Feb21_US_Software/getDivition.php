<?php
require_once ("dbcontroller.php");
$db_handle = new DBController();
if (!empty($_POST["country_id"]))
{
    $query = "SELECT * FROM divition WHERE countryID = '" . $_POST["country_id"] . "'";
    $results = $db_handle->runQuery($query);
    ?>
<option value  selected>Select Divition</option>
<?php
    foreach ($results as $divition) 
    { 
        ?>
<option value="<?php echo $divition["id"]; ?>"><?php echo $divition["name"]; ?></option>
<?php
    }
}
?>
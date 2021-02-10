<?php
$conn = new mysqli("localhost", "root", "", "mysqljquery"); 
$sql = "SELECT * FROM batch";
$batch = $conn->query($sql);
?> 
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  <title>Information</title>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <h2 class="mt-5">Student Information</h2>
      </div> 
    </div>
    <div class="row">
      <div class="col-lg-12">        
        <form method="">
          <div class="form-row align-items-center">
            <div class="col-lg-2">
              <div class="form-group">
                <label for="inputState">Batch</label>
                <select id="batch" name="batch" class="form-control">
                  <option selected>Choose...</option>
                  <?php while($row = $batch->fetch_assoc() ){ ?>
                    <option value="<?php echo $row['batch_id']; ?>"><?php echo $row['batch_name']; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="col-lg-2">
              <div class="form-group">
                <label for="inputState">Course</label>
                <select id="course" class="form-control">
                  <option selected>Choose...</option>
                  
                </select>
              </div>
            </div>
            <input type="button" id="btns" class="btn btn-primary mt-3" value="Submit">
          </div>
        </form>
      </div>
    </div>
    <div class="row" id="student">

    </div>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="../jquery.min.js" ></script>
  
  
  <script>
    $(document).ready(function(){
      $("#batch").change(function() {
        var value = $("#batch").val();
        $.get('course.php', {batch:value}, function(data){
          $("#course").html(data);
        });
      });
      $("#btns").click(function() {
        var student = $("#course").val();
        $.get('student.php', {st:student}, function(students){
          $("#student").html(students);
        });
      });
    });
  </script>
</body>
</html>
<div class="col-lg-12">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Name</th>
              <th scope="col">Round</th>
              <th scope="col">Course</th>
            </tr>
          </thead>
          <tbody>
            <?php
            if(isset($_GET['st'])){
              $id = $_GET['st'];
            }
            $conn = new mysqli("localhost", "root", "", "mysqljquery");   
              $sql1 = "SELECT * FROM student WHERE course_id = '$id' ";
              $student = $conn->query($sql1);
              if($student){
              while($students = $student->fetch_assoc() ){
            ?>
            <tr>
              <td><?php echo $students['id']; ?></td>
              <td><?php echo $students['student_name']; ?></td>
              <td><?php echo $students['round']; ?></td>
              <td><?php echo $students['course']; ?></td>
            </tr>
            <?php } } else { ?>
              <td>No Data Available !!</td>
            <?php } ?>
          </tbody>
        </table>
      </div>
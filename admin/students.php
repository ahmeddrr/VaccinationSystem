<?php
include('admin_includes/header.inc.php');
$showstudents_sql = "SELECT * FROM `users` JOIN `cities` ON users.city_id = cities.id WHERE users.type = 'student'";
$rows = mysqli_query($conn, $showstudents_sql);
?>

<main id="main" class="main">

  <div class="pagetitle">
    <h1>List of Students</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item active">Students</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">
            <h5 class="card-title">All Students</h5>

            <!-- Table with stripped rows -->
            <table class="table datatable">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Student ID</th>
                  <th scope="col">Student Name</th>
                  <th scope="col">Age</th>
                  <th scope="col">Email</th>
                  <th scope="col">City</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $srno = 1;
                foreach ($rows as $student) {
                  ?>
                  <tr>
                    <th scope="row">
                      <?php echo $srno; ?>
                    </th>
                    <td>
                      <?php echo $student['id']; ?>
                    </td>
                    <td>
                      <?php echo $student['name']; ?>
                    </td>
                    <td>
                      <?php echo $student['age']; ?>
                    </td>
                    <td>
                      <?php echo $student['email']; ?>
                    </td>
                    <td>
                      <?php echo $student['city_name']; ?>
                    </td>
                  </tr>
                  <?php
                  $srno++;
                }
                ?>
              </tbody>
            </table>
            <!-- End Table with stripped rows -->

          </div>
        </div>

      </div>
    </div>
  </section>

</main><!-- End #main -->
<?php
include('admin_includes/footer.inc.php');
?>
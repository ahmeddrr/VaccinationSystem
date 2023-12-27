<?php
include('admin_includes/header.inc.php');
$showhospitals_sql = "SELECT * FROM `hospital_info`";
$rows = mysqli_query($conn, $showhospitals_sql);

$countHospital = "SELECT COUNT(`hosp_ID`) from `hospital_info`";
$runQuery = mysqli_query($conn, $countHospital);
foreach ($runQuery as $res) {
  $result = $res['COUNT(`hosp_ID`)'];
}
?>
<style>
  .table {
    font-size: 0.9rem !important;
  }

  .table thead tr th {
    font-size: 0.8rem !important;
  }

  .table tbody tr td a {
    display: block;
    text-decoration: none;
    color: #333;
  }
</style>

<main id="main" class="main">

  <div class="pagetitle">
    <h1>List of Hospitals</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item active">Hospitals</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">
            <h5 class="card-title">All Hospitals | <span>Registered Hospitals :
                <?php echo $result; ?>
              </span></h5>

            <!-- Table with stripped rows -->
            <table class="table datatable">
              <thead>
                <tr>
                  <!-- <th scope="col">#</th> -->
                  <th scope="col">Hospital Code</th>
                  <th scope="col">Hospital</th>
                  <th scope="col">Address</th>
                  <th scope="col">Contact</th>
                  <th scope="col">Username</th>
                  <th scope="col">Password</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $srno = 1;
                foreach ($rows as $hospitals) {
                  ?>
                  <tr>

                    <td>
                      <a href="">
                        <?php echo $hospitals['hosp_ID']; ?>
                      </a>
                    </td>
                    <td>
                      <a href="">
                        <?php echo $hospitals['hospital_name']; ?>
                      </a>
                    </td>
                    <td>
                      <a href="">
                        <?php echo $hospitals['hospital_address']; ?>
                      </a>
                    </td>
                    <td>
                      <a href="">
                        <?php echo $hospitals['hospital_contact']; ?>
                      </a>
                    </td>
                    <td>
                      <a href="">
                        <?php echo $hospitals['hospital_username']; ?>
                      </a>
                    </td>
                    <td>
                      <a href="">
                        <?php echo $hospitals['hospital_password']; ?>
                      </a>
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
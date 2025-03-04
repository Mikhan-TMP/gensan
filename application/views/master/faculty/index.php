<style>
.bin-button {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 35px;
  height: 35px;
  border-radius: 10px;
  background-color: rgb(255, 95, 95);
  cursor: pointer;
  /* border: 2px solid rgb(255, 201, 201); */
  transition-duration: 0.3s;
  position: relative;
  overflow: hidden;
}
.bin-bottom {
  width: 13px;
  z-index: 2;
}
.bin-top {
  width: 15px;
  transform-origin: right;
  transition-duration: 0.3s;
  z-index: 2;
}
.bin-button:hover .bin-top {
  transform: rotate(45deg);
}
.bin-button:hover {
  background-color: rgb(255, 0, 0);
}
.bin-button:active {
  transform: scale(0.9);
}
.garbage {
  position: absolute;
  width: 10px;
  height: auto;
  z-index: 1;
  opacity: 0;
  transition: all 0.3s;
}
.bin-button:hover .garbage {
  animation: throw 0.4s linear;
}
@keyframes throw {
  from {
    transform: translate(-400%, -700%);
    opacity: 0;
  }
  to {
    transform: translate(0%, 0%);
    opacity: 1;
  }
}

/* edit btn */
.editBtn {
  width: 35px;
  height: 35px;
  border-radius: 10px;
  border: none;
  background-color: rgb(93, 93, 116);
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.123);
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: all 0.3s;
}
.editBtn::before {
  content: "";
  width: 200%;
  height: 200%;
  background-color: rgb(102, 102, 141);
  position: absolute;
  z-index: 1;
  transform: scale(0);
  transition: all 0.3s;
  border-radius: 50%;
  filter: blur(10px);
}
.editBtn:hover::before {
  transform: scale(1);
}
.editBtn:hover {
  box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.336);
}

.editBtn svg {
  height: 17px;
  fill: white;
  z-index: 3;
  transition: all 0.2s;
  transform-origin: bottom;
}
.editBtn:hover svg {
  transform: rotate(-15deg) translateX(5px);
}
.editBtn::after {
  content: "";
  width: 15px;
  height: 0.5px;
  position: absolute;
  bottom: 8px;
  left: -5px;
  background-color: white;
  border-radius: 2px;
  z-index: 2;
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.5s ease-out;
}
.editBtn:hover::after {
  transform: scaleX(1);
  left: 0px;
  transform-origin: right;
}

</style>
<style>
  .eyeBtn {
    width: 35px;
    height: 35px;
    border-radius: 10px;
    background-color: rgb(50, 50, 50);
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.3s;
    position: relative;
  }
  .eyeBtn:hover {
    background-color: rgb(80, 80, 80);
  }
  .eye-icon {
    height: 20px;
    fill: white;
    transition: all 0.3s;
  }
  .eyeBtn:hover .eye-icon {
    transform: scale(1.1);
  }
</style>
<!-- Begin Page Content -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="row">
            <div class="col-lg">
            <h1 class="h3 mb-4 text-gray-800">Faculty Information</h1>
              <!-- <a href="<?= base_url('admin') ?>" class="btn btn-md btn-info mb-2">Back</a> -->
            </div>
          </div>
          <div class="row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <div class="card border-0 bg-transparent">
                  <div class="card-body mb-0 ml-0 p-0">
                  <a href="<?= base_url('master/a_faculty'); ?>"
                    class="btn btn-icon-split mb-4 shadow-sm text-light" 
                    style="background: linear-gradient(180deg, #BE110E, #630908);">
                    <span class="icon text-white-600">
                      <i class="fas fa-plus-circle"></i>
                    </span>
                    <span class="text" style="color:#272727; color: white; font-weight: 500; text-transform: Uppercase;">Add Faculty</span>
                  </a>
                    <button type="button" class="btn btn-secondary btn-icon-split mb-4 shadow-sm" data-toggle="modal" data-target=".bd-example-modal-xl" style="margin-bottom: 20px;">
                          <span class="icon text-white-600">
                          <i class="fas fa-file-import"></i>
                          </span>
                          <span class="text">Excel Import</span>
                    </button>
                    <button id="ImportDatabase" type="button" class="btn btn-secondary btn-icon-split mb-4 shadow-sm">
                      <span class="icon text-white-600">
                        <i class="fas fa-database"></i>
                      </span>
                      <span class="text">Import Data</span>
                    </button>
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="card border-0 bg-transparent">
                  <div class="card-body mb-0 pb-0">
                  </div>
                </div>
              </div>
              <!-- Modal for Importing Faculty with Excel -->
              <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content" style="border-radius: 8px;">
                    
                    <!-- Modal Header -->
                    <div class="modal-header" style="background: linear-gradient(180deg, #BE110E, #630908); color: white;">
                      <h4 class="modal-title">Import New Faculty with Excel</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    
                    <!-- Modal Body -->
                    <div class="modal-body" style="background-color: #f8f9fa;">
                      <div class="container-fluid">
                        <!-- Information Section -->
                        <div class="alert alert-info" role="alert">
                          Please ensure your CSV file follows the structure below:
                        </div>
                        
                        <!-- CSV Example Table -->
                        <div class="table-responsive">
                          <table class="table table-bordered" style="background-color: white;">
                            <thead>
                              <tr>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Middle Name</th>
                                <th>Faculy ID</th>
                                <th>Department</th>
                                <th>RFID</th>
                                <th>QRCODE</th>
                                <th>Gender</th>

                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>John</td>
                                <td>Doe</td>
                                <td>M</td>
                                <td>001122</td>
                                <td>BS Computer Science</td>
                                <td>123456</td>
                                <td>512311</td>                             
                                <td>Male</td>

                              </tr>
                              <tr>
                                <td>Jane</td>
                                <td>Smith</td>
                                <td>A</td>
                                <td>789012</td>
                                <td>BS Computer Science</td>
                                <td>654321</td>
                                <td>123155</td>
                                <td>Female</td>
                                
                              </tr>
                            </tbody>
                          </table>
                        </div>
          
                        <!-- Form Section -->
                        <form method="post" action="<?php echo base_url();?>import/import_Faculty_File" enctype="multipart/form-data">
                          <div class="form-group">
                            <label for="uploadFile">Select Excel File (CSV format only)</label>
                            <input type="file" name="uploadFile" class="form-control-file" id="uploadFile" required accept=".csv" style=" font-size: 16px;">
                          </div>
                          
                          <!-- Submit Button -->
                          <div class="form-group">
                            <input type="submit" name="submit" value="Upload" class="btn btn-info btn-block" style="background: linear-gradient(180deg, #BE110E, #630908); font-size: 16px; padding: 10px;">
                          </div>
                        </form>
                      </div>
                    </div>
                    
                    <!-- Modal Footer -->
                    <div class="modal-footer" style="border-top: none;">
                      <button type="button" class="btn btn-danger" data-dismiss="modal" style="font-size: 14px;">Close</button>
                    </div>
                    
                  </div>
                </div>
              </div>





          </div>

          <!-- Data Table Faculty-->
          <div class="card shadow mb-4 m-auto" style="border-radius: 15px;">
            <div class="card-header py-3 d-flex" style="justify-content: space-between; border-top-left-radius: 15px; border-top-right-radius: 15px; background: linear-gradient(180deg, #BE110E, #630908);">  
              <h6 class="m-0 text-light" style="font-size:1.5rem; font-family: 'Inter', sans-serif;">Faculty Table</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table" id="dataTable" width="100%" cellspacing="0">
                  <thead style="color: #272727; font-weight: 500;">
                    <tr>
                      <th>#</th>
                      <th>Faculty ID</th>
                      <th>Name</th>
                      <th>College</th>
                      <!-- <th>PIN</th> -->
                      <th>RFID</th>
                      <th>QR</th>
                      <th>Gender</th>
                      <th>Status</th>

                      
                      
                      <!-- th>IMAGE</th>
                      <th>BUILDING</th -->              
                      <th>Actions</th>
                    </tr>
                  </thead>
                
                  <tbody style="color: #272727;">
                    <?php
                    $i = 1;
                    foreach ($faculty as $emp) :
                    ?>
                      
                      <tr>
                        <td class=" align-middle"><?= $i++; ?></td>
                        <!-- td class=" align-middle"><?= $emp['id']; ?></td -->
                        <td class=" align-middle"><?= $emp['srcode']; ?></td>
                        <td class=" align-middle"><?= $emp['last_name'].", ".$emp['first_name']." ".$emp['middle_name']; ?></td>
                        <!-- <td class=" align-middle"><?= $emp['college']; ?></td> -->
                        <td class=" align-middle"><?= $emp['course']; ?></td>
                        <td class=" align-middle"><span class="asterisk" data-value="<?= $emp['rfid']; ?>"><?= $emp['qrcode'] ? '********' : '-'; ?></span></td>
                        <td class=" align-middle"><span class="asterisk" data-value="<?= $emp['qrcode']; ?>"><?= $emp['rfid'] ? '********' : '-'; ?></span></td>
                        <td class="align-middle">
                          <?= $emp['gender'] === 'M' ? '<i class="fas fa-male text-danger" style="cursor: pointer;"> Male</i>' : ($emp['gender'] === 'F' ? '<i class="fas fa-female text-success" style="cursor: pointer;"> Female</i>' : '<i class="fas fa-genderless text-secondary" style="cursor: pointer;"> N/A</i>') ?>
                        </td>
                        <td class=" align-middle">
                          <?php if ($emp['status'] == '1') {
                            echo '<span class="badge badge-success" style="padding: 10px; width:70px; cursor: pointer">Active</span>';
                          } else {
                            echo '<span class="badge badge-danger" style="padding: 10px; width:70px; cursor: pointer">Inactive</span>';
                          } ?>
                        </td>
                        <!-- td class="text-center"><img src="<?= base_url('images/pp/') . $emp['image']; ?>" style="width: 55px; height:55px" class="img-rounded"></td>
                        <td class=" align-middle"><?= $emp['building']; ?></td -->
                        <!-- <td class=" align-middle"><?= $emp['pin']; ?></td> -->
                        <td class="text-center align-middle" style="display: flex; align-items: center; gap: 10px">
                          <!-- Reveal -->
                          <button class="eyeBtn" onclick="toggleVisibility(this)" <?php if (empty($emp['rfid']) && empty($emp['qrcode'])) : ?> disabled <?php endif; ?>>
                            <svg class="eye-icon" viewBox="0 0 24 24">
                              <path fill="white" d="M12 4.5C7.5 4.5 3.73 7.61 2 12c1.73 4.39 5.5 7.5 10 7.5s8.27-3.11 10-7.5c-1.73-4.39-5.5-7.5-10-7.5zm0 12c-2.5 0-4.5-2-4.5-4.5S9.5 7.5 12 7.5 16.5 9.5 16.5 12 14.5 16.5 12 16.5zm0-7.5c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
                            </svg>
                          </button>
                          <a class="editBtn" href="<?= base_url('master/e_faculty/') . $emp['id'] ?>" style="text-decoration: none" tooltip="Edit">
                            <!-- edit -->
                            <svg height="1em" viewBox="0 0 512 512">
                              <path
                                d="M410.3 231l11.3-11.3-33.9-33.9-62.1-62.1L291.7 89.8l-11.3 11.3-22.6 22.6L58.6 322.9c-10.4 10.4-18 23.3-22.2 37.4L1 480.7c-2.5 8.4-.2 17.5 6.1 23.7s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L387.7 253.7 410.3 231zM160 399.4l-9.1 22.7c-4 3.1-8.5 5.4-13.3 6.9L59.4 452l23-78.1c1.4-4.9 3.8-9.4 6.9-13.3l22.7-9.1v32c0 8.8 7.2 16 16 16h32zM362.7 18.7L348.3 33.2 325.7 55.8 314.3 67.1l33.9 33.9 62.1 62.1 33.9 33.9 11.3-11.3 22.6-22.6 14.5-14.5c25-25 25-65.5 0-90.5L453.3 18.7c-25-25-65.5-25-90.5 0zm-47.4 168l-144 144c-6.2 6.2-16.4 6.2-22.6 0s-6.2-16.4 0-22.6l144-144c6.2-6.2 16.4-6.2 22.6 0s6.2 16.4 0 22.6z"
                              ></path>
                            </svg>
                          </a>
                          <!-- delete -->
                          <a class="bin-button" href="javascript:void(0);" onclick="confirmDelete(<?= $emp['id'] ?>)" tooltip="Delete">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 39 7" class="bin-top">
                                <line stroke-width="4" stroke="white" y2="5" x2="39" y1="5"></line>
                                <line stroke-width="3" stroke="white" y2="1.5" x2="26.0357" y1="1.5" x1="12"></line>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 33 39" class="bin-bottom">
                                <mask fill="white" id="path-1-inside-1_8_19">
                                    <path d="M0 0H33V35C33 37.2091 31.2091 39 29 39H4C1.79086 39 0 37.2091 0 35V0Z"></path>
                                </mask>
                                <path mask="url(#path-1-inside-1_8_19)" fill="white" d="M0 0H33H0ZM37 35C37 39.4183 33.4183 43 29 43H4C-0.418278 43 -4 39.4183 -4 35H4H29H37ZM4 43C-0.418278 43 -4 39.4183 -4 35V0H4V35V43ZM37 0V35C37 39.4183 33.4183 43 29 43V35V0H37Z"></path>
                                <path stroke-width="4" stroke="white" d="M12 6L12 29"></path>
                                <path stroke-width="4" stroke="white" d="M21 6V29"></path>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 89 80" class="garbage">
                                <path fill="white" d="M20.5 10.5L37.5 15.5L42.5 11.5L51.5 12.5L68.75 0L72 11.5L79.5 12.5H88.5L87 22L68.75 31.5L75.5066 25L86 26L87 35.5L77.5 48L70.5 49.5L80 50L77.5 71.5L63.5 58.5L53.5 68.5L65.5 70.5L45.5 73L35.5 79.5L28 67L16 63L12 51.5L0 48L16 25L22.5 17L20.5 10.5Z"></path>
                            </svg>
                          </a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->
      </div>

      
        <!-- End of Main Content -->

        <!-- ALERT MESSAGES -->
        <?php 
        //get the toasterhelper
          $this->load->helper('toast');

          if ($this->session->flashdata('faculty_scs')) {
           echo getAlertMessages('success', $this->session->flashdata('faculty_scs'));
          }
          if ($this->session->flashdata('faculty_fail')) {
           echo getAlertMessages('error', $this->session->flashdata('faculty_fail'));
          }
          if ($this->session->flashdata('faculty_neutral')) {
            echo getAlertMessages('neutral', $this->session->flashdata('faculty_neutral'));
          }

          
          //unset it after use
          $this->session->unset_userdata('faculty_scs');
          $this->session->unset_userdata('faculty_fail');
          $this->session->unset_userdata('faculty_neutral');
        ?> 

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
  function toggleVisibility(btn) {
    // Get the parent row of the clicked button
    const row = btn.closest("tr");

    // Find the QR and RFID elements within the same row
    const spans = row.querySelectorAll(".asterisk");

    spans.forEach(span => {
      if (span.textContent === "********") {
        span.textContent = span.getAttribute("data-value");
      } else {
        span.textContent = "********";
      }
    });
  }
</script>

<script>
  function confirmDelete(id) {
      Swal.fire({
          title: 'Are you sure?',
          text: "Deleted faculty will be lost forever. Do you still want to delete?",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
          if (result.isConfirmed) {
              window.location.href = "<?= base_url('master/d_faculty/') ?>" + id;
          }
      })
  }
</script>

<script>
$(document).ready(function(){

load_data();

function load_data()
{
  $.ajax({
    url:"<?php echo base_url(); ?>Faculty_import/fetch",
    method:"POST",
    success:function(data){
      $('#customer_data').html(data);
    }
  })
}

$('#import_form').on('submit', function(event){
  event.preventDefault();
  $.ajax({
    url:"<?php echo base_url(); ?>Excel_import/import_faculty",
    method:"POST",
    data:new FormData(this),
    contentType:false,
    cache:false,
    processData:false,
    success:function(data){
      $('#file').val('');
      load_data();
      alert(data);
    }
  })
});

});
</script>

<script>
    $(document).ready(function() {
        $('#ImportDatabase').on('click', function() {
            Swal.fire({
                title: 'Import Database',
                text: 'Are you sure you want to import faculty data from the Enrollment System?',
                icon: 'question',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, import it!',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.isConfirmed) {
                    //go to master controller.
                    window.location.href = "<?= base_url('master/import_database_faculty') ?>";
                    Swal.fire({
                        title: 'Import Started!',
                        text: 'The database import process has begun.',
                        icon: 'success',
                        showCancelButton: false,
                        showConfirmButton: false,
                        allowOutsideClick: false,
                        onBeforeOpen: () => {
                            Swal.showLoading();
                        }
                    });
                }
            });
        });
    });
</script>
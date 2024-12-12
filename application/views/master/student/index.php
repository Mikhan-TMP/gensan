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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js">
</script>
      
    <div class="container-fluid">
      <!-- Page Heading -->
      <div class="row">
        <div class="col-lg">
          <h1 class="h3 mb-4 text-gray-800">Student Information</h1>
          <!-- <a href="<?= base_url('admin') ?>" class="btn btn-md btn-info mb-2">Back</a> -->
        </div>
      </div>
<!-- FIX ME -->
      <div class="row">
        <div class="col-sm-6 mb-3 mb-sm-0" >
            <div class="card border-0 bg-transparent">
              <div class="card-body mb-0 p-0">
                <a href="<?= base_url('master/a_student'); ?>"
                    class="btn btn-icon-split mb-4 shadow-sm text-light" 
                    style="background: linear-gradient(180deg, #BE110E, #630908);">
                    <span class="icon text-white-600">
                      <i class="fas fa-plus-circle"></i>
                    </span>
                    <span class="text" style="color:#272727; color: white; font-weight: 500; text-transform: Uppercase;">Add New Student</span>
                  </a>
                <button type="button" class="btn btn-secondary btn-icon-split mb-4 shadow-sm" data-toggle="modal" data-target=".bd-example-modal-xl" style="margin-bottom: 20px;">
                      <span class="icon text-white-600">
                      <i class="fas fa-file-import"></i>
                      </span>
                      <span class="text">Excel Import</span>
                </button>
                <!-- <button type="button" class="btn btn-secondary btn-icon-split mb-4 shadow-sm" data-toggle="modal" data-target=".bd-example-modal-xl-export">
                  <span class="icon text-white-600">
                    <i class="fas fa-file-export"></i>
                  </span>
                  <span class="text">Export</span>
                </button> -->
                <button id="exportCsvButton" type="button" class="btn btn-secondary btn-icon-split mb-4 shadow-sm">
                  <span class="icon text-white-600">
                    <i class="fas fa-file-export"></i>
                  </span>
                  <span class="text">Excel Export</span>
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
              <!-- Modal for Importing Students with Excel -->
              <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content" style="border-radius: 8px;">
                    
                    <!-- Modal Header -->
                    <div class="modal-header" style="background: linear-gradient(180deg, #BE110E, #630908); color: white;">
                      <h4 class="modal-title">Import New Student with Excel</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span class="text-white" aria-hidden="true">&times;</span>
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
                                <th>Student ID </th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Middle Name</th>
                                <th>Gender</th>
                                <th>Department </th>
                                <th>Course </th>
                                <th>Year </th>
                                <th>QR</th>
                                <th>RFID</th>

                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>20241001</td>
                                <td>John</td>
                                <td>Doe</td>
                                <td>M</td>
                                <td>Male</td>
                                <td>CCIS</td>
                                <td>BS Computer Science</td>
                                <td>4</td>
                                <td>1234562</td>
                                <td>51231</td>
                              </tr>
                              <tr>
                                <td>20241002</td>
                                <td>Jane</td>
                                <td>Smith</td>
                                <td>A</td>
                                <td>Female</td>
                                <td>CCIS</td>
                                <td>BS Computer Science</td>
                                <td>4</td>
                                <td>1234561</td>
                                <td>42123</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
          
                        <!-- Form Section -->
                        <form method="post" action="<?php echo base_url();?>import/import_Student_File" enctype="multipart/form-data">
                          <div class="form-group">
                            <label for="uploadFile">Select Excel File (CSV format only)</label>
                            <input type="file" name="uploadFile" class="form-control-file" id="uploadFile" required accept=".csv" style="font-size: 16px;">
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

          <!-- Modal for Exporting Students to Excel -->
          <div class="modal fade bd-example-modal-xl-export" tabindex="-1" role="dialog" aria-labelledby="exportModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
              <div class="modal-content" style="border-radius: 8px;">
                
                <!-- Modal Header -->
                <div class="modal-header" style="background: linear-gradient(180deg, #BE110E, #630908); color: white;">
                  <h4 class="modal-title">Export Students to Excel</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="text-white" aria-hidden="true">&times;</span>
                  </button>
                </div>
                
                <!-- Modal Body -->
                <div class="modal-body" style="background-color: #f8f9fa;">
                  <form method="post" action="<?= base_url('report/export_students'); ?>">
                    <div class="alert alert-info" role="alert">
                      Select the parameters for exporting student data:
                    </div>
                    <div class="form-group">
                      <label for="college">College</label>
                      <select name="college" class="form-control" id="college">
                        <option value="all">All</option>
                        <option value="CCIS">CCIS</option>
                        <option value="COE">COE</option>
                        <!-- Add more college options as needed -->
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="year">Year</label>
                      <select name="year" class="form-control" id="year">
                        <option value="all">All</option>
                        <option value="1">1st Year</option>
                        <option value="2">2nd Year</option>
                        <option value="3">3rd Year</option>
                        <option value="4">4th Year</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <input type="submit" value="Export to Excel" class="btn btn-info btn-block" style="background: linear-gradient(180deg, #BE110E, #630908); font-size: 16px; padding: 10px;">
                    </div>
                  </form>
                </div>
                
                <!-- Modal Footer -->
                <div class="modal-footer" style="border-top: none;">
                  <button type="button" class="btn btn-danger" data-dismiss="modal" style="font-size: 14px;">Close</button>
                </div>
              </div>
            </div>
          </div>
                  
                    
                    <!-- Modal Body -->
                                
        <!-- <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-xl">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Import New Student with Excel</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>
              <div class="modal-body">
                <div class="container">
                <form method="post" action="<?php echo base_url();?>import/import_Student_File" enctype="multipart/form-data">
                    <p><label>Select Excel File</label>
                    <input type="file" name="uploadFile" required accept=".csv" /></p>
                    <br />
                    <input type="submit" name="submit" value="Upload" class="btn btn-info" />
                  </form>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
      </div> -->
      
      <!-- Data Table Students-->
      <div class="card shadow mb-4 m-auto w-100" style="border-radius: 15px;">
        <div class="card-header py-3 d-flex" 
                  style="justify-content: space-between;
                        border-top-left-radius: 15px;
                        border-top-right-radius: 15px;
                        background: linear-gradient(180deg, #BE110E, #630908);
            ">
          <h6 class="m-0 text-light" 
                  style="font-size:1.5rem;
                  font-family: 'Inter', sans-serif;">Data Tables Student</h6>
        </div>
        <div class="card-body">
              <div class="table-responsive">
                <table class="table" id="dataTable" width="100%" cellspacing="0">
                  <thead style="color: #272727; font-weight: 500;">
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Student ID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Gender</th>
                  <th scope="col">College</th>
                  <th scope="col">Course</th>
                  <th scope="col">Year</th>
                  <!-- <th scope="col">PIN</th>                       -->
                  <th scope="col">QR</th>
                  <th scope="col">RFID</th>
                  <!-- th>IMAGE</th>
                  <th>BUILDING</th -->              
                  <th scope="col align-middle">Action</th>
                </tr>
              </thead>
            
              <tbody style="color: #272727;">
                <?php
                $i = 1;
                foreach ($studentList as $emp) :
                ?>
                  
                  <tr>
                    <td class=" align-middle"><?= $i++; ?></td>
                    <!-- td class=" align-middle"><?= $emp['id']; ?></td -->
                    <td class=" align-middle"><?= $emp['srcode']; ?></td>
                    <td class=" align-middle"><?= $emp['last_name'].", ".$emp['first_name']." ".$emp['middle_name'] ; ?></td>
                    <td class=" align-middle"><?php if ($emp['gender'] == 'M') {
                                                echo 'Male';
                                              } elseif ($emp['gender'] == 'F') {
                                                echo 'Female';
                                              } else{ }; ?></td>
                    <td class=" align-middle"><?= $emp['college']; ?></td>
                    <td class=" align-middle"><?= $emp['course']; ?></td>
                    <td class=" align-middle"><?= $emp['schoolyear']; ?></td>
                    <!-- <td class=" align-middle"><?= $emp['pin']; ?></td> -->
                    <td class=" align-middle"><?= $emp['qrcode']; ?></td>
                    <td class=" align-middle"><?= $emp['rfid']; ?></td>
                    <!-- td class="text-center"><img src="<?= base_url('images/pp/') . $emp['image']; ?>" style="width: 55px; height:55px" class="img-rounded"></td>
                    <td class=" align-middle"><?= $emp['building']; ?></td -->
                    <td class="text-center align-middle" style="display: flex; align-items: center; gap: 10px">
                      <a class="editBtn" href="<?= base_url('master/e_student/') . $emp['id'] ?>" style="text-decoration: none" tooltip="Edit">
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
    </div>
    </div>

        <!-- /.container-fluid -->
        <?php 
        //get the toasterhelper
          $this->load->helper('toast');

          if ($this->session->flashdata('student_scs')) {
           echo getAlertMessages('success', $this->session->flashdata('student_scs'));
          }
          if ($this->session->flashdata(' student_fail')) {
           echo getAlertMessages('error', $this->session->flashdata('student_fail'));
          }
          if ($this->session->flashdata('student_neutral')){
            echo getAlertMessages('info', $this->session->flashdata('student_neutral'));
          }
          if($this->session->flashdata('student_validation')) {
            echo getAlertMessages('error', $this->session->flashdata('student_validation'));
          }
          
          //unset it after use
          $this->session->unset_userdata('student_scs');
          $this->session->unset_userdata('student_fail');
          $this->session->unset_userdata('student_neutral');
          $this->session->unset_userdata('student_validation');
        ?> 
<script>
function confirmDelete(id) {
    Swal.fire({
        title: 'Are you sure?',
        text: "Deleted student will be lost forever. Do you still want to delete?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = "<?= base_url('master/d_student/') ?>" + id;
        }
    })
}
</script>

<script>
// document.addEventListener("DOMContentLoaded", function () {
//     // Initialize the DataTable
//     const table = $('#dataTable').DataTable();

//     // Function to export table data to CSV
//     function exportTableToCSV(filename) {
//         // Extract all data from the DataTable (all rows, including those not visible)
//         const data = table.rows().data();

//         let csv = [];
//         // Iterate through all rows of data
//         data.each(function (row) {
//             let rowData = [];
//             // Use forEach to iterate over each cell in the row
//             row.forEach(function (cell) {
//                 // Escape commas and quotes in the cell data
//                 let text = cell.replace(/"/g, '""');
//                 rowData.push(`"${text}"`);
//             });
//             csv.push(rowData.join(","));
//         });

//         // Create CSV file content
//         const csvContent = csv.join("\n");

//         // Create a download link for the CSV
//         const blob = new Blob([csvContent], { type: "text/csv" });
//         const link = document.createElement("a");
//         link.href = URL.createObjectURL(blob);
//         link.download = filename;

//         // Programmatically click the link to trigger the download
//         link.style.display = "none";
//         document.body.appendChild(link);
//         link.click();
//         document.body.removeChild(link);
//     }

//     // Add event listener to the export button with SweetAlert2 confirmation
//     document.getElementById("exportCsvButton").addEventListener("click", function () {
//         Swal.fire({
//             title: 'Are you sure?',
//             text: 'Do you want to export the student data to CSV?',
//             icon: 'warning',
//             showCancelButton: true,
//             confirmButtonText: 'Yes, export it!',
//             cancelButtonText: 'No, cancel',
//         }).then((result) => {
//             if (result.isConfirmed) {
//                 const filename = "students_data.csv"; // Default filename
//                 exportTableToCSV(filename); // Execute export
//                 Swal.fire('Exported!', 'The student data has been exported to CSV.', 'success');
//             } else {
//                 Swal.fire('Cancelled', 'The export has been cancelled.', 'info');
//             }
//         });
//     });
// });
document.addEventListener("DOMContentLoaded", function () {
    // Initialize the DataTable
    const table = $('#dataTable').DataTable();

    // Function to export table data to CSV
    function exportTableToCSV(filename) {
        // Define the custom header labels
        const customHeaders = [
            "First Name", "Middle Name", "Last Name", "ID Number", "College", "Department",
            "Course", "RFID"
        ];

        let csv = [];
        // Add the custom headers as the first row in the CSV
        csv.push(customHeaders.join(","));

        // Extract all data from the DataTable (all rows, including those not visible)
        const data = table.rows().data();

        // Iterate through all rows of data
        data.each(function (row) {
            let rowData = [];

            // Parse the name
            const name = row[2].trim();  // Assuming "NAME" column is at index 2
            let firstName = '';
            let middleName = '';
            let lastName = '';

            // Handle name format with a comma (Last Name, First Name)
            if (name.includes(',')) {
                // Split by comma
                const parts = name.split(',');
                lastName = parts[0].trim(); // First part is Last Name
                const firstAndMiddle = parts[1].trim().split(' ');

                // Handle multiple first names (FN) and middle name (MN)
                if (firstAndMiddle.length > 1) {
                    firstName = firstAndMiddle.slice(0, -1).join(' '); // Multiple first names
                    middleName = firstAndMiddle.slice(-1).join(' '); // Last part is middle name
                } else {
                    firstName = firstAndMiddle[0]; // Single first name
                }
            } else {
                // Case without a comma, assume it's in the format "First Last Middle"
                const parts = name.split(' ');
                firstName = parts.slice(0, -2).join(' ');  // Multiple first names if present
                lastName = parts[parts.length - 2];  // Second last part is Last Name
                middleName = parts[parts.length - 1];  // Last part is Middle Name
            }

            // Add the customized row data
            rowData.push(`"${firstName}"`, `"${middleName}"`, `"${lastName}"`);

            // Add the ID Number, College, Program, RFID
            rowData.push(`"${row[1]}"`); // ID Number (Assuming Student ID is at index 1)
            rowData.push(`"${row[4]}"`); // College
            rowData.push(`""`);           // Empty Department field
            rowData.push(`"${row[5]}"`); // Program (Course -> Program)
            rowData.push(`"${row[8]}"`); // RFID

            csv.push(rowData.join(","));
        });

        // Create CSV file content
        const csvContent = csv.join("\n");

        // Create a download link for the CSV
        const blob = new Blob([csvContent], { type: "text/csv" });
        const link = document.createElement("a");
        link.href = URL.createObjectURL(blob);
        link.download = filename;

        // Programmatically click the link to trigger the download
        link.style.display = "none";
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    }

    // Add event listener to the export button with SweetAlert2 confirmation
    document.getElementById("exportCsvButton").addEventListener("click", function () {
        Swal.fire({
            title: 'Are you sure?',
            text: 'Do you want to export the student data to CSV?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, export it!',
            cancelButtonText: 'No, cancel',
        }).then((result) => {
            if (result.isConfirmed) {
                const filename = "students_data.csv"; // Default filename
                exportTableToCSV(filename); // Execute export
                Swal.fire('Exported!', 'The student data has been exported to CSV.', 'success');
            } else {
                Swal.fire('Cancelled', 'The export has been cancelled.', 'info');
            }
        });
    });
});


</script>



<script>
$(document).ready(function(){

	load_data();

	function load_data()
	{
		$.ajax({
			url:"<?php echo base_url(); ?>Excel_import/fetch",
			method:"POST",
			success:function(data){
				$('#customer_data').html(data);
			}
		})
	}

	$('#import_form').on('submit', function(event){
		event.preventDefault();
		$.ajax({
			url:"<?php echo base_url(); ?>Excel_import/import_student",
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
$(document).ready(function () {
    // Populate College and Year dropdowns
    function populateFilters() {
        const colleges = new Set();
        const years = new Set();

        // Loop through the table rows
        $('#dataTable tbody tr').each(function () {
            const college = $(this).find('td:nth-child(5)').text().trim(); // 5th column for College
            const year = $(this).find('td:nth-child(7)').text().trim(); // 7th column for Year

            if (college) colleges.add(college);
            if (year) years.add(year);
        });

        // Add options to College dropdown
        const collegeDropdown = $('#college');
        collegeDropdown.empty(); // Clear existing options
        collegeDropdown.append('<option value="all">All</option>'); // Default option
        colleges.forEach(college => {
            collegeDropdown.append(`<option value="${college}">${college}</option>`);
        });

        // Add options to Year dropdown
        const yearDropdown = $('#year');
        yearDropdown.empty(); // Clear existing options
        yearDropdown.append('<option value="all">All</option>'); // Default option
        years.forEach(year => {
            yearDropdown.append(`<option value="${year}">${year} Year</option>`);
        });
    }

    // Populate filters when the page is ready
    populateFilters();
});
</script>
        <!-- Begin Page Content -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="row">
            <div class="col-lg">
            <h1 class="h3 mb-4 text-gray-800">Faculty</h1>
              <!-- <a href="<?= base_url('admin') ?>" class="btn btn-md btn-info mb-2">Back</a> -->
            </div>
          </div>
          <div class="row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <div class="card border-0 bg-transparent">
                  <div class="card-body mb-0 ml-0 p-0">
                  <a href="<?= base_url('master/a_faculty'); ?>"
                    class="btn btn-icon-split mb-4 shadow-sm text-light" 
                    style="background: linear-gradient(180deg, #0F25EE, #1F2DB0);">
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
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="card border-0 bg-transparent">
                  <div class="card-body mb-0 pb-0">
                    <?= $this->session->flashdata('message'); ?>
                    <?php
                    if ($this->session->flashdata('success_message')) {
                      echo '<div class="alert alert-success">' . $this->session->flashdata('success_message') . '</div>';
                    }else if($this->session->flashdata('failed_message')) {
                        echo '<div class="alert alert-danger">' . $this->session->flashdata('failed_message') . '</div>';
                    }
                    ?>
                  </div>
                </div>
              </div>
            <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-xl">
                <div class="modal-content">
                  <div class="modal-header">
                    <h4 class="modal-title">Import New Faculty with Excel</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <div class="modal-body">
                      <div class="container">
                        <form method="post" action="<?php echo base_url();?>import/import_Faculty_File" enctype="multipart/form-data">
                          <p><label>Select Excel File</label>
                          <!-- <input type="file" name="uploadFile"  required accept=".xls, .xlsx, .csv" /></p> -->
                          <input type="file" name="uploadFile"  required accept=".csv" /></p>
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



          </div>

          <!-- Data Table employee-->
          <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex" style="justify-content: space-between; border-top-left-radius: 15px; border-top-right-radius: 15px; background: linear-gradient(180deg, #0F25EE, #1F2DB0);">  
              <!-- header title -->
              <h6 class="m-0 text-light" style="font-size:1.5rem; font-family: 'Inter', sans-serif;">DataTables Faculty</h6>
              <!-- search bar -->
              <!-- <div class="col-sm-12 col-md-6">
                <div id="dataTable_filter" class="dataTables_filter">
                <label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label>
                </div>
              </div> -->
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table" id="dataTable" width="100%" cellspacing="0">
                  <thead style="color: #272727; font-weight: 500;">
                    <tr>
                      <th>#</th>
                      <th>ID Number</th>
                      <th>NAME</th>
                      <th>GENDER</th>
                      <th>DEPARTMENT</th>
                      <th>PIN</th>
                      <!-- <th>RFID</th>
                      <th>QRCODE</th> -->
                      
                      
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
                        <td class=" align-middle"><?php if ($emp['gender'] == 'M') {
                                                    echo 'Male';
                                                  } else {
                                                    echo 'Female';
                                                  }; ?></td>
                        <!-- <td class=" align-middle"><?= $emp['college']; ?></td> -->
                        <td class=" align-middle"><?= $emp['course']; ?></td>
                        <!-- <td class=" align-middle"><?= $emp['rfid']; ?></td>
                        <td class=" align-middle"><?= $emp['qrcode']; ?></td> -->
                        <!-- td class="text-center"><img src="<?= base_url('images/pp/') . $emp['image']; ?>" style="width: 55px; height:55px" class="img-rounded"></td>
                        <td class=" align-middle"><?= $emp['building']; ?></td -->
                        <td class=" align-middle"><?= $emp['pin']; ?></td>
                        <td class="text-center align-middle">
                          <a href="<?= base_url('master/e_faculty/') . $emp['id'] ?>" class="">
                          <span class="text-dark" title="Edit">
                              <i class="fas fa-pen"></i>
                            </span>
                          </a>&nbsp &nbsp
                          <a href="<?= base_url('master/d_faculty/') . $emp['id'] ?>" class="" onclick="return confirm('Deleted faculty will lost forever. Still want to delete?')">
                            <span class="icon text-danger" title="Delete">
                              <i class="fas fa-trash-alt"></i>
                            </span>
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
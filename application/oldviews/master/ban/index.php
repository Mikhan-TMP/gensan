        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
          <div class="row">
            <div class="col-lg-3">
              <a href="<?= base_url('master/a_visitor'); ?>" class="btn btn-info btn-icon-split mb-4">
                <span class="icon text-white-600">
                  <i class="fas fa-plus-circle"></i>
                </span>
                <span class="text">Add New ban list</span>
              </a>
            </div>
            <div class="col-lg-5 offset-lg-4">
              <?= $this->session->flashdata('message'); ?>
            </div>
          </div>

          <!-- Data Table employee-->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables Visitor</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Ban ID</th>
                      <th>category</th>
                      <th>RFID</th>
                      <th>QRCODE</th>
                      <th>Name</th>                                            
                      <th>Actions</th>
                    </tr>
                  </thead>
                
                  <tbody>
                    <?php
                    $i = 1;
                    foreach ($ban as $emp) :
                    ?>
                      
                      <tr>
                        <td class=" align-middle"><?= $i++; ?></td>
                        <td class=" align-middle"><?= $emp['id']; ?></td>
                        <td class=" align-middle"><?= $emp['rfid']; ?></td>
                        <td class=" align-middle"><?= $emp['qrcode']; ?></td>                        
                        <?php if ($emp['name'] == NULL) 
                                  $emp['name'] = ' - ';                              
                         ?>
                        <td class=" align-middle"><?= $emp['name']; ?></td>                        
                        
                        <td class="text-center align-middle">
                          <a href="<?= base_url('master/e_ban/') . $emp['id'] ?>" class="btn btn-primary btn-circle">
                            <span class="icon text-white" title="Edit">
                              <i class="fas fa-edit"></i>
                            </span>
                          </a> |
                          <a href="<?= base_url('master/d_ban/') . $emp['id'] ?>" class="btn btn-danger btn-circle" onclick="return confirm('Deleted ban will lost forever. Still want to delete?')">
                            <span class="icon text-white" title="Delete">
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
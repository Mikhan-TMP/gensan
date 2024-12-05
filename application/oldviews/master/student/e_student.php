        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1 -->

          <a href="<?= base_url('master/student'); ?>" class="btn btn-secondary btn-icon-split mb-4">
            <span class="icon text-white">
              <i class="fas fa-chevron-left"></i>
            </span>
            <span class="text">Back</span>
          </a>

          <?= form_open_multipart('master/edit_student/' . $student['id']); ?>
          <div class="col-lg p-0">
            <div class="row">              
              <div class="col-lg-6 m-auto">
                <div class="card">
                  <h3 class="mb-0 text-left text-light" 
                    style="background: linear-gradient(180deg, #0F25EE, #1F2DB0);
                    border-top-left-radius:15px;
                    border-top-right-radius:15px;
                    padding: 1.5rem;
                    font-size: 1.5rem;">
                    Student Master Data</h3>
                  <div class="card-body">
                    <!-- <h5 class="card-title">Edit Student</h5>  -->
                    <!-- first row -->
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label for="Student_id" class="text-dark" style="font-weight: bold;">ID</label>
                          <input type="text" readonly class="form-control-plaintext" name="e_id" value="<?= $student['id']; ?>">
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label for="e_gender" class="text-dark" style="font-weight: bold;">Gender</label>
                          <div class="row col-lg">
                            <div class="form-check form-check-inline my-0">
                              <input class="form-check-input" type="radio" name="e_gender" id="m" value="M" <?php if ($student['gender'] == 'M') {
                                                                                                              echo 'checked';
                                                                                                            }; ?>>
                              <label class="form-check-label" for="m">
                                Male
                              </label>
                              <?= form_error('e_gender', '<small class="text-danger">', '</small>') ?>
                            </div>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="e_gender" id="f" value="F" <?php if ($student['gender'] == 'F') {
                                                                                                              echo 'checked';
                                                                                                            }; ?>>
                              <label class="form-check-label" for="f">
                                Female
                              </label>
                            </div>
                          </div>
                          <?= form_error('e_gender', '<small class="text-danger">', '</small>') ?>
                        </div>
                      </div>
                    </div>

                    <!-- second row -->
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label for="e_name" class="text-dark" style="font-weight: bold;">First Name</label>
                          <input type="text" class="form-control" name="f_name" id="f_name" value="<?= $student['first_name']; ?>"
                          style="border-radius:15px; font-size: 1rem; padding: 25px;">
                          <?= form_error('e_name', '<small class="text-danger">', '</small>') ?>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">                        
                          <label for="e_name" class="text-dark" style="font-weight: bold;">Middle Name</label>
                          <input type="text" class="form-control" name="m_name" id="m_name" value="<?= $student['middle_name']; ?>"
                          style="border-radius:15px; font-size: 1rem; padding: 25px;">
                          <?= form_error('e_name', '<small class="text-danger">', '</small>') ?>
                        </div>
                      </div>
                    </div>
                    <!-- third row -->
                    <div class="row">
                      <div class="col-lg-6">
                          <div class="form-group">                        
                            <label for="e_name" class="text-dark" style="font-weight: bold;">Last Name</label>
                            <input type="text" class="form-control" name="l_name" id="l_name" value="<?= $student['last_name']; ?>"
                            style="border-radius:15px; font-size: 1rem; padding: 25px;">
                            <?= form_error('e_name', '<small class="text-danger">', '</small>') ?>
                          </div>
                        </div>
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label for="e_hire_date" class="text-dark" style="font-weight: bold;">School Year</label>
                          <div class="col-lg p-0">
                            <input type="text" class="form-control" name="year" id="year" value="<?= $student['schoolyear']; ?>"
                            style="border-radius:15px; font-size: 1rem; padding: 25px;">
                            <?= form_error('e_hire_date', '<small class="text-danger">', '</small>') ?>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-lg-6">
                          <div class="form-group">
                            <label for="e_hire_date" class="text-dark" style="font-weight: bold;">Course</label>
                            <div class="col-lg p-0">
                              <input type="text" class="form-control" name="course" id="course" value="<?= $student['course']; ?>"
                              style="border-radius:15px; font-size: 1rem; padding: 25px;">
                              <?= form_error('e_hire_date', '<small class="text-danger">', '</small>') ?>
                            </div>
                          </div>
                      </div>
                      <div class="col-lg-6">
                          <div class="form-group">
                            <label for="e_hire_date" class="text-dark" style="font-weight: bold;">College</label>
                            <div class="col-lg p-0">
                              <input type="text" class="form-control" name="college" id="college" value="<?= $student['college']; ?>"
                              style="border-radius:15px; font-size: 1rem; padding: 25px;">
                              <?= form_error('e_hire_date', '<small class="text-danger">', '</small>') ?>
                            </div>
                          </div>
                      </div>
                    </div>
                    <!-- </div> -->

                    <div class="row">
                      <div class="col-lg-6">
                        <div class="form-group">
                          <label for="pin" class="text-dark" style="font-weight: bold;"">PIN</label>
                          <input type="number" class="form-control col-lg" name="pin" id="pin" value="<?= $student['pin']; ?>"
                          style="border-radius:15px; font-size: 1rem; padding: 25px;">
                          <?= form_error('e_pin', '<small class="text-danger">', '</small>') ?>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="form-group">                        
                          <label for="e_name" class="text-dark" style="font-weight: bold;">Student ID</label>
                          <input type="text" class="form-control" name="srcode" id="srcode" value="<?= $student['srcode']; ?>"
                          style="border-radius:15px; font-size: 1rem; padding: 25px;">
                          <?= form_error('e_name', '<small class="text-danger">', '</small>') ?>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                    <button style="background: linear-gradient(180deg, #0F25EE, #1F2DB0); border:none; padding: 5px; border-radius: 15px;" 
                    type="submit" class="btn btn-success btn-icon-split mt-4 w-100">
                        <!-- <span class="icon text-white">
                          <i class="fas fa-check"></i>
                        </span> -->
                        <span class="text">Save Changes</span>
                      </button>
                    </div>
                    
                  </div> 
                  <!-- end card body -->
                </div>
                <!-- end card -->
              </div>
              <!-- end col m-auto -->
            </div>
            <!-- end row -->
          </div>
          <!-- end container -->

          <?= form_close(); ?>
        </div>
        <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
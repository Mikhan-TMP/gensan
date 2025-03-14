        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

          <a href="<?= base_url('master/kiosk'); ?>" class="btn btn-secondary btn-icon-split mb-4">
            <span class="icon text-white">
              <i class="fas fa-chevron-left"></i>
            </span>
            <span class="text">Back</span>
          </a>
          <div class="col-lg-5 p-0">
            <form action="<?= base_url('master/a_kiosk') ?>" method="POST">
              <div class="card">                
                <div class="card-body">                  
                  <div class="form-group row">
                    <label for="u_username" class="col-form-label col-lg-4">Kiosk name</label>
                    <div class="col p-0">
                      <input type="text"  class="form-control col-lg" name="u_username" id="u_username" >
                      <?= form_error('u_username', '<small class="text-danger">', '</small>') ?>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="u_floor" class="col-form-label col-lg-4">Location Floor</label>
                    <div class="col p-0">
                      <input type="text"  class="form-control col-lg" name="u_floor" id="u_floor" >
                      <?= form_error('u_username', '<small class="text-danger">', '</small>') ?>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="u_password" class="col-form-label col-lg-4">Key (password)</label>
                    <div class="col p-0">
                      <input type="password" class="form-control col-lg" name="u_password" id="u_password">
                      <?= form_error('u_password', '<small class="text-danger">', '</small>') ?>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="c_password" class="col-form-label col-lg-4">Confirm Key </label>
                    <div class="col p-0">
                      <input type="password" class="form-control col-lg" name="c_password" id="c_password">
                      <?= form_error('u_password', '<small class="text-danger">', '</small>') ?>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-success btn-icon-split mt-4 float-right">
                    <span class="icon text-white">
                      <i class="fas fa-plus-circle"></i>
                    </span>
                    <span class="text">Add to system</span>
                  </button>
            </form>
          </div>
        </div>
        </div>
        </form>
        </div>
        <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
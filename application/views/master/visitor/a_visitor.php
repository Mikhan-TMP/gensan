        <!-- Begin Page Content -->
  <div class="container-fluid">
    <!-- Page Heading -->
              <!-- <h5 class="card-title">Add New Student</h5> -->
    <h5 class="card-title">Add New Visitor</h5>
    <div class="row">
      <div class="col-lg-3">
        <a href="<?= base_url('master/visitor'); ?>" class="btn btn-secondary btn-icon-split mb-4">
          <span class="icon text-white">
            <i class="fas fa-chevron-left"></i>
          </span>
          <span class="text">Back</span>
        </a>
      </div>

    </div>
    <div class="col-lg-6 p-0 m-auto " >
      <?= form_open_multipart('master/add_visitor'); ?>
      <div class="card" style="border-radius:15px;">
        <h3 class="mb-0 text-left text-light" 
                  style="background: linear-gradient(180deg, #BE110E, #630908);
                  border-top-left-radius:15px;
                  border-top-right-radius:15px;
                  padding: 1.5rem;
                  font-size: 1.5rem;">
                  Visitor Data</h3>
        <div class="card-body">
          <!-- <h5 class="card-title">Add New Visitor</h5>
          <p class="card-text">Form to add new visitor to system</p> -->
          <div class="row">
            <div class="col-lg-12">              
              <div class="form-group mt-4" style="display: flex; flex-direction: column;">
                <label for="e_name"  class="text-dark" style="font-weight: bold;">Visitor Name</label>                                      
                  <input type="text" minlength="2" maxlength="30" class="form-control col-lg" name="e_name" id="e_name" required autofocus
                  style="border-radius:15px; font-size: 1rem; padding: 25px;" placeholder="Visitor Name">
                  <!-- <input type="text" class="form-control col-lg" name="e_name" id="e_name" required> -->
                  <?= form_error('e_name', '<small class="text-danger">', '</small>') ?>                
              </div>
              <!-- <div class="form-group mt-4" style="    
                          display: flex;
                          flex-direction: column;
                          /* border-color: blue;">
                <label for="pin"  class="text-dark" style="font-weight: bold;">QR Code</label>
                <input type="text" minlength="2" maxlength="30" class="form-control col-lg" name="qrcode" id="qrcode"  style="border-radius:15px; font-size: 1rem; padding: 25px;" placeholder="Enter QR Code">
                <?= form_error('qrcode', '<small class="text-danger">', '</small>') ?>
              </div> -->
            </div>
          </div>
          <div class ="row" >
            <div class="col-lg-12">
              <div class="form-group" style="display: flex; flex-direction: column;">
              <label for="pin"   class="text-dark" style="font-weight: bold;">RFID</label>
                <div class="col p-0">
                <input type="text" minlength="2" maxlength="30" class="form-control col-lg" name="rfid" id="rfid" required style="border-radius:15px; font-size: 1rem; padding: 25px;" placeholder="Enter RFID">
                  <?= form_error('rfid', '<small class="text-danger">', '</small>') ?>
                </div>
              </div>
              <!-- <div class="form-group row">
                <label for="e_gender" class="col-form-label col-lg-4">Gender</label>
                <div class="col p-0">
                  <div class="form-check form-check-inline my-0">
                    <input class="form-check-input" type="radio" name="e_gender" id="m" value="M" checked>
                    <label class="form-check-label" for="m">
                      Male
                    </label>
                    <?= form_error('e_gender', '<small class="text-danger">', '</small>') ?>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="e_gender" id="f" value="F">
                    <label class="form-check-label" for="f">
                      Female
                    </label>
                  </div>
                </div>
              </div> -->
            </div>                  
              
          </div>
          <div class="w-100">                
            <button type="submit"style="background: linear-gradient(180deg, #BE110E, #630908); border:none; padding: 5px; border-radius: 15px;"
              class="btn btn-success btn-icon-split mt-4 float-right w-100">
              <!-- <span class="text-white icon"> <i class="fas fa-plus"></i></span> -->
              <span class="text">ADD VISITOR </span> </button>
            <?= form_close(); ?>
          </div>
        </div>
      </div>
    </div>
    </form>
  </div>
  </div>

        <!-- End of Main Content -->

        
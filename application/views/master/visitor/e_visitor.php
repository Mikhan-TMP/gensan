<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <!-- <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1> -->
  <h5 class="card-title">Edit Visitor</h5>


  <a href="<?= base_url('master/visitor'); ?>" class="btn btn-secondary btn-icon-split mb-4">
    <span class="icon text-white">
      <i class="fas fa-chevron-left"></i>
    </span>
    <span class="text">Back</span>
  </a>

  <?= form_open_multipart('master/edit_visitor/' . $visitor['id']); ?>
  <div class="col-lg p-0">
    <div class="row">              
      <div class="col-lg-6 p-0 m-auto " >

        <div class="card" style="border-radius:15px;">
        <h3 class="mb-0 text-left text-light" 
                  style="background: linear-gradient(180deg, #BE110E, #630908);
                  border-top-left-radius:15px;
                  border-top-right-radius:15px;
                  padding: 1.5rem;
                  font-size: 1.5rem;">
                  Visitor Data</h3>
          <div class="card-body">
            <!-- <h5 class="card-title">Edit Visitor</h5>
            <p class="card-text">Form to edit visitor in system</p> -->
            <div class="row">
              <div class="col-lg-4">
                <div class="form-group">
                  <label for="employee_id" class="col-form-label">Visitor ID</label>
                  <input type="text" readonly class="form-control-plaintext" name="e_id" value="<?= $visitor['id']; ?>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <div class="form-group mt-4" style="display: flex; flex-direction: column;">
                  <label for="e_name"  class="text-dark" style="font-weight: bold;">Visitor Name</label>                                      
                    <input type="text" minlength="2" maxlength="30" class="form-control col-lg" name="e_name" id="e_name" required
                    style="border-radius:15px; font-size: 1rem; padding: 25px;" value="<?= $visitor['name']; ?>">
                    <!-- <input type="text" class="form-control col-lg" name="e_name" id="e_name" required> -->
                    <?= form_error('e_name', '<small class="text-danger">', '</small>') ?>                
                </div>
              </div>
            </div>
            <div class="row">                      
              <div class="col-lg-12">
                <!-- <div class="form-group mt-4" style="    
                            display: flex;
                            flex-direction: column;
                            /* border-color: blue;">
                  <label for="pin"  class="text-dark" style="font-weight: bold;">QR Code</label>
                  <input type="text" minlength="2" maxlength="30" class="form-control col-lg" name="qrcode" id="qrcode"  style="border-radius:15px; font-size: 1rem; padding: 25px;" value="<?= $visitor['qrcode']; ?>">
                  <?= form_error('qrcode', '<small class="text-danger">', '</small>') ?>
                </div> -->
              </div>
              <div class="col-lg-12">
                <div class="form-group" style="display: flex; flex-direction: column;">
                  <label for="pin"   class="text-dark" style="font-weight: bold;">RFID</label>
                  <div class="col p-0">
                    <input type="text" minlength="2" maxlength="30" class="form-control col-lg" name="rfid" id="rfid" required style="border-radius:15px; font-size: 1rem; padding: 25px;" value="<?= $visitor['rfid']; ?>">
                    <?= form_error('rfid', '<small class="text-danger">', '</small>') ?>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <!-- <div class="col-lg-4">
                <div class="form-group">
                  <label for="e_gender" class="col-form-label">Gender</label>
                  <div class="row col-lg">
                    <div class="form-check form-check-inline my-0">
                      <input class="form-check-input" type="radio" name="e_gender" id="m" value="M" <?php if ($visitor['gender'] == 'M') { echo 'checked';}; ?>>
                      <label class="form-check-label" for="m">
                        Male
                      </label>
                      <?= form_error('e_gender', '<small class="text-danger">', '</small>') ?>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="e_gender" id="f" value="F" <?php if ($visitor['gender'] == 'F') { echo 'checked'; }; ?>>
                      <label class="form-check-label" for="f">
                        Female
                      </label>
                    </div>
                  </div>
                  <?= form_error('e_gender', '<small class="text-danger">', '</small>') ?>
                </div>
              </div> -->
            </div>
            <div class="w-100">                
              <button type="submit"style="background: linear-gradient(180deg, #BE110E, #630908); border:none; padding: 5px; border-radius: 15px;"
                class="btn btn-success btn-icon-split mt-4 float-right w-100">
                <!-- <span class="text-white icon"> <i class="fas fa-plus"></i></span> -->
                <span class="text">EDIT VISITOR </span> </button>
              <?= form_close(); ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?= form_close(); ?>
</div>
</div>


<!-- End of Main Content -->
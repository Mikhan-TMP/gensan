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

/* lock btn */
.lock-button {
  width: 35px;
  height: 35px;
  border-radius: 10px;
  border: none;
  font-weight: 600;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.164);
  cursor: pointer;
  transition-duration: 0.3s;
  overflow: hidden;
  position: relative;
  text-decoration: none !important;
}

.lock-button.locked {
  background-color: rgb(255, 69, 69);
}

.lock-button.unlocked {
  background-color: rgb(79 174 8);
}

.lock-svgIcon {
  width: 17px;
  transition-duration: 0.3s;
}

.lock-svgIcon path {
  fill: white;
}

.lock-button.locked:hover {
  background-color: rgb(46, 204, 113);
}

.lock-button.unlocked:hover {
  background-color: rgb(255, 69, 69);
}

.lock-button:hover .lock-svgIcon {
  width: 20px;
  transition-duration: 0.3s;
  transform: rotate(360deg);
}

.lock-button::before {
  display: none;
  color: white;
  transition-duration: 0.3s;
}

.lock-button:hover::before {
  display: block;
  opacity: 1;
  transform: translateY(0px);
  transition-duration: 0.3s;
}

</style>
<!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Library Area Information</h1>
          <div class="">
                  <a href="<?= base_url('master/a_area'); ?>"
                    class="btn btn-icon-split mb-4 shadow-sm text-light" 
                    style="background: linear-gradient(180deg, #BE110E, #630908); ">
                    <span class="icon text-white-600">
                      <i class="fas fa-plus-circle"></i>
                    </span>
                    <span class="text" style="color:#272727; color: white; font-weight: 500; text-transform: Uppercase;">Add Area</span>
                  </a>
          </div>
          <!-- Data Table Department-->
          <div class="card shadow mb-4" 
                style="border-radius:15px;">
                <div class="card-header py-3 d-flex" 
                  style="justify-content: space-between;
                        border-top-left-radius: 15px;
                        border-top-right-radius: 15px;
                        background: linear-gradient(180deg, #BE110E, #630908);
                        align-item:center;
                ">
              <h6 class="mb-0 text-light" 
                  style="font-size:1.5rem;
                  font-family: 'Inter', sans-serif;">Area List</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table" id="dataTable" width="100%" cellspacing="0">
                  <thead style="color: #272727; font-weight: 500;">
                    <tr>                      
                      <th>ID</th>
                      <th>Floor</th>
                      <th>Area Name</th>
                      <th>Seats</th>
                      <th>Availability</th>
                      <th>Reservation Time</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                 
                  <tbody style="color: #272727;">
                    <?php
                    $i = 1;
                    foreach ($room as $dpt) :
                    ?>
                      <tr>                        
                        <td class="align-middle"><?= $dpt['id']; ?></td>
                        <td class="align-middle"><?= $dpt['floor']; ?></td>
                        <td class="align-middle"><?= $dpt['room']; ?></td>
                        <td class="align-middle"><?= $dpt['slotnumber']; ?></td>
                        <td class="align-middle"><?php  
                        if($dpt['opentime'] != "00:00:00")
                           echo date('h:i A', strtotime($dpt['opentime'])).'~'.date('h:i A', strtotime($dpt['closetime'])); 
                        else
                            echo "00:00:00";                        
                           ?></td>
                        <td class="align-middle"><?php 
                          if($dpt['min_slot'] == $dpt['max_slot'])
                            echo $dpt['min_slot'].' hour/s';
                          else
                            echo $dpt['min_slot'].' to '.$dpt['max_slot'].' hours'; ?>
                             
                        </td>
                        <td class="align-middle text-center" style="display: flex; align-items: center; gap: 10px; justify-content: center;">
                          <a class="editBtn" href="<?= base_url('master/e_area/') . $dpt['id'] ?>" style="text-decoration: none" tooltip="Edit">
                            <!-- edit -->
                            <svg height="1em" viewBox="0 0 512 512">
                              <path
                                d="M410.3 231l11.3-11.3-33.9-33.9-62.1-62.1L291.7 89.8l-11.3 11.3-22.6 22.6L58.6 322.9c-10.4 10.4-18 23.3-22.2 37.4L1 480.7c-2.5 8.4-.2 17.5 6.1 23.7s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L387.7 253.7 410.3 231zM160 399.4l-9.1 22.7c-4 3.1-8.5 5.4-13.3 6.9L59.4 452l23-78.1c1.4-4.9 3.8-9.4 6.9-13.3l22.7-9.1v32c0 8.8 7.2 16 16 16h32zM362.7 18.7L348.3 33.2 325.7 55.8 314.3 67.1l33.9 33.9 62.1 62.1 33.9 33.9 11.3-11.3 22.6-22.6 14.5-14.5c25-25 25-65.5 0-90.5L453.3 18.7c-25-25-65.5-25-90.5 0zm-47.4 168l-144 144c-6.2 6.2-16.4 6.2-22.6 0s-6.2-16.4 0-22.6l144-144c6.2-6.2 16.4-6.2 22.6 0s6.2 16.4 0 22.6z"
                              ></path>
                            </svg>
                          </a>
                          <a class="lock-button <?= ($dpt['availability'] == 0 ? 'locked' : 'unlocked') ?>" href="#" style="text-decoration:none" onclick="event.preventDefault(); Swal.fire({
                              title: 'Are you sure?',
                              text: '<?= ($dpt['availability'] == 0 ? 'This action will unlock the area.' : 'This action will lock the area.') ?>',
                              icon: 'warning',
                              showCancelButton: true,
                              confirmButtonColor: '#3085d6',
                              cancelButtonColor: '#d33',
                              confirmButtonText: '<?= ($dpt['availability'] == 0 ? 'Yes, open it!' : 'Yes, lock it!') ?>'
                            }).then((result) => {
                              if (result.isConfirmed) {
                                window.location.href = '<?= base_url('master/lockArea?area_id=') . $dpt['id']?>';
                              }
                            });">
                            <span class="lock-svgIcon <?= ($dpt['availability'] == 0 ? 'text-white' : 'text-white') ?>" 
                                  title="<?= ($dpt['availability'] == 0 ? 'Locked' : 'Open') ?>">
                              <i class="fas <?= ($dpt['availability'] == 0 ? 'fa-lock' : 'fa-unlock') ?>"></i>
                            </span>
                            <!-- <svg class="lock-svgIcon" viewBox="-0.5 -0.5 16 16">
                              <path d="M7.5 8.235c-0.1949375 0 -0.38187499999999996 0.0775 -0.5196875 0.2153125s-0.2153125 0.32475 -0.2153125 0.5196875v2.205c0 0.1949375 0.0775 0.38187499999999996 0.2153125 0.51975s0.32475 0.21525 0.5196875 0.21525c0.1949375 0 0.3819375 -0.07743749999999999 0.51975 -0.21525s0.21525 -0.32481250000000006 0.21525 -0.51975v-2.205c0 -0.1949375 -0.07743749999999999 -0.38187499999999996 -0.21525 -0.5196875s-0.32481250000000006 -0.2153125 -0.51975 -0.2153125Zm3.675 -2.94V3.825c0 -0.9746875 -0.3871875 -1.9094375 -1.076375 -2.598625S8.4746875 0.15 7.5 0.15c-0.9746875 0 -1.9094375 0.3871875 -2.598625 1.076375S3.825 2.8503125000000002 3.825 3.825v1.47c-0.5848125 0 -1.145625 0.23231249999999998 -1.5591875 0.6458125000000001C1.8523124999999998 6.354375 1.62 6.9152499999999995 1.62 7.5v5.145c0 0.58475 0.23231249999999998 1.145625 0.6458125000000001 1.5591875 0.41356249999999994 0.4135 0.974375 0.6458125000000001 1.5591875 0.6458125000000001h7.35c0.58475 0 1.145625 -0.23231249999999998 1.5591875 -0.6458125000000001 0.4135 -0.41356249999999994 0.6458125000000001 -0.9744375 0.6458125000000001 -1.5591875V7.5c0 -0.58475 -0.23231249999999998 -1.145625 -0.6458125000000001 -1.5591875 -0.41356249999999994 -0.4135 -0.9744375 -0.6458125000000001 -1.5591875 -0.6458125000000001ZM5.295 3.825c0 -0.5848125 0.23231249999999998 -1.145625 0.6458125000000001 -1.5591875C6.354375 1.8523124999999998 6.9152499999999995 1.62 7.5 1.62s1.145625 0.23231249999999998 1.5591875 0.6458125000000001c0.4135 0.41356249999999994 0.6458125000000001 0.974375 0.6458125000000001 1.5591875v1.47H5.295V3.825Zm6.615 8.82c0 0.1949375 -0.07743749999999999 0.3819375 -0.21525 0.51975s-0.32481250000000006 0.21525 -0.51975 0.21525H3.825c-0.1949375 0 -0.38187499999999996 -0.07743749999999999 -0.51975 -0.21525 -0.1378125 -0.1378125 -0.21525 -0.32481250000000006 -0.21525 -0.51975V7.5c0 -0.1949375 0.07743749999999999 -0.38187499999999996 0.21525 -0.5196875 0.137875 -0.1378125 0.32481250000000006 -0.2153125 0.51975 -0.2153125h7.35c0.1949375 0 0.3819375 0.0775 0.51975 0.2153125s0.21525 0.32475 0.21525 0.5196875v5.145Z" fill="#ffffff" stroke-width="1"></path>
                            </svg> -->
                          </a>

                          <!-- <a>
                            <span class="icon <?= ($dpt['availability'] == 0 ? 'text-danger' : 'text-success') ?>" 
                                  title="<?= ($dpt['availability'] == 0 ? 'Locked' : 'Open') ?>">
                              <i class="fas <?= ($dpt['availability'] == 0 ? 'fa-lock' : 'fa-unlock') ?>"></i>
                            </span>
                          </a> -->
                          <!-- delete -->
                          <a class="bin-button" href="javascript:void(0);" onclick="confirmDelete(<?= $dpt['id'] ?>)" tooltip="Delete">
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


                          <!-- <a href="<?= base_url('master/e_area/') . $dpt['id'] ?>" class="" style="text-decoration:none">
                          <span class="text-dark" title="Edit">
                            <i class="fas fa-pen"></i>
                            </span>
                          </a>&nbsp &nbsp
                          <a href="#" class="" style="text-decoration:none" onclick="event.preventDefault(); Swal.fire({
                            title: 'Are you sure?',
                            text: '<?= ($dpt['availability'] == 0 ? 'This action will unlock the area.' : 'This action will lock the area.') ?>',
                            icon: 'warning',
                            showCancelButton: true,
                            confirmButtonColor: '#3085d6',
                            cancelButtonColor: '#d33',
                            confirmButtonText: '<?= ($dpt['availability'] == 0 ? 'Yes, open it!' : 'Yes, lock it!') ?>'
                          }).then((result) => {
                            if (result.isConfirmed) {
                              window.location.href = '<?= base_url('master/lockArea?area_id=') . $dpt['id']?>';
                            }
                          });">
                            <span class="icon <?= ($dpt['availability'] == 0 ? 'text-danger' : 'text-success') ?>" 
                                  title="<?= ($dpt['availability'] == 0 ? 'Locked' : 'Open') ?>">
                              <i class="fas <?= ($dpt['availability'] == 0 ? 'fa-lock' : 'fa-unlock') ?>"></i>
                            </span>
                          </a>&nbsp &nbsp
                          <a href="<?= base_url('master/d_area/') . $dpt['id'] ?>" class="" onclick="return confirm('Deleted room will lost forever. Still want to delete?')">
                          <span class="icon text-danger" title="Delete">
                            <i class="fas fa-trash-alt"></i>
                            </span>
                          </a> -->
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

          if ($this->session->flashdata('area_scs')) {
           echo getAlertMessages('success', $this->session->flashdata('area_scs'));
          }
          if ($this->session->flashdata('area_fail')) {
           echo getAlertMessages('error', $this->session->flashdata('area_fail'));
          }
          if ($this->session->flashdata('success')) {
            echo getAlertMessages('success', $this->session->flashdata('success'));
          }
          if ($this->session->flashdata('warning')) {
            echo getAlertMessages('warning', $this->session->flashdata('warning'));
          }
          //unset it after use
          $this->session->unset_userdata('area_scs');
          $this->session->unset_userdata('area_fail');
          $this->session->unset_userdata('success');
          $this->session->unset_userdata('warning');
        ?> 

<script>
function confirmDelete(id) {
    Swal.fire({
        title: 'Are you sure?',
        text: "Deleted area will be lost forever. Do you still want to delete?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = "<?= base_url('master/d_area/') ?>" + id;
        }
    })
}
</script>
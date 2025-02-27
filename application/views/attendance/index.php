<!-- <?php print_r($attendance)?> -->

<!-- Begin Page Content -->
<div class="container-fluid">
    
    <div class="d-sm-flex align-items-center mb-4" style="gap:10px; align-items: center;">
        <!-- <h1 class="h3 mb-0 text-gray-800"><?= $title; ?></h1> -->
    </div>
    <!-- Content Row -->
    <div class="row">
        <div class="col">
            <div class="row">
                <div class="col-xl-12 col-lg-7">

                    <div class="card shadow mb-4" style="min-height: 543px; border-radius:15px;">
                        <form action="" method="POST">
                            <div class="card-header py-3 d-flex justify-content-between" style="border-radius:15px 15px 0 0; background: linear-gradient(180deg, #BE110E, #630908);">
                                <h6 class="m-0 text-light" style="font-size:1.5rem; font-family: 'Inter', sans-serif;">Attendance Table</h6>
                                
                                <div class="div">
                                    <button type="button" id="exportCsv" class="btn btn-md btn-fill" style="background: #FFFFFF; color: #BE110E !important; font-size: 12px !important; font-weight: 500 !important;">
                                        <i class="fas fa-file-excel text-success"></i> EXPORT
                                    </button>
                                    <button type="button" id="filter" class="btn btn-md btn-fill" style="background: #FFFFFF; color: #BE110E !important; font-size: 12px !important; font-weight: 500 !important;">
                                        <i class="fas fa-filter text-success"></i> FILTER
                                    </button>

                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table " id="dataTable" width="100%" cellspacing="0">
                                        <thead style="color: #272727; font-weight: 500;">
                                            <tr>
                                                <th>Category </th>
                                                <th>Name</th>
                                                <th>RFID</th>
                                                <th>User ID</th>
                                                <th>College</th>
                                                <th>Course</th>
                                                <th>Kiosk</th>
                                                <th>Time In</th>
                                                <th>Time Out</th>
                                                <th>Duration</th>
                                            </tr>
                                        </thead>
                                        <tbody style="color: #272727;">
                                            <?php foreach ($attendance as $attend) : ?>
                                                <tr>
                                                    <td><?= isset($attend['category']) ? $attend['category'] : "no data"; ?></td>
                                                    <td><?= isset($attend['username']) ? $attend['username'] : "no data"; ?></td>
                                                    <td>
                                                        <?= isset($attend['s_rfid']) ? $attend['s_rfid'] : (isset($attend['f_rfid']) ? $attend['f_rfid'] : (isset($attend['v_rfid']) ? $attend['v_rfid'] : "-")); ?>
                                                    </td>
                                                    <td><?= isset($attend['srcode']) ? $attend['srcode'] :"no data"; ?></td>
                                                    <td>
                                                        <?= isset($attend['college']) ? $attend['college'] : (isset($attend['f_course']) ? $attend['f_course'] : "visitor"); ?>
                                                    </td>
                                                    <td><?= isset($attend['course']) ? $attend['course'] : "-"; ?></td>
                                                    <td><?= isset($attend['kiosk']) ? $attend['kiosk'] : "-"; ?></td>
                                                    <td><?= isset($attend['in_time']) ? date('F j, Y, g:i A', strtotime($attend['in_time'])) : "-"; ?></td>
                                                    <td><?= isset($attend['out_time']) ? date('F j, Y, g:i A', strtotime($attend['out_time'])) : "-"; ?></td>
                                                    <td>
                                                        <?php
                                                        if (isset($attend['in_time']) && isset($attend['out_time'])) {
                                                            $time1 = new DateTime($attend['in_time']);
                                                            $time2 = new DateTime($attend['out_time']);
                                                            $duration = $time1->diff($time2)->format('%hhrs: %im: %ss');
                                                            echo $duration;
                                                        } else {
                                                            echo "-";
                                                        }
                                                        ?>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                </div>
                <div class="btn-cont p-2" style="display: flex; justify-content: center; align-items: center; gap:10px" >
                        <button id="toggleUpdate" class="btn btn-md btn-fill p-2" 
                            style="background: #FFFFFF; color: #BE110E !important; font-size: 12px !important; font-weight: 500 !important; border-radius: 5px;">
                            <i class="fas fa-pause-circle"></i> Stop Auto-Update
                        </button>
                    </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
    <?php   
    //get the toasterhelper
        $this->load->helper('toast');

        if ($this->session->flashdata('success')) {
        echo getAlertMessages('success', $this->session->flashdata('success'));
        }
        if ($this->session->flashdata('warning')) {
        echo getAlertMessages('warning', $this->session->flashdata('warning'));
        }
        if ($this->session->flashdata('error')) {
        echo getAlertMessages('error', $this->session->flashdata('error'));
        }
        //unset it after use
        $this->session->unset_userdata('error');
        $this->session->unset_userdata('success');
        $this->session->unset_userdata('warning');
    ?> 

    <!-- sorting -->



<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/exceljs/4.3.0/exceljs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>
<!-- Add this inside your existing container -->


<script>
    let autoUpdate = true;
    let interval;
    let dataTable; // Store DataTable instance

    function fetchAttendance() {
        if (!autoUpdate) return;

        $.ajax({
            url: "<?= base_url('master/fetch_attendance'); ?>",
            method: "GET",
            dataType: "json",
            beforeSend: function () {
                $("#loadingIndicator").show();
            },
            success: function (data) {
                let today = new Date().toISOString().split('T')[0];

                // Sorting logic
                data.sort((a, b) => {
                    let dateA = a.in_time ? new Date(a.in_time).toISOString().split('T')[0] : null;
                    let dateB = b.in_time ? new Date(b.in_time).toISOString().split('T')[0] : null;

                    if (dateA === today && dateB !== today) return -1;
                    if (dateB === today && dateA !== today) return 1;
                    return new Date(b.in_time) - new Date(a.in_time);
                });

                let formattedData = data.map(attend => {
                    let inTime = attend.in_time ? new Date(attend.in_time) : null;
                    let outTime = attend.out_time ? new Date(attend.out_time) : null;

                    return [
                        attend.category ?? 'no data',
                        attend.username ?? 'no data',
                        attend.s_rfid ?? attend.f_rfid ?? attend.v_rfid ?? '-',
                        attend.srcode ?? 'no data',
                        attend.college ?? attend.f_course ?? '-',
                        attend.course ?? '-',
                        attend.kiosk ?? '-',
                        inTime ? formatDate(inTime) : '-',
                        outTime ? formatDate(outTime) : '-',
                        (inTime && outTime) ? calculateDuration(inTime, outTime) : '-'
                    ];
                });

                // **Update DataTable without resetting pagination**
                dataTable.clear().rows.add(formattedData).draw(false);
            },
            complete: function () {
                $("#loadingIndicator").hide(); 
                $("#checkmarkIndicator").show();
                setTimeout(() => { $("#checkmarkIndicator").hide(); }, 3000);
            },
            error: function () {
                console.log("AJAX request failed.");
                $("#loadingIndicator").hide();
                $("#checkmarkIndicator").hide();
            }
        });
    }

    // **Initialize DataTable once on page load**
    $(document).ready(function () {
        dataTable = $("#dataTable").DataTable(); // Initialize DataTable

        fetchAttendance(); // Fetch immediately
        interval = setInterval(fetchAttendance, 5000);
    });


    function formatDate(date) {
        return date.toLocaleString('en-US', { month: 'long', day: 'numeric', year: 'numeric', hour: 'numeric', minute: '2-digit', hour12: true });
    }

    function calculateDuration(inTime, outTime) {
        let diff = Math.abs(outTime - inTime) / 1000;
        let hours = Math.floor(diff / 3600);
        let minutes = Math.floor((diff % 3600) / 60);
        let seconds = Math.floor(diff % 60);
        return `${hours}hrs: ${minutes}m: ${seconds}s`;
    }

    // Toggle auto-update
    $("#toggleUpdate").on("click", function () {
        autoUpdate = !autoUpdate;
        if (autoUpdate) {
            $(this).html('<i class="fas fa-pause-circle"></i> Stop Auto-Update');
            interval = setInterval(fetchAttendance, 5000);
            fetchAttendance(); // Fetch immediately when starting
        } else {
            $(this).html('<i class="fas fa-play-circle"></i> Start Auto-Update');
            clearInterval(interval);
        }
    });

    // Run immediately on page load and set interval
    $(document).ready(function () {
        fetchAttendance(); // Instant fetch on page load
        interval = setInterval(fetchAttendance, 5000);
    });
</script>

<!-- <script>
   function fetchAttendance() {
    // Show loading indicator, hide table and checkmark
    $("#loadingIndicator").show();
    // $("#dataTable").hide();
    $("#checkmarkIndicator").hide();

    // Delay the AJAX call by 5 seconds to simulate loading
    setTimeout(() => {
        $.ajax({
            url: "<?= base_url('master/fetch_attendance'); ?>",
            method: "GET",
            dataType: "json",
            success: function (data) {
                let today = new Date().toISOString().split('T')[0];

                // Sort: Today's data first
                data.sort((a, b) => {
                    let dateA = a.in_time ? new Date(a.in_time).toISOString().split('T')[0] : null;
                    let dateB = b.in_time ? new Date(b.in_time).toISOString().split('T')[0] : null;

                    if (dateA === today && dateB !== today) return -1;
                    if (dateB === today && dateA !== today) return 1;
                    return new Date(b.in_time) - new Date(a.in_time);
                });

                let tbody = "";
                data.forEach(attend => {
                    let inTime = attend.in_time ? new Date(attend.in_time) : null;
                    let outTime = attend.out_time ? new Date(attend.out_time) : null;

                    tbody += `
                        <tr>
                            <td>${attend.category ?? 'no data'}</td>
                            <td>${attend.username ?? 'no data'}</td>
                            <td>${attend.s_rfid ?? attend.f_rfid ?? attend.v_rfid ?? '-'}</td>
                            <td>${attend.srcode ?? 'no data'}</td>
                            <td>${attend.college ?? attend.f_course ?? '-'}</td>
                            <td>${attend.course ?? '-'}</td>
                            <td>${attend.kiosk ?? '-'}</td>
                            <td>${inTime ? formatDate(inTime) : '-'}</td>
                            <td>${outTime ? formatDate(outTime) : '-'}</td>
                            <td>${(inTime && outTime) ? calculateDuration(inTime, outTime) : '-'}</td>
                        </tr>
                    `;
                });

                $("#dataTable tbody").html(tbody);

                // Hide loading spinner, show table, and display checkmark
                $("#loadingIndicator").hide();
                // $("#dataTable").show();
                $("#checkmarkIndicator").show();

                // Hide checkmark after 3 seconds
                setTimeout(() => {
                    $("#checkmarkIndicator").hide();
                }, 3000);
            }
        });
    }, 5000); // Simulate loading delay of 5 seconds
}

function formatDate(date) {
    return date.toLocaleString('en-US', { month: 'long', day: 'numeric', year: 'numeric', hour: 'numeric', minute: '2-digit', hour12: true });
}

function calculateDuration(inTime, outTime) {
    let diff = Math.abs(outTime - inTime) / 1000;
    let hours = Math.floor(diff / 3600);
    let minutes = Math.floor((diff % 3600) / 60);
    let seconds = Math.floor(diff % 60);
    return `${hours}hrs: ${minutes}m: ${seconds}s`;
}

// Run on page load and refresh every 8 seconds
$(document).ready(function () {
    fetchAttendance();
    setInterval(fetchAttendance, 8000);
});
</script> -->
<!-- 
<script>
    $(document).ready(function () {
            var table = $('#dataTable').DataTable({
                columnDefs: [{
                    targets: 8,
                    type: 'datetime',
                    render: function (data, type, row) {
                        if (type === 'sort') return new Date(data).getTime();
                        return data;
                    }
                }],
                order: [[8, 'desc']],
            });

            $.fn.dataTable.ext.search.push(function (settings, data, dataIndex) {
                var min = $('#startDateFilter').val();
                var max = $('#endDateFilter').val();
                var timeIn = data[7]; // The 'Time In' column (adjust index if necessary)

                if (timeIn) {
                    // Convert the 'Time In' string to a Date object
                    var timeInDate = new Date(timeIn);

                    // Create Date objects for the filter range
                    var minDate = min ? new Date(min) : null;
                    var maxDate = max ? new Date(max) : null;

                    if (maxDate) maxDate.setHours(23, 59, 59, 999); // Set max date to end of the day

                    // Return true if the row's date is within the filter range
                    return (!minDate || timeInDate >= minDate) && (!maxDate || timeInDate <= maxDate);
                }
                return false;
            });

            $('#startDateFilter, #endDateFilter').on('change', function () {
                    table.draw();
                });
    });
</script> -->
<!-- THIS WILL OPEN THE MODAL -->
<script>
document.getElementById('exportCsv').addEventListener('click', function () {
    Swal.fire({
        title: 'Export Attendance Data',
        html: `
            <form id="exportForm">
                <div class="mb-3 text-left" style="color: #272727; font-weight: 500; font-size: small;">
                    <label for="startDate" class="form-label text-left">Start Date</label>
                    <input type="date" id="startDate" name="startDate" class="form-control">
                </div>
                <div class="mb-3 text-left" style="color: #272727; font-weight: 500; font-size: small;">
                    <label for="endDate" class="form-label">End Date</label>
                    <input type="date" id="endDate" name="endDate" class="form-control">
                </div>
                <div class="mb-3 d-flex" style="justify-content: right;">
                    <div class="btn-group" style=" gap: 10px;">
                        <button type="button" class="p-2" style=" border: none; font-weight: 500; font-size: small; border-radius: 5px; background: linear-gradient(180deg, #BE110E, #630908); color: white; min-width: 100px" id="todayButton">Today</button>
                        <button type="button" class="p-2" id="yesterdayButton" style="border: none; font-weight: 500; font-size: small; border-radius: 5px; background: linear-gradient(180deg, #BE110E, #630908); color: white; min-width: 100px">Yesterday</button>
                        <select class="form-select" id="range" name="range" style="border: none; font-weight: 500; font-size: small; border-radius: 5px; background: linear-gradient(180deg, #FFD602, #FAB703, #D6890E); color: black;">
                            <option value="">Select Range</option>
                            <option value="7">Last 1 week</option>
                            <option value="14">Last 2 weeks</option>
                            <option value="21">Last 3 weeks</option>
                            <option value="28">Last 4 weeks</option>
                            <option value="lastmonth">Last month</option>
                            <option value="last2months">Last 2 months</option>
                            <option value="last3months">Last 3 months</option>
                            <option value="last6months">Last 6 months</option>
                            <option value="lastyear">Last year</option>
                        </select>
                    </div>
                </div>

                <?php
                $collegeCourses = [];
                foreach ($attendance as $entry) {
                    if (!empty($entry['college']) && !empty($entry['course'])) {
                        $collegeCourses[$entry['college']][] = $entry['course'];
                    }
                }

                $categories =[];
                foreach ($attendance as $entry) {
                    $categories[] = $entry['category'];
                }

                // $f_college = [];
                // foreach ($attendance as $entry) {
                //     if (!empty($entry['f_course'])) {
                //         $f_college[] = $entry['f_course'];
                //     }
                // }

                $f_college = array_values(array_unique(array_filter(array_column($attendance, 'f_course'))));

                // echo '<pre>';
                // print_r($collegeCourses);
                // echo '<pre>';
                // echo '<br>';
                // echo '<pre>';
                // print_r($f_college);
                // echo '<pre>';

                ?>
                <div class="mb-3 text-left" style="color: #272727; font-weight: 500; font-size: small;">
                    <label for="category" class="form-label">Select Category</label>
                    <select id="category" name="category" class="form-control">
                        <option value="All">All Categories</option>
                        <?php foreach (array_unique($categories) as $category): ?>
                            <option value="<?= htmlspecialchars(ucfirst($category)) ?>"><?= htmlspecialchars(ucfirst($category)) ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="mb-3 text-left" style="color: #272727; font-weight: 500; font-size: small;">
                    <label for="college" class="form-label">Select College</label>
                    <select id="college" name="college" class="form-control">
                        <option value="All">All Colleges</option>

                    </select>
                </div>

                <div class="mb-3 text-left" style="color: #272727; font-weight: 500; font-size: small;">
                    <label for="course" class="form-label">Select Course</label>
                    <select id="course" name="course" class="form-control" disabled>
                        <option value="All">All Courses</option>
                    </select>
                </div>

            </form>
        `,
        showCancelButton: true,
        confirmButtonColor: '#BE110E',
        confirmButtonText: 'Export',
        // showDenyButton: true,
        // denyButtonText: 'Count Only',
        // footer: '<button id="extra-btn" class="swal2-confirm swal2-styled">Extra Action</button>',

        didOpen: () => {
            const collegeCourses = <?= json_encode($collegeCourses) ?>;
            const facultyCollege = <?= json_encode($f_college) ?>;
            
            const categorySelect = document.getElementById('category');
            const collegeSelect = document.getElementById('college');
            const courseSelect = document.getElementById('course');
            

            function updateCollegeAndCourse() {
                const selectedCategory = categorySelect.value;
                
                collegeSelect.innerHTML = '<option value="All">All Colleges</option>';
                courseSelect.innerHTML = '<option value="All">All Courses</option>';
                collegeSelect.disabled = false;
                courseSelect.disabled = false;

                if (selectedCategory === "Student") {
                    // Show only student colleges
                    for (const college in collegeCourses) {
                        if (!college.includes("Faculty")) { // Exclude faculty-related colleges
                            const option = document.createElement('option');
                            option.value = college;
                            option.textContent = college;
                            collegeSelect.appendChild(option);
                        }
                    }
                } else if (selectedCategory === "Faculty") {
                    
                    facultyCollege.forEach(course => {
                        const option = document.createElement('option');
                        option.value = course;
                        option.textContent = course;
                        collegeSelect.appendChild(option);
                    });

                    courseSelect.innerHTML = '<option value="All">All Courses</option>';
                    courseSelect.disabled = true; // Faculty doesn't need courses
                } else if (selectedCategory === "Visitor") {
                    // Disable both college and course dropdowns
                    collegeSelect.disabled = true;
                    courseSelect.disabled = true;
                }
            }

            // Trigger update when category changes
            categorySelect.addEventListener('change', updateCollegeAndCourse);

            // Handle course dropdown update based on college selection (only for Students)
            collegeSelect.addEventListener('change', () => {
                const selectedCollege = collegeSelect.value;
                
                // Reset course dropdown
                courseSelect.innerHTML = '<option value="All">All Courses</option>';
                courseSelect.disabled = (selectedCollege === "All");

                if (selectedCollege !== "All" && collegeCourses[selectedCollege]) {
                    // Populate courses for the selected college
                    const uniqueCourses = [...new Set(collegeCourses[selectedCollege])];
                    uniqueCourses.forEach(course => {
                        const option = document.createElement('option');
                        option.value = course;
                        option.textContent = course;
                        courseSelect.appendChild(option);
                    });
                }
            });

            // Initial update in case category is pre-selected
            updateCollegeAndCourse();
        },
        preConfirm: () => {
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const course = document.getElementById('course').value;
            const college = document.getElementById('college').value;
            const category = document.getElementById('category').value;


            if (!startDate || !endDate) {
                Swal.showValidationMessage('Please select a valid date range');
                return false;
            }

            return { startDate, endDate, course, college, category };
        },
        preDeny: () => {
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const course = document.getElementById('course').value;
            const college = document.getElementById('college').value;
            const category = document.getElementById('category').value;

            if (!startDate || !endDate) {
                Swal.showValidationMessage('Please select a valid date range');
                return false;
            }

            return { startDate, endDate, course, college, category };
        }
    }).then((result) => {
        const { startDate, endDate, course, college, category } = result.value;

        if (result.isDenied) {
            const url = `<?= base_url('master/excel_export?startDate=') ?>${startDate}&endDate=${endDate}&course=${course}&college=${college}&category=${category}&countOnly=true`;
            window.location.href = url;
        } else if (result.isConfirmed) {
            const url = `<?= base_url('master/excel_export?startDate=') ?>${startDate}&endDate=${endDate}&course=${course}&college=${college}&category=${category}`;
            window.location.href = url;
        }
    });
});
</script>
<!-- FOR TODAY YESTERDAY  -->
<script>
    document.addEventListener('click', function (event) {
        const today = new Date();
        // Today Button
        if (event.target.id === 'todayButton') {
            document.getElementById('startDate').value = today.toISOString().split('T')[0];
            document.getElementById('endDate').value = today.toISOString().split('T')[0];
        }

        // Yesterday Button
        if (event.target.id === 'yesterdayButton') {
            const yesterday = new Date();
            yesterday.setDate(yesterday.getDate() - 1);
            document.getElementById('startDate').value = yesterday.toISOString().split('T')[0];
            document.getElementById('endDate').value = yesterday.toISOString().split('T')[0];
        }
    });
</script>

<!-- FOR RANGE SELECT -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Delegate the change event to the document
        document.addEventListener('change', function (event) {
            if (event.target && event.target.id === 'range') {
                const today = new Date();
                const rangeValue = event.target.value;
                let startDate = null;
                
                console.log("Selected range:", rangeValue);  // Debugging log
                
                if (!rangeValue) {
                    document.getElementById('startDate').value = '';
                    document.getElementById('endDate').value = '';
                    return; 
                }

                if (rangeValue === 'lastmonth') {
                    startDate = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
                } else if (rangeValue === 'last2months') {
                    startDate = new Date(today.getFullYear(), today.getMonth() - 2, today.getDate());
                } else if (rangeValue === 'last3months') {
                    startDate = new Date(today.getFullYear(), today.getMonth() - 3, today.getDate());
                } else if (rangeValue === 'last6months') {
                    startDate = new Date(today.getFullYear(), today.getMonth() - 6, today.getDate());
                } else if (rangeValue === 'lastyear') {
                    startDate = new Date(today.getFullYear() - 1, today.getMonth(), today.getDate());
                }
                else {
                    startDate = new Date();
                    startDate.setDate(today.getDate() - parseInt(rangeValue, 10)); // Calculate for weeks
                }

                console.log("Calculated start date:", startDate);  // Debugging log

                if (startDate) {
                    document.getElementById('startDate').value = startDate.toISOString().split('T')[0];
                    document.getElementById('endDate').value = today.toISOString().split('T')[0];
                }
            }
        });
    });

</script>

<!-- OPEN THE FILTER -->
<script>
    document.getElementById('filter').addEventListener('click', function () {
        Swal.fire({
            title: 'Filter Attendance Data',
            html: `
                <form id="filterForm">
                    <div class="mb-3 text-left" style="color: #272727; font-weight: 500; font-size: small;">
                        <label for="startDateFilter" class="form-label">Start Date</label>
                        <input type="date" id="startDateFilter" name="startDateFilter" class="form-control">
                    </div>
                    <div class="mb-3 text-left" style="color: #272727; font-weight: 500; font-size: small;">
                        <label for="endDateFilter" class="form-label">End Date</label>
                        <input type="date" id="endDateFilter" name="endDateFilter" class="form-control">
                    </div>
                </form>
            `,
            showCancelButton: true,
            confirmButtonText: 'Apply Filter',
            preConfirm: () => {
                const startDate = document.getElementById('startDateFilter').value;
                const endDate = document.getElementById('endDateFilter').value;

                if (!startDate || !endDate) {
                    Swal.showValidationMessage('Please select both start and end dates');
                }

                return { startDate, endDate };
            }
        }).then((result) => {
            if (result.isConfirmed) {
                const { startDate, endDate } = result.value;

                // Set the date filter inputs (if you are using hidden inputs for table filtering)
                $('#startDateFilter').val(startDate);
                $('#endDateFilter').val(endDate);

                // Trigger DataTable redraw with the new filters
                $('#dataTable').DataTable().draw();

                Swal.fire('Filter Applied', 'Attendance data has been filtered.', 'success');
            }
        });
    });

</script>

<script>
    $.fn.dataTable.ext.search.push(
    function (settings, data, dataIndex) {
        var min = $('#startDateFilter').val();
        var max = $('#endDateFilter').val();
        var timeIn = data[6]; // Time In column (index 6)

        if (timeIn) {
            var timeInDate = new Date(timeIn);
            var minDate = min ? new Date(min) : null;
            var maxDate = max ? new Date(max) : null;

            // Adjust maxDate to include the entire day
            if (maxDate) {
                maxDate.setHours(23, 59, 59, 999);
            }

            if (
                (!minDate || timeInDate >= minDate) &&
                (!maxDate || timeInDate <= maxDate)
            ) {
                return true; // Show row
            }
        }
        return false; // Hide row
    }
    );
</script>

<!-- CONVERT TO EXCEL -->
<script>
    const excelData = <?php echo json_encode($this->session->userdata('excel_data')); ?>;
    const frequentUsersData = <?php echo json_encode($this->session->userdata('frequent_users')); ?>;
    const frequentDailyUsersData = <?php echo json_encode($this->session->userdata('frequent_daily_users')); ?>;
    const frequentWeeklyUsersData = <?php echo json_encode($this->session->userdata('frequent_weekly_users')); ?>;
    const frequentMonthlyUsersData = <?php echo json_encode($this->session->userdata('frequent_monthly_users')); ?>;
    const frequentYearlyUsersData = <?php echo json_encode($this->session->userdata('frequent_yearly_users')); ?>;
    const get_count_per_college = <?php echo json_encode($this->session->userdata('get_count_per_college')) ?>;
    const student_count_per_course_and_college = <?php echo json_encode($this->session->userdata('student_count_per_course_and_college')) ?>;


    // console.log("Excel Data:", excelData);
    // console.log("Count Only:", excelData.count_only);
    
    if (excelData.count_only) {
        // Display summarized count data
        const countSummary = Object.values(excelData).filter(item => typeof item === "object");
        console.log("Count Only Data:", excelData);

        const customHeaders = [
            { key: 'course', displayName: 'Course' },
            { key: 'college', displayName: 'College' },
            { key: 'count', displayName: 'Count' },
            { key: 'date_from', displayName: 'Start Date' },
            { key: 'date_to', displayName: 'End Date' }
        ];

        function downloadCountSummary() {
            const workbook = new ExcelJS.Workbook();
            const worksheet = workbook.addWorksheet("Attendance Summary Report");

            worksheet.mergeCells('A1:D1');
            worksheet.getCell('A1').value = 'Attendance Summary Report';
            worksheet.getCell('A1').font = { bold: true, size: 28 };
            worksheet.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet.getCell('A1:D1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };

            // Add the header in the second row
            const headerRow = customHeaders.map(header => header.displayName);
            worksheet.addRow(headerRow);

            // Add data rows
            countSummary.forEach(row => {
                const rowData = customHeaders.map(header => row[header.key] || '');
                worksheet.addRow(rowData);
            });

            // Adjust column widths
            worksheet.columns = [
                { width: 30 }, // Course
                { width: 25 }, // College
                { width: 10 }, // Count
                { width: 25 }, // Start Date
                { width: 25 }  // End Date
            ];

            // Save the file
            workbook.xlsx.writeBuffer().then(buffer => {
                const blob = new Blob([buffer], { type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" });
                saveAs(blob, "Attendance_Summary.xlsx");
            });

            // Unset the session data after download
            fetch('<?php echo base_url("master/unset_excel_data"); ?>', { method: 'POST' })
                .then(response => console.log('Session data unset successfully'))
                .catch(error => console.error('Error unsetting session data:', error));
        }

        downloadCountSummary();
    } else {
        // Proceed with the usual Excel generation logic
        const customHeaders = [
            { key: 'id', displayName: '#' },
            { key: 'category', displayName: 'Category'},
            { key: 'rfid', displayName: 'RFID' },
            { key: 'date', displayName: 'Date' },
            { key: 'srcode', displayName: 'ID' },
            { key: 'last_name', displayName: 'Last Name' },
            { key: 'first_name', displayName: 'First Name' },
            { key: 'middle_name', displayName: 'Middle Name' },
            { key: 'in_time', displayName: 'Time In' },
            { key: 'out_time', displayName: 'Time Out' },
            { key: 'college', displayName: 'College' },
            { key: 'course', displayName: 'Course' },
            { key: 'kiosk', displayName: 'Kiosk' }
        ];

        const frequentUsers = [
            { key: 'srcode', displayName: 'ID' },
            { key: 'last_name', displayName: 'Last Name'},
            { key: 'first_name', displayName: 'First Name' },
            { key: 'course' , displayName: 'Course' },
            { key: 'count', displayName: 'Number of Times Present'}
        ];

        const countsHeader = [
            { key: 'data', displayName: 'Information', exists: true },
            { key: 'category', displayName: 'Category', exists: true},
            { key: 'college', displayName: 'College', exists: true },
            { key: 'course', displayName: 'Course', exists: true },
            { key: 'count', displayName: 'Count', exists: true }  
        ];

        function downloadExcel() {
            const workbook = new ExcelJS.Workbook();
            const worksheet = workbook.addWorksheet("Library Attendance");
            const worksheet2 = workbook.addWorksheet("Frequent Users");
            const worksheet3 = workbook.addWorksheet("Daily Users");
            const worksheet4 = workbook.addWorksheet("Weekly Users");
            const worksheet5 = workbook.addWorksheet("Monthly Users");
            const worksheet6 = workbook.addWorksheet("Yearly Users");
            const worksheet7 = workbook.addWorksheet("Total Per College");
            const worksheet8 = workbook.addWorksheet("Total Per Course and College");


            // __________________________WORKSHEET 7_____________________________
            worksheet7.mergeCells('A1:E1');
            worksheet7.getCell('A1').value = 'Count Per College';
            worksheet7.getCell('A1').font = { bold: true, size: 28 };
            worksheet7.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet7.getCell('A1:E1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };
            // Add the header in the third row
            const headerRow7 = countsHeader.map(header => header.displayName);
            worksheet7.addRow(headerRow7);
            // Add data rows (starting from row 4)
            get_count_per_college.forEach(row => {
                const rowData = countsHeader.map(header => {
                    if (header.key === 'count') {
                        return row.count || '-';
                    }
                    if (header.key === 'college') {
                        return row.college || '-';
                    }
                    if (header.key === 'course') {
                        return row.course || '-';
                    }
                    if (header.key === 'category') {
                        return row.category || '-';
                    }
                    return row[header.key] || '';
                });

                worksheet7.addRow(rowData);
            });

            // Adjust column widths
            worksheet7.columns = [
                { width: 15 },  // Information
                { width: 15 }, // C
                { width: 15 }, // C
                { width: 20 }, // C
                { width: 15 }, // C
            ];

            // __________________________WORKSHEET 8_____________________________
            worksheet8.mergeCells('A1:E1');
            worksheet8.getCell('A1').value = 'Count Per Course and College';
            worksheet8.getCell('A1').font = { bold: true, size: 28 };
            worksheet8.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet8.getCell('A1:E1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };
            // Add the header in the third row
            const headerRow8 = countsHeader.map(header => header.displayName);
            worksheet8.addRow(headerRow8);
            // Add data rows (starting from row 4)
            student_count_per_course_and_college.forEach(row => {
                const rowData = countsHeader.map(header => {
                    if (header.key === 'count') {
                        return row.count || '-';
                    }
                    if (header.key === 'college') {
                        return row.college || '-';
                    }
                    if (header.key === 'course') {
                        return row.course || '-';
                    }
                    if (header.key === 'category') {
                        return row.category || '-';
                    }
                    return row[header.key] || '';
                });

                worksheet8.addRow(rowData);
            });

            // Adjust column widths
            worksheet8.columns = [
                { width: 15 },  // Information
                { width: 15 }, // C
                { width: 15 }, // C
                { width: 20 }, // C
                { width: 15 }, // C
            ];

            // __________________________WORKSHEET 1_____________________________
            worksheet.mergeCells('A1:M1');
            worksheet.getCell('A1').value = 'Attendance Data Report';
            worksheet.getCell('A1').font = { bold: true, size: 28 };
            worksheet.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet.getCell('A1:M1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };
            // Add the header in the third row
            const headerRow = customHeaders.map(header => header.displayName);
            worksheet.addRow(headerRow);

            // Add data rows (starting from row 4)
            excelData.forEach(row => {
                const rowData = customHeaders.map(header => {
                    if (header.key === 'last_name') {
                        return row.student_last_name || row.faculty_last_name || '-';
                    }
                    if (header.key === 'first_name') {
                        return row.student_first_name || row.faculty_first_name || '-';
                    }
                    if (header.key === 'middle_name') {
                        return row.student_middle_name || row.faculty_middle_name || '-';
                    }
                    if (header.key === 'course'){
                        return row.student_course || row.faculty_course || 'N/A';
                    }
                    if (header.key === 'college'){
                        return row.student_college || row.faculty_college || 'N/A';
                    }
                    return row[header.key] || '';
                });

                worksheet.addRow(rowData);
            });

            // Adjust column widths
            worksheet.columns = [
                { width: 5 },  // #
                { width: 15 }, // RFID
                { width: 15 }, // Category
                { width: 12 }, // Date
                { width: 15 }, // Student ID
                { width: 20 }, // Last Name
                { width: 20 }, // First Name
                { width: 20 }, // Middle Name
                { width: 15 }, // Time In
                { width: 15 }, // Time Out
                { width: 25 }, // College
                { width: 30 }, // Course
                { width: 20 }  // Kiosk
            ];

            // __________________________WORKSHEET 2_____________________________
            worksheet2.mergeCells('A1:E1');
            worksheet2.getCell('A1').value = 'All Users Report';
            worksheet2.getCell('A1').font = { bold: true, size: 28 };
            worksheet2.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet2.getCell('A1:E1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };

            // Add the header in the third row
            const headerRow2 = frequentUsers.map(header => header.displayName);
            worksheet2.addRow(headerRow2);

            frequentUsersData.forEach(row => {
                const rowData = frequentUsers.map(header => {
                    if (header.key === 'last_name') {
                        return row.last_name || '-';
                    }
                    if (header.key === 'first_name') {
                        return row.first_name || '-';
                    }
                    if (header.key === 'middle_name') {
                        return row.middle_name || '-';
                    }
                    if (header.key === 'course'){
                        return row.course || 'N/A';
                    }
                    return row[header.key] || '';
                });

                worksheet2.addRow(rowData);
            });

            // Adjust column widths
            worksheet2.columns = [
                { width: 30 },  // ID
                { width: 20 }, // Last Name
                { width: 20 }, // First Name
                { width: 20 }, // Course
                { width: 30 }  // Count
            ];

            //DAILY
            // __________________________WORKSHEET 3_____________________________
            worksheet3.mergeCells('A1:E1');
            worksheet3.getCell('A1').value = 'Daily Users Report';
            worksheet3.getCell('A1').font = { bold: true, size: 28 };
            worksheet3.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet3.getCell('A1:E1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };

            // Add the header in the third row
            const headerRow3 = frequentUsers.map(header => header.displayName);
            worksheet3.addRow(headerRow3);

            frequentDailyUsersData.forEach(row => {
                const rowData = frequentUsers.map(header => {
                    if (header.key === 'last_name') {
                        return row.last_name || '-';
                    }
                    if (header.key === 'first_name') {
                        return row.first_name || '-';
                    }
                    if (header.key === 'middle_name') {
                        return row.middle_name || '-';
                    }
                    if (header.key === 'course'){
                        return row.course || 'N/A';
                    }
                    return row[header.key] || '';
                });

                worksheet3.addRow(rowData);
            });

            // Adjust column widths
            worksheet3.columns = [
                { width: 30 },  // ID
                { width: 20 }, // Last Name
                { width: 20 }, // First Name
                { width: 20 }, // Course
                { width: 30 }  // Count
            ];

            // WEEKLY
            // __________________________WORKSHEET 4_____________________________
            worksheet4.mergeCells('A1:E1');
            worksheet4.getCell('A1').value = 'Weekly Users Report';
            worksheet4.getCell('A1').font = { bold: true, size: 28 };
            worksheet4.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet4.getCell('A1:E1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };

            // Add the header in the third row
            const headerRow4 = frequentUsers.map(header => header.displayName);
            worksheet4.addRow(headerRow4);

            frequentWeeklyUsersData.forEach(row => {
                const rowData = frequentUsers.map(header => {
                    if (header.key === 'last_name') {
                        return row.last_name || '-';
                    }
                    if (header.key === 'first_name') {
                        return row.first_name || '-';
                    }
                    if (header.key === 'middle_name') {
                        return row.middle_name || '-';
                    }
                    if (header.key === 'course'){
                        return row.course || 'N/A';
                    }
                    return row[header.key] || '';
                });

                worksheet4.addRow(rowData);
            });

            // Adjust column widths
            worksheet4.columns = [
                { width: 30 },  // ID
                { width: 20 }, // Last Name
                { width: 20 }, // First Name
                { width: 20 }, // Course
                { width: 30 }  // Count
            ];

             // MONTHLT
            // __________________________WORKSHEET 5_____________________________
            worksheet5.mergeCells('A1:E1');
            worksheet5.getCell('A1').value = 'Monthly Users Report';
            worksheet5.getCell('A1').font = { bold: true, size: 28 };
            worksheet5.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet5.getCell('A1:E1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };

            // Add the header in the third row
            const headerRow5 = frequentUsers.map(header => header.displayName);
            worksheet5.addRow(headerRow5);

            frequentMonthlyUsersData.forEach(row => {
                const rowData = frequentUsers.map(header => {
                    if (header.key === 'last_name') {
                        return row.last_name || '-';
                    }
                    if (header.key === 'first_name') {
                        return row.first_name || '-';
                    }
                    if (header.key === 'middle_name') {
                        return row.middle_name || '-';
                    }
                    if (header.key === 'course'){
                        return row.course || 'N/A';
                    }
                    return row[header.key] || '';
                });

                worksheet5.addRow(rowData);
            });

            // Adjust column widths
            worksheet5.columns = [
                { width: 30 },  // ID
                { width: 20 }, // Last Name
                { width: 20 }, // First Name
                { width: 20 }, // Course
                { width: 30 }  // Count
            ];

            // YEARLY
            // __________________________WORKSHEET 6_____________________________
            worksheet6.mergeCells('A1:E1');
            worksheet6.getCell('A1').value = 'Yearly Users Report';
            worksheet6.getCell('A1').font = { bold: true, size: 28 };
            worksheet6.getCell('A1').alignment = { horizontal: 'center', vertical: 'center' };
            worksheet6.getCell('A1:E1').fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: 'FFC08080' }
            };

            // Add the header in the third row
            const headerRow6 = frequentUsers.map(header => header.displayName);
            worksheet6.addRow(headerRow6);

            frequentYearlyUsersData.forEach(row => {
                const rowData = frequentUsers.map(header => {
                    if (header.key === 'last_name') {
                        return row.last_name || '-';
                    }
                    if (header.key === 'first_name') {
                        return row.first_name || '-';
                    }
                    if (header.key === 'middle_name') {
                        return row.middle_name || '-';
                    }
                    if (header.key === 'course'){
                        return row.course || 'N/A';
                    }
                    return row[header.key] || '';
                });

                worksheet6.addRow(rowData);
            });

            // Adjust column widths
            worksheet6.columns = [
                { width: 30 },  // ID
                { width: 20 }, // Last Name
                { width: 20 }, // First Name
                { width: 20 }, // Course
                { width: 30 }  // Count
            ];





            //_______________________________ HANDLING_______________________________//
            // Save the file
            workbook.xlsx.writeBuffer().then(buffer => {
                const blob = new Blob([buffer], { type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" });
                saveAs(blob, "Attendance.xlsx");
            });
            // Unset the session data after download
            fetch('<?php echo base_url("master/unset_excel_data"); ?>', { method: 'POST' })
                .then(response => console.log('Session data unset successfully'))
                .catch(error => console.error('Error unsetting session data:', error));
        }

        downloadExcel();
    }

</script>






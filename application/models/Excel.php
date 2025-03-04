<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Excel extends CI_Model
{
    public function __construct() {
        parent::__construct();
        $this->load->database(); // Ensure the database is loaded
    }

    /**
     * Fetch filtered data for Excel export
     * 
     * @param string $startDate
     * @param string $endDate
     * @param string $course
     * @param string $college
     * @param string $category
     * @return array
     */
    public function get_filtered_data($category, $startDate, $endDate, $course, $college) {
            // Define the base query
            $this->db->select([
                'a.id', 'a.qrcode', 'a.rfid', 'a.date', 'a.in_time', 'a.out_time', 'a.srcode', 'a.kiosk', 'a.category',
                
                's.srcode AS student_srcode',
                's.first_name AS student_first_name',
                's.middle_name AS student_middle_name',
                's.last_name AS student_last_name',
                's.course AS student_course', 
                's.college AS student_college',
                
                'f.srcode AS faculty_srcode',
                'f.first_name AS faculty_first_name',
                'f.middle_name AS faculty_middle_name',
                'f.last_name AS faculty_last_name',
                'f.course AS faculty_course',

                'v.name AS visitor_name',
                'v.rfid AS visitor_rfid',
                // 'v.id AS visitor_srcode'
            ]);
            
            $this->db->from('attend a');
            $this->db->join('student s', 'a.srcode = s.srcode', 'left');
            $this->db->join('faculty f', 'a.srcode = f.srcode', 'left');
            $this->db->join('visitor v', 'a.rfid = v.rfid', 'left');
            
        

        // Apply filters
        if (!empty($startDate)) {
            $this->db->where('a.date >=', $startDate); // Explicitly use the table alias
        }
        if (!empty($endDate)) {
            $this->db->where('a.date <=', $endDate); // Explicitly use the table alias
        }

        if ((!empty($course) && $course != 'All') && ($category === 'student' || $category === 'Student')) {
            $this->db->where('s.course', $course); // Referencing 'course' from 'student' table
        }

        if ((!empty($college) && $college != 'All') && ($category === 'student' || $category === 'Student')) {
            $this->db->where('s.college', $college); // Referencing 'college' from 'student' table
        }

        if (!empty($category) && $category != 'All') {
            $this->db->where('LOWER(a.category)', strtolower($category)); // Referencing 'category' from 'attend' table, make sure it's lowercase
        }

        if ((!empty($college) && $college != 'All') && ($category === 'faculty' || $category === 'Faculty')) {
            $this->db->where('f.course', $college); // Referencing 'course' from 'faculty ' table
        }

        // Execute the query and fetch the result when not counting
        $query = $this->db->get();
        return $query->result_array(); // Return as an array of data
    }

    //ANG CODE NA 'TO AY MASAAKIT SA MATA. Kaya Paikliin kaso tinatamad na yung gumawa. awa na lang.
    public function get_frequent_users($category) {
        $this->db->select('attend.srcode, COUNT(*) as count');
    
        // Default query with attend table
        $this->db->from('attend');
    
        // Left joins for all categories
        $this->db->join('student', 'student.srcode = attend.srcode AND attend.category = "student"', 'left');
        $this->db->join('faculty', 'faculty.srcode = attend.srcode AND attend.category = "faculty"', 'left');
        $this->db->join('visitor', 'visitor.id = attend.srcode AND attend.category = "visitor"', 'left');
    
        // Conditional selection based on category
        if ($category === 'student' || $category === 'Student') {
            $this->db->select('student.first_name, student.last_name');
            $this->db->where('attend.category', 'student');
        } elseif ($category === 'faculty' || $category === 'Faculty') {
            $this->db->select('faculty.first_name AS first_name, faculty.last_name AS last_name');
            $this->db->where('attend.category', 'faculty');
        } elseif ($category === 'visitor' || $category === 'Visitor') {
            $this->db->select('visitor.name');
            $this->db->where('attend.category', 'visitor');
        } elseif ($category === 'all' || $category === 'All') {
            // Select all possible name fields
            $this->db->select('
                COALESCE(student.first_name, faculty.first_name, visitor.name) AS first_name, 
                COALESCE(student.last_name, faculty.last_name) AS last_name,
                COALESCE(student.course, faculty.course) AS course,
            ');
        } else {
            return []; // Return empty if category doesn't match
        }
    
        $this->db->group_by('attend.srcode');
        $this->db->order_by('count', 'desc');
    
        $query = $this->db->get();
        $result = $query->result_array();
        foreach ($result as &$row) {
            $row['category'] = $category;
        }
        return $result;
    }
    public function get_frequent_daily_users($category){
        $this->db->select('attend.srcode, COUNT(*) as count');
        $this->db->from('attend');
    
        // Filter records for the current day
        $this->db->where('date =', date('Y-m-d'));

    
        // Left joins for all categories
        $this->db->join('student', 'student.srcode = attend.srcode AND attend.category = "student"', 'left');
        $this->db->join('faculty', 'faculty.srcode = attend.srcode AND attend.category = "faculty"', 'left');
        $this->db->join('visitor', 'visitor.id = attend.srcode AND attend.category = "visitor"', 'left');
    
        // Conditional selection based on category
        if ($category === 'student' || $category === 'Student') {
            $this->db->select('student.first_name, student.last_name, student.course');
            $this->db->where('attend.category', 'student');
        } elseif ($category === 'faculty' || $category === 'Faculty') {
            $this->db->select('faculty.first_name AS first_name, faculty.last_name AS last_name, faculty.course');
            $this->db->where('attend.category', 'faculty');
        } elseif ($category === 'visitor' || $category === 'Visitor') {
            $this->db->select('visitor.name');
            $this->db->where('attend.category', 'visitor');
        } elseif ($category === 'all' || $category === 'All') {
            // Select all possible name fields
            $this->db->select('
                COALESCE(student.first_name, faculty.first_name, visitor.name) AS first_name, 
                COALESCE(student.last_name, faculty.last_name) AS last_name,
                COALESCE(student.course, faculty.course) AS course,
            ');
        } else {
            return []; // Return empty if category doesn't match
        }
    
        $this->db->group_by('attend.srcode');
        $this->db->order_by('count', 'desc');
    
        $query = $this->db->get();
        $result = $query->result_array();
        foreach ($result as &$row) {
            $row['category'] = $category;
        }
        return $result;
    }

    public function get_frequent_weekly_users($category){
        $this->db->select('attend.srcode, COUNT(*) as count');
        $this->db->from('attend');
    
        // Filter records for the current week
        $this->db->where('date >=', date('Y-m-d', strtotime('-7 days')));
        $this->db->where('date <=', date('Y-m-d'));

    
        // Left joins for all categories
        $this->db->join('student', 'student.srcode = attend.srcode AND attend.category = "student"', 'left');
        $this->db->join('faculty', 'faculty.srcode = attend.srcode AND attend.category = "faculty"', 'left');
        $this->db->join('visitor', 'visitor.id = attend.srcode AND attend.category = "visitor"', 'left');
    
        // Conditional selection based on category
        if ($category === 'student' || $category === 'Student') {
            $this->db->select('student.first_name, student.last_name, student.course');
            $this->db->where('attend.category', 'student');
        } elseif ($category === 'faculty' || $category === 'Faculty') {
            $this->db->select('faculty.first_name AS first_name, faculty.last_name AS last_name, faculty.course');
            $this->db->where('attend.category', 'faculty');
        } elseif ($category === 'visitor' || $category === 'Visitor') {
            $this->db->select('visitor.name');
            $this->db->where('attend.category', 'visitor');
        } elseif ($category === 'all' || $category === 'All') {
            // Select all possible name fields
            $this->db->select('
                COALESCE(student.first_name, faculty.first_name, visitor.name) AS first_name, 
                COALESCE(student.last_name, faculty.last_name) AS last_name,
                COALESCE(student.course, faculty.course) AS course,
            ');
        } else {
            return []; // Return empty if category doesn't match
        }
    
        $this->db->group_by('attend.srcode');
        $this->db->order_by('count', 'desc');
    
        $query = $this->db->get();
        $result = $query->result_array();
        foreach ($result as &$row) {
            $row['category'] = $category;
        }
        return $result;
    }

    public function get_frequent_users_for_this_month($category) {
        $this->db->select('attend.srcode, COUNT(*) as count');
        $this->db->from('attend');
    
        // Filter records for the current month
        $this->db->where('date >=', date('Y-m-01'));
        $this->db->where('date <=', date('Y-m-t'));
    
        // Left joins for all categories
        $this->db->join('student', 'student.srcode = attend.srcode AND attend.category = "student"', 'left');
        $this->db->join('faculty', 'faculty.srcode = attend.srcode AND attend.category = "faculty"', 'left');
        $this->db->join('visitor', 'visitor.id = attend.srcode AND attend.category = "visitor"', 'left');
    
        // Conditional selection based on category
        if ($category === 'student' || $category === 'Student') {
            $this->db->select('student.first_name, student.last_name, student.course');
            $this->db->where('attend.category', 'student');
        } elseif ($category === 'faculty' || $category === 'Faculty') {
            $this->db->select('faculty.first_name AS first_name, faculty.last_name AS last_name, faculty.course');
            $this->db->where('attend.category', 'faculty');
        } elseif ($category === 'visitor' || $category === 'Visitor') {
            $this->db->select('visitor.name');
            $this->db->where('attend.category', 'visitor');
        } elseif ($category === 'all' || $category === 'All') {
            // Select all possible name fields
            $this->db->select('
                COALESCE(student.first_name, faculty.first_name, visitor.name) AS first_name, 
                COALESCE(student.last_name, faculty.last_name) AS last_name,
                COALESCE(student.course, faculty.course) AS course,
            ');
        } else {
            return []; // Return empty if category doesn't match
        }
    
        $this->db->group_by('attend.srcode');
        $this->db->order_by('count', 'desc');
    
        $query = $this->db->get();
        $result = $query->result_array();
        foreach ($result as &$row) {
            $row['category'] = $category;
        }
        return $result;
    }
    public function get_frequent_users_for_this_year($category){
        $this->db->select('attend.srcode, COUNT(*) as count');
        $this->db->from('attend');
    
        // Filter records for the current Year
        $this->db->where('date >=', date('Y-01-01'));
        $this->db->where('date <=', date('Y-12-31'));
    
        // Left joins for all categories
        $this->db->join('student', 'student.srcode = attend.srcode AND attend.category = "student"', 'left');
        $this->db->join('faculty', 'faculty.srcode = attend.srcode AND attend.category = "faculty"', 'left');
        $this->db->join('visitor', 'visitor.id = attend.srcode AND attend.category = "visitor"', 'left');
    
        // Conditional selection based on category
        if ($category === 'student' || $category === 'Student') {
            $this->db->select('student.first_name, student.last_name, student.course');
            $this->db->where('attend.category', 'student');
        } elseif ($category === 'faculty' || $category === 'Faculty') {
            $this->db->select('faculty.first_name AS first_name, faculty.last_name AS last_name, faculty.course');
            $this->db->where('attend.category', 'faculty');
        } elseif ($category === 'visitor' || $category === 'Visitor') {
            $this->db->select('visitor.name');
            $this->db->where('attend.category', 'visitor');
        } elseif ($category === 'all' || $category === 'All') {
            // Select all possible name fields
            $this->db->select('
                COALESCE(student.first_name, faculty.first_name, visitor.name) AS first_name, 
                COALESCE(student.last_name, faculty.last_name) AS last_name,
                COALESCE(student.course, faculty.course) AS course,
            ');
        } else {
            return []; // Return empty if category doesn't match
        }
    
        $this->db->group_by('attend.srcode');
        $this->db->order_by('count', 'desc');
    
        $query = $this->db->get();
        $result = $query->result_array();
        foreach ($result as &$row) {
            $row['category'] = $category;
        }
        return $result;
    }
    
    public function get_count_per_college($category, $startDate, $endDate) {
        $this->db->from('attend');

        $this->db->where('attend.category', strtolower($category));
        $this->db->where('date >=', $startDate);
        $this->db->where('date <=', $endDate);

        if ($category === "Student"){
            //ensure that only one records get counted
            // $this->db->select('student.college, COUNT(DISTINCT attend.srcode, attend.date) as count');
            $this->db->select('student.college, COUNT(student.srcode) as count');
            $this->db->join('student', 'student.srcode = attend.srcode', 'left');
            $this->db->where('student.status', 1);
            $this->db->group_by('student.college');
        }else if ($category === "Faculty"){
            // $this->db->select('faculty.course, COUNT(DISTINCT attend.srcode, attend.date) as count');
            $this->db->select('faculty.course, COUNT(faculty.srcode) as count');
            $this->db->join('faculty', 'faculty.srcode = attend.srcode', 'left');
            $this->db->where('faculty.status', 1);
            $this->db->group_by('faculty.course');
        }else{
            return [
                '0' => [
                    'data' => 'No Data.',
                    'college' => null,
                    'course' => null,
                    'count' => null,
                    'dateFrom' => $startDate,
                    'dateTo' => $endDate
                ]
            ];
        }
        $query = $this->db->get();

        $result = $query->result_array();

        foreach ($result as &$row) {
            $row['category'] = $category;
            $row['dateFrom'] = $startDate;
            $row['dateTo'] = $endDate;
        }



        return $result;
    }
    public function student_count_per_course_and_college($category, $startDate, $endDate) { 
        if ($category === 'Student'){
            // $this->db->select('s.course, s.college, COUNT(DISTINCT a.srcode, a.date) as count');
            // $this->db->from('attend a');
            $this->db->select('s.course, s.college, COUNT(*) as count');
            $this->db->from('attend a');
            $this->db->join('student s', 'a.srcode = s.srcode', 'left');
            $this->db->where('s.course IS NOT NULL');  // Exclude NULL courses
            $this->db->where('s.college IS NOT NULL'); // Exclude NULL colleges
            $this->db->where('s.status', 1);
            $this->db->where('date >=', $startDate);
            $this->db->where('date <=', $endDate);
            $this->db->group_by(['s.course', 's.college']);

            
            $query = $this->db->get();

            $result = $query->result_array();
            foreach ($result as &$row) {
                $row['category'] = $category;
                $row['dateFrom'] = $startDate;
                $row['dateTo'] = $endDate;
            }
            return $result;
        }else{
            return [
                '0' => [
                    'data' => 'No Data.',
                    'college' => null,
                    'course' => null,
                    'count' => null,
                    'dateFrom' => $startDate,
                    'dateTo' => $endDate
                ]
            ];
        }
    }

    public function get_count_per_non_active($category,  $startDate, $endDate) {
        $this->db->from('attend');
        $this->db->where('attend.category', strtolower($category));
        $this->db->where('date >=', $startDate);
        $this->db->where('date <=', $endDate);

        if ($category === "Student"){
            //ensure that only one records get counted
            // $this->db->select('student.college, COUNT(DISTINCT attend.srcode, attend.date) as count');
            $this->db->select('student.college, COUNT(student.srcode) as count');
            $this->db->join('student', 'student.srcode = attend.srcode', 'left');
            $this->db->where('student.status', 0);
            $this->db->group_by('student.college');
        }else if ($category === "Faculty"){
            //ensure that only one records get counted
            // $this->db->select('faculty.course, COUNT(DISTINCT attend.srcode, attend.date) as count');
            $this->db->select('faculty.course, COUNT(faculty.srcode) as count');
            $this->db->join('faculty', 'faculty.srcode = attend.srcode', 'left');
            $this->db->where('faculty.status', 0);
            $this->db->group_by('faculty.course');
        }else{
            return [
                '0' => [
                    'data' => 'No Data.',
                    'college' => null,
                    'course' => null,
                    'count' => null,
                    'dateFrom' => $startDate,
                    'dateTo' => $endDate
                ]
            ];
        }
        $query = $this->db->get();

        $result = $query->result_array();
        foreach ($result as &$row) {
            $row['category'] = $category;
            $row['dateFrom'] = $startDate;
            $row['dateTo'] = $endDate;
        }
        return $result;
    }

    public function get_non_active_student_count_per_course_and_college($category, $startDate, $endDate) { 
        if ($category === 'Student'){
            // $this->db->select('s.course, s.college, COUNT(DISTINCT a.srcode, a.date) as count');
            // $this->db->from('attend a');
            $this->db->select('s.course, s.college, COUNT(*) as count');
            $this->db->from('attend a');
            $this->db->join('student s', 'a.srcode = s.srcode', 'left');
            $this->db->where('s.course IS NOT NULL');  // Exclude NULL courses
            $this->db->where('s.college IS NOT NULL'); // Exclude NULL colleges
            $this->db->where('s.status', 0);
            $this->db->where('date >=', $startDate);
            $this->db->where('date <=', $endDate);
            $this->db->group_by(['s.course', 's.college']);
            
            $query = $this->db->get();

            $result = $query->result_array();
            foreach ($result as &$row) {
                $row['category'] = $category;
                $row['dateFrom'] = $startDate;
                $row['dateTo'] = $endDate;
            }
            return $result;
        }else{
            return [
                '0' => [
                    'data' => 'No Data.',
                    'college' => null,
                    'course' => null,
                    'count' => null,
                    'dateFrom' => $startDate,
                    'dateTo' => $endDate
                ]
            ];
        }
    }
    
    // public function get_filtered_count_data($category, $startDate, $endDate, $course, $college, $countOnly) {
    //     // Define the base query
    //     $this->db->select('
    //         a.date, s.course, s.college
    //     ');
    //     $this->db->from('attend a');
    //     $this->db->join('student s', 'a.srcode = s.srcode', 'left');
    
    //     // Apply filters
    //     if (!empty($startDate)) {
    //         $this->db->where('a.date >=', $startDate);
    //     }
    
    //     if (!empty($endDate)) {
    //         $this->db->where('a.date <=', $endDate);
    //     }
    
    //     if (!empty($course) && $course != 'All') {
    //         $this->db->where('s.course', $course);
    //     }
    
    //     if (!empty($college) && $college != 'All') {
    //         $this->db->where('s.college', $college);
    //     }
    
    //     if ($countOnly) {
    //         if ($course == 'All' && $college == 'All') {
    //             // Count grouped by courses and colleges
    //             $this->db->select('s.course, s.college, COUNT(*) as count');
    //             $this->db->group_by(['s.course', 's.college']);
    //         } elseif ($course == 'All') {
    //             // Count grouped by courses only
    //             $this->db->select('s.course, COUNT(*) as count');
    //             $this->db->group_by('s.course');
    //         } elseif ($college == 'All') {
    //             // Count grouped by colleges only
    //             $this->db->select('s.college, COUNT(*) as count');
    //             $this->db->group_by('s.college');
    //         } else {
    //             // Count without grouping
    //             $this->db->select('COUNT(*) as count');
    //         }
    
    //         $query = $this->db->get();
    //         $result = $query->result_array();
    //         $result[] = [
    //             'date_from' => $startDate,
    //             'date_to' => $endDate
    //         ];
    //         return $result; // Return the grouped counts or total count with date range
    //     } else {
    //         // Execute the query and fetch detailed results
    //         $query = $this->db->get();
    //         $result = $query->result_array();
    //         //HINDI PA MAAYOSSSSSSSSSSS
    //         $result[0]['date_from'] = $startDate;
    //         $result[0]['date_to'] = $endDate;
    //         return $result;
    //     }
    // }

}
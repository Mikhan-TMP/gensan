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
     * @return array
     */
    public function get_filtered_data($startDate, $endDate, $course, $college) {
        // Define the base query
        $this->db->select('
            a.id, a.qrcode, a.rfid, a.date, a.in_time, a.out_time, a.srcode, a.kiosk,
            s.srcode, s.first_name AS student_first_name, 
            s.middle_name AS student_middle_name, s.last_name AS student_last_name, s.course, s.college
        '); // Explicitly select required columns
        $this->db->from('attend a');
        $this->db->join('student s', 'a.srcode = s.srcode', 'left');
    
        // Apply filters
        if (!empty($startDate)) {
            $this->db->where('a.date >=', $startDate); // Explicitly use the table alias
        }
    
        if (!empty($endDate)) {
            $this->db->where('a.date <=', $endDate); // Explicitly use the table alias
        }
    
        if (!empty($course) && $course != 'All') {
            $this->db->where('s.course', $course); // Referencing 'course' from 'student' table
        }
    
        if (!empty($college) && $college != 'All') {
            $this->db->where('s.college', $college); // Referencing 'college' from 'student' table
        }
    
        // Execute the query and fetch the result
        $query = $this->db->get();
        return $query->result_array(); // Return as an array of data
    }
    
}
<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin_model extends CI_Model
{
  public function getAdmin($username)
  {
    $account = $this->db->get_where('users', ['username' => $username])->row_array();
    $query = "SELECT  users.id AS `id`,
                      users.username AS `name`,
                      users.image AS `image`,
                      users.fname AS `fname`,
                      users.lname AS `lname`,
                      users.email AS `email`,
                      users.floor AS `floor`,
                      users.permision AS `permision`
                FROM  users
               WHERE  username = '$username'";
    return $this->db->query($query)->row_array();
  }
  public function getDataForDashboard()
  {
    $d['shift'] = $this->db->get('shift')->result_array();
    $d['c_shift'] = $this->db->get('shift')->num_rows();
    $d['location'] = $this->db->get('location')->result_array();
    $d['c_location'] = $this->db->get('location')->num_rows()-1;
    $d['student'] = $this->db->get('student')->result_array();
    $d['c_student'] = $this->db->get('student')->num_rows();
    $d['employee'] = $this->db->get('faculty')->result_array();
    $d['c_employee'] = $this->db->get('faculty')->num_rows();
    $d['c_attend'] = $this->db->get('attend')->num_rows();
    $d['department'] = $this->db->get('department')->result_array();
    $d['c_department'] = $this->db->get('department')->num_rows();
    $d['users'] = $this->db->get('users')->result_array();
    $d['c_users'] = $this->db->get('users')->num_rows();

    return $d;
  }

  
  public function getDepartment()
  {
    $query = "SELECT  department.name AS d_name,
                      department.id AS d_id,
                      COUNT(employee_department.employee_id) AS d_quantity
                FROM  department
                JOIN  employee_department
                  ON  department.id = employee_department.department_id
            GROUP BY  d_name
    ";
    return $this->db->query($query)->result_array();
  }

  public function getDepartmentEmployees($d_id)
  {
    $query = "SELECT  employee_department.employee_id AS e_id,
                      employee.name AS e_name,
                      employee.image AS e_image,
                      employee.hire_date AS e_hdate
                FROM  employee_department
          INNER JOIN  employee
                  ON  employee_department.employee_id = employee.id
               WHERE  employee_department.department_id = '$d_id'
    ";
    return $this->db->query($query)->result_array();
  }

  public function getEmployeeStatsbyCurrent($e_id)
  {
    $year = date('Y', time());
    $month = date('m', time());
    $query = "SELECT  in_time AS `date`,
                      out_time AS `out_time`,
                      shift_id AS `shift`,
                      in_status AS `status`,
                      lack_of AS `lack_of`
                FROM  attendance
                WHERE  employee_id = $e_id
                  AND  YEAR(FROM_UNIXTIME(in_time)) = $year
                  AND  MONTH(FROM_UNIXTIME(in_time)) = $month
            ORDER BY  `date` ASC";

    return $this->db->query($query)->result_array();
  }
  public function  get_attend()  
  {
    // $date = date("Y-m-d", strtotime("today"));
    // $query = "SELECT  *  FROM  booking WHERE  code = '$srcode' AND date = '$date'";    
    $query = "SELECT  *  FROM  attend WHERE 1 ORDER BY  `date` DESC ";    
    return $this->db->query($query)->result_array();    
    
  }
  
}

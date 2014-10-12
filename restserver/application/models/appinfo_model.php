<?php

class Appinfo_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function get_app_info($appinfo = FALSE) {
        if ($appinfo === FALSE) {
            $this->db->select('app_name, app_version, app_desc');
            $this->db->from('app_info');
            $query = $this->db->get();
            return $query->result_array();
        }

        $query = $this->db->get_where('posts', array('appinfo' => $appinfo));
        return $query->row_array();
    }

}

?>
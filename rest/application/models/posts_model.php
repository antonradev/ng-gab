<?php

class Posts_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function get_posts($posts_array = FALSE) {
        if ($posts_array === FALSE) {
            $this->db->select('post_id, user_id, post_date, post_content, post_mood');
            $this->db->from('posts');
            $query = $this->db->get();
            return $query->result_array();
        }

        $query = $this->db->get_where('posts', array('posts' => $posts_array));
        return $query->row_array();
    }

    public function post_post() {
        $_POST = json_decode(file_get_contents('php://input'), true);
        $data = array(
            'user_id' => '1',
            'post_date' => date('Y-m-d H:i:s'),
            'post_content' => $_POST['post_content'],
            'post_mood' => $_POST['post_mood']
        );
        $this->db->insert('posts', $data);
    }

}

?>
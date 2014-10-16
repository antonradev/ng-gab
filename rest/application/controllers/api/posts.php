<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Posts
 *
 * Used to load the posts in the main feed
 *
 * @package		CodeIgniter     https://ellislab.com/codeigniter
 * @subpackage          Rest Server     https://github.com/chriskacerguis/codeigniter-restserver
 * @category            Controller
 * @author		Anton Radev
 * @link		http://antonradev.com
 */
// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require APPPATH . '/libraries/REST_Controller.php';

class Posts extends REST_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('posts_model');
    }

    public function posts_list_get() {

        $posts_list = $this->posts_model->get_posts();

        if ($posts_list) {
            $this->response($posts_list, 200); // Success Header status 200
        } else {
            $this->response(array('error' => 'Posts could not be found'), 404);
        }
    }

    function post_post() {
        $this->posts_model->post_post();
        $this->response("Success", 200); // 200 being the HTTP response code
    }

}

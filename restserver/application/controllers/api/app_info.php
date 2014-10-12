<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * App Info
 *
 * Used to load all needed default information for the public views
 *
 * @package		CodeIgniter     https://ellislab.com/codeigniter
 * @subpackage          Rest Server     https://github.com/chriskacerguis/codeigniter-restserver
 * @category            Controller
 * @author		Anton Radev
 * @link		http://antonradev.com
 */
// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require APPPATH . '/libraries/REST_Controller.php';

class App_Info extends REST_Controller {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('appinfo_model');
    }
    
    public function info_get() {
        
        $appinfo = $this->appinfo_model->get_app_info();
        
        if ($appinfo) {
            $this->response($appinfo, 200); // Success Header status 200
        } else {
            $this->response(array('error' => 'App Info data could not be found'), 404);
        }
        
    }
    
}
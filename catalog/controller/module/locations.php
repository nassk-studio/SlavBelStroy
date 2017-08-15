<?php
class ControllerModuleLocations extends Controller {
	public function index() {
		$this->load->language('module/locations');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['locations'] = array();
		$this->load->model('tool/image');
		$this->load->model('module/locations');
		$locations = $this->model_module_locations->getLocations(); 

		foreach($locations as $location_info) {
			if ($location_info) {
				if ($location_info['image']) {
					$image = $this->model_tool_image->resize($location_info['image'], $this->config->get('config_image_location_width'), $this->config->get('config_image_location_height'));
				} else {
					$image = false;
				}
				$data['locations'][] = array(
					'location_id' => $location_info['location_id'],
					'name'        => $location_info['name'],
					'address'     => nl2br($location_info['address']),
					'geocode'     => $location_info['geocode'],
					'telephone'   => $location_info['telephone'],
					'fax'         => $location_info['fax'],
					'image'       => $image,
					'open'        => nl2br($location_info['open']),
					'comment'     => $location_info['comment']
				);
			}
		}

		$abspath = $_SERVER["DOCUMENT_ROOT"];
		require_once( $abspath . '/system/library/SxGeo/SxGeo.php' );
		$SxGeo = new SxGeo('system/library/SxGeo/SxGeoCity.dat');
		$ip = $_SERVER['REMOTE_ADDR'];
		$city_arr = $SxGeo->get($ip);
		if($city_arr){
			$data['city_lat'] = $city_arr['city']['lat'];
			$data['city_lon'] = $city_arr['city']['lon'];
		} elseif(isset($location_info['geocode'])){
			$coords = explode(',', $location_info['geocode']);
			$data['city_lat'] = $coords[0];
			$data['city_lon'] = $coords[1];
		} else {
			$data['city_lat'] = '55.7533';
			$data['city_lon'] = '37.6199';
		}

		if (version_compare(VERSION, '2.2.0.0', '<') == true) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/locations.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/locations.tpl', $data);
			} else {
				return $this->load->view('default/template/module/locations.tpl', $data);
			}
		} else {
			return $this->load->view('module/locations', $data);
		}
	}
}
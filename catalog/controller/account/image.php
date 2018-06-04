<?php 
class ControllerAccountImage extends Controller { 
	public function index() {
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/account', '', 'SSL');
	  
	  		$this->redirect($this->url->link('account/login', '', 'SSL'));
    	} 
	
		$this->language->load('account/image');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['text_image'] = $this->language->get('text_image');
		$this->data['text_customer_image'] = $this->language->get('text_customer_image');
		$this->data['text_date_added'] = $this->language->get('text_date_added');
		$this->data['text_no_image'] = $this->language->get('text_no_image');
		
		$this->load->model('account/customer');

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(       	
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('account/account', '', 'SSL'),
        	'separator' => $this->language->get('text_separator')
      	);
		
		$this->data['breadcrumbs'][] = array(       	
        	'text'      => $this->language->get('text_image'),
			'href'      => $this->url->link('account/image', '', 'SSL'),
        	'separator' => $this->language->get('text_separator')
      	);
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		//Added By Tirthraj.
		$this->data['images'] = array();
		$customer_images = $this->model_account_customer->getImagesByCustomerId($this->customer->getId());
		
		$this->load->model('tool/image');
		
		foreach($customer_images as $customer_image){
			$this->data['images'][] = array(
				'image'		=> $this->model_tool_image->resize($customer_image['customer_image'], 100,100),
				'date_added' => date('d/m/y', strtotime($customer_image['date_added']))
			);
		}
		
		//End Here.
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/image.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/image.tpl';
		} else {
			$this->template = 'default/template/account/image.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'		
		);
				
		$this->response->setOutput($this->render());
  	}
}
?>
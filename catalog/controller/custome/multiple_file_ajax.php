<?php 


class ControllerCustomeMultipleFileAjax extends Controller
{
	
	
	public function index(){

		if(isset($_POST['customer_id']) &&  isset($this->request->files['file1']['name']) &&
											isset($this->request->files['file2']['name']) && 
											isset($this->request->files['file3']['name'])) {

			if ($this->request->server['HTTPS']) {
				//$server = $this->config->get('config_ssl');
				$server = 'http://10.184.140.222/shop/';
			} else {
				//$server = $this->config->get('config_url');
				$server = 'http://10.184.140.222/shop/';
			}


			$this->load->model('custome/step_process');

			$filename1 = $this->request->files['file1']['name'];
			$filename2 = $this->request->files['file2']['name'];
			$filename3 = $this->request->files['file3']['name'];
			$ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
			$ext2 = pathinfo($filename2, PATHINFO_EXTENSION);
			$ext3 = pathinfo($filename3, PATHINFO_EXTENSION);

			$image_path1 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".$_POST['image_name1'].".".$ext1;
			$image_path2 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".$_POST['image_name2'].".".$ext2;
			$image_path3 = CUSTOME_DIR_UPLOAD.$_POST['customer_id']."_".$_POST['image_name3'].".".$ext3;

			


			if(($ext1 == 'png' || $ext1 == 'jpg' || $ext1 == 'jpeg') && 
				($ext2 == 'png' || $ext2 == 'jpg' || $ext2 == 'jpeg') &&
				($ext3 == 'png' || $ext3 == 'jpg' || $ext3 == 'jpeg')){


				$ret1 = move_uploaded_file($this->request->files['file1']['tmp_name'], $image_path1);
				$ret2 = move_uploaded_file($this->request->files['file2']['tmp_name'], $image_path2);
				$ret3 = move_uploaded_file($this->request->files['file3']['tmp_name'], $image_path3);


				$image_path1 = $server."image/custome/customers/".$_POST['customer_id']."_".$_POST['image_name1'].".".$ext1;
				$image_path2 = $server."image/custome/customers/".$_POST['customer_id']."_".$_POST['image_name2'].".".$ext2;
				$image_path3 = $server."image/custome/customers/".$_POST['customer_id']."_".$_POST['image_name3'].".".$ext3;
				

				if($ret1 && $ret2 && $ret3) {

					$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name1'], $image_path1);
					$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name2'], $image_path2);
					$this->model_custome_step_process->updateCustomerImagePath($_POST['customer_id'], $_POST['image_name3'], $image_path3);

					$this->model_custome_step_process->updateCustomerInfo($_POST['customer_id'],$_POST['customer_name'],$_POST['customer_address'], $_POST['customer_phone'],$_POST['customer_time']);

					$this->model_custome_step_process->updateCustomerState($_POST['customer_id'], "state_2", 1);
					$this->model_custome_step_process->updateCurrentStep($_POST['customer_id'], 2);

					echo "done";

				}else{
					echo "failed";
				}

			} else {
				echo "failed";
			}

		}else{
			echo "failed";
		}
		
	}

}

?>
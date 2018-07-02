<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die;
}

$top_title = "Редактировать работу";
$work = R::load('works', $_GET['id']);
$errors = array();

if ( isset($_POST['workUpdate'])) {

	if ( trim($_POST['workTitle']) == '') {
		$errors[] = ['title' => 'Введите Название Поста' ];
	}

	if ( empty($errors)) {
		$work->title = htmlentities($_POST['workTitle']);
		$work->text = $_POST['workText'];
		$work->time = $_POST['times'];
		$work->pages = $_POST['pages'];
		$work->budget = $_POST['budget'];
		$work->result = $_POST['resultworks'];
		$work->workflow_technologies = $_POST['workflow_technologies'];
		$work->js_technologies = $_POST['js_technologies'];
		$work->github_url = $_POST['github_url'];
		$work->site_url = $_POST['site_url'];
		$work->authorId = $_SESSION['logged_user']['id'];


		if ( isset($_FILES["workImg"]["name"]) && $_FILES["workImg"]["tmp_name"] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES["workImg"]["name"];
			$fileTmpLoc = $_FILES["workImg"]["tmp_name"];
			$fileType = $_FILES["workImg"]["type"];
			$fileSize = $_FILES["workImg"]["size"];
			$fileErrorMsg = $_FILES["workImg"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file propertties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10){
				$errors[] = 'That image has no dimensions';
			}
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			if($fileSize > 4194304) {
				$errors[] = 'Your image file was larger than 4mb';
			} else if (!preg_match("/\.(gif|jpg|png)$/i", $fileName) ) {
				$errors[] = 'Your image file was not jpg, gif or png type';
			} else if ($fileErrorMsg == 1) {
				$errors[] = 'An unknown error occurred';
			}

			$postImgFolderLocation = ROOT . 'usercontent/blog/';

			// Перемещаем загруженный файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = 'File upload failed';
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . $db_file_name;
			$wmax = 940;
			$hmax = 540;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$work->postImg = $db_file_name;

			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "350-" . $db_file_name;
			$wmax = 350;
			$hmax = 186;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);

			$img->writeImage($resized_file);

			$post->postImgSmall = "350-" . $db_file_name;

		}

		if ( @$_POST['deleteImg'] === "on") {
			$imgPathBig = ROOT . 'usercontent/work/' . $work->work_img;
			$imgPathSmall = ROOT . 'usercontent/work/' . $work->work_img_small;

			if ( file_exists($imgPathBig) ) unlink($imgPathBig);
			if ( file_exists($imgPathSmall) ) unlink($imgPathSmall);

			$work->work_img = "";
			$work->work_img_small = "";
			
		}

		R::store($work);

		header('Location: ' . HOST . "blog/work?id=" . $work->id);
		exit();
	}
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/work/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
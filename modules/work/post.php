<?php 
$sql = '
		SELECT 	
			works.id, works.title, works.text, works.work_img, works.date_time, works.author_id, works.time, works.result, works.budget, works.pages, works.workflow_technologies, works.js_technologies, works.github_url, works.site_url,
			users.name, users.secondname
		FROM works 
		INNER JOIN users 
		ON works.author_id = users.id 
		WHERE works.id = ' . $_GET['id'] . ' LIMIT 1';
$work = R::getAll( $sql );
$work = $work[0];
$errors = array();
$top_title = $work['title'];

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/work/work-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";		

?>
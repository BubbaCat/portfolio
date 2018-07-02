<?php 
$sql = '
		SELECT 	
			posts.id, posts.title, posts.text, posts.post_img, posts.date_time, posts.author_id, posts.cat,
			users.name, users.secondname, 
			categories.cat_title 
		FROM posts 

		INNER JOIN users 
		ON posts.author_id = users.id 

		INNER JOIN categories 
		ON posts.cat = categories.id

		WHERE posts.id = ' . $_GET['id'] . ' LIMIT 1';
$post = R::getAll( $sql );
$post = $post[0];

$sql1 = 'Select max(`id`) as `maxid` from `posts`';
$post_id_max = R::getAll( $sql1 );
$post_id_max = $post_id_max[0];
$post_id_max = $post_id_max['maxid'];

$sql2 = 'Select min(`id`) as `minid` from `posts`';
 $post_id_min = R::getAll( $sql2 );
  $post_id_min = $post_id_min[0];
$post_id_min = $post_id_min['minid'];


$sql = 'SELECT comments.text, comments.date_time, comments.user_id, users.name, users.secondname, users.avatar_small FROM comments INNER JOIN users ON comments.user_id = users.id WHERE comments.post_id = ' . $_GET['id'] ;
$comments = R::getAll( $sql );
$errors = array();

if ( isset($_POST['addComment'])) {

	if ( trim($_POST['commentText']) == '') {
		$errors[] = ['title' => 'Введите текст комментария' ];
	}

	if ( empty($errors)) {
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($_SESSION['logged_user']['id']);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		header('Location: ' . HOST . "blog/post?id=" . $_GET['id']);
		exit();
	}
}
			$top_title = $post['title']; 
// Готовим контент для центральной части
ob_start();

include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";		

?>
<div class="container">
	<div class="portfolio-title">
		<h1>Новые <a class="cards-link" href="<?=HOST?>work">работы</a></h1>
	</div>
	<div class="row portfolio-works">
		<?php foreach ($works as $work): ?>
			<?php include(ROOT . "templates/work/work-card.tpl"); ?>
		<?php endforeach ?>
	</div>
</div>


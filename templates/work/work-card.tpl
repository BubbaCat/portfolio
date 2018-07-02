 <div class="col-md-6 col-xl-4">
          <div class="card card-portfolio">
<?php if ( $work['work_img_small'] != "" ) {?>
      <img class="card__img card-portfolio__img" src="<?=HOST?>usercontent/work/<?=$work['work_img_small']?>" alt="<?=$work['title']?>"/>
    <?php } else {?>
      <img class="card__img card-portfolio__img" src="<?=HOST?>usercontent/work/350-200897341.jpg" alt="<?=$work['title']?>"/>
    <?php } ?>
            <h2 class="card__title"><?=$work->title?></h2>
            <a class="button button-regular" href="<?=HOST?>work/post?id=<?=$work->id?> "> Смотреть кейс </a>
          </div>
        </div>
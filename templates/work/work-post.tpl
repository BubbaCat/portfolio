<?php   $sql = 'Select max(`id`) as `maxid` from `works`
';
 $id = R::getAll( $sql );
  $id = $id[0];
$id = $id['maxid']; ?>

    <div class="container">
      <div class="row justify-content-md-end container-work-title">
        <div class="col-lg-9 col-md-8 work-wrap">					
          <div class="work-title"><?=$work['title']?></div>
        </div>
        <div class="col-lg-2 col-md-3 work-wrap"> 
                <?php if ( isAdmin() ) { ?>
        <a class="button button-edit" href="<?=HOST?>work/post-edit?id=<?=$work['id']?>"> Редактировать </a>
          <?php }  ?>
     </div>
      </div>
      <div class="row justify-content-md-center">
        <div class="col-md-10 work-wrap">
          <div class="work-information">
            <div class="work-autor"><?=$work['name']?> <?=$work['secondname']?></div>
            <div class="work-location"> <a href="#">Работы</a></div>
            <div class="work-date-download"><?php echo rus_date("j F Y H:i ", strtotime($work['date_time'])); ?></div>
          </div>
          <div class="work-project">
              <?php if ( $work['work_img'] != "" ) {?>
          <img class="full-post__img" src="<?=HOST?>usercontent/work/<?=$work['work_img']?>" alt="<?=$post['title']?>"/>
        <?php } ?>
      </div>
        </div>
      </div>
      <div class="row justify-content-md-center">
        <div class="col-md-5 work-contant">
          <div class="title3">Кратко о проекте</div>
          <p><?=$work['text']?></p>
          <div class="title6">Время работы над проектом: <?=$work['title']?></div>
          <div class="title6">Страниц сверстано: <?=$work['pages']?></div>
          <div class="title6">Бюджет проекта: <?=$work['budget']?></div>
          <div class="title3">Результат</div>
          <p><?=$work['result']?></p>
        </div>
        <div class="col-md-5 work-contant">
          <div class="title3">Технологии</div>
          <ul class="work-technology-list">
            <li class="work-technology-list-item">HTML5, CSS3.</li>
            <li class="work-technology-list-item"><?=$work['workflow_technologies']?>.</li>
            <li class="work-technology-list-item"><?=$work['js_technologies']?>.</li>
          </ul>
          <div class="title3">Ссылка на проект</div>
          <p class="work-link-projects"><a href="<?=$work['site_url']?>"><?=$work['site_url']?></a></p>
          <div class="title3">Код на github</div>
          <p class="work-link-projects"><a href="<?=$work['github_url']?>"><?=$work['github_url']?></a></p>
        </div>
      </div>
      <div class="row justify-content-md-center">
        <div class="col-md-10 work-container-button"><a class="button button-regular" href="<?=HOST?>work"> 
          <span class="button__small-fa-icon"><i class="fas fa-arrow-left"></i></span>Все работы </a>
          <a class="button button-regular" href="<?=HOST?>work/post?id=<?=($work['id'] < $id) ? ($work['id']+1) : ($work['id']+1-$id)?>"> Следующая работа <span class="button__small-fa-icon"><i class="fas fa-arrow-right"></i></span></a>
        </div>
      </div>
    </div>
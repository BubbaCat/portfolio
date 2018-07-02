  <div class="container">
    <div class="row justify-content-md-center">
      <div class="col-md-10">
        <form action="<?=HOST?>work/post-edit?id=<?=$work->id?>" method="POST" enctype="multipart/form-data">


        <div class="title1 work-add-admin">Редактировать работу</div>
        <?php include( ROOT . 'templates/_parts/_errors.tpl') ?>

        <section class="add-post add-work">
          <div class="add-post__title add-work__title">Название
            <input class="form-full-width" type="text" name="workTitle" placeholder="Введите название работы" value="<?=$work->title?>" />
          </div>
          <section class="add-post">
          <div class="add-post__title">Изображение</div>
          <div class="form-download">
            <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>

            <div class="form-download__container"> 
              <fieldset>
                <input type="file" name="postImg" id="postImg" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple />
                <label for="postImg">Выбрать файл</label> <span></span>
              </fieldset>
            </div>

            <?php if ( $work->work_img != "" ) {?>

              <div class="form-download__preview">
                <div class="form-download__preview__container" id="output">
                  <div class="form-download__preview__delete">
                    <a class="testBtn" id="deletePostImg" >Удалить</a>
                  </div>
                  <div class="form-download__image-container">
                    <img class="card__img card-post__img" style="height:130px; width:250px;" src="<?=HOST?>usercontent/work/<?=$work['work_img_small']?>" alt="<?=$work['title']?>"/>
                  </div>
                </div>
              </div>

            <?php } ?>

            <div class="save-check__block" id="deletePostImgCheckBox" style="display: none;">
              <input id="deleteImgCheckBox" type="checkbox" name="deleteImg" hidden="hidden"/>
              <label for="deleteImgCheckBox">Картинка будет удалена</label>
            </div>

          </div>
        </section>
          <div class="add-post__title add-work__title">Содержание
            <textarea class="form-message" name="workText" placeholder="Введите описание" value="<?=$work->text?>"/><?=$work->text?></textarea>
          </div>

          <div class="add-post__title add-work__title">Время работы <br> 
          <input class="form-name" type="text" name="times" placeholder="Время работы" value="<?=$work->time?>"/>
          </div>

          <div class="add-post__title add-work__title">Кол-во страниц <br>
           <input class="form-name" type="text" name="pages" placeholder="Кол-во страниц" value="<?=$work->pages?>"/>
          </div>
          <div class="add-post__title add-work__title">Бюджет <br> 
           <input class="form-name" type="text" name="budget" placeholder="Бюджет" value="<?=$work->budget?>"/>
          </div>
          <div class="add-post__title add-work__title">Результат <br>
            <textarea class="form-message" name="resultworks" placeholder="Введите описание" value="<?=$work->result?>"/> <?=$work->result?> </textarea>
          </div>
          <div class="add-post__title add-work__title">Технологии <br>
            <input class="form-name" type="text" name="js_technologies" placeholder=" js и т.д" value="<?=$work->js_technologies?>"/> 
            <input class="form-name" type="text" name="workflow_technologies" placeholder="gulp  т.д" value="<?=$work->workflow_technologies?>"/>
          </div>
            <div class="add-post__title add-work__title">Ссылки на проект <br>
            <input class="form-name" type="text" name="github_url" placeholder=" ссылка на сайт ссылка на github профиль" value="<?=$work->github_url?>"/>
            <input class="form-name" type="text" name="site_url" placeholder=" ссылка на github профиль" value="<?=$work->site_url?>"/> <br>
              <a class="button button-regular" href="<?=HOST?>work/post?id=<?=$work->id?>"> Отмена </a>
              <input type="submit" name="workUpdate" class="button button-save" value="Сохранить">
              </div>
          </section>


        </form>
      </div>
    </div>
  </div>
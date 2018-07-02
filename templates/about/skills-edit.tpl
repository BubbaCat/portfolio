  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать - Обо Мне</h1>
      
        </div>
        <div class="col"></div>
      </div>
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Технологии</h2>

          <form action="<?=HOST?>skills-edit" method="POST" enctype="multipart/form-data">

          <section class="add-skills">
            <div class="skill-field">
              <div class="add-post__title">HTML5</div>
              <input class="form-scils" type="text" name="html" placeholder="50" value="<?=$skills->html?>" /><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">CSS3</div>
              <input class="form-scils" type="text" name="css" placeholder="50" value="<?=$skills->css?>" /><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">JS</div>
              <input class="form-scils" type="text" name="js" placeholder="50" value="<?=$skills->js?>" /><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">jQuery</div>
              <input class="form-scils" type="text" name="jquery" placeholder="50" value="<?=$skills->jquery?>" /><span> &#37;</span>
            </div>
          </section>
          <section class="add-skills">
            <div class="skill-field">
              <div class="add-post__title">PHP</div>
              <input class="form-scils" type="text" name="php" placeholder="50" value="<?=$skills->php?>" /><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">MySql</div>
              <input class="form-scils" type="text" name="mysql" placeholder="50" value="<?=$skills->mysql?>" /><span> &#37;</span>
            </div>
          </section>
          <section class="add-skills">
            <div class="skill-field">
              <div class="add-post__title">Git</div>
              <input class="form-scils" type="text" name="git" placeholder="50" value="<?=$skills->git?>" /><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">Gulp</div>
              <input class="form-scils" type="text" name="gulp" placeholder="50" value="<?=$skills->gulp?>" /><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">Bower</div>
              <input class="form-scils" type="text" name="bower" placeholder="50" value="<?=$skills->bower?>"  /><span> &#37;</span>
            </div>
            <div class="skill-field">
              <div class="add-post__title">WebPack</div>
              <input class="form-scils" type="text" name="webpack" placeholder="50" value="<?=$skills->webpack?>"  /><span> &#37;</span>
            </div>
          </section>

          <section class="add-post">
            <input type="submit" name="skillsUpdate" class="button button-save" value="Сохранить">
            <a class="button button-regular" href="<?=HOST?>about"> Отмена </a>

          </section>
        </div>
        <div class="col"></div>
      </div>

    </form>

    </div>
  </div>
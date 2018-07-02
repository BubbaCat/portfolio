	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-md-10">
				<form action="<?=HOST?>work/post-new" method="POST" enctype="multipart/form-data">


				<div class="title1 work-add-admin">Добавить работу</div>
    <?php include( ROOT . 'templates/_parts/_errors.tpl') ?>

				<section class="add-post add-work">
					<div class="add-post__title add-work__title">Название
						<input class="form-full-width" type="text" name="workTitle" placeholder="Введите название работы"/>
					</div>
					<div class="add-post__title add-work__title">Изображение</div>
					<div class="form-download">
						<div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
						<div class="form-download__container"> 
							<fieldset>
								<input type="file" name="workImg" id="postImg" class="inputfile" data-multiple-caption="{count} файлов выбрано" multiple />
								<label for="postImg">Выбрать файл</label> <span></span>
							</fieldset>
							<input class="form-download__file-name" id="value" type="text" value="Файл не выбран" disabled="disabled"/>
						</div>
					</div>
					<div class="add-post__title add-work__title">Содержание
						<textarea class="form-message" name="workText" placeholder="Введите описание"></textarea>
					</div>

					<div class="add-post__title add-work__title">Время работы <br> 
					<input class="form-name" type="text" name="times" placeholder="Время работы"/>
					</div>

					<div class="add-post__title add-work__title">Кол-во страниц <br>
					 <input class="form-name" type="text" name="pages" placeholder="Кол-во страниц"/>
					</div>
					<div class="add-post__title add-work__title">Бюджет <br> 
					 <input class="form-name" type="text" name="budget" placeholder="Бюджет"/>
					</div>
					<div class="add-post__title add-work__title">Результат <br>
						<textarea class="form-message" name="resultworks" placeholder="Введите описание"></textarea>
					</div>
					<div class="add-post__title add-work__title">Технологии <br>
						<input class="form-name" type="text" name="js_technologies" placeholder=" js и т.д"/> 
						<input class="form-name" type="text" name="workflow_technologies" placeholder="gulp  т.д"/>
					</div>
						<div class="add-post__title add-work__title">Ссылки на проект <br>
						<input class="form-name" type="text" name="github_url" placeholder=" ссылка на сайт "/>
						<input class="form-name" type="text" name="site_url" placeholder=" ссылка на github профиль"/> <br>
						<a class="button button-regular" href="<?=HOST?>work"> Отмена </a>
							<input type="submit" name="workNew" class="button button-save" value="Сохранить">
							</div>
					</section>


				</form>
			</div>
		</div>
	</div>
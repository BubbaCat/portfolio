<div class="about-skills" >
	<div class="container">
		<div class="row" style="position: relative;">

			<?php if ( isAdmin() ) { ?>
				<div class="about-button" style="z-index: 6;">
					<a class="button button-edit" href="<?=HOST?>skills-edit"> Редактировать </a>
				</div>
			<?php }  ?>


			<?php 
		//  'webpack', 'WebPack', $skills
			function skillCircle($id, $title, $skills){
				if ( $skills->$id != '' && $skills->$id != 0 && $skills->$id != NULL ) {  ?>
					<div class="circle" id="<?=$id?>" 
						data-name="<?=$title?>" 
						data-procent=<?=$skills->$id?>>
					</div>
				<?php  } 
			}
			?>


			<div class="col-md-4 col-lg-3"></div>
			<div class="col-md-8 col-lg-9">
				<div class="header_skills">Технологии
					<p>Которые использую в работе</p>
				</div>
			</div>
		</div>
		<div class="row row--skills">
			<div class="col-md-4 col-lg-3 d-flex">
				<div class="skills_title justify-content-center align-self-center"> Frontend</div>
			</div>
			<div class="col-md-8 col-lg-9">
				<div class="about-skills-conteiner">
					<div class="skills_frontend" id="skills_frontend">


						<?php skillCircle('html', 'HTML5', $skills);  ?>
						<?php skillCircle('css', 'CSS3', $skills);  ?>
						<?php skillCircle('js', 'JS', $skills);  ?>
						<?php skillCircle('jquery', 'jQuery', $skills);  ?>


					</div>
				</div>
			</div>
		</div>
		<div class="row row--skills">
			<div class="col-md-4 col-lg-3 d-flex">
				<div class="skills_title justify-content-center align-self-center"> Backend</div>
			</div>
			<div class="col-md-8 col-lg-9">
				<div class="about-skills-conteiner">




					<div class="skills_backend" id="skills_backend">

						<?php skillCircle('php', 'PHP', $skills);  ?>
						<?php skillCircle('mysql', 'MySql', $skills);  ?>



					</div>
				</div>
			</div>
		</div>
		<div class="row row--skills">
			<div class="col-md-4 col-lg-3 d-flex">
				<div class="skills_title justify-content-center align-self-center"> Workflow</div>
			</div>
			<div class="col-md-8 col-lg-9">
				<div class="about-skills-conteiner">
					<div class="skills_workflow" id="skills_workflow">

						<?php skillCircle('git', 'Git', $skills);  ?>
						<?php skillCircle('gulp', 'Gulp', $skills);  ?>
						<?php skillCircle('bower', 'Bower', $skills);  ?>
						<?php skillCircle('webpack', 'WebPack', $skills);  ?>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
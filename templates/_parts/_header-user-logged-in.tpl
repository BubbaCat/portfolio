<div class="header-user__inner" id="navigation-login">
	<div class="header-user__inner-box">
		<div class="header-user__inner-avatar">
			<div class="avatar-user__circle-border">

				<?php if ( $_SESSION['logged_user']['avatarSmall'] == "" ) { ?>
					<img src="<?=HOST?>templates/assets/img/placeholders/user-avatar-placeholder-small.jpg" alt="image"/>
				<?php } else { ?>
					<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatarSmall']?>" alt="image"/>
				<?php } ?>

			</div>
		</div>
		<div class="header-user__inner-content-box">
			<div class="header-user__inner-name-desc">
				<h2>
					<?=$_SESSION['logged_user']['name']?> 
					<?=$_SESSION['logged_user']['secondname']?>
					
				</h2>
				<p>Пользователь</p>
			</div>
			<div class="header-user__inner-buttons-box">
				<div class="header-user__inner-profile">
					<a class="button button-header-user__inner-btn" href="<?=HOST?>profile">Профиль</a>
				</div>
				<div class="header-user__inner-quit">
					<a class="button button-header-user__inner-btn" href="<?=HOST?>logout">Выход</a>
				</div>
			</div>
		</div>
	</div>
</div>
      <div class="header-user__nav-box" id="navigation-menu">
        <div class="menu-admin">
          <div class="tab-profile">
            <div class="avatar avatar-user__circle-border" ><img src="/img/avatar-img/photo-small.jpg" class="displaynone" alt="Админ"/></div>
            <div class="tab-profile__name">
					</div><p>Пользователь</p><br>
          </div>
          <div class="tab-wrap">
            <input type="radio" name="tabs" id="tab1" checked="checked"/>
            <div class="tab-label-content" id="tab1-content">
              <label for="tab1">Страницы</label>
              <nav class="header-user__nav">
                <ul class="menu">
                	<li><a href="<?=HOST?>">Главная</a></li>
                	<li><a href="<?=HOST?>about">Обо мне</a></li>
                	<li><a href="<?=HOST?>work">Работы</a></li>
                	<li><a href="<?=HOST?>blog">Блог</a></li>
                	<li><a href="<?=HOST?>contacts">Контакты</a></li>
                </ul>
              </nav>
            </div>
            <input type="radio" name="tabs" id="tab2"/>

          </div>
        </div>
      </div>

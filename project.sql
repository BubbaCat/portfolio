-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 25 2018 г., 10:13
-- Версия сервера: 5.5.57
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Евгений Сапов', '<p>Я веб разработчик из Казани. Мне 28 лет. Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p><strong>Этот сайт я сделал в рамках обучения в школе онлайн обучения WebCademy. </strong>Чуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!</p>\r\n\r\n<h3>Что я умею</h3>\r\n\r\n<p>Меня привлекет Frontend разработка, это не только моя работа, но и хобби.Также знаком и могу решать не сложные задачи на Backend. Знаком и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>\r\n', '1192091617.JPG');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Книги'),
(2, 'Путешествия ');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(9, 60, 1, 'SSSSSSS', '2018-06-28 13:54:05'),
(10, 62, 1, 'ыуфвфывфыв', '2018-06-28 20:24:46'),
(11, 1, 15, 'Кул стори боб', '2018-06-29 09:16:40'),
(12, 3, 1, '123', '2018-07-02 17:16:27'),
(13, 3, 1, '1233333333333333333333333&lt;?php if ( isAdmin() ) { ?&gt;\r\n				 &lt;a class=&quot;btn btn--admin&quot; href=&quot;&lt;?=HOST?&gt;profile&quot;&gt;Администратор&lt;/a&gt;\r\n			&lt;?php }  ?&gt', '2018-07-02 17:21:32');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `vk` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `skype`, `vk`, `fb`, `tel`, `address`, `name`, `secondname`, `github`, `twitter`, `lat`, `lng`) VALUES
(1, 'evgeniy.sapov@gmail.com', 'johny1080p', 'http://vk.com/ievgeniy.sapov', 'href=&quot;https://www.facebook.com/evgeniy.sapov&quot;', '+7 922 00-77-969', 'Россия, Тюменьская обл., г. Тюмень', 'Сапов', 'Евгений', 'href=&quot;https://github.com/BubbaCat&quot;', 'https://twitter.com/EvgeniySapov', 57.150969, ' 65.537902');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(2, 'март 2013 &mdash; август 2015', 'Веб-разработчик, Cloud studio', 'Frontend и Backend для клиентских проектов студии. Работа над студийной CMS для интернет магазинов. Участие в разработке CRM системы &ldquo;Sky CRM&rdquo;. Стек используемых технологий: Git, JS, Angular.'),
(3, '1', '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `date_time`, `message`, `message_file`, `message_file_name_original`) VALUES
(3, 'some@mail.com', 'Антон Шевчук', '0000-00-00 00:00:00', 'Держи книгу по jQuery', '447761940.pdf', 'Книга по jQuery'),
(4, 'thomas@gmail.com', 'Петр', '0000-00-00 00:00:00', 'Привет это книга', '103467954.pdf', 'jQuery учебник для начинающих - Антон Шевчук.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `post_img`, `post_img_small`, `date_time`, `author_id`, `date`, `cat`) VALUES
(1, 'Новый пост', '<p>Введите город</p>\r\n', '-721983696.jpg', '320--721983696.jpg', '2018-06-29 08:48:55', 1, 1530251335, 2),
(2, 'Привет меня зовут иван я из такойго то города фывфыв111', '<p>Введите город</p>\r\n', NULL, NULL, '2018-06-29 09:34:25', 1, 1530254065, 2),
(3, 'Новый пост1', '<p>Введите город11</p>\r\n', NULL, NULL, '2018-06-30 00:36:47', 1, 1530308207, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `html` int(11) DEFAULT NULL,
  `css` int(11) NOT NULL,
  `js` int(11) NOT NULL,
  `jquery` int(11) NOT NULL,
  `php` int(11) NOT NULL,
  `mysql` int(11) NOT NULL,
  `git` int(11) NOT NULL,
  `gulp` int(11) NOT NULL,
  `bower` int(11) NOT NULL,
  `webpack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `bower`, `webpack`) VALUES
(1, 25, 50, 52, 80, 75, 60, 60, 90, 100, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `avatar` varchar(191) DEFAULT NULL,
  `avatar_small` varchar(191) DEFAULT NULL,
  `recovery_code` varchar(191) DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `secondname`, `photo`, `country`, `city`, `role`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'evgeniy.sapov@mail.ru', '$2y$10$Wr/SU3SI90eY7y58AjFekevGepUFTFH7k/S2l6IqY1qpBugiAp52e', 'Евгений', 'Сапов', '', 'Россия', 'Тюмень', 'admin', '715559328.jpg', '48-715559328.jpg', '4TZNnJGAsgF6rpI', 3),
(14, 'info@rightblog.ru', '$2y$10$uNZgTly13j.WU0LIOAprvef2ii5jh8kPZjAaI.STcZBUam/T9j5aa', '123', '123', '', '', '', 'user', NULL, NULL, NULL, NULL),
(15, 'evgeniy.sapov@gmail.com', '$2y$10$t.f1dgKpSZlj9nDjO6dXvuiip18m5PVVjNfhsYOysggQbVOTkNP6a', 'Евгений', 'Сапов', '', 'Россия', 'Тюмень', 'user', '447287542.jpg', '48-447287542.jpg', 'OstVMyHP75vuEIK', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `time` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `work_img` varchar(255) NOT NULL,
  `work_img_small` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `workflow_technologies` varchar(255) NOT NULL,
  `js_technologies` varchar(255) NOT NULL,
  `github_url` varchar(255) NOT NULL,
  `site_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `text`, `time`, `pages`, `budget`, `result`, `work_img`, `work_img_small`, `date_time`, `author_id`, `workflow_technologies`, `js_technologies`, `github_url`, `site_url`) VALUES
(1, 'Верстка  Интернет магазина', 'Сделана верстка и фронтэнд для интернет магазина мебели. Сверстано более 50-ти страниц. Сделаны все эффекты и интерактив. В работе использованы препроцессоры pug и less. Интерактив написан на JavaScript. Весь проект протестирован на своместимость, начиная с IE9. Для старых браузеров использован подход Graceful Degradation.', '6 недель', '54 страницы', '54 000 ', ' Проект сделан в срок. Заказчик доволен. Сайт запущен, работает и уже радует покупками посетителей и владельцев бизнеса. ', '', '', '2018-06-20 00:00:00', 1, 'Less, Pug, Gulp, npm, bower.', 'avaScript, jQuery.', 'https://github.com/pozitive/magnumstore/', 'http://magnum-store.ru'),
(2, 'Верстка и frontend Интернет магазина', 'Сделана верстка и фронтэнд для интернет магазина мебели. Сверстано более 50-ти страниц. Сделаны все эффекты и интерактив. В работе использованы препроцессоры pug и less. Интерактив написан на JavaScript. Весь проект протестирован на своместимость, начиная с IE9. Для старых браузеров использован подход Graceful Degradation.', '6 недель', '54 страницы', '54 000 ', '    Проект сделан в срок. Заказчик доволен. Сайт запущен, работает и уже радует покупками посетителей и владельцев бизнеса.    ', '', '', '2018-06-20 00:00:00', 1, 'Less, Pug, Gulp, npm, bower.', 'avaScript, jQuery.', 'https://github.com/pozitive/magnumstore/', 'http://magnum-store.ru'),
(3, '22', 'Сделана верстка 22123', '213', '21321', '123', '213213', '', '', '2018-06-28 16:18:27', 1, '123', '123', '123', '123'),
(4, '22', 'Сделана 123верстка ', '33', '33333', '333', '  333  ', '', '', '2018-06-28 16:19:19', 1, '333', '33', '33', '333'),
(5, 'Моя поездка в Прагу ывфывфыв фестифаль12333333', 'Сделана 123 ', '3213', '321', '321', '    321    ', '639122031.jpg', '350-639122031.jpg', '2018-06-28 16:31:49', 1, '321', '321', '312', '321'),
(6, '123', 'Сделана верстка 321', '321', '321', '312', ' 321 ', '200897341.jpg', '350-200897341.jpg', '2018-06-28 16:33:45', 1, '321', '312', '321', '312'),
(7, '213', '123', '123', '123', '123', ' 123 ', '', '', '2018-06-30 00:02:04', 1, '3124124', '321', '24124', '12412312'),
(8, 'Аня ', '123', '321', '312', '312', '  123  ', '', '', '2018-06-30 00:36:27', 1, '123', '123', '123213', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

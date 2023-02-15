-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2023 г., 18:25
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `pubdate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `categorie_id`, `pubdate`, `views`) VALUES
(1, 'JavaScript', 'JavaScript-logo.png', 'Таким образом постоянный количественный рост и сфера нашей активности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Значимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании соответствующий условий активизации. С другой стороны консультация с широким активом обеспечивает широкому кругу (специалистов) участие в формировании форм развития. Повседневная практика показывает, что реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Разнообразный и богатый опыт реализация намеченных плановых заданий способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. Равным образом дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании системы обучения кадров, соответствует насущным потребностям.\r\n\r\nЗначимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании форм развития. Товарищи! укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Идейные соображения высшего порядка, а также рамки и место обучения кадров влечет за собой процесс внедрения и модернизации новых предложений. Идейные соображения высшего порядка, а также начало повседневной работы по формированию позиции позволяет оценить значение новых предложений. С другой стороны укрепление и развитие структуры способствует подготовки и реализации модели развития.', 2, '2023-01-28 15:33:29', 15),
(2, 'О Вьетнаме', 'vietnam.jpg', 'Таким образом постоянный количественный рост и сфера нашей активности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Значимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании соответствующий условий активизации. С другой стороны консультация с широким активом обеспечивает широкому кругу (специалистов) участие в формировании форм развития. Повседневная практика показывает, что реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Разнообразный и богатый опыт реализация намеченных плановых заданий способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. Равным образом дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании системы обучения кадров, соответствует насущным потребностям.\r\n\r\nЗначимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании форм развития. Товарищи! укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Идейные соображения высшего порядка, а также рамки и место обучения кадров влечет за собой процесс внедрения и модернизации новых предложений. Идейные соображения высшего порядка, а также начало повседневной работы по формированию позиции позволяет оценить значение новых предложений. С другой стороны укрепление и развитие структуры способствует подготовки и реализации модели развития.', 4, '2023-01-28 15:33:41', 121),
(3, 'Серфинг ', 'surf.jpg', 'Значимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании форм развития. Товарищи! укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Идейные соображения высшего порядка, а также рамки и место обучения кадров влечет за собой процесс внедрения и модернизации новых предложений. Идейные соображения высшего порядка, а также начало повседневной работы по формированию позиции позволяет оценить значение новых предложений. С другой стороны укрепление и развитие структуры способствует подготовки и реализации модели развития.', 1, '2023-01-28 15:51:50', 102),
(4, 'KTM - Ready to Race', 'ktm.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque blandit dolor leo, at fringilla risus finibus nec. Praesent nec dolor pretium sapien accumsan maximus. Integer pulvinar est turpis, a interdum augue gravida varius. Vivamus iaculis mauris vulputate rutrum semper. Etiam tristique nunc non felis placerat tempus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras dapibus elit ante, quis aliquet dui tempor et. Phasellus est odio, cursus in sem non, cursus ultricies quam. Proin ante urna, ullamcorper ac facilisis ut, lobortis ac risus. In hac habitasse platea dictumst. Mauris aliquam id mi eu cursus. Aenean non ligula sit amet magna feugiat iaculis. Mauris feugiat dui sit amet nisl pretium, ut venenatis sem pharetra.\r\n\r\nPellentesque placerat posuere felis, ullamcorper pellentesque sem laoreet eget. Integer pulvinar vehicula lectus, ut posuere lacus faucibus in. Sed enim orci, laoreet a diam in, pellentesque fermentum risus. Vivamus semper dui eu venenatis feugiat. In ipsum ante, vestibulum ullamcorper luctus eu, condimentum ullamcorper massa. Donec eget quam nec nisl egestas aliquet ut mollis magna. Pellentesque vitae sollicitudin dui. Nulla ut tincidunt lorem. Suspendisse suscipit ex at massa gravida gravida id in elit. Aliquam mollis aliquet felis.', 3, '2023-01-28 15:52:33', 50),
(5, 'Php', 'php.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque blandit dolor leo, at fringilla risus finibus nec. Praesent nec dolor pretium sapien accumsan maximus. Integer pulvinar est turpis, a interdum augue gravida varius. Vivamus iaculis mauris vulputate rutrum semper. Etiam tristique nunc non felis placerat tempus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras dapibus elit ante, quis aliquet dui tempor et. Phasellus est odio, cursus in sem non, cursus ultricies quam. Proin ante urna, ullamcorper ac facilisis ut, lobortis ac risus. In hac habitasse platea dictumst. Mauris aliquam id mi eu cursus. Aenean non ligula sit amet magna feugiat iaculis. Mauris feugiat dui sit amet nisl pretium, ut venenatis sem pharetra.\r\n\r\nPellentesque placerat posuere felis, ullamcorper pellentesque sem laoreet eget. Integer pulvinar vehicula lectus, ut posuere lacus faucibus in. Sed enim orci, laoreet a diam in, pellentesque fermentum risus. Vivamus semper dui eu venenatis feugiat. In ipsum ante, vestibulum ullamcorper luctus eu, condimentum ullamcorper massa. Donec eget quam nec nisl egestas aliquet ut mollis magna. Pellentesque vitae sollicitudin dui. Nulla ut tincidunt lorem. Suspendisse suscipit ex at massa gravida gravida id in elit. Aliquam mollis aliquet felis.', 2, '2023-01-28 15:52:52', 151),
(6, 'Водопад', 'test.png', 'Красивый водопад в Далате. Таким образом постоянный количественный рост и сфера нашей активности требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Значимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании соответствующий условий активизации. С другой стороны консультация с широким активом обеспечивает широкому кругу (специалистов) участие в формировании форм развития. Повседневная практика показывает, что реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Разнообразный и богатый опыт реализация намеченных плановых заданий способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. Равным образом дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании системы обучения кадров, соответствует насущным потребностям.\r\n\r\nЗначимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании форм развития. Товарищи! укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Идейные соображения высшего порядка, а также рамки и место обучения кадров влечет за собой процесс внедрения и модернизации новых предложений. Идейные соображения высшего порядка, а также начало повседневной работы по формированию позиции позволяет оценить значение новых предложений. С другой стороны укрепление и развитие структуры способствует подготовки и реализации модели развития.', 5, '2023-01-28 16:18:25', 5),
(7, 'О Малайзии', 'malasia.jfif', 'Значимость этих проблем настолько очевидна, что консультация с широким активом играет важную роль в формировании форм развития. Товарищи! укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Идейные соображения высшего порядка, а также рамки и место обучения кадров влечет за собой процесс внедрения и модернизации новых предложений. Идейные соображения высшего порядка, а также начало повседневной работы по формированию позиции позволяет оценить значение новых предложений. С другой стороны укрепление и развитие структуры способствует подготовки и реализации модели развития.', 4, '2023-02-10 00:18:30', 9),
(8, 'О Тайланде`', 'tailand.png', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\n\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 4, '2023-02-10 00:19:35', 211),
(9, 'Vue.js', 'vue.png\r\n', 'Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.\r\n\r\nПо своей сути рыбатекст является альтернативой традиционному lorem ipsum, который вызывает у некторых людей недоумение при попытках прочитать рыбу текст. В отличии от lorem ipsum, текст рыба на русском языке наполнит любой макет непонятным смыслом и придаст неповторимый колорит советских времен.', 2, '2023-02-10 01:07:18', 75),
(10, 'About Lao!', 'laos.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque blandit dolor leo, at fringilla risus finibus nec. Praesent nec dolor pretium sapien accumsan maximus. Integer pulvinar est turpis, a interdum augue gravida varius. Vivamus iaculis mauris vulputate rutrum semper. Etiam tristique nunc non felis placerat tempus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras dapibus elit ante, quis aliquet dui tempor et. Phasellus est odio, cursus in sem non, cursus ultricies quam. Proin ante urna, ullamcorper ac facilisis ut, lobortis ac risus. In hac habitasse platea dictumst. Mauris aliquam id mi eu cursus. Aenean non ligula sit amet magna feugiat iaculis. Mauris feugiat dui sit amet nisl pretium, ut venenatis sem pharetra.\r\n\r\nPellentesque placerat posuere felis, ullamcorper pellentesque sem laoreet eget. Integer pulvinar vehicula lectus, ut posuere lacus faucibus in. Sed enim orci, laoreet a diam in, pellentesque fermentum risus. Vivamus semper dui eu venenatis feugiat. In ipsum ante, vestibulum ullamcorper luctus eu, condimentum ullamcorper massa. Donec eget quam nec nisl egestas aliquet ut mollis magna. Pellentesque vitae sollicitudin dui. Nulla ut tincidunt lorem. Suspendisse suscipit ex at massa gravida gravida id in elit. Aliquam mollis aliquet felis.', 4, '2023-02-10 01:30:26', 40),
(11, 'Laravel', 'laravel.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:32:52', 0),
(12, 'CSS', 'css.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:33:34', 0),
(13, 'HTML', 'html.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:34:21', 0),
(14, 'PINIA', 'pinia.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:34:57', 0),
(15, 'PYTHON', 'python.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:35:32', 0),
(16, 'REACT.JS', 'react.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:36:05', 0),
(17, 'SASSY', 'sass.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:36:40', 0),
(18, 'VITE', 'vite.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2023-02-14 03:37:02', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int(11) NOT NULL,
  `categorie_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `categorie_title`) VALUES
(1, 'Sport'),
(2, 'Development'),
(3, 'Hobosti'),
(4, 'Travel'),
(5, 'Nature');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `nickname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `pubdate` datetime NOT NULL DEFAULT current_timestamp(),
  `articlles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `nickname`, `email`, `comment`, `pubdate`, `articlles_id`) VALUES
(1, 'Alex', 'Storm', 'rodrigo@gmail.com', 'JS top!', '2023-01-28 16:02:09', 1),
(2, 'Johny', 'Beta', 'jitewaboh@lagify.com', 'Xin chao!', '2023-01-28 16:02:30', 2),
(3, 'Nguen', 'Ngueniy', 'sonali.gatty@example.com', 'Xin cam on!', '2023-01-28 16:02:53', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

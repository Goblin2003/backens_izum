-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 18 2023 г., 12:41
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kyrsi`
--

CREATE TABLE `kyrsi` (
  `id` int(11) NOT NULL,
  `HeadText` varchar(255) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `Photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `kyrsi`
--

INSERT INTO `kyrsi` (`id`, `HeadText`, `Text`, `Photo`) VALUES
(1, 'Для Начинающих', 'Курс для тех кто, учил и всё забыл или вообще не изучал', '/forlittle.png'),
(2, 'Для продолжающих', 'Курс для тех, кто знает основы и готов учится дальше', '/pngwing 1.png'),
(3, 'Для продвинутых', 'Курс для тех, кто хочет проверить свои знания или восполнить чем-то новым', '/forbigboss.png');

-- --------------------------------------------------------

--
-- Структура таблицы `photobanner`
--

CREATE TABLE `photobanner` (
  `id` int(11) NOT NULL,
  `photob` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `photobanner`
--

INSERT INTO `photobanner` (`id`, `photob`, `id_class`) VALUES
(1, '/banner_photo3.jpg', 1),
(2, '/banner_photo2.jpg', 2),
(3, '/banner_photo1.JPG', 3),
(4, '/banner_photo4.png', 4),
(5, '/banner_photo5.JPG', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `uid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `text`, `image`, `uid`) VALUES
(1, 'Я Мадина, косметолог-эстетист, специалист лазерной эпиляции студии \"#IZUM\"', '/madina.webp', 'MK10062003'),
(2, 'Я Екатерина, знаю всё о лазерной эпиляции. Работаю в студии лазерной эпиляции \"#IZUM\"', '/ekaterina.webp', 'EK10072004'),
(3, 'Я Регина, специалист лазерной эпиляции студии \"#IZUM\". Опыт работы более 7 лет в аппаратной косметологии', '/regina.webp', 'RK12052016'),
(5, 'Я Аксинья, работаю более 3 лет в студии лазерной эпиляции \"#IZUM\"', '/axinia.webp', 'AK01012023'),
(13, 'Я Анастасия, сертифицированный специалист по лазерной эпиляции на диодном лазере в студии\r\n                            лазерной\r\n                            эпиляции “#IZUM”', '/anastasia.webp', 'AK18072004');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scales` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sogl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `number`, `mail`, `scales`, `sogl`) VALUES
(14, 'dsfsdf', 'asdasda', 'asdasd', 'ok', 'ok'),
(19, 'ыва', 'ываыва', 'ываыва', 'ok', 'ok'),
(20, 'ывавыа', 'выаывп', 'выпывпв', 'ok', 'undefined');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kyrsi`
--
ALTER TABLE `kyrsi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `photobanner`
--
ALTER TABLE `photobanner`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `photobanner`
--
ALTER TABLE `photobanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

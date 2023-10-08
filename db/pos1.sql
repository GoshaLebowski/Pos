-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2023 г., 18:24
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
-- База данных: `pos1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `creatingaservice`
--

CREATE TABLE `creatingaservice` (
  `id_services` int(11) NOT NULL,
  `serviceBriefly` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summa` float NOT NULL,
  `id_unit` int(11) NOT NULL,
  `date` date NOT NULL,
  `file_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `creatingaservice`
--

INSERT INTO `creatingaservice` (`id_services`, `serviceBriefly`, `task_description`, `city`, `summa`, `id_unit`, `date`, `file_path`, `user`, `categories`) VALUES
(67, 'Тест', 'asfansdmf', 'Пермь', 5000, 12, '2023-06-28', 'UPLOADS/1687878979UML курсач.jpg', 40, 36),
(68, 'sds', 'sdfsdf', 'Пермь', 5000, 1, '2023-05-31', 'UPLOADS/1687879196', 40, 33);

-- --------------------------------------------------------

--
-- Структура таблицы `kategoria`
--

CREATE TABLE `kategoria` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `kategoria`
--

INSERT INTO `kategoria` (`Id`, `Name`) VALUES
(1, 'Аренда'),
(2, 'Артисты'),
(3, 'Дизайн'),
(4, 'Животные'),
(5, 'Фото,Видео,Аудио'),
(6, 'Красота'),
(7, 'Мероприятия'),
(8, 'Охрана и детективы'),
(9, 'ПК и IT'),
(10, 'Разное'),
(11, 'Ремонт и Строительство'),
(12, 'Перевозки'),
(13, 'Ремонт и установка'),
(14, 'Ремонт авто'),
(15, 'Творчество'),
(16, 'Уборка'),
(17, 'Юр.Дела');

-- --------------------------------------------------------

--
-- Структура таблицы `podkategorii`
--

CREATE TABLE `podkategorii` (
  `id_podkategorii` int(11) NOT NULL,
  `Kategorii` int(11) NOT NULL,
  `PodKategoria` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `podkategorii`
--

INSERT INTO `podkategorii` (`id_podkategorii`, `Kategorii`, `PodKategoria`) VALUES
(1, 10, 'Копирайтер'),
(2, 10, 'Интернет-маркетолог'),
(3, 10, 'Бухгалтер'),
(4, 10, 'Доставка цветов'),
(5, 10, 'Полиграфические услуги'),
(6, 10, 'Психолог'),
(7, 10, 'SMM-продвижение'),
(8, 10, 'Риэлторские услуги при покупке и продаже'),
(9, 10, 'Переводчик'),
(10, 10, 'Тайный покупатель'),
(11, 10, 'Постинг в интернете'),
(12, 6, 'Брови'),
(13, 6, 'Ресницы'),
(14, 6, 'Наращивание ресниц'),
(15, 6, 'Депиляция воском и шугаринг'),
(16, 6, 'Депиляция для мужчин'),
(17, 6, 'Электроэпиляция'),
(18, 6, 'Фотоэпиляция'),
(19, 6, 'Лазерная эпиляция'),
(20, 6, 'Маникуюр и педикюр для мужчин'),
(21, 6, 'Педикюр'),
(22, 9, 'Регистрация доменов'),
(23, 9, 'Администрирование 1С'),
(24, 9, 'Настройка серверов'),
(25, 9, 'Настройка Битрикс'),
(26, 9, 'Разработка на С++'),
(27, 9, 'Разработка программ'),
(28, 9, 'Разработка сайтов'),
(29, 9, 'Разработка на JAVA'),
(30, 9, 'Разработка игр'),
(31, 9, 'Администрирование'),
(32, 2, 'Фокусники'),
(33, 2, 'Кавер группы'),
(34, 2, 'Гитаристы'),
(35, 2, 'Пианисты'),
(36, 2, 'Скрипачи'),
(37, 2, 'Баянисты'),
(38, 2, 'Саксофонисты'),
(39, 2, 'Ансабли'),
(40, 2, 'Другое'),
(41, 2, 'Комедия'),
(42, 8, 'Детективы'),
(43, 8, 'Охрана'),
(44, 8, 'Другое'),
(45, 4, 'Дрессировка собак'),
(46, 4, 'Дрессировка'),
(47, 4, 'Другое'),
(48, 4, 'Мастер-классы'),
(49, 4, 'Обслуживание аквариума'),
(50, 4, 'Передержка'),
(51, 4, 'Перевозка'),
(52, 4, 'Составление родословной'),
(53, 1, 'Экскаваторы и погрузчики'),
(54, 1, 'Автокраны и автовышки'),
(55, 1, 'Самосвалы'),
(56, 1, 'Автомобили'),
(57, 1, 'Мини-экскаваторы и погрузчики'),
(58, 1, 'Дорожная спецтехника'),
(59, 1, 'Оборудование'),
(60, 1, 'Строительные иструменты'),
(61, 1, 'Ямобуры'),
(62, 1, 'Автомобили-длинномеры'),
(63, 3, '3D и flash'),
(64, 3, 'Конструкции'),
(65, 3, 'Витрины магазинов'),
(66, 3, 'Мероприятия'),
(67, 3, 'Фирменный стиль'),
(68, 3, 'Книги и издания'),
(69, 3, 'Фотомонтаж'),
(70, 3, 'Брендирование авто'),
(71, 5, 'Дикторы'),
(72, 5, 'Запись аудиороликов'),
(73, 5, 'Запись песен и музыки'),
(74, 5, 'Создание и монтаж видеороликов'),
(75, 5, 'Съёмка с квадрокоптера'),
(76, 5, 'Панорамы и туры'),
(77, 7, 'Доставка кальяна'),
(78, 7, 'Торты на заказ'),
(79, 7, 'Промоутер'),
(80, 7, 'PR акции'),
(81, 7, 'Декор и внешний вид'),
(82, 7, 'Другое'),
(83, 7, 'Кейтеринг'),
(84, 11, 'Перетяжка и ремонт мягкой мебели'),
(85, 11, 'Изготовление мебели'),
(86, 11, 'Изготовление шкафов-купе'),
(87, 11, 'Изготовление кухни'),
(88, 11, 'Сборка и ремонт мебели'),
(89, 11, 'Проектирование зданий'),
(90, 12, 'Перевозка продуктов с рефрижератором'),
(91, 12, 'Курьеры на авто'),
(92, 12, 'Эвакуаторы для грузового авто'),
(93, 12, 'Эвакуаторы с манипулятором'),
(94, 12, 'Междугородные перевозки'),
(95, 12, 'Междугородные пассажирские перевозки'),
(96, 12, 'Междугородные перевозки автомобилей'),
(97, 12, 'Вывоз мусора контейнером'),
(98, 12, 'Контейнерные перевозки'),
(99, 12, 'Железнодорожные перевозки'),
(100, 12, 'Грузовые авиаперевозки'),
(101, 13, 'Сушильные машины'),
(102, 13, 'Крупная стоительная техника'),
(103, 13, 'Крупная с/х техника'),
(104, 13, 'Садовая техника'),
(105, 13, 'Квадрокоптеры'),
(106, 13, 'Строительные агрегаты'),
(107, 13, 'Кассовые аппараты'),
(108, 13, 'Газовые колонки'),
(109, 13, 'Силовое оборудование и кабельное питание'),
(110, 14, 'Шаномонтаж грузовых автомобилей'),
(111, 14, 'Отогрев авто'),
(112, 14, 'Промыв топливной системы'),
(113, 14, 'Сезонное хранение шин'),
(114, 14, 'Ремонт шин и дисков'),
(115, 14, 'Ошиповка резины'),
(116, 15, 'Резьба по стеклу'),
(117, 15, 'Резьба по металлу'),
(118, 15, 'Резьба по дереву'),
(119, 15, 'Аппликация'),
(120, 15, 'Авторская мебедь'),
(121, 15, 'Другое'),
(122, 15, 'Изготовление игрушек'),
(123, 17, 'Помощь в регистрации ООО и ИП'),
(124, 17, 'Административные споры'),
(125, 17, 'Адвокаты'),
(126, 17, 'Анализ рисков предприятия'),
(127, 17, 'Апостиль и легализация документов'),
(128, 17, 'Арбитражные споры'),
(129, 17, 'Автомобильные споры'),
(130, 17, 'Банкротство юр. лиц'),
(131, 17, 'Другое'),
(132, 17, 'Исполнительное производство'),
(133, 16, 'Няни с проживанием'),
(134, 16, 'Няни на полную занятость'),
(135, 16, 'Химчистка ковров и мебели'),
(136, 16, 'Химчистка домашнего текстиля'),
(137, 16, 'Химчистка одежды'),
(138, 16, 'Стирка'),
(139, 16, 'Химчистка штор'),
(140, 16, 'Химчистка кожи'),
(141, 16, 'Ремонт обуви'),
(142, 16, 'Уборка територии');

-- --------------------------------------------------------

--
-- Структура таблицы `response`
--

CREATE TABLE `response` (
  `id_response` int(11) NOT NULL,
  `services` int(11) NOT NULL,
  `user_responded` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `response`
--

INSERT INTO `response` (`id_response`, `services`, `user_responded`) VALUES
(70, 67, 41),
(71, 68, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `name_role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id_role`, `name_role`) VALUES
(1, 'Заказчик'),
(2, 'Исполнитель');

-- --------------------------------------------------------

--
-- Структура таблицы `unitmeasurement`
--

CREATE TABLE `unitmeasurement` (
  `id_unit` int(11) NOT NULL,
  `unit_of_measurement` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unitmeasurement`
--

INSERT INTO `unitmeasurement` (`id_unit`, `unit_of_measurement`) VALUES
(1, 'за услугу'),
(2, 'за минуту'),
(3, 'за час'),
(4, 'за день'),
(5, 'за неделю'),
(6, 'за месяц'),
(7, 'за штуку'),
(8, 'за кг'),
(9, 'за км'),
(10, 'за м³'),
(11, 'за м²'),
(12, 'за тонну');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` decimal(11,0) NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `name`, `number`, `email`, `description`, `password`, `role`) VALUES
(40, 'Лебовски Гоша Анатольевич', '89223334442', 'russckikh.e@gmail.com', 'Я молодец', '0302kazah_1417', 2),
(41, 'Попов Денис Иванович', '89223466678', 'kenost.d@gmail.com', 'фывлоа', '0302kazah_1417', 1),
(42, 'Попов Денис Иванович', '83333333333', 'asdfasdf@gmail.com', 'Я молодец', '11111', 1),
(45, 'Иванов Артем Алексеевич', '89222222333', 'ajsdkfjka@gmail.com', 'Заработай', '0302kazah_1417', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `creatingaservice`
--
ALTER TABLE `creatingaservice`
  ADD PRIMARY KEY (`id_services`),
  ADD KEY `id_unit` (`id_unit`,`user`),
  ADD KEY `user` (`user`),
  ADD KEY `categories` (`categories`);

--
-- Индексы таблицы `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `podkategorii`
--
ALTER TABLE `podkategorii`
  ADD PRIMARY KEY (`id_podkategorii`),
  ADD KEY `Kategorii` (`Kategorii`);

--
-- Индексы таблицы `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id_response`),
  ADD KEY `services` (`services`),
  ADD KEY `user` (`user_responded`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Индексы таблицы `unitmeasurement`
--
ALTER TABLE `unitmeasurement`
  ADD PRIMARY KEY (`id_unit`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `creatingaservice`
--
ALTER TABLE `creatingaservice`
  MODIFY `id_services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `podkategorii`
--
ALTER TABLE `podkategorii`
  MODIFY `id_podkategorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT для таблицы `response`
--
ALTER TABLE `response`
  MODIFY `id_response` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `unitmeasurement`
--
ALTER TABLE `unitmeasurement`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `creatingaservice`
--
ALTER TABLE `creatingaservice`
  ADD CONSTRAINT `creatingaservice_ibfk_1` FOREIGN KEY (`id_unit`) REFERENCES `unitmeasurement` (`id_unit`),
  ADD CONSTRAINT `creatingaservice_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `creatingaservice_ibfk_3` FOREIGN KEY (`categories`) REFERENCES `podkategorii` (`id_podkategorii`);

--
-- Ограничения внешнего ключа таблицы `podkategorii`
--
ALTER TABLE `podkategorii`
  ADD CONSTRAINT `podkategorii_ibfk_1` FOREIGN KEY (`Kategorii`) REFERENCES `kategoria` (`Id`);

--
-- Ограничения внешнего ключа таблицы `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `response_ibfk_1` FOREIGN KEY (`services`) REFERENCES `creatingaservice` (`id_services`),
  ADD CONSTRAINT `response_ibfk_2` FOREIGN KEY (`user_responded`) REFERENCES `users` (`id_user`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

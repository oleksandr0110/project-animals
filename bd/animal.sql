-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 21 2020 г., 01:56
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
-- База данных: `animal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category`, `slug`, `image`, `description`) VALUES
(1, 'Медведи', '', '', 'Просто медведи'),
(2, 'Австралия', '', '', 'Животные из Австралии'),
(3, 'разное', '', '', 'Разные животные');

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `descr_min` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `title`, `category`, `descr_min`, `description`, `image`) VALUES
(5, 'Жираф', 3, 'парнокопытное млекопитающее из семейства жирафовых. Является самым высоким наземным животным планеты', 'Самцы жирафа достигают высоты до 5,5—6,1 м (около 1/3 длины составляет шея) и весят до 900—1200 кг. Самки, как правило, немного меньше и легче. Шея у жирафов необычайно длинная, и это несмотря на то, что у них, как и почти у всех других млекопитающих, лишь семь шейных позвонков. Большой рост увеличивает нагрузку на систему кровообращения, прежде всего в отношении кровоснабжения головного мозга. Поэтому сердце у жирафов особенно сильное. Оно пропускает 60 л крови в минуту, весит 12 кг и создаёт давление, которое в три раза выше, чем у человека. Тем не менее оно не смогло бы вынести перегрузки при резком опускании и поднятии головы жирафа. Чтобы такие движения не приводили к гибели животного, кровь жирафа гуще, чем у человека, и имеет вдвое более высокую плотность кровяных телец. Помимо этого, у жирафа имеются особые запирающие клапаны в большой шейной вене, прерывающие поток крови таким образом, что сохраняется давление в главной артерии, снабжающей мозг.', '413px-Giraffe_standing.jpg'),
(6, 'Коала', 2, 'вид сумчатых, обитающий в Австралии. Единственный современный представитель семейства коаловых (Phascolarctidae) из отряда двурезцовых сумчатых (Diprotodontia).', 'Слово коала (англ. koala) происходит от даракского слова gulawan или его укороченной формы gula. Первоначально транскрибированное на латинский шрифт как cullawine, его постепенно вытеснил вариант koola. Хотя гласная /u/ была первоначально написана в английской орфографии как «оо», она, возможно по ошибке, была изменена на «oa». Ошибочно считалось, что это слово означало «не пьёт». В целом коалы похожи на вомбатов (их ближайших родственников), но имеют более густой мех (мягкий и толщиной 2—3 см), более крупные уши, более длинные конечности. У коалы имеются большие острые когти, помогающие ей с хождением по стволам деревьев. Вес коалы варьируется от около 14 кг крупного самца с юга, и примерно до 5 кг небольшой самки с севера.\r\n\r\nКонечности коал приспособлены к лазанью. Кисть передней лапы имеет 2 отставленных в сторону «больших» пальца (по-английски: thumbs), имеющие две фаланги, которые противостоят трем остальным обычным пальцам (англ. fingers), с тремя фалангами, расположенными вдоль кисти. Называть второй палец коалы указательным не совсем корректно, ибо он выглядит так же, как и первый, то есть «большой» палец. Все пальцы передних лап завершаются прочными когтями.', '360px-Friendly_Female_Koala.JPG'),
(7, 'Кенгуру', 2, 'общеупотребительное название группы животных из отряда двурезцовых сумчатых млекопитающих', 'В широком смысле термин кенгуру относится ко всем представителям семейства кенгуровых, особенно красного филандера, антилопового кенгуру, восточного серого (гигантского) кенгуру и западного серого кенгуру. В узком смысле это название применяется по отношению к наиболее крупным представителям семейства, тогда как самые мелкие называются валлаби, а кенгуровые средних размеров — валлару. Кенгуру являются коренными жителями Австралии. У кенгуру большие, мощные задние ноги, большие ступни, приспособленные для прыжков, длинный массивный хвост для равновесия и маленькая голова. Как и у большинства сумчатых, у самок кенгуру есть мешочек, называемый сумкой, в котором детеныш завершает послеродовое развитие. Большие кенгуру хорошо приспособились к расчистке человеком земель для пастбищного земледелия и изменений среды обитания.', '400px-Kangaroo_and_joey03.jpg'),
(22, 'Броненосец', 3, 'семейство млекопитающих отряда броненосцев. Обитают в Центральной и Южной Америке.', 'Панцирь составляют головной, плечевой и тазовый щиты и ряд обручевидных полос, опоясывающих тело сверху и с боков. Части панциря связаны между собой эластичной соединительной тканью, придающей подвижность всему панцирю. Поверх панциря лежат тонкие роговые пластинки квадратной или полигональной формы, образованные эпидермисом. Такие же щитки образуют броню на конечностях; хвост покрыт костяными кольцами. Живот и внутренние части лап у броненосца мягкие, незащищённые, покрытые жёсткими волосами. Волоски также растут между костными пластинками; иногда пронизывают и роговые чешуйки. Окраска панциря меняется от коричневой до розовой, волос — от серовато-коричневой до белой.', '413px-Dasypus_novemcinctus.jpg'),
(23, 'Кролик', 2, 'общее название нескольких родов млекопитающих из семейства зайцевых (в том числе и домашних кроликов).', 'Кролики отличаются от зайцев альтрициальностью (термин восходит к лат. altrīx, īcis f. [altor] кормилица, воспитательница, также как термин «альтрициальный», англ. altricial — незрелорождающийся, — применяемый, в частности, к гнездовым птицам и к таким млекопитающим, как крысы, медведи и т. п.) — их детёныши рождаются слепыми, лишёнными мехового покрова, растут в норах. Зайцы, напротив, — прекоциалы: зайчата появляются на свет покрытыми шерстью, с открытыми глазами. Все кролики, кроме американского, живут в подземных норах, часто глубоких и сложных; тогда как зайцы — в простых гнёздах, расположенных на земле (так же делают и американские кролики). Зайцы к тому же обычно не живут группами. Зайцы в целом больше кроликов, их уши длиннее, а мех имеет чёрные отметки. Зайцы до сих пор не приручены — кролики же часто выступают в качестве домашних питомцев.', '398px-Sylvilagus_audubonii.jpg'),
(24, 'Утконос', 2, 'водоплавающее млекопитающее отряда однопроходных, обитающее в Австралии. Это единственный современный представитель семейства утконосовых (Ornithorhynchidae); вместе с ехидновыми образует отряд однопроходных (Monotremata)', 'Это уникальное животное является одним из символов Австралии; оно изображено на реверсе австралийской монеты в 20 центов. Длина тела утконоса 30—40 см, хвоста — 10—15 см, весит он до 2 кг. Самцы примерно на треть крупнее самок. Тело у утконоса приземистое, коротконогое; хвост уплощённый, похож на хвост бобра, но покрыт шерстью, которая с возрастом заметно редеет. В хвосте утконоса, как у тасманийского дьявола, откладываются запасы жира. Мех у него густой, мягкий, обычно тёмно-коричневый на спине и рыжеватый или серый на брюхе. Голова круглая. Впереди лицевой отдел вытянут в плоский клюв длиной около 65 мм, шириной 50 мм. Клюв не жёсткий, как у птиц, а мягкий, покрытый эластичной голой кожей, которая натянута на две тонкие, длинные, дугообразные косточки.', '413px-Platypus.jpg'),
(27, 'Панда', 1, 'бамбуковый медведь, одно из редчайших животных, занесённых в международную Красную книгу; единственный современный представитель рода большие панды (Ailuropoda) и подсемейства Ailuropodinae.', 'бамбуковый медведь, одно из редчайших животных, занесённых в международную Красную книгу; единственный современный представитель рода большие панды (Ailuropoda) и подсемейства Ailuropodinae.', '360px-Giant_panda_(Ailuropoda_melanoleuca),_Giant_Panda_Habitat,_Ocean_Park_Hong_Kong_-_20130808-04.jpg'),
(46, 'Пингвиновые', 3, 'от валлийского pen gwyn (\"белая голова\"), обозначающего вымершую бескрылую гагарку (Pinguinus impennis) из семейства чистиковых.', 'Форма тела пингвинов обтекаемая, что идеально для передвижения в воде. Мускулатура и устройство костей позволяют им под водой работать крыльями почти как винтами. В отличие от других нелетающих птиц, пингвины имеют грудину с чётко выраженным килем, к которому крепится мощная мускулатура. Плавание под водой отличается от полёта в воздухе тем, что на подъём крыла затрачивается та же энергия, что и на опускание, поскольку сопротивление воды больше, чем сопротивление воздуха, поэтому лопатки пингвинов имеют по сравнению с другими птицами бо́льшую поверхность, на которой крепится мускулатура, отвечающая за подъём крыла.', 'Penguins.jpg'),
(73, 'Лошадь', 3, 'единственный современный род семейства лошадиных (Equidae) отряда непарнокопытных.', 'Насчёт этой классификации существуют некоторые расходящиеся мнения. Осла и кулана иногда выделяют в отдельный род Asinus, аргументируя тем, что эти два вида отделились от остальных в плиоцене. Лошадь Пржевальского и домашняя лошадь обычно считаются двумя разными видами из-за разного количества хромосом. Иногда первых всё же причисляют к домашней лошади. По данным палеогенетиков лошади Пржевальского являются одичавшими потомками ботайских лошадей', 'pstghlmt336143.png'),
(74, 'Белый медведь', 1, 'хищное млекопитающее семейства медвежьих, близкий родственник бурого медведя. ', 'Белый медведь — самый крупный представитель семейства медвежьих и отряда хищных (если не включать в отряд хищных ластоногих). Его длина достигает 3 м, масса до 1 т. Обычно самцы весят 400—450 кг, длина тела 200—250 см. Самки заметно мельче (200—300 кг, 160—250 см). Высота в холке 130—150 см[2]. Самые мелкие медведи водятся на Шпицбергене, самые крупные — в Беринговом море.\r\nБелого медведя от других медведей отличают длинная шея и плоская голова. Кожа у него чёрная. Цвет шубы варьирует от белого до желтоватого; летом мех может желтеть из-за постоянного воздействия солнечного света. Шерсть белого медведя лишена пигментной окраски, и шерстинки полые. Полупрозрачные волоски пропускают только ультрафиолетовые лучи, придавая шерсти теплоизоляционные свойства.', 'bm.jpg'),
(75, 'Опоссум', 3, 'семейство млекопитающих инфракласса сумчатых. Оно включает самых древних и наименее специализированных сумчатых', 'Размеры опоссумов невелики: длина тела 7—50 см, хвоста 4—55 см. Морда вытянутая и заострённая. Хвост целиком или только на конце голый, хватательный, иногда в основании утолщён отложениями жира. Тело покрыто коротким густым мехом, окрас которого варьируется от серого и желтовато-бурого до чёрного. Строение зубной системы, конечностей, сумки свидетельствует о примитивности опоссумов. Конечности укороченные, пятипалые; большой палец задней конечности противопоставлен остальным пальцам и лишён когтя. Задние лапы обычно сильнее передних. Зубная формула архаичная: полный ряд резцов (по 5 на верхней челюсти и по 4 — на нижней), хорошо развитые клыки и остробугорчатые коренные зубы. У всех опоссумов по 50 зубов.', 'unnamed.jpg'),
(82, 'Гепард', 3, 'хищное млекопитающее семейства кошачьих, обитает в большинстве стран Африки, а также на Ближнем Востоке.', 'В отличие от других кошачьих, гепарды охотятся, преследуя добычу, а не нападая из засады. Обусловлено это тем, что естественная среда обитания гепардов и объектов их охоты — открытая местность и, как следствие, почти полное отсутствие возможностей для устройства засад. Сначала они приближаются к выбранной жертве на расстояние около 10 метров (при этом практически не скрываясь), а затем пытаются поймать её в коротком скоростном забеге. В погоне за жертвой развивают скорость до 130 км/ч, разгоняясь до 75 км/ч за 2 секунды. Бежит гепард прыжками длиной в 6—8 метров, затрачивая на каждый прыжок менее 0,5 секунды. Во время спринтерского забега частота дыхания у гепарда возрастает до 150 раз в минуту', 'wallpaper-4135877_960_720.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `post` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tag`
--

INSERT INTO `tag` (`id`, `tag`, `post`) VALUES
(35, 'прыгает', 23),
(41, 'жирная ласточка', 46),
(46, 'прыгает', 7),
(47, 'милота', 6),
(50, 'медведь', 74),
(59, 'прыгает', 73),
(87, 'панда', 27),
(88, 'медведь', 27),
(89, 'милота', 27),
(91, 'млекопитающее', 24),
(98, 'млекопитающее', 5),
(99, 'шея', 5),
(100, 'усы', 75),
(105, 'скорость', 82);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_hash` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`, `user_hash`) VALUES
(1, 'alex', 'a@pl', '827ccb0eea8a706c4c34a16891f84e7b', '9e027a91ab052bd279bf0b006f18a39f');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
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
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
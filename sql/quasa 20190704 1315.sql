--
-- Скрипт сгенерирован Devart dbForge Studio 2019 for MySQL, Версия 8.1.45.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 04.07.2019 13:15:41
-- Версия сервера: 5.5.59
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Установка базы данных по умолчанию
--
USE quasa;

--
-- Удалить таблицу `tasks`
--
DROP TABLE IF EXISTS tasks;

--
-- Удалить таблицу `users`
--
DROP TABLE IF EXISTS users;

--
-- Установка базы данных по умолчанию
--
USE quasa;

--
-- Создать таблицу `users`
--
CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT,
  login varchar(50) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать таблицу `tasks`
--
CREATE TABLE tasks (
  id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  id_client int(11) DEFAULT NULL,
  id_contractor int(11) DEFAULT NULL,
  title varchar(50) DEFAULT NULL,
  description tinytext DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  cost decimal(19, 2) DEFAULT NULL,
  time_start datetime DEFAULT NULL,
  time_end datetime DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 9,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы users
--
INSERT INTO users VALUES
(1, 'Slava', '123'),
(2, 'Igor', '123');

-- 
-- Вывод данных для таблицы tasks
--
INSERT INTO tasks VALUES
(1, 1, NULL, 'Задание 1', NULL, 'Москва', 2500.00, '2019-07-02 00:00:00', NULL),
(2, 1, 2, 'Отвезти документы в Минск', 'Полное описание задания по перевозке документов в Минск', 'Минск', 60000.00, '2019-07-03 00:00:00', '2019-07-04 00:00:00'),
(3, 1, NULL, 'Задание 3', NULL, 'СПБ', 3800.00, '2019-07-04 00:00:00', NULL),
(4, 1, NULL, 'Задание 4', NULL, 'Новороссийск', 2400.00, '2019-07-05 00:00:00', NULL),
(5, 1, NULL, 'Задание 5', NULL, 'Кострома', 5000.00, '2019-07-06 00:00:00', NULL),
(6, 2, NULL, 'Задание 6', NULL, 'Берлин', 1800.00, '2019-07-07 00:00:00', NULL),
(7, 2, NULL, 'Задание 7', NULL, 'Витебск', 1150.00, '2019-07-12 00:00:00', NULL),
(8, 2, NULL, 'Задание 8', NULL, 'Нью Йорк', 25000.00, '2019-06-28 00:00:00', '2019-07-01 00:00:00');

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
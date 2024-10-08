-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-10-2024 a las 04:58:36
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `psychoshield_hackaton`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add question', 7, 'add_question'),
(26, 'Can change question', 7, 'change_question'),
(27, 'Can delete question', 7, 'delete_question'),
(28, 'Can view question', 7, 'view_question'),
(29, 'Can add test', 8, 'add_test'),
(30, 'Can change test', 8, 'change_test'),
(31, 'Can delete test', 8, 'delete_test'),
(32, 'Can view test', 8, 'view_test'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add answer option', 10, 'add_answeroption'),
(38, 'Can change answer option', 10, 'change_answeroption'),
(39, 'Can delete answer option', 10, 'delete_answeroption'),
(40, 'Can view answer option', 10, 'view_answeroption'),
(41, 'Can add test result', 11, 'add_testresult'),
(42, 'Can change test result', 11, 'change_testresult'),
(43, 'Can delete test result', 11, 'delete_testresult'),
(44, 'Can view test result', 11, 'view_testresult'),
(45, 'Can add patient response', 12, 'add_patientresponse'),
(46, 'Can change patient response', 12, 'change_patientresponse'),
(47, 'Can delete patient response', 12, 'delete_patientresponse'),
(48, 'Can view patient response', 12, 'view_patientresponse');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$1dsod0cIg35iig1RY98NGq$1I4jG4Y7QIUcDbDj/Jxz3xdyPMPESc9sR2gt2lzZ0C4=', '2024-09-30 02:12:18.612843', 1, 'BLESSCKER', '', '', 'brauliortegabatalla@gmail.com', 1, 1, '2024-09-30 02:12:00.878147');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-30 02:14:02.754446', '1', 'Andres', 1, '[{\"added\": {}}]', 9, 1),
(2, '2024-09-30 02:17:57.387542', '1', 'Andres', 3, '', 9, 1),
(3, '2024-09-30 02:18:08.296426', '2', 'Andres', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-09-30 02:19:03.129207', '3', 'Pedrito', 1, '[{\"added\": {}}]', 9, 1),
(5, '2024-09-30 02:21:03.343124', '3', 'Pedrito', 3, '', 9, 1),
(6, '2024-09-30 02:21:03.343124', '2', 'Andres', 3, '', 9, 1),
(7, '2024-09-30 02:21:13.692260', '4', 'Andres', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-09-30 02:43:01.960886', '1', 'Test Inventario de Depresión de Beck (BDI-2)', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-09-30 02:49:19.238329', '1', 'Tristeza', 1, '[{\"added\": {}}]', 7, 1),
(10, '2024-09-30 02:49:28.126467', '2', 'Pesimismo', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-09-30 02:49:33.400288', '3', 'Fracaso', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-09-30 02:50:01.630963', '4', 'Pérdida de Placer', 1, '[{\"added\": {}}]', 7, 1),
(13, '2024-09-30 02:50:13.498532', '5', 'Sentimientos de Culpa', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-09-30 02:51:26.359663', '6', 'Sentimientos de Castigo', 1, '[{\"added\": {}}]', 7, 1),
(15, '2024-09-30 02:51:46.163910', '7', 'Disconformidad con uno mismo', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-09-30 02:51:54.476789', '8', 'Autocrítica', 1, '[{\"added\": {}}]', 7, 1),
(17, '2024-09-30 02:52:19.971323', '9', 'Pensamientos o Deseos Suicidas', 1, '[{\"added\": {}}]', 7, 1),
(18, '2024-09-30 02:52:35.501953', '10', 'Llanto', 1, '[{\"added\": {}}]', 7, 1),
(19, '2024-09-30 02:52:42.628264', '11', 'Agitación', 1, '[{\"added\": {}}]', 7, 1),
(20, '2024-09-30 02:52:52.576213', '12', 'Pérdida de Interés', 1, '[{\"added\": {}}]', 7, 1),
(21, '2024-09-30 02:53:02.493614', '13', 'Indecisión', 1, '[{\"added\": {}}]', 7, 1),
(22, '2024-09-30 02:53:16.348750', '14', 'Desvalorización', 1, '[{\"added\": {}}]', 7, 1),
(23, '2024-09-30 02:53:26.551138', '15', 'Pérdida de Energía', 1, '[{\"added\": {}}]', 7, 1),
(24, '2024-09-30 02:53:48.689696', '16', 'Cambios en los hábitos de sueño', 1, '[{\"added\": {}}]', 7, 1),
(25, '2024-09-30 02:57:43.080363', '17', 'Irritabilidad', 1, '[{\"added\": {}}]', 7, 1),
(26, '2024-09-30 02:57:59.448914', '18', 'Cambios en el Apetito', 1, '[{\"added\": {}}]', 7, 1),
(27, '2024-09-30 02:58:10.878406', '19', 'Dificultad de Concentración', 1, '[{\"added\": {}}]', 7, 1),
(28, '2024-09-30 02:58:20.839126', '20', 'Cansancio o Fatiga', 1, '[{\"added\": {}}]', 7, 1),
(29, '2024-09-30 02:58:32.655438', '21', 'Pérdida de Interés en el Sexo', 1, '[{\"added\": {}}]', 7, 1),
(30, '2024-09-30 03:14:48.022268', '5', 'Me siento tan triste que no puedo soportarlo.', 3, '', 10, 1),
(31, '2024-09-30 03:14:48.022268', '4', 'Me siento triste todo el tiempo.', 3, '', 10, 1),
(32, '2024-09-30 03:14:48.022268', '3', 'Me siento triste gran parte del tiempo.', 3, '', 10, 1),
(33, '2024-09-30 03:14:48.022268', '2', 'Me siento triste algunas veces.', 3, '', 10, 1),
(34, '2024-09-30 03:14:48.022268', '1', 'No me siento triste.', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'psychoshield', 'question'),
(8, 'psychoshield', 'test'),
(9, 'psychoshield', 'user'),
(10, 'psychoshield', 'answeroption'),
(11, 'psychoshield', 'testresult'),
(12, 'psychoshield', 'patientresponse');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-30 02:09:48.193111'),
(2, 'auth', '0001_initial', '2024-09-30 02:09:48.457047'),
(3, 'admin', '0001_initial', '2024-09-30 02:09:48.573286'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-30 02:09:48.577792'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-30 02:09:48.581797'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-30 02:09:48.635046'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-30 02:09:48.654074'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-30 02:09:48.673606'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-30 02:09:48.678118'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-30 02:09:48.706976'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-30 02:09:48.706976'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-30 02:09:48.711105'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-30 02:09:48.733136'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-30 02:09:48.757176'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-30 02:09:48.778543'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-30 02:09:48.783543'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-30 02:09:48.802123'),
(18, 'psychoshield', '0001_initial', '2024-09-30 02:09:49.091256'),
(19, 'sessions', '0001_initial', '2024-09-30 02:09:49.111652'),
(20, 'psychoshield', '0002_remove_test_id_creador', '2024-09-30 02:42:02.972225'),
(21, 'psychoshield', '0003_remove_question_peso', '2024-09-30 02:48:52.960370'),
(22, 'psychoshield', '0004_user_last_login', '2024-09-30 06:46:57.802699'),
(23, 'psychoshield', '0005_user_is_active_user_is_admin_user_password_and_more', '2024-09-30 14:52:32.524529'),
(24, 'psychoshield', '0006_test_edad_test_educacion_test_estado_civil_and_more', '2024-09-30 17:17:17.711356'),
(25, 'psychoshield', '0007_testresult_sintomatologia_presentada', '2024-10-04 14:09:12.199598'),
(26, 'psychoshield', '0008_user_descripcion_user_experiencia', '2024-10-05 19:42:06.161242'),
(27, 'psychoshield', '0009_test_antecedente_paciente', '2024-10-05 22:14:29.474227'),
(28, 'psychoshield', '0009_testresult_antecedente', '2024-10-06 03:51:39.278101');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9jsw6k96y4zmwnfvrcx1q5x5knm3xuw2', 'e30:1svA6X:95F7rlfoVkNqf5MqbQ_G05XiAtsEUhicRX3Ciewe6eU', '2024-10-14 06:41:57.525256'),
('db36wrashnud9g28myym14zexhpza5tf', 'e30:1svA8G:jZSFjAFyvPD3yAlhEl-8-gj-fVCguEl083cbndV0gFY', '2024-10-14 06:43:44.726370'),
('lnykbi2o7zebnpn2wlq0spke628hl7jr', '.eJxVjDsOwjAQBe_iGln-bLwOJT1nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxJnAeL0uzHFR247SHdqt1nGua3LxHJX5EG7vM4pPy-H-3dQqddvPVhdICdNGhXb6MFBIULlFYwG7QDOxNEyFOfIMSkkgzExF89MHot4fwDPVzf6:1swaIl:TzaYJHyHJ28TAELdfJqckO_CfFOWAWh3GI6gX8YYCZM', '2024-10-18 04:52:27.054686'),
('362fi0x0v3m3bvcv0eikmgjtf8yv7kvl', '.eJxVjDsOwjAQBe_iGln-bLwOJT1nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxJnAeL0uzHFR247SHdqt1nGua3LxHJX5EG7vM4pPy-H-3dQqddvPVhdICdNGhXb6MFBIULlFYwG7QDOxNEyFOfIMSkkgzExF89MHot4fwDPVzf6:1swseI:alRDaE-AqtNMChcccDfHXQyqmcBFp9Ump7iAhM_NTuA', '2024-10-19 00:27:54.552596'),
('ppjjkqio9t7yclginmbbj8garf8ewjo7', '.eJxVjDsOwjAQBe_iGln-bLwOJT1nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxJn4cTpd2OKj9x2kO7UbrOMc1uXieWuyIN2eZ1Tfl4O9--gUq_ferC6QE6aNCq20YODQoTKKxgN2gGciaNlKM6RY1JIBmNiLp6ZPBbx_gDQiTf8:1sx885:i_ZC2V_jjatyL3gMjo9q1HmAq479WigkGt1zJzmS4NY', '2024-10-19 16:59:41.644071'),
('bgdtc2t2hmneb6nkdhn8lrbymcknix7m', '.eJxVjDsOwjAQBe_iGln-bLwOJT1nsHb9wQHkSHFSIe4OkVJA-2bmvUSgba1h63kJUxJn4cTpd2OKj9x2kO7UbrOMc1uXieWuyIN2eZ1Tfl4O9--gUq_ferC6QE6aNCq20YODQoTKKxgN2gGciaNlKM6RY1JIBmNiLp6ZPBbx_gDQiTf8:1sxIae:vQUrw6ebwSa74MGxJosUu6rLyNab9spGVWrMU_mcWwY', '2024-10-20 04:09:52.906369');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psychoshield_answeroption`
--

DROP TABLE IF EXISTS `psychoshield_answeroption`;
CREATE TABLE IF NOT EXISTS `psychoshield_answeroption` (
  `id` int NOT NULL AUTO_INCREMENT,
  `opcion` varchar(191) NOT NULL,
  `valor` int NOT NULL,
  `id_pregunta_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `psychoshield_answeroption_id_pregunta_id_273f0b81` (`id_pregunta_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `psychoshield_answeroption`
--

INSERT INTO `psychoshield_answeroption` (`id`, `opcion`, `valor`, `id_pregunta_id`) VALUES
(9, 'Me siento tan triste o soy tan infeliz que no puedo soportarlo', 3, 1),
(8, 'Me siento triste todo el tiempo', 2, 1),
(7, 'Me siento triste gran parte del tiempo', 1, 1),
(6, 'No me siento triste.', 0, 1),
(10, 'No estoy desalentado respecto de mi futuro.', 0, 2),
(11, 'Me siento más desalentado respecto de mi futuro que lo que solía estarlo.', 1, 2),
(12, 'No espero que las cosas funcionen para mí.', 2, 2),
(13, 'Siento que no hay esperanza para mi futuro y que sólo puede empeorar.', 3, 2),
(14, 'No me siento como un fracasado.', 0, 3),
(15, 'He fracasado más de lo que hubiera debido.', 1, 3),
(16, 'Cuando miro hacia atrás, veo muchos fracasos.', 2, 3),
(17, 'Siento que como persona soy un fracaso total.', 3, 3),
(18, 'Obtengo tanto placer como siempre por las cosas de las que disfruto.', 0, 4),
(19, 'No disfruto tanto de las cosas como solía hacerlo.', 1, 4),
(20, 'Obtengo muy poco placer de las cosas que solía disfrutar.', 2, 4),
(21, 'No puedo obtener ningún placer de las cosas de las que solía disfrutar.', 3, 4),
(22, 'No me siento particularmente culpable.', 0, 5),
(23, 'Me siento culpable respecto de varias cosas que he hecho o que debería haber hecho.', 1, 5),
(24, 'Me siento bastante culpable la mayor parte del tiempo.', 2, 5),
(25, 'Me siento culpable todo el tiempo.', 3, 5),
(26, 'No siento que esté siendo castigado.', 0, 6),
(27, 'Siento que tal vez pueda ser castigado.', 1, 6),
(28, 'Espero ser castigado.', 2, 6),
(29, 'Siento que estoy siendo castigado.', 3, 6),
(30, 'Siento acerca de mí lo mismo que siempre.', 0, 7),
(31, 'He perdido la confianza en mí mismo.', 1, 7),
(32, 'Estoy decepcionado conmigo mismo.', 2, 7),
(33, 'No me gusto a mí mismo.', 3, 7),
(34, 'No me critico ni me culpo más de lo habitual.', 0, 8),
(35, 'Estoy más crítico conmigo mismo de lo que solía estarlo.', 1, 8),
(36, 'Me critico a mí mismo por todos mis errores.', 2, 8),
(37, 'Me culpo a mí mismo por todo lo malo que sucede.', 3, 8),
(38, 'No tengo ningún pensamiento de matarme.', 0, 9),
(39, 'He tenido pensamientos de matarme, pero no lo haría.', 1, 9),
(40, 'Querría matarme.', 2, 9),
(41, 'Me mataría si tuviera la oportunidad de hacerlo.', 3, 9),
(42, 'No lloro más de lo que solía hacerlo.', 0, 10),
(43, 'Lloro más de lo que solía hacerlo.', 1, 10),
(44, 'Lloro por cualquier pequeñez.', 2, 10),
(45, 'Siento ganas de llorar pero no puedo.', 3, 10),
(46, 'No estoy más inquieto o tenso que lo habitual.', 0, 11),
(47, 'Me siento más inquieto o tenso que lo habitual.', 1, 11),
(48, 'Estoy tan inquieto o agitado que me es difícil quedarme quieto.', 2, 11),
(49, 'Estoy tan inquieto o agitado que tengo que estar siempre en movimiento o haciendo algo.', 3, 11),
(50, 'No he perdido el interés en otras actividades o personas.', 0, 12),
(51, 'Estoy menos interesado que antes en otras personas o cosas.', 1, 12),
(52, 'He perdido casi todo el interés en otras personas o cosas.', 2, 12),
(53, 'Me es difícil interesarme por algo.', 3, 12),
(54, 'Tomo mis propias decisiones tan bien como siempre.', 0, 13),
(55, 'Me resulta más difícil que de costumbre tomar decisiones.', 1, 13),
(56, 'Encuentro mucha más dificultad que antes para tomar decisiones.', 2, 13),
(57, 'Tengo problemas para tomar cualquier decisión.', 3, 13),
(58, 'No siento que yo no sea valioso.', 0, 14),
(59, 'No me considero a mí mismo tan valioso y útil como solía considerarme.', 1, 14),
(60, 'Me siento menos valioso cuando me comparo con otros.', 2, 14),
(61, 'Siento que no valgo nada.', 3, 14),
(62, 'Tengo tanta energía como siempre.', 0, 15),
(63, 'Tengo menos energía que la que solía tener.', 1, 15),
(64, 'No tengo suficiente energía para hacer demasiado.', 2, 15),
(65, 'No tengo energía suficiente para hacer nada.', 3, 15),
(66, 'No he experimentado ningún cambio en mis hábitos de sueño.', 0, 16),
(67, 'Duermo un poco más que lo habitual.', 1, 16),
(68, 'Duermo un poco menos que lo habitual.', 1, 16),
(69, 'Duermo mucho más que lo habitual.', 2, 16),
(70, 'Duermo mucho menos que lo habitual.', 2, 16),
(71, 'Duermo la mayor parte del día.', 3, 16),
(72, 'Me despierto 1-2 horas más temprano y no puedo volver a dormirme.', 3, 16),
(73, 'No estoy tan irritable que lo habitual.', 0, 17),
(74, 'Estoy más irritable que lo habitual.', 1, 17),
(75, 'Estoy mucho más irritable que lo habitual.', 2, 17),
(76, 'Estoy irritable todo el tiempo.', 3, 17),
(77, 'No he experimentado ningún cambio en mi apetito.', 0, 18),
(78, 'Mi apetito es un poco menor que lo habitual.', 1, 18),
(79, 'Mi apetito es un poco mayor que lo habitual.', 1, 18),
(80, 'Mi apetito es mucho menor que antes.', 2, 18),
(81, 'Mi apetito es mucho mayor que lo habitual.', 2, 18),
(82, 'No tengo apetito en absoluto.', 3, 18),
(83, 'Quiero comer todo el día.', 3, 18),
(84, 'Puedo concentrarme tan bien como siempre.', 0, 19),
(85, 'No puedo concentrarme tan bien como habitualmente.', 1, 19),
(86, 'Me es difícil mantener la mente en algo por mucho tiempo.', 2, 19),
(87, 'Encuentro que no puedo concentrarme en nada.', 3, 19),
(88, 'No estoy más cansado o fatigado que lo habitual.', 0, 20),
(89, 'Me fatigo o me canso más fácilmente que lo habitual.', 1, 20),
(90, 'Estoy demasiado fatigado o cansado para hacer muchas de las cosas que solía hacer.', 2, 20),
(91, 'Estoy demasiado fatigado o cansado para hacer la mayoría de las cosas que solía hacer.', 3, 20),
(92, 'No he notado ningún cambio reciente en mi interés por el sexo.', 0, 21),
(93, 'Estoy menos interesado en el sexo de lo que solía estarlo.', 1, 21),
(94, 'Estoy mucho menos interesado en el sexo.', 2, 21),
(95, 'He perdido completamente el interés en el sexo.', 3, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psychoshield_patientresponse`
--

DROP TABLE IF EXISTS `psychoshield_patientresponse`;
CREATE TABLE IF NOT EXISTS `psychoshield_patientresponse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_respuesta` datetime(6) NOT NULL,
  `id_opcion_respuesta_id` int NOT NULL,
  `id_pregunta_id` int NOT NULL,
  `id_usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `psychoshield_patientresponse_id_opcion_respuesta_id_0f74e1a6` (`id_opcion_respuesta_id`),
  KEY `psychoshield_patientresponse_id_pregunta_id_d312574e` (`id_pregunta_id`),
  KEY `psychoshield_patientresponse_id_usuario_id_3d4d16d3` (`id_usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `psychoshield_patientresponse`
--

INSERT INTO `psychoshield_patientresponse` (`id`, `fecha_respuesta`, `id_opcion_respuesta_id`, `id_pregunta_id`, `id_usuario_id`) VALUES
(1, '2024-09-30 17:29:21.917690', 9, 1, 6),
(2, '2024-09-30 17:29:21.918693', 10, 2, 6),
(3, '2024-09-30 17:29:21.919693', 14, 3, 6),
(4, '2024-09-30 17:29:21.920691', 18, 4, 6),
(5, '2024-09-30 17:29:21.921691', 22, 5, 6),
(6, '2024-09-30 17:29:21.922693', 26, 6, 6),
(7, '2024-09-30 17:29:21.923694', 31, 7, 6),
(8, '2024-09-30 17:29:21.924693', 34, 8, 6),
(9, '2024-09-30 17:29:21.925694', 40, 9, 6),
(10, '2024-09-30 17:29:21.926690', 44, 10, 6),
(11, '2024-09-30 17:29:21.927692', 47, 11, 6),
(12, '2024-09-30 17:29:21.928692', 52, 12, 6),
(13, '2024-09-30 17:29:21.929691', 55, 13, 6),
(14, '2024-09-30 17:29:21.930694', 58, 14, 6),
(15, '2024-09-30 17:29:21.931694', 63, 15, 6),
(16, '2024-09-30 17:29:21.932693', 67, 16, 6),
(17, '2024-09-30 17:29:21.933692', 76, 17, 6),
(18, '2024-09-30 17:29:21.934695', 79, 18, 6),
(19, '2024-09-30 17:29:21.935694', 85, 19, 6),
(20, '2024-09-30 17:29:21.935694', 88, 20, 6),
(21, '2024-09-30 17:29:21.936693', 92, 21, 6),
(22, '2024-09-30 17:32:02.779196', 9, 1, 6),
(23, '2024-09-30 17:32:02.780195', 10, 2, 6),
(24, '2024-09-30 17:32:02.784193', 14, 3, 6),
(25, '2024-09-30 17:32:02.785196', 18, 4, 6),
(26, '2024-09-30 17:32:02.786195', 22, 5, 6),
(27, '2024-09-30 17:32:02.787193', 26, 6, 6),
(28, '2024-09-30 17:32:02.788195', 31, 7, 6),
(29, '2024-09-30 17:32:02.789194', 34, 8, 6),
(30, '2024-09-30 17:32:02.790196', 40, 9, 6),
(31, '2024-09-30 17:32:02.791196', 44, 10, 6),
(32, '2024-09-30 17:32:02.792195', 47, 11, 6),
(33, '2024-09-30 17:32:02.793194', 52, 12, 6),
(34, '2024-09-30 17:32:02.794194', 55, 13, 6),
(35, '2024-09-30 17:32:02.795196', 58, 14, 6),
(36, '2024-09-30 17:32:02.796196', 63, 15, 6),
(37, '2024-09-30 17:32:02.797196', 67, 16, 6),
(38, '2024-09-30 17:32:02.797196', 76, 17, 6),
(39, '2024-09-30 17:32:02.798195', 79, 18, 6),
(40, '2024-09-30 17:32:02.799194', 85, 19, 6),
(41, '2024-09-30 17:32:02.801196', 88, 20, 6),
(42, '2024-09-30 17:32:02.801196', 92, 21, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psychoshield_question`
--

DROP TABLE IF EXISTS `psychoshield_question`;
CREATE TABLE IF NOT EXISTS `psychoshield_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_pregunta` varchar(191) NOT NULL,
  `tipo_respuesta` varchar(50) NOT NULL,
  `id_test_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `psychoshield_question_id_test_id_d97cb5ef` (`id_test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `psychoshield_question`
--

INSERT INTO `psychoshield_question` (`id`, `nombre_pregunta`, `tipo_respuesta`, `id_test_id`) VALUES
(1, 'Tristeza', 'opción múltiple', 1),
(2, 'Pesimismo', 'opción múltiple', 1),
(3, 'Fracaso', 'opción múltiple', 1),
(4, 'Pérdida de Placer', 'opción múltiple', 1),
(5, 'Sentimientos de Culpa', 'opción múltiple', 1),
(6, 'Sentimientos de Castigo', 'opción múltiple', 1),
(7, 'Disconformidad con uno mismo', 'opción múltiple', 1),
(8, 'Autocrítica', 'opción múltiple', 1),
(9, 'Pensamientos o Deseos Suicidas', 'opción múltiple', 1),
(10, 'Llanto', 'opción múltiple', 1),
(11, 'Agitación', 'opción múltiple', 1),
(12, 'Pérdida de Interés', 'opción múltiple', 1),
(13, 'Indecisión', 'opción múltiple', 1),
(14, 'Desvalorización', 'opción múltiple', 1),
(15, 'Pérdida de Energía', 'opción múltiple', 1),
(16, 'Cambios en los hábitos de sueño', 'opción múltiple', 1),
(17, 'Irritabilidad', 'opción múltiple', 1),
(18, 'Cambios en el Apetito', 'opción múltiple', 1),
(19, 'Dificultad de Concentración', 'opción múltiple', 1),
(20, 'Cansancio o Fatiga', 'opción múltiple', 1),
(21, 'Pérdida de Interés en el Sexo', 'opción múltiple', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psychoshield_test`
--

DROP TABLE IF EXISTS `psychoshield_test`;
CREATE TABLE IF NOT EXISTS `psychoshield_test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_test` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `edad` int UNSIGNED NOT NULL,
  `educacion` varchar(30) NOT NULL,
  `estado_civil` varchar(10) NOT NULL,
  `ocupacion` varchar(100) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `antecedente_paciente` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `psychoshield_test`
--

INSERT INTO `psychoshield_test` (`id`, `nombre_test`, `descripcion`, `fecha_creacion`, `edad`, `educacion`, `estado_civil`, `ocupacion`, `sexo`, `antecedente_paciente`) VALUES
(1, 'Test Inventario de Depresión de Beck (BDI-2)', 'El Inventario de Depresión de Beck - Segunda Edición (BDI-II) es una herramienta de evaluación psicológica ampliamente utilizada para medir la severidad de los síntomas de depresión en individuos a partir de los 13 años. Desarrollado por el psicólogo Aaron T. Beck, el BDI-II consta de 21 preguntas que evalúan diversos aspectos del estado emocional y físico del individuo, como la tristeza, el pesimismo, la pérdida de placer, la autocrítica y los pensamientos suicidas.', '2024-09-30 02:43:01.960886', 25, 'primaria_completa', 'soltero', 'Desconocida', 'no_decir', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psychoshield_testresult`
--

DROP TABLE IF EXISTS `psychoshield_testresult`;
CREATE TABLE IF NOT EXISTS `psychoshield_testresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resultado_total` int NOT NULL,
  `nivel_riesgo` varchar(20) NOT NULL,
  `fecha_resultado` datetime(6) NOT NULL,
  `id_test_id` int NOT NULL,
  `id_psicologo_id` int NOT NULL,
  `id_usuario_id` int NOT NULL,
  `sintomatologia_presentada` longtext,
  `antecedente` longtext,
  PRIMARY KEY (`id`),
  KEY `psychoshield_testresult_id_test_id_c95c58b2` (`id_test_id`),
  KEY `psychoshield_testresult_id_psicologo_id_a838f382` (`id_psicologo_id`),
  KEY `psychoshield_testresult_id_usuario_id_8ec5a666` (`id_usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `psychoshield_testresult`
--

INSERT INTO `psychoshield_testresult` (`id`, `resultado_total`, `nivel_riesgo`, `fecha_resultado`, `id_test_id`, `id_psicologo_id`, `id_usuario_id`, `sintomatologia_presentada`, `antecedente`) VALUES
(1, 2, 'Mínimo', '2024-09-30 18:02:24.265546', 1, 4, 6, 'Paciente presenta anhedonia, onicofagia e indica ideas delirantes..', NULL),
(2, 34, 'Severo', '2024-09-30 18:07:02.675845', 1, 4, 6, 'pepito', NULL),
(3, 10, 'Mínimo', '2024-09-30 19:00:42.015595', 1, 4, 10, NULL, NULL),
(4, 12, 'Mínimo', '2024-10-05 22:28:24.269826', 1, 4, 6, 'Me piso mi cucaracha / El paciente presento un síntoma de depresión', NULL),
(5, 19, 'Leve', '2024-10-06 03:57:37.075448', 1, 4, 6, 'puede cher', 'Me sentí triste está última semana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psychoshield_user`
--

DROP TABLE IF EXISTS `psychoshield_user`;
CREATE TABLE IF NOT EXISTS `psychoshield_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `contraseña` varchar(128) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `password` varchar(128) NOT NULL,
  `descripcion` longtext,
  `experiencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `psychoshield_user`
--

INSERT INTO `psychoshield_user` (`id`, `nombre`, `email`, `contraseña`, `rol`, `fecha_registro`, `last_login`, `is_active`, `is_admin`, `password`, `descripcion`, `experiencia`) VALUES
(4, 'Andres', 'andres@gmail.com', 'pbkdf2_sha256$870000$Vr5lr0Evjj1YqyFTordSjo$Dhs12NyFGDWXZULi3RwpBoxf+b2qZ4d0mJvjzyt7bDc=', 'psicólogo', '2024-09-30 02:21:13.692260', '2024-10-06 04:02:55.278311', 1, 0, 'pbkdf2_sha256$870000$oGYWxVbqW22xS9Naik5v3w$tRjdrd1JYT/nANMsyf9H7bdq1Rhj15CY4Oz5/E33oQ4=', 'Psicólogo clínico', '1 año en centro de salud del minsa'),
(5, 'Pedro', 'pedro@hotmail.com', 'pbkdf2_sha256$870000$THfbeX44aoePUICiWCm9A6$QE1ibHv3DsrRgyewKA6Prcsq/9RHLOzWNbfSfrCMGZA=', 'paciente', '2024-09-30 06:34:24.540139', '2024-09-30 06:46:57.770180', 1, 0, 'pbkdf2_sha256$870000$oGYWxVbqW22xS9Naik5v3w$tRjdrd1JYT/nANMsyf9H7bdq1Rhj15CY4Oz5/E33oQ4=', NULL, NULL),
(6, 'Pepe', 'pepe@gmail.com', 'pbkdf2_sha256$870000$D3PqvjpjaDbDUNAlTFm8qF$dOjhcJPblsUozJCWzljNojSrnbNzbbz4Z7ss7quYBBU=', 'paciente', '2024-09-30 06:40:26.885654', '2024-10-06 04:09:52.905368', 1, 0, 'pbkdf2_sha256$870000$oGYWxVbqW22xS9Naik5v3w$tRjdrd1JYT/nANMsyf9H7bdq1Rhj15CY4Oz5/E33oQ4=', NULL, NULL),
(7, 'Jorge', 'jorge@hotmail.com', 'pbkdf2_sha256$870000$LrncvuxWKtANCjDHpV6ccN$zjcM+MCKffProMIDLH4API4WuSQ90nlRACh+ZPH8S/E=', 'paciente', '2024-09-30 06:43:38.070133', '2024-09-30 06:46:57.770180', 1, 0, 'pbkdf2_sha256$870000$oGYWxVbqW22xS9Naik5v3w$tRjdrd1JYT/nANMsyf9H7bdq1Rhj15CY4Oz5/E33oQ4=', NULL, NULL),
(8, 'Bless', 'brauliortega@gmail.com', 'pbkdf2_sha256$870000$CNfNchTQihX9W0qi0UVFur$+d5Q2LAtoM5S2Fb/oAK6GsdphT4oCwrF9qevkCTSw4c=', '', '2024-09-30 15:00:58.425191', '2024-10-05 15:45:13.466870', 1, 1, '', NULL, NULL),
(9, 'pepito', 'pepito@gmail.com', 'pbkdf2_sha256$870000$FZUf4RXKywoPN1jWKwHJuL$Fto4PmK3dX7yPZqfVZ6mDKMpeFJaHCwF8xni+eVCDlk=', 'paciente', '2024-09-30 15:02:52.672647', '2024-09-30 15:28:10.729311', 1, 0, '', NULL, NULL),
(10, 'ucciPrueba', 'ucci@continental.edu.pe', 'pbkdf2_sha256$870000$hNiTWwiQqrfeKqullj4Gqg$QrP3bunvXvZ2n1vvs33Eqx7Vrbrtp4Fg3wlRtmW0+YM=', 'paciente', '2024-09-30 18:58:45.220308', '2024-09-30 18:58:54.520242', 1, 0, '', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

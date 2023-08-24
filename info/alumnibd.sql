-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2022 a las 23:39:57
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnibd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnidata`
--

CREATE TABLE `alumnidata` (
  `idDA` int(11) NOT NULL,
  `idU` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personalemail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generation` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneormail` int(1) DEFAULT NULL,
  `pathways` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `university` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `career` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `haspostgraduate` int(1) DEFAULT NULL,
  `postgraduatelevel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postgraduatewhere` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hasactualjob` int(1) DEFAULT NULL,
  `lookingforjob` int(1) DEFAULT NULL,
  `organization` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rol` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `competences` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interests` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iscommittee` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `linksmedium` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alumnidata`
--

INSERT INTO `alumnidata` (`idDA`, `idU`, `name`, `lastname`, `email`, `personalemail`, `generation`, `phone`, `phoneormail`, `pathways`, `university`, `career`, `haspostgraduate`, `postgraduatelevel`, `postgraduatewhere`, `hasactualjob`, `lookingforjob`, `organization`, `rol`, `city`, `state`, `competences`, `languages`, `interests`, `cv`, `iscommittee`, `linksmedium`, `img`) VALUES
(0, 0, 'Alumni', 'Test', 'alumni@ensenapormexico.org', NULL, NULL, '123456789', 1, NULL, 'Uni', 'Carrera', 0, '', '', 0, NULL, 'Organización', 'Puesto', NULL, 0, 'Habiilidades', 'Idiomas', NULL, NULL, '-', '', ''),
(1, 0, 'María Abigail', 'Gutiérrez Bojorges', 'abigail.gutierrez2015@ensenapormexico.org', 'mabigail.gbojorges@gmail.com', '2015', '5512494760', NULL, '|3|', 'Instituto Politécnico Nacional', 'Turismo', NULL, NULL, NULL, NULL, NULL, 'Gobierno de México', 'Coordinación Nacional de Becas para el Bienestar Benito Juárez / Programa Jóvenes Escribiendo el Fut', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/todo-se-transforma-a8fa0d55c8df|', 'abigailgutierrez2015.jpg'),
(2, 0, 'Adela', 'Marín Castillo', 'adela.marin2013@ensenapormexico.org', 'adelamarin09@gmail.org', '2013', '2225504342', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Jefe de formación región Sureste', 'Mérida, Yucatán', 31, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/la-alegr%C3%ADa-m%C3%A1s-grande-es-ver-crecer-a-tus-estudiantes-y-crecer-con-ellos-82ede2df92e8|', 'adelamarin2013.jpg'),
(3, 0, 'Adelaida', 'Segura Bautista', 'adelaida.segura2013@ensenapormexico.org', 'adelaidasegura@hotmail.com', '2013', '2224353816', NULL, '', 'UPAEP', 'Comunicación', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'adelaidasegura2013.jpg'),
(4, 0, 'Jorge Adenamar', 'Delgado Reyes', 'adenamar.delgado2015@ensenapormexico.org', 'tenipurishirihara@gmail.com', '2015', '5535054023', NULL, '-', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, '', '', 'San Sebastián, Gipuzkoa', 33, NULL, '', NULL, NULL, '-', '', 'adenamardelgado2015.jpg'),
(5, 0, 'Adriana Nayeli', 'Ibáñez Sánchez', 'adriana.ibanez2013@ensenapormexico.org', 'adribanezzz@hotmail.com', '2013', '9511114852 / 9511030105', NULL, '', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'adrianaibanez2013.jpg'),
(6, 0, 'Beatriz Adriana', 'Tepaneca Cuautle', 'adriana.tepaneca2015@ensenapormexico.org', 'adriana.pablas@gmail.com', '2015', '22 26 8510 78', NULL, '-', 'Instituto Tecnológico Superior de Atlixco', 'Ingeniería Industrial', NULL, NULL, NULL, NULL, NULL, '', '', 'San Pedro Cholula, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'adrianatepaneca2015.jpg'),
(7, 0, 'Alberto', 'Flores Castellanos', 'alberto.flores2015@ensenapormexico.org', 'beto13lvcr@hotmail.com', '2015', '2225867478', NULL, 'Sector público', 'Universidad del Valle de Atemajac', 'Ciencias y Técnicas de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Secretaria del Bienestar', 'Técnico Social', 'Tehuacan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'albertoflores2015.jpg'),
(8, 0, 'Alberto', 'Redonda Aguirre', 'alberto.redonda2015@ensenapormexico.org', 'x00alberto@hotmail.com', '2015', '3314192799', 1, '-', 'UNIVA', 'Ciencias y Técnicas de la Comunicación', 0, '', '', 0, NULL, 'C Minds', 'Marketing & Communication Assistan', 'Guadalajara, Jalisco', 14, 'Comunicación Social, Creación de Contenido Digital, Marketing Digital, Redacción, Diseño, Fotografía, Educación, Docencia.', 'Inglés (Nivel B2, MCER)', NULL, '../media/pdf/cv_186_242515112605_Alberto Redonda, CV-2021.pdf', '-', '|https://medium.com/alumni-exm/mi-camino-en-ense%C3%B1a-por-m%C3%A9xico-a7a66b7aba1e|', 'albertoredonda2015.JPG'),
(9, 0, 'Aldo Jerónimo', 'Huerta Alderete', 'aldo.huerta2014@ensenapormexico.org', 'alderete2704@gmail.com ', '2014', '2223385666', NULL, '-', 'BUAP', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, '', '', 'Guadalupe, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'aldohuerta2014.jpg'),
(10, 0, 'Alejandra', 'González Corona', 'alejandra.gonzalez2013@ensenapormexico.org', 'Alegoco83@gmail.com ', '2013', '2223946810', 2, '|2|', 'Universidad Anáhuac Norte', 'Educación y Desarrollo', 0, '', '', 1, NULL, 'Privanza y Asociados', 'Gerente de Desarrollo', 'Puebla, Puebla', 21, 'Gestión organizacional\nManejo de agenda\nDesarrollo de equipos de trabajo\nEspecialidad en Enseñanza de Matemáticas\nCédula A1 por la CNSF', 'Inglés intermedio', NULL, NULL, '-', '', 'alejandragonzalez2013.png'),
(11, 0, 'Olga Alejandra', 'Ortiz Ordaz', 'alejandra.ortiz2015@ensenapormexico.org', 'roozalex55@gmail.com', '2015', '9711424537', 1, '|2|', 'BUAP', 'Ciencias de la Comunicación', 1, 'Maestría en Ciencias del Lenguaje', 'ICSyH, BUAP', 0, NULL, 'UNIP', 'Profesora', '-', 33, 'Especialización en evaluación de políticas públicas lingüísticas y planificación del lenguaje. \n\nHabilidades docentes en materias de lenguaje, adquisición de segundas lenguas y medios de comunicación. ', 'Inglés: 178/ 210. Cambridge Advanced English (CAE). Nivel B2. \nAlemán: 270 / 300. Österreichisches Sprachdiplom Deutsch. Nivel B1. ', NULL, '../media/pdf/cv_189_242515112605_Olga Alejandra Ortiz - CV julio 2021.pdf', '-', '', 'alejandraortiz2015.jpg'),
(12, 0, 'Alejandra', 'Rubio López', 'alejandra.rubio2013@ensenapormexico.org', 'rou.alejandrarubio@gmail.com', '2013', '8125139717', NULL, '|1|', 'ITESM', 'Diseño Industrial', NULL, NULL, NULL, NULL, NULL, 'Cruz Roja Mexicana', 'Bienestar y Desarrollo Integral', 'San Pedro Garza García, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'alejandrarubio2013.jpg'),
(13, 0, 'Alejandrina', 'Villagrán Monggiotti', 'alejandrina.villagran2013@ensenapormexico.org', 'alevm_1603@hotmail.com', '2013', '2225184060', NULL, 'Otro', 'BUAP', 'Lenguas Modernas', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'alejandrinavillagran2013.jpg'),
(14, 0, 'Edgar Alejandro', 'Hughes Cano', 'alejandro.hughes2015@ensenapormexico.org', 'Alejandro.hughesc@gmail.com', '2015', '2222651261', 1, '|2|', 'Colegio Minimalista de Ciencias Penales', 'Estudios Crimino-victimales', 0, '', '', 0, NULL, 'Gobierno de México', 'subdirector responsable de la Beca Universal para Media Superior', 'Ciudad de México', 7, '', '', NULL, NULL, '-', '|https://medium.com/alumni-exm/no-se-puede-ser-nadie-solo-57991d7b17ad|https://medium.com/historias-pem/edgar-alejandro-hughes-pem-2015-d1ded0c6cfed|', 'alejandrohughes2015.jpg'),
(15, 0, 'Sergio Alexis', 'Bautista Angeles', 'alexis.bautista2015@ensenapormexico.org', 'salexis.bautista7@gmail.com', '2015', '5536730138', NULL, '|2|', 'UAM', 'Filosofía', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinador de Desarrollo', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/qu%C3%A9-significa-ser-pem-3d4e3040af2c|https://medium.com/enero-2018/educaci%C3%B3n-para-la-paz-1946d047b406|', 'alexisbautista2015.jpg'),
(16, 0, 'Alina', 'Vázquez Marneau', 'alina.vazquez2015@ensenapormexico.org', 'itandehui328@gmail.com', '2015', '2221834680', NULL, '-', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'alinavazquez2015.jpg'),
(17, 0, 'Alma Jessica', 'Sainz Hernández', 'alma.sainz2014@ensenapormexico.org', 'jess.sainz@gmail.com', '2014', '3315118254', NULL, '|2|', 'Universidad de Guadalajara', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Fundación Grupo Aeroportuario del Pacifico A.C (GAP)', 'Profesor', 'Guadalajara, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'almasainz2014.jpg'),
(18, 0, 'Amelia del Sol', 'León Martínez', 'amelia.leon2013@ensenapormexico.org', 'ameliadslm@gmail.com', '2013', '2221369850', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'amelialeon2013.jpg'),
(19, 0, 'Amelia Vidal', 'Nájera Blanco', 'amelia.najera2014@ensenapormexico.org', 'Amelia.najera@gmail.com', '2014', '2481388788', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Siglo XXI', 'Maestra frente a grupo', 'San Martín Texmelucan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'amelianajera2014.jpg'),
(20, 0, 'Ana Pilar', 'Castillo Mercado', 'ana.castillo2013@ensenapormexico.org', 'anna.castillo371@gmail.com', '2013', '5513313155', NULL, '|2|', 'ENAH', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, 'The Palapa Society A.C.', 'Profesor y administrador', 'Todos Santos, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'anacastillo2013.jpg'),
(21, 0, 'Anamaría', 'González ', 'ana.gonzalez2014@ensenapormexico.org', 'anadaclases@gmail.com', '2014', '8119088995', NULL, 'Sector privado', 'ITESM', 'Ingeniería Industrial y de Sistemas', NULL, NULL, NULL, NULL, NULL, 'Grupo Sigma S.A de C.V', 'Ventas', 'Santiago de Querétaro, Querétaro', 22, NULL, '', NULL, NULL, '-', '', 'anagonzalez2014.jpg'),
(22, 0, 'Ana Paula', 'Morales Espinosa', 'ana.morales2014@ensenapormexico.org', 'apme88@gmail.com', '2014', '2221926851', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'La Esperanza del Mañana A.C.', 'Directora General', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'anamorales2014.jpg'),
(23, 0, 'Ana Karen', 'Morales Coyotzi', 'ana.morales2015@ensenapormexico.org', 'morales.ak90@gmail.com', '2015', '2461039125', NULL, '|2|', 'UPN', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Fundación Grupo Aeroportuario del Pacifico A.C (GAP)', 'Maestro titular de primer grado.', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'anamorales2015.jpg'),
(24, 0, 'Ana Rubi', 'Torres Cornejo', 'ana.torres2014@ensenapormexico.org', 'rubi.tc26@gmail.com', '2014', '(+51) 1 972 555 816', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'anatorres2014.jpg'),
(25, 0, 'Anabel', 'Rojas Flores', 'anabel.rojas2013@ensenapormexico.org', 'rojas.f.anabel@gmail.com', '2013', '2224329840', NULL, 'Sector privado', 'UPAEP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Inditeq', 'Asistente de dirección', '', 33, NULL, '', NULL, NULL, '-', '', 'anabelrojas2013.jpg'),
(26, 0, 'Anahí', 'Cruz Baltazar', 'anahi.cruz2015@ensenapormexico.org', 'anahi260488@gmail.com', '2015', '2871095524', NULL, '|2|', 'UPN', 'Intervención Educativa', NULL, NULL, NULL, NULL, NULL, 'Escuela primaria Felipe Carrillo Puerto', 'Maestro de grupo', 'San Juan Bautista Tuxtepec, Oaxaca', 20, NULL, '', NULL, NULL, '-', '', 'anahicruz2015.jpg'),
(27, 0, 'Analli', 'Hernández Villasana', 'analli.hernandez2015@ensenapormexico.org', 'analli24villasana@gmail.com', '2015', '5511324558', NULL, '|2|', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Fundación Grupo Aeroportuario del Pacifico A.C (GAP)', 'Coordinador Académico', 'Guadalajara, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'anallihernandez2015.jpg'),
(28, 0, 'Anayely', 'García Zamora', 'anayely.garcia2013@ensenapormexico.org', 'nely137@gmail.com', '2013', '5543520188', NULL, '|3|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Sistema para el Desarrollo Infantil de la Ciudad de México', 'Supervisor Médico', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'anayelygarcia2013.jpg'),
(29, 0, 'Andrea', 'Pérez Roldán', 'andrea.perez2015@ensenapormexico.org', 'andreeaaa93@gmail.com', '2015', '5534730002', NULL, '|2|', 'Universidad Panamericana', 'Filosofía', NULL, NULL, NULL, NULL, NULL, 'Universidad Anáhuac', 'Asistente de investigador', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'andreaperez2015.jpg'),
(30, 0, 'Andrés', 'Peña Peralta', 'andres.pena2013@ensenapormexico.org', 'andres.pena.peralta@gmail.com', '2013', '(+52) 1 222 1189592', NULL, '|2|', 'UDLAP', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Director de Investigación, Evaluación y Datos', 'Cuautlancingo, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'andrespena2013.jpg'),
(31, 0, 'Anel Beatriz', 'Hernández Sandoval', 'anel.hernandez2013@ensenapormexico.org', 'anel.hernandez.psic@gmail.com', '2013', '5538790551', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/eres-capaz-de-dejar-todo-atr%C3%A1s-por-dar-clases-durante-dos-a%C3%B1os-en-una-comunidad-88ad544bab56|', 'anelhernandez2013.jpg'),
(32, 0, 'Anet', 'Hurtado Reveles', 'anet.hurtado2015@ensenapormexico.org', 'Anet.hurtado.aahr@ gmail.com', '2015', '4949424443', NULL, '', 'Instituto Tecnológico de Zacatecas', 'Ingeniería Industrial', NULL, NULL, NULL, NULL, NULL, '', '', 'Jerez, Zacatecas', 32, NULL, '', NULL, NULL, '-', '', 'anethurtado2015.jpg'),
(33, 0, 'Angeles', 'Méndez Herrera', 'angeles.mendez2014@ensenapormexico.org', 'psi.angeles.mendez@gmail.com', '2014', '2221841945', NULL, '-', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'angelesmendez2014.jpg'),
(34, 0, 'Angélica', 'Velázquez Sánchez', 'angelica.velazquez2014@ensenapormexico.org', 'angelica.velazquez@outlook.com', '2014', '-', NULL, '', 'Universidad Tecnológica de Tecamachalco', 'Desarrollo e Innovación Empresarial', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'angelicavelazquez2014.jpg'),
(35, 0, 'Annel Jessica', 'Salinas Diaz', 'annel.diaz2014@ensenapormexico.org', 'ing.annelsalinas@gmail.com', '2014', '8119964244 / 5540585767', NULL, 'Sector público', 'IPN', 'Ingeniería en Control y Automatización', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Energía', 'Ingeniero de producto', 'Apodaca, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'anneldiaz2014.jpg'),
(36, 0, 'Arely Elizabeth', 'García Valtierra', 'arely.garcia2015@ensenapormexico.org', 'arely.valtierra.unam@gmail.com', '2015', '5591042680', NULL, '|2|', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente frente a grupo', 'Chimalhuacan, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'arelygarcia2015.jpg'),
(37, 0, 'Ariadna Noemi', 'Macías González', 'ariadna.macias2015@ensenapormexico.org', 'ariadnamg18@gmail.com', '2015', '593997587146', NULL, '|1|', 'ITESM', 'LMCD', NULL, NULL, NULL, NULL, NULL, 'FORZAVU', 'Directora de proyectos', 'Quito, Ecuador', 33, NULL, '', NULL, NULL, '-', '', 'ariadnamacias2015.jpg'),
(38, 0, 'Atenas', 'Rojas Romero', 'atenas.rojas2015@ensenapormexico.org', 'atnas_008@hotmail.com', '2015', '2441155745', NULL, '-', 'UPAEP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'atenasrojas2015.jpg'),
(39, 0, 'Aura Belém', 'Martínez Pedroza', 'aura.martinez2014@ensenapormexico.org', 'aubel.mp@hotmail.com', '2014', '-', NULL, '', 'Universidad de Guanajuato', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'auramartinez2014.jpg'),
(40, 0, 'María Azucena', 'Martínez Villalobos', 'azucena.martinez2015@ensenapormexico.org', 'azucena_87mv@hotmail.com', '2015', '5523269455', NULL, '|2|', 'Universidad Autónoma del Estado de Hidalgo', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'CECYTEM', 'Orientador', 'Tecámac, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'azucenamartinez2015.jpg'),
(41, 0, 'Beatriz', 'Reyes Guzmán', 'beatriz.reyes2015@ensenapormexico.org', '', '2015', '9841674978', 2, '-', 'Universidad Veracruzana', 'Biología', 0, '', '', 0, NULL, 'TUA PROYECTOS S.C.', 'Consultor Ambiental', '-', 33, 'HABILIDADES:\nCoordinación, Gestión, Comunicación, Organización del tiempo, Servicio al cliente.\nACTIVIDADES:\nVerificar el cumplimiento de Términos y Condicionantes establecidos por las dependencias gubernamentales a nivel municipal, estatal y federal (SEMA, PPA,PROFEPA, SEMARNAT). Realizando recorridos de Supervisión Ambiental en Complejos Turísticos. Elaboración de programas para estudios de Manifiestos de Impacto Ambiental (MIA). Gestión y seguimiento para la Autorización de Permisos de Operación Ambiental (POA),\nLicencia de Funcionamiento Ambiental (LFA), Planes de Manejo de Residuos Sólidos Urbanos y de Manejo Especial (PMRSUyME). Monitoreo de flora, fauna y arrecifes.  Coordinar actividades de Aprovechamiento No Extractivo de las Tortugas Marinas para Campamento Tortuguero.\nCURSOS:\n- Supervisor de Seguridad Industrial, Salud y Medio Ambiente. SOMAR Seguridad Industrial y Medio Ambiente S.A. de C.V., Cancún, Quintana Roo. 07/02/2020\n-Curso Taller del llenado de la Cédula de Desempeño Ambiental. Secretaría de Ecología y Medio Ambiente, Cancún, Quintana Roo. 13/02/2020\n- NOM-018-STPS-2015 Sistema Armonizado para la Identificación y Comunicación de Peligros y Riesgos por sustancias químicas peligrosas en los centros de trabajo, Cancún, Quintana Roo.09 y 10/09/2020\n', 'Inglés intermedio', NULL, '../media/pdf/cv_102_242515112605_C.V. Biol. Beatriz Reyes GuzmÃ¡n_EXM.pdf', '-', '', 'beatrizreyes2015.jpg'),
(42, 0, 'Beatriz', 'Rodríguez Sánchez', 'beatriz.rodriguez2015@ensenapormexico.org', '', '2015', '5523613620', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'UNICEF', 'Miembro de la Caravana Migrante', 'Tapachula, Chiapas', 5, NULL, '', NULL, '../media/pdf/cv_198_242515112605_CV_Beatriz Rodriguez_agosto 2021.pdf', '-', '', 'beatrizrodriguez2015.jpg'),
(43, 0, 'Berenice', 'Gutiérrez ', 'berenice.gutierrez2014@ensenapormexico.org', 'be.nicegtz@gmail.com', '2014', '8117062625', NULL, 'Sector privado', 'ITESM', 'Lengua y Literatura Hispánica', NULL, NULL, NULL, NULL, NULL, 'ForteOrigen', 'Diseñador(a) Instruccional', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'berenicegutierrez2014.jpg'),
(44, 0, 'Berenice', 'Ibarías ', 'berenice.ibarias2014@ensenapormexico.org', 'bibarias.b@gmail.com', '2014', '5517725548', NULL, 'Sector privado', 'UAM', 'Comunicación Social', NULL, NULL, NULL, NULL, NULL, 'Espíritu Aventurero', 'Capacitadora, redactora y coordinadora de viajes', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'bereniceibarias2014.jpg'),
(45, 0, 'Bernardo', 'Rosas Pérez', 'bernardo.rosas2015@ensenapormexico.org', 'brpmay25th@gmail.com', '2015', '4735977181', NULL, 'Sector privado', 'Universidad de Guanajuato', 'Relaciones Industriales', NULL, NULL, NULL, NULL, NULL, 'Citibanamex', 'Teller', 'Guanajuato, Guanajuato', 11, NULL, '', NULL, NULL, '-', '', 'bernardorosas2015.jpg'),
(46, 0, 'Blanca', 'Fuentes Dávila', 'blanca.fuentes2014@ensenapormexico.org', 'blancadav90@gmail.com', '2014', '2221959962', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'IPODERAC', 'Coordinación académica', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'blancafuentes2014.jpg'),
(47, 0, 'Brenda María', 'Camacho Pimentel', 'brenda.camacho2013@ensenapormexico.org', 'brenda_nick@live.com.mx', '2013', '2224388847', NULL, '|2|', 'ITESM Puebla', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, 'The 1 World Network of Schools', 'School Leader en red SER', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'brendacamacho2013.jpg'),
(48, 0, 'Brenda Alejandra', 'Lares Soriano', 'brenda.lares2013@ensenapormexico.org', 'alejandra.lares.s@gmail.com', '2013', '2225053967', NULL, '-', 'ITESM Puebla', 'Negocios Internacionales', NULL, NULL, NULL, NULL, NULL, '', '', 'San Andrés Cholula, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'brendalares2013.jpg'),
(49, 0, 'Brian Luis', 'Guerrero Reyes', 'brian.guerrero2013@ensenapormexico.org', '3guerreroreyes@gmail.com', '2013', '2223109671', NULL, '|3|', 'BUAP', 'Administración Pública y Ciencia Política', NULL, NULL, NULL, NULL, NULL, 'Instituto Republicano Internacional', 'Representante Estatal', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'brianguerrero2013.jpg'),
(50, 0, 'Brihany Guadalupe', 'Rosales Morales', 'brihany.rosales2015@ensenapormexico.org', 'brihanyrosales@gmail.com', '2015', '2226746737', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Centro de Bachillerato Tecnológico industrial y de servicios', 'Profesora', 'Atlixco, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'brihanyrosales2015.jpg'),
(51, 0, 'Bruno', 'Candiani ', 'bruno.candiani2014@ensenapormexico.org', 'brunocandiani@gmail.com', '2014', '52 1 55 2272 5402', NULL, '|2|', 'Universidad Iberoamericana CDMX', 'Ingeniería Física', NULL, NULL, NULL, NULL, NULL, 'Fondo para la Paz/Kuepa', 'Organizational Consultant/Facilitador', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'brunocandiani2014.jpg'),
(52, 0, 'María Camila', 'Aguilar Sánchez', 'camila.aguilar2015@ensenapormexico.org', 'mcamila321@gmail.com', '2015', '5534553811', NULL, '|2|', 'ITESM', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, 'Enseña Ecuador', 'Coordinadora de Experiencia', 'Quito, Ecuador', 33, NULL, '', NULL, NULL, '-', '', 'camilaaguilar2015.jpg'),
(53, 0, 'Carla Sofía', 'Ruiz ', 'carla.ruiz2014@ensenapormexico.org', 'carlasofiarz@gmail.com', '2014', '5554183917', NULL, '-', 'Universidad Iberoamericana Puebla', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, '', '', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'carlaruiz2014.jpg'),
(54, 0, 'Carlos Eduardo', 'Espinoza Gutiérrez', 'carlos.espinoza2015@ensenapormexico.org', 'comuyedu@hotmail.com', '2015', '2221846013', NULL, 'Sector privado', 'Universidad Autónoma de Tlaxcala', 'Comunicación e Innovación Educativa', NULL, NULL, NULL, NULL, NULL, 'Reclutamiento y capacitación LATAM', 'Consultor zonal Sr', 'San Martín Texmelucan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'carlosespinoza2015.jpg'),
(55, 0, 'Carlos Eduardo', 'Olvera Valerio', 'carlos.olvera2015@ensenapormexico.org', 'lebolvera@gmail.com', '2015', '2224909412', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Fundación Gentera', 'Coordinador de proyectos de primera infancia', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_90_242515112605_CV Carlos Olvera 2021.pdf', '-', '', 'carlosolvera2015.jpg'),
(56, 0, 'Carolina', 'Álvarez Carbajal', 'carolina.alvarez2013@ensenapormexico.org', 'carolinalcarva@gmail.com', '2013', '447227000000', NULL, '|2|', 'UAEM Toluca, EBC', 'Gastronomía', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', '', 33, NULL, '', NULL, NULL, '-', '', 'carolinaalvarez2013.jpg'),
(57, 0, 'Brenda Carolina', 'Velázquez Gil', 'carolina.velazquez2015@ensenapormexico.org', 'bcaroliina08@hotmail.com', '2015', '2227611531', NULL, '|2|', 'UPAEP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Guillermo', 'Maestra - auxiliar de coordinación', 'Altavela', 33, NULL, '', NULL, NULL, '-', '', 'carolinavelazquez2015.jpg'),
(58, 0, 'Casandra', 'Moreno Vázquez', 'casandra.moreno2014@ensenapormexico.org', 'cas.mova199@gmail.com', '2014', '-', NULL, '', 'UNAM', 'Ciencias Ambientales', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'casandramoreno2014.jpg'),
(59, 0, 'Catalina Trinidad', 'Ventura Ruiz', 'catalina.ventura2015@ensenapormexico.org', 'kattylu_caos@hotmail.com', '2015', '5518212929', NULL, '|2|', 'Escuela Normal Superior de México', 'Escuela Secundaria con Especialidad en Pedagogía', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', 'Tepotzotlán, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/catalina-ventura-ruiz-pem-2015-993ee32cba10|', 'catalinaventura2015.jpg'),
(60, 0, 'Christian', 'Cozatl Tepanecatl', 'christian.cozatl2015@ensenapormexico.org', 'christiancozatl@gmail.com', '2015', '2227362954', 1, '-', 'BUAP', 'Enseñanza del Inglés', 1, 'Maestría', 'CREFAL', 1, NULL, 'Save the Children', 'Líder de Educación', 'Cuautlancingo, Puebla', 21, 'Liderazgo, desarrollo estratégico, comunicación, team management ', 'Inglés avanzado\nAlemán básico', NULL, NULL, '-', '', 'christiancozatl2015.jpg'),
(61, 0, 'Christian', 'Márquez Vélez', 'christian.marquez2015@ensenapormexico.org', 'christian.marvel@icloud.com', '2015', '953 116 25 65', NULL, '', 'Universidad Autónoma de Durango Culiacán', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, '../media/pdf/cv_253_242515112605_CV1.pdf', '-', '', 'christianmarquez2015.jpg'),
(62, 0, 'Citlalli Ayutzi', 'Cabrera Lezama', 'citlalli.cabrera2013@ensenapormexico.org', '', '2013', '2228421348', NULL, '-', 'UPAEP', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, '', '', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'citlallicabrera2013.jpg'),
(63, 0, 'Claudia', 'Cabrera Peñuelas', 'claudia.cabrera2015@ensenapormexico.org', 'liberklausrevolucion@hotmail.com', '2015', '5564491369', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Fundación Grupo Aeroportuario del Pacifico A.C (GAP)', 'Directora', 'Tlajomulco de Zuñiga, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'claudiacabrera2015.jpg'),
(64, 0, 'Claudia', 'Martínez Taba', 'claudia.martinez2013@ensenapormexico.org', 'claudia_taba@hotmail.com', '2013', '2221110689', NULL, '|2|', 'BUAP', 'Lenguas Modernas - Inglés', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', '', 33, NULL, '', NULL, NULL, '-', '', 'claudiamartinez2013.jpg'),
(65, 0, 'Cristina', 'Gómez Hernández', 'cristina.gomez2015@ensenapormexico.org', '', '2015', '9671360463', NULL, '|2|', 'Universidad Intercultural de Chiapas', 'Lengua y Cultura', NULL, NULL, NULL, NULL, NULL, 'SEP nivel indígena', 'Docente frente a grupo', 'San Cristóbal de las casas, Chiapas', 5, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/cristina-g%C3%B3mez-hern%C3%A1ndez-pem-2015-6bfe242856d6|', 'cristinagomez2015.jpg'),
(66, 0, 'Dafne', 'Reyes Jurado', 'dafne.reyes2013@ensenapormexico.org', 'dafnereye@hotmail.com', '2013', '2221896992', NULL, '|2|', 'Universidad Iberoamericana Puebla', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Universidad Iberoamericana Puebla', 'Orientadora Educativa', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'dafnereyes2013.jpg'),
(67, 0, 'Dafne', 'Rivera Miss', 'dafne.rivera2015@ensenapormexico.org', 'dafne.miss@live.com.mx', '2015', '2222503294', NULL, 'Sector público', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Comunicaciones y Transportes', 'Facilitador de competencias basica y orientador', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/dafne-rivera-miss-pem-2015-e8c5cf867795|', 'dafnerivera2015.jpg'),
(68, 0, 'Daisy', 'Nolasco Sánchez', 'daisy.nolasco2015@ensenapormexico.org', 'danosa121@hotmail.com', '2015', '2223511053', NULL, '|2|', 'UPAEP', 'Comercio Internacional', NULL, NULL, NULL, NULL, NULL, 'Centro Comunitario Ecatepec', 'Coordinadora de proyecto de primera infancia', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'daisynolasco2015.jpg'),
(69, 0, 'Daniel', 'Bonifaz Balcázar', 'daniel.bonifaz2014@ensenapormexico.org', 'dann141190@gmail.com', '2014', '9212714824', NULL, '|2|', 'Instituto Tecnológico Superior de Coatzacoalcos', 'Ingeniería Química', NULL, NULL, NULL, NULL, NULL, 'Escuela Técnica Roberto Rocca', 'Docente de planta', 'Apodaca, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'danielbonifaz2014.jpg'),
(70, 0, 'Daniel', 'Hernández Santa María', 'daniel.hernandez2013@ensenapormexico.org', 'danielo.hsm87@gmail.com', '2013', '2225236153', NULL, '|2|', 'BUAP', 'Arte Dramático', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Jolalpan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'danielhernandez2013.jpg'),
(71, 0, 'Daniel Alejandro', 'Jiménez Ventura', 'daniel.jimenez2015@ensenapormexico.org', 'daniel.jimenezzv@gmail.com', '2015', '4626218579', NULL, 'Sector privado', 'Universidad de Guanajuato', 'Relaciones Industriales', NULL, NULL, NULL, NULL, NULL, 'Profuturo', 'Agente Promotor', 'León, Guanajuato', 11, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/daniel-jim%C3%A9nez-ventura-pem-2015-9e97fc287571|', 'danieljimenez2015.jpg'),
(72, 0, 'Daniel Eduardo', 'Valdés Munguía', 'daniel.valdes2013@ensenapormexico.org', 'dantropolog@gmail.com', '2013', '7223691836', NULL, '|2|', 'UAEM Toluca ', 'Antropología', NULL, NULL, NULL, NULL, NULL, 'Indigo Institute y Colegio Ana Sullivan', 'Docente', 'Toluca, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'danielvaldes2013.jpg'),
(73, 0, 'José Daniel', 'Villanueva Pliego', 'daniel.villanueva2013@ensenapormexico.org', 'jose.daniel.villanueva@gmail.com', '2013', '5527028082', NULL, '|1|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Consultorio de Daniel Villanueva', 'Fundador y psicólogo', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'danielvillanueva2013.jpg'),
(74, 0, 'Martha Daniela', 'Orozco ', 'daniela.orozco2014@ensenapormexico.org', 'orozcodaniela1988@hotmail.com', '2014', '4775752422', NULL, '|2|', 'Universidad de Guanajuato', 'Historia', NULL, NULL, NULL, NULL, NULL, 'Proyecto Nuevo Maestro', 'Coordinadora', 'Oaxaca', 20, NULL, '', NULL, NULL, '-', '', 'danielaorozco2014.jpg'),
(75, 0, 'Delia Itzel', 'Rodríguez Ortíz', 'delia.rodriguez2014@ensenapormexico.org', 'delia.itzel@live.com.mx', '2014', '4425637640', 1, '|2|', 'Universidad de Guanajuato', 'Sociología', 0, '', '', 1, NULL, 'Instituto de Rehabilitación al maltrato Needed', 'Asesora pedagógica', 'Querétaro, Querétaro', 22, 'Trabajo con niñas y adolescentes.', 'Español nativo, inglés intermedio.', NULL, NULL, '-', '', 'deliarodriguez2014.jpg'),
(76, 0, 'Diana Lucero', 'Camacho ', 'diana.camacho2014@ensenapormexico.org', 'dcamachop11@gmail.com', '2014', '8180534479', NULL, '|2|', 'UdG', 'QFB', NULL, NULL, NULL, NULL, NULL, 'Alfa fundación', 'Docente', 'Apodaca, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'dianacamacho2014.jpg'),
(77, 0, 'Diana Graciela', 'González Arocha', 'diana.gonzalez2015@ensenapormexico.org', 'diana.arocha13@gmail.com', '2015', '81 1051 9513', NULL, '', 'ITESM', 'Ingeniería Química y de Sistemas Ambientales', NULL, NULL, NULL, NULL, NULL, '', '', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'dianagonzalez2015.jpg'),
(78, 0, 'Diana Berenice', 'Granados Vázquez', 'diana.granados2013@ensenapormexico.org', 'dianagranadosvazquez@gmail.com', '2013', '4423242825', NULL, '|2|', 'UAQ', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Universidad La Salle', 'Psico-pedagogía', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'dianagranados2013.jpg'),
(79, 0, 'Diana Ivonne', 'García Salazar', 'diana.salazar2015@ensenapormexico.org', 'dhianags@hotmail.com', '2015', '2481022486', NULL, '|2|', 'Universidad Tecnológica de Huejotzingo', 'Ingeniería en Procesos Alimentarios', NULL, NULL, NULL, NULL, NULL, 'La Vaca independiente', 'Líder de proyectos', 'San Martin Texmelucan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'dianasalazar2015.jpg'),
(80, 0, 'Diana', 'Sandoval ', 'diana.sandoval2014@ensenapormexico.org', 'dianasandovalalvarado@gmail.com', '2014', '-', NULL, '-', 'Universidad de Monterrey', 'Estudios Humanísticos y Sociales', NULL, NULL, NULL, NULL, NULL, '', '', 'Veracruz, Veracruz', 30, NULL, '', NULL, NULL, '-', '', 'dianasandoval2014.jpg'),
(81, 0, 'Diana Alejandra', 'Viveros Guzmán', 'diana.viveros2015@ensenapormexico.org', 'arboldediana_26@outlook.es', '2015', '2281279040', NULL, '|2|', 'Universidad Veracruzana', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Colegio Kukulcán, Cancún, S.C.', 'Coordinación académica.', 'Cancún, Quintana Roo', 23, NULL, '', NULL, NULL, '-', '', 'dianaviveros2015.jpg'),
(82, 0, 'Dulce Azucena', 'Rodríguez Banda', 'dulce.rodriguez2013@ensenapormexico.org', 'dulce_gastronomia@live.com', '2013', '3854824045', NULL, '', 'Universidad de San Ángel', 'Gastronomía', NULL, NULL, NULL, NULL, NULL, '', 'Estudiante', 'USA', 33, NULL, '', NULL, NULL, '-', '', 'dulcerodriguez2013.jpg'),
(83, 0, 'Dulce Rosario', 'Santiago Martínez', 'dulce.santiago2015@ensenapormexico.org', 'dulcerstgo@gmail.com', '2015', '5549571145', NULL, '|2|', 'UNAM', 'Lengua y Literatura Hispánicas', NULL, NULL, NULL, NULL, NULL, 'Colegio Patria', 'Docente de Español', 'Tlalnepantla de Baz, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/dulce-santiago-pem-2015-46de514e63d5|', 'dulcesantiago2015.jpg'),
(84, 0, 'Dulce María', 'Villagómez Rodríguez', 'dulce.villagomez2015@ensenapormexico.org', 'orbe.emergente@gmail.com', '2015', '5562419944', NULL, '|2|', 'Universidad Mexicana', 'Mercadotecnia y Publicidad', NULL, NULL, NULL, NULL, NULL, 'Cbt 7 San Juan tilapa Toluca', 'Docente horas clase', 'Capultitlan, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'dulcevillagomez2015.jpg'),
(85, 0, 'Edgar Paulino', 'Corral Rascón', 'edgar.corral2015@ensenapormexico.org', 'edgar.corral@outlook.com', '2015', '6141178456', 1, '|2|', 'UPN Chihuahua', 'Intervención Educativa, Esp. Educación Intercultural ', 1, 'Maestría en Liderazgo y Educación ', 'ExM', 1, NULL, 'SEP Nuevo León ', 'Docente frente a grupo ', 'Guadalupe, Nuevo León', 19, 'Organizado', 'Español', NULL, NULL, '-', '|https://medium.com/historias-pem/edgar-paulino-corral-rasc%C3%B3n-ba60aa869c0e|', 'edgarcorral2015.jpg'),
(86, 0, 'Edith Guadalupe', 'Aguilar Moreno', 'edith.aguilar2015@ensenapormexico.org', 'egamdite@gmail.com', '2015', '5541824702', NULL, '|2|', 'UNAM', 'Geografía', NULL, NULL, NULL, NULL, NULL, 'A Favor del Niño, I.A.P.', 'Profesor Vespertino', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'edithaguilar2015.jpg'),
(87, 0, 'Eduardo Ezequiel', 'Olvera Parada', 'eduardo.olvera2013@ensenapormexico.org', 'eduardo.olvera010@gmail.com', '2013', '5529578390', NULL, '|2|', 'Universidad Iberoamericana DF', 'Administración de la Hospitalidad', NULL, NULL, NULL, NULL, NULL, 'The Education Partners', 'Consultor Educativo', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_197_242515112605_SPANISH CV .docx.pdf', '-', '', 'eduardoolvera2013.jpg'),
(88, 0, 'Edwing', 'Roldan Ortíz', 'edwing.roldan2014@ensenapormexico.org', 'poetwithoutlanguage@gmail.com', '2014', '5579068474', NULL, '|2|', 'UNAM', 'Lengua y Literatura Hispánica', NULL, NULL, NULL, NULL, NULL, 'Poesía y Trayecto A.C.', 'Coordinador Académico', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'edwingroldan2014.jpg'),
(89, 0, 'Elder', 'Hernández Ayala', 'elder.hernandez2013@ensenapormexico.org', 'seventh_elder@hotmail.com', '2013', '722 708 1131', NULL, '-', 'UAEM Toluca', 'Relaciones Económicas Internacionales', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'elderhernandez2013.jpg'),
(90, 0, 'Elías Trinidad', 'Ramos Razo', 'elias.ramos2013@ensenapormexico.org', 'elias.ramosrazo@gmail.com', '2013', '(+52)2225136174', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Creando tu Futuro', 'Country Manager México', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'eliasramos2013.jpg'),
(91, 0, 'Elias Ebeth', 'Teco Sánchez', 'elias.teco2014@ensenapormexico.org', 'tecobebeto@gmail.com', '2014', '3312286023', NULL, '|2|', 'Centro Universitario UTEG', 'Derecho', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Jefe de formación región Noroeste', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'eliasteco2014.jpg'),
(92, 0, 'Martha Elvira', 'Ramírez Torres', 'elvira.ramirez2015@ensenapormexico.org', 'martel.torres@gmail.com', '2015', '5544837238', NULL, '|2|', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Escuela Técnica Roberto Rocca', 'Docente', 'Monterrey, Nuevo León', 19, NULL, '', NULL, '../media/pdf/cv_54_242515112605_CVMARTHA RAMIREZ_TORRES act.pdf', '-', '', 'elviraramirez2015.jpg'),
(93, 0, 'Brenda Emilia', 'Castañeda Castañeda', 'emilia.castaneda2015@ensenapormexico.org', 'bemilycast@gmail.com', '2015', '3334751734', NULL, '|2|', 'Universidad de Guadalajara', 'Historia', NULL, NULL, NULL, NULL, NULL, 'Universidad Internacional (UI)', 'Profesor', 'Tlajomulco de Zúñiga, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'emiliacastaneda2015.jpg'),
(94, 0, 'Emmanuel', 'Aguilar Burgoa', 'emmanuel.aguilar2015@ensenapormexico.org', 'e.burgoa0626@gmail.com', '2015', '8112903405', NULL, '|2|', 'Universidad Regiomontana', 'Ingeniería Civil', NULL, NULL, NULL, NULL, NULL, '', 'Estudiante de maestría en Finlandia', 'Finlandia', 33, NULL, '', NULL, NULL, '-', '', 'emmanuelaguilar2015.jpg'),
(95, 0, 'Enoé Lucero', 'Suárez Romero', 'enoe.suarez2013@ensenapormexico.org', 'enoe.05@hotmail.com', '2013', '2481034113', NULL, 'Sector privado', 'ITSSMT', 'Ingeniería en Sistemas Computacionales', NULL, NULL, NULL, NULL, NULL, 'Microempresa de Desarrollo de Sistemas', 'Coproprietaria', '', 33, NULL, '', NULL, NULL, '-', '', 'enoesuarez2013.jpg'),
(96, 0, 'Erasmo Javier', 'Mora González', 'erasmo.mora2013@ensenapormexico.org', 'erasmojaviermora@gmail.com', '2013', '2222387351', NULL, '|3|', 'Instituto Tecnológico Superior de Zacapoaxtla', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Educación Pública', 'Coordinador del programa de inclusión digital', 'Nativitas, Tlaxcala', 29, NULL, '', NULL, NULL, '-', '', 'erasmomora2013.jpg'),
(97, 0, 'Erendira Julia', 'Nava Castro', 'erendira.nava2014@ensenapormexico.org', 'piperhalliwell_27@hotmail.com', '2014', '55 6403 6612', NULL, '|2|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'Colegios Nacional de Matemáticas', 'Profesora', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'erendiranava2014.jpg'),
(98, 0, 'Erick Ricardo', 'Vazquez Montiel', 'erick.vazquez2015@ensenapormexico.org', 'rickyvzq@gmail.com', '2015', '6141400301', NULL, '|1|', 'Universidad Autónoma de Chihuahua', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'CIAS por la paz', 'Proyectos', 'Roque, Guanajuato', 11, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/erick-v%C3%A1zquez-montiel-pem-2015-4c4f7b53556c|', 'erickvazquez2015.jpg'),
(99, 0, 'Erika', 'Mejía Segovia', 'erika.mejia2014@ensenapormexico.org', 'kileojeme@gmail.com', '2014', '7731020140', NULL, '', 'Universidad Autónoma del Estado de Hidalgo', 'Ciencias de la Educación', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'erikamejia2014.jpg'),
(100, 0, 'Ernesto', 'Elizondo Pimentel', 'ernesto.elizondo2013@ensenapormexico.org', 'ernes.e.p@hotmail.com', '2013', '5563720414', NULL, '|2|', 'UAEM', 'Derecho', NULL, NULL, NULL, NULL, NULL, 'A Favor del Niño ', 'Maestro', 'Ciudad de México', 7, NULL, '', NULL, NULL, 'S', '', 'ernestoelizondo2013.jpg'),
(101, 0, 'Estefania', 'Sánchez López', 'estefania.sanchez2014@ensenapormexico.org', 'sa.lo.sanchez@gmail.com', '2014', '5578387847', 1, '-', 'ITESO', 'Psicología', 0, '', '', 1, NULL, 'ProSociedad', 'Consultora', '-', 33, '-', 'Inglés', NULL, '../media/pdf/cv_19_242515112605_CV_Estefania SÃ¡nchez Esp. (2).pdf', '-', '', 'estefaniasanchez2014.jpg'),
(102, 0, 'Estrella', 'Angeles Cabrera', 'estrella.angeles2015@ensenapormexico.org', 'estre0x@hotmail.com', '2015', '5525387901', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'UNICEF', 'Miembro de la Caravana Migrante', 'Tapachula, Chiapas', 5, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/estrella-angeles-cabrera-pem-2015-c8a803461d19|', 'estrellaangeles2015.jpg'),
(103, 0, 'Ethel Edith', 'Montoya Crespo', 'ethel.montoya2015@ensenapormexico.org', 'ethelcrespopsi@gmail.com', '2015', '2211209366', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_72_242515112605_CV - Ethel Montoya.pdf', '-', '', 'ethelmontoya2015.jpg'),
(104, 0, 'Evelia María', 'Hernández De Santos', 'evelia.hernandez2015@ensenapormexico.org', 'eve.ma.hernandez@gmail.com', '2015', '4773002040', NULL, '', 'Universidad de Guanajuato', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', 'Estudiante', 'Querétaro, Querétaro', 22, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/evelia-hern%C3%A1ndez-pem-2015-e7bc35200fdc|', 'eveliahernandez2015.jpg'),
(105, 0, 'Fabiola Jazmin', 'Reséndiz Bómbela', 'fabiola.resendiz2014@ensenapormexico.org', 'fab_psicol_910@hotmail.com', '2014', '-', NULL, '', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'fabiolaresendiz2014.jpg'),
(106, 0, 'Fany Sandra', 'Campech Pérez', 'fany.campech2013@ensenapormexico.org', 'nyfastar@hotmail.com', '2013', '2461764216', NULL, '|2|', 'BUAP', 'Lenguas Modernas - Inglés', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', '', 33, NULL, '', NULL, NULL, '-', '', 'fanycampech2013.jpg'),
(107, 0, 'Fátima Ariadna', 'Tome Tlachi', 'fatima.tome2014@ensenapormexico.org', 'fatimantekaditas@hotmail.com', '2014', '-', NULL, '', 'BUAP', 'Enseñanza del Inglés', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'fatimatome2014.jpg'),
(108, 0, 'Filomeno Alberto', 'Alcántara Alonso', 'filomeno.alcantara2014@ensenapormexico.org', 'alcantara.filo@gmail.com', '2014', '4731073657', NULL, '-', 'Universidad de Guanajuato', 'Matamáticas', NULL, NULL, NULL, NULL, NULL, '', '', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'filomenoalcantara2014.jpg'),
(109, 0, 'Flor', 'Garcia Salinas', 'flor.garcia2015@ensenapormexico.org', 'kisses_florecita@hotmail.com', '2015', '5527191459', NULL, '|2|', 'UNAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'The Palapa Society A.C', 'Maestra de tiempo completo', 'Todos Santos, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/flor-garc%C3%ADa-salinas-pem-2015-cdf4be50009|', 'florgarcia2015.jpg'),
(110, 0, 'Gabriela', 'Bloise Ancona', 'gabriela.bloise2013@ensenapormexico.org', 'gabriela.bloisea@gmail.com', '2013', '5543410622', 2, '|2|', 'Universidad Panamericana', 'Pedagogía', 1, 'Maestría en Dirección y Gestión de Centros Educativos', 'Universidad Internacional de la Rioja', 1, NULL, 'Radix Education', 'Directora de Cultura y Liderazgo Estratégico', 'Ciudad de México', 7, 'Desarrollo profesional docente, desarrollo de programas educativos en línea y presenciales, innovación educativa, mediación pedagógica, pensamiento sistémico, liderazgo y cultura organizacional. ', 'Español, Inglés Avanzado', NULL, NULL, '-', '', 'gabrielabloise2013.jpeg'),
(111, 0, 'Gabriela Elizabeth', 'Boyás Mendoza', 'gabriela.boyas2014@ensenapormexico.org', 'gabiboyas@gmail.com', '2014', '7621176329', NULL, 'Sector privado', 'Instituto Tecnológico de Iguala', 'Contaduría', NULL, NULL, NULL, NULL, NULL, '', 'Contadora', 'Iguala, Guerrero', 12, NULL, '', NULL, NULL, '-', '', 'gabrielaboyas2014.jpg'),
(112, 0, 'Gabriela Janaí', 'López Quijano', 'gabriela.quijano2013@ensenapormexico.org', 'glopez@enlight.mx', '2013', '5514528455', NULL, 'Sector privado', 'ITESM CCM', 'Comuniación y Medios Digitales', NULL, NULL, NULL, NULL, NULL, 'Enlight', 'Marketing intelligence', 'Mexico, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'gabrielaquijano2013.jpg'),
(113, 0, 'Gabriela Karina', 'Vargas Flores', 'gabriela.vargas2013@ensenapormexico.org', 'gkarinavargasf@gmail.com', '2013', '5542421201', NULL, '|2|', 'UAM Xochimilco / Universidad Panamericana', 'Psicología / Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Queen Mary School', 'Coach en el Departamento de Innovación y Calidad educativa', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_26_242515112605_ResumeÌ_Gabriela Karina Vargas Flores.pdf', '-', '', 'gabrielavargas2013.jpg'),
(114, 0, 'Gabriela', 'Zacampolpa Sánchez', 'gabriela.zacamolpa2014@ensenapormexico.org', 'zamm_17@hotmail.com', '2014', '-', NULL, '-', 'Instituto Tecnológico Superior de Zacapoaxtla', 'Forestal', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'gabrielazacamolpa2014.jpg'),
(115, 0, 'María Guadalupe', 'Estrada Angulo', 'guadalupe.estrada2015@ensenapormexico.org', 'lupira_7@hotmail.com', '2015', '4773354025', NULL, '|2|', 'Centro de Estudios Univer León', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'UVEG', 'Docente', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/guadalupe-estrada-pem-2015-7d6221e6f2b6|', 'guadalupeestrada2015.jpg'),
(116, 0, 'Guadalupe', 'Méndez Herrera', 'guadalupe.mendez2014@ensenapormexico.org', 'guadalupe.mendezh@gmail.com', '2014', '2761087237', NULL, '-', 'BUAP', 'Derecho', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'guadalupemendez2014.jpg'),
(117, 0, 'Guadalupe Carolina', 'Sierra Vázquez', 'guadalupe.sierra2015@ensenapormexico.org', 'guadalupecarolinasierra@gmail.com', '2015', '2451125974', NULL, '|2|', 'UPAEP', 'Ingeniería Industrial', NULL, NULL, NULL, NULL, NULL, 'Centro de Bachillerato Tecnologico, Industrial y de Servicios 242', 'Docente', 'Jonotla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'guadalupesierra2015.jpg'),
(118, 0, 'Harumi', 'Santos Tanamachi', 'harumi.santos2014@ensenapormexico.org', 'haru_uma@hotmail.com', '2014', '4771342325', NULL, '|2|', 'Universidad de Guanajuato', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Colegio Monnclair', 'Monitor/asistente en el Programa de Necesidades Educativas Especiales', 'León, Guanajuato', 11, NULL, '', NULL, NULL, '-', '', 'harumisantos2014.jpg'),
(119, 0, 'Héctor Alejandro', 'Revilla Martínez', 'hector.revilla2015@ensenapormexico.org', 'hhrevimtz@gmail.com', '2015', '2223383184', NULL, '-', 'Instituto Politécnico Nacional', 'Economía', NULL, NULL, NULL, NULL, NULL, '', '', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'hectorrevilla2015.jpg'),
(120, 0, 'Héctor Omar', 'Vallejo Castillo', 'hector.vallejo2013@ensenapormexico.org', 'hectoromarvc@gmail.com', '2013', '7223312629', NULL, '-', 'Universidad Iberoamericana DF', 'Comunicación', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'hectorvallejo2013.jpg'),
(121, 0, 'Hermenegildo', 'Juárez De Pablo', 'hermenegildo.juarez2013@ensenapormexico.org', 'el_peha@hotmail.com', '2013', '2225050475', NULL, '|2|', 'BUAP', 'Administración Turística', NULL, NULL, NULL, NULL, NULL, 'Telesecundaria Lucas Alamán & Bachillerato Artes y Oficios Sor Juana Inés de la Cruz', 'Profesor, Lider de proyectos', 'Tlachichuca, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'hermenegildojuarez2013.jpg'),
(122, 0, 'Hernán', 'Martínez Méndez', 'hernan.martinez2014@ensenapormexico.org', 'hernanchi08@hotmail.com', '2014', '9921022611', NULL, '-', 'Instituto Tecnológico de Tuxtla Gutiérrez', 'Ingeniería Bioquímica', NULL, NULL, NULL, NULL, NULL, '', '', 'Ángel Albino Corzo, Chiapas', 5, NULL, '', NULL, NULL, '-', '', 'hernanmartinez2014.jpg'),
(123, 0, 'Hugo', 'Sánchez ', 'hugo.sanchez2014@ensenapormexico.org', 'huepe9@gmail.com', '2014', '4421136712', NULL, '-', 'ITESM', 'Ingeniería en Sistemas Computacionales', NULL, NULL, NULL, NULL, NULL, '', '', 'Querétaro, Querétaro', 22, NULL, '', NULL, NULL, '-', '', 'hugosanchez2014.jpg'),
(124, 0, 'Idania', 'Morales Moreno', 'idania.morales2013@ensenapormexico.org', 'idania.mor4@gmail.com', '2013', '2221198941', NULL, '|2|', 'Universidad La Salle Benavente', 'Psicopedagogía', NULL, NULL, NULL, NULL, NULL, 'Prepa IBERO', 'Jefa de formación y promoción social/Profesora de ética', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'idaniamorales2013.jpg'),
(125, 0, 'Ilse Elizabeth', 'Rojas Flores', 'ilse.rojas2013@ensenapormexico.org', 'pimienttita@gmail.com', '2013', '2221325916', NULL, '|2|', 'BUAP', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, 'Instituto Educativo Hervic A.C.', 'Maestra de inglés', '', 33, NULL, '', NULL, NULL, '-', '', 'ilserojas2013.jpg'),
(126, 0, 'Indira Lizbeth', 'Tolentino Sánchez', 'indira.tolentino2014@ensenapormexico.org', 'indiralizbeth.tolentino@gmail.com', '2014', '3323475378', NULL, '|2|', 'Universidad Popular Autónoma del Estado de Puebla', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Fundación Grupo Aeroportuario del Pacifico A.C (GAP)', 'Docente titular', 'Tlajomulco de Zuñiga, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'indiratolentino2014.jpg'),
(127, 0, 'Ingrid', 'Segura Vidales', 'ingrid.segura2014@ensenapormexico.org', 'seguravidalesingrid@gmail.com', '2014', '2224478814', NULL, '|2|', 'BUAP', 'Lingüística y Literatura Hispánica', NULL, NULL, NULL, NULL, NULL, 'Bachillerato General Of. \'Héroes de la Revolución\'', 'Profesora', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'ingridsegura2014.jpg'),
(128, 0, 'Irene', 'Martínez Del Ángel', 'irene.martinez2014@ensenapormexico.org', 'irene.mtzdela@gmail.com', '2014', '-', NULL, '-', 'Universidad Veracruzana', 'Gestión Intercultural para el Desarrollo', NULL, NULL, NULL, NULL, NULL, '', '', 'Tehuacan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'irenemartinez2014.jpg'),
(129, 0, 'Isaac', 'Gasca Mata', 'isaac.gasca2015@ensenapormexico.org', 'nortenopop@hotmail.com', '2015', '8124407585', NULL, '|2|', 'BUAP', 'Lingüística y Literatura Hispánicas', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Los Cabos, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/d%C3%A9ficit-de-lectura-en-m%C3%A9xico-un-problema-pendiente-d324b5c7d88b|https://medium.com/alumni-exm/tristes-ratas-solas-en-una-ciudad-amarga-5e2bc29829d8|', 'isaacgasca2015.jpg'),
(130, 0, 'Isabel', 'Marcial Ladino', 'isabel.marcial2014@ensenapormexico.org', 'isa.marcial05@gmail.com', '2014', '2381097384', 2, '|2|', 'Escuela Normal Superior de Tehuacán', 'Educación Secundaria esp. Matemáticas', 1, 'Ciencias del Aprendizaje', 'Instituto de Estudios Superiores del Estado', 0, NULL, 'Escuela primaria Venustiano Carranza', 'Docente', 'Tehuacán, Puebla', 21, 'Impartir el Curso-Taller de lectoescritura y Pensamiento matemático dirigido a niños de 7 a 10 años.\nDocente en educación primaria y secundaria.\nCapacitadora SEP ?The Education Partners?\nCoordinadora Académica', 'Español lengua materna\nInglés básico', NULL, NULL, 'S', '', 'isabelmarcial2014.jpg'),
(131, 0, 'Rosa Isabel', 'Osorio Salas', 'isabel.osorio2015@ensenapormexico.org', 'avril.osorio38@gmail.com', '2015', '2381505119', NULL, '|2|', 'Centro Universitario Tehuacán', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Director comisionado con grupo', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/rosa-isabel-osorio-pem-2015-7394ca924f41|', 'isabelosorio2015.jpg');
INSERT INTO `alumnidata` (`idDA`, `idU`, `name`, `lastname`, `email`, `personalemail`, `generation`, `phone`, `phoneormail`, `pathways`, `university`, `career`, `haspostgraduate`, `postgraduatelevel`, `postgraduatewhere`, `hasactualjob`, `lookingforjob`, `organization`, `rol`, `city`, `state`, `competences`, `languages`, `interests`, `cv`, `iscommittee`, `linksmedium`, `img`) VALUES
(132, 0, 'Itzia Marysol', 'George Rangole', 'itzia.george2014@ensenapormexico.org', 'irangole@hotmail.com', '2014', '-', NULL, 'Sector privado', 'ITESO', 'Filosofía y Ciencias Sociales', NULL, NULL, NULL, NULL, NULL, 'MAQOB', 'Jefatura de Recursos Humanos', 'Tampico, Tamaulipas', 28, NULL, '', NULL, NULL, '-', '', 'itziageorge2014.jpg'),
(133, 0, 'Brenda Iveth', 'Guzmán Máximo', 'iveth.guzman2015@ensenapormexico.org', 'bguzman1609@gmail.com', '2015', '5521169946', NULL, '|2|', 'UPN', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Fundación Grupo Aeroportuario del Pacifico A.C (GAP)', 'Docente titular', 'Atizapán de Zaragoza, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'ivethguzman2015.jpg'),
(134, 0, 'Erika Ivette', 'Cardona González', 'ivette.cardona2015@ensenapormexico.org', 'eriivette@gmail.com', '2015', '4444205317', NULL, '|2|', 'Universidad Autónoma de San Luis Potosí', 'Enfermería', NULL, NULL, NULL, NULL, NULL, 'Alfa Fundación', 'Docente y tutora de estudiante de preparatoria', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'ivettecardona2015.jpg'),
(135, 0, 'Silvia Ivonne', 'Gallardo Cardenas', 'ivonne.gallardo2015@ensenapormexico.org', 'lic.silviag@gmail.com', '2015', '8681800360', NULL, '|2|', 'Universiad Autónoma del Noroeste', 'Ciencias de la Educación', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Jefe de formación región Noreste', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/carta-de-mi-alumna-con-s%C3%ADndrome-rett-191e6c203142|', 'ivonnegallardo2015.jpg'),
(136, 0, 'Ixchel Bibiana', 'Galicia Cansino', 'ixchel.galicia2015@ensenapormexico.org', 'ibibiana.galicia@gmail.com', '2015', '221 1397781', 2, '|2|', 'BUAP', 'Comercio Internacional', 0, '', '', 0, NULL, 'Radix Education', 'Coordinadora ', 'Tzucacab, Yucatán', 31, 'Capacitación docente\nDocente\nGestión cultural\nGestión y diseño de proyectos educativos y sociales', 'Inglés', NULL, NULL, '-', '', 'ixchelgalicia2015.jpg'),
(137, 0, 'Izchetl', 'Baza Pérez', 'izchetl.baza2013@ensenapormexico.org', 'izchetl.exm@gmail.com', '2013', '445574511137', NULL, '-', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, '', '', 'Naucalpan de Juárez, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'izchetlbaza2013.jpg'),
(138, 0, 'Jafet Alejandro', 'Guerrero Gutiérrez', 'jafet.guerrero2013@ensenapormexico.org', '', '2013', '2227795963', NULL, '|2|', 'Universidad de Guanajuato', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'Instituto Politécnico Nacional (Centro de Estudios Científicos y Tecnológicos (CECyT 17))', 'Docente', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'jafetguerrero2013.jpg'),
(139, 0, 'Jaffid Antonio', 'Pérez Cota', 'jaffid.perez2013@ensenapormexico.org', 'jaffidcachaza@hotmail.com', '2013', '5523906243', NULL, '|2|', 'Universidad Iberoamericana Tijuana', 'Nutrición y Ciencias de los Alimentos', NULL, NULL, NULL, NULL, NULL, 'Enseña Chile', 'Coordinador Operativo', 'Puerto Montt, Los Lagos', 33, NULL, '', NULL, NULL, '-', '', 'jaffidperez2013.jpg'),
(140, 0, 'Jaheli', 'Sanchez Perez', 'jaheli.sanchez2015@ensenapormexico.org', 'jahelisp236@gmail.com', '2015', '(+52) 246-125-4173', 1, '-', 'ITESM', 'Biotecnología', 1, 'Maestría en Ciencias en Biotecnología de Plantas', 'CINVESTAV-Irapuato, Langebio', 0, NULL, 'Radix Education', 'Traductor Freelancer', 'Tepeyanco/ San Pedro Xalcaltzinco, Tlaxcala', 29, 'Competencia a nivel de Laboratorio', 'Ingles - Avanzado\nFrances - Intermedio', NULL, '../media/pdf/cv_55_242515112605_Curriculum_Vitae_Jaheli-Jaheli.pdf', '-', '', 'jahelisanchez2015.jpg'),
(141, 0, 'Janeth', 'Beltran Luna', 'janeth.beltran2015@ensenapormexico.org', 'janeth_2815@hotmail.com', '2015', '2288559131', NULL, '|2|', 'Universidad Veracruzana', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Cuetzalan, Puebla', 21, NULL, '', NULL, '../media/pdf/cv_208_242515112605_CV1.pdf', '-', '|https://medium.com/historias-pem/janeth-beltr%C3%A1n-pem-2015-7f6722474b3b|', 'janethbeltran2015.jpg'),
(142, 0, 'Jared Estefania', 'Montiel Ramos', 'jared.montiel2014@ensenapormexico.org', 'jared.montiel@gmail.com', '2014', '8114846652', NULL, '|2|', 'ITESM', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, 'Universidad de Monterrey', 'Coordinadora del programa de becas \'Formar para transformar\'', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'jaredmontiel2014.jpg'),
(143, 0, 'Javier', 'Olavarrieta', 'javier.olavarrieta2014@ensenapormexico.org', 'jof108@gmail.com', '2014', '2225248466', 1, '|2|', 'Tecnológico de Monterrey', 'Mercadotecnia', 1, 'Maestría en educación', 'Tecnológico de Monterrey', 1, NULL, 'Tecnológico de Monterrey', 'Mentor de Éxito Estudiantil', 'Puebla, Puebla', 21, '.', 'Inglés', NULL, NULL, '-', '', 'javierolavarrieta2014.jpg'),
(144, 0, 'Rosario Jessica', 'Díaz Lara', 'jessica.diaz2013@ensenapormexico.org', 'jessy.dl90@gmail.com', '2013', '5591079582', 1, '|1|', 'Tec de Monterrey', 'Economía', 0, '', '', 1, NULL, 'Fundación Televisa', 'Gerente de operaciones y planeación estratégica', 'Cuidad de México', 7, 'Experiencia de 7 años en gestión operativa de ONG\'s en el sector educativo, recaudación de fondos y elaboración de KPI\'s y procesos. Cuento con un diplomado en Políticas Públicas Educativas por el CIDE. ', 'Inglés', NULL, '../media/pdf/cv_43_242515112605_CV_Jessica_DiÌaz_2020.pdf', '-', '', 'jessicadiaz2013.jpg'),
(145, 0, 'Jessica', 'Jiménez Agustín', 'jessica.jimenez2014@ensenapormexico.org', 'jimagus_jessy@live.com.mx', '2014', '-', NULL, '|2|', 'Universidad Pedagógica Nacional', 'Psicología Educativa', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'jessicajimenez2014.jpg'),
(146, 0, 'Jessica', 'Quiñones Vázquez', 'jessica.quinones2013@ensenapormexico.org', 'jessica_1202_q@hotmail.com', '2013', '2221650887', NULL, '|3|', 'Escuela Normal del Estado de Chihuahua', 'Educación Especial', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Educación Pública', 'Subdirectora de la Dirección de Desarrollo Curricular de Educación Inicial', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'jessicaquinones2013.jpg'),
(147, 0, 'Jéssica Paulina', 'Rangel Castro', 'jessica.rangel2015@ensenapormexico.org', 'jessicarangel_cd@hotmail.com', '2015', '5518405760', NULL, '|2|', 'UNAM', 'Cirujano Dentista', NULL, NULL, NULL, NULL, NULL, 'Fundación Proacceso', 'Facilitador de Inglés', 'Ixtapaluca, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'jessicarangel2015.jpg'),
(148, 0, 'Jessica Ivette', 'Sánchez Piene', 'jessica.sanchez2014@ensenapormexico.org', 'jess.s.piene@gmail.com', '2014', '2445546', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Enseñá por Argentina', 'Coordinadora de Alumni', 'Argentina', 33, NULL, '', NULL, NULL, '-', '', 'jessicasanchez2014.jpg'),
(149, 0, 'Jesús', 'Lucero Alba', 'jesus.lucero2013@ensenapormexico.org', 'redemer_fsh@hotmail.com', '2013', '2225272829', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'IPODERAC', 'Coordinación de vida independiente', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'jesuslucero2013.jpg'),
(150, 0, 'Jesús Adrián', 'Moreno Cruz', 'jesus.moreno2014@ensenapormexico.org', 'chila-q-uil@hotmail.com', '2014', '5535141847', 1, '', 'Universidad de Guanajuato', 'Filosofía', 0, '', '', 0, NULL, 'Museo Memoria y Tolerancia', 'Guía de Museo', '', 33, 'Trabajo en equipo, manejo de grupos, coordinación y planeación estratégica.', 'Inglés intermedio (comprensión lectora)', NULL, '../media/pdf/cv_10_242515112605_CV JesÃºs AdriÃ¡n Moreno Cruz_Julio_2021.pdf', '-', '', 'jesusmoreno2014.jpg'),
(151, 0, 'Joel Oswaldo', 'Gómez Chávez', 'joel.gomez2014@ensenapormexico.org', 'oswal_exces_@hotmail.com', '2014', '81 8084 0308', NULL, '', 'ITESO', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'joelgomez2014.jpg'),
(152, 0, 'Jonathan', 'Covarrubias Sustaita', 'jonathan.covarrubias2015@ensenapormexico.org', 'jonna_sustaita@hotmail.com', '2015', '4442383531', NULL, '|2|', 'Universidad Autónoma de San Luis Potosí', 'Comercio y Negocios Internacionales', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinador de Reclutamiento y Selección', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'jonathancovarrubias2015.jpg'),
(153, 0, 'Jonathan', 'Jimenez Villa', 'jonathan.jimenez2015@ensenapormexico.org', 'iqjona28@gmail.com', '2015', '2223715403', 2, '|2|', 'BUAP', 'Ingeniería Química', 0, '', '', 1, NULL, 'CECyTE PUEBLA', 'Responsable del Centro de Innovación ', 'Puebla, Puebla', 21, 'Office\nPlataformas digitales educativas \nManejo de grupos de personas\nOrganización de eventos culturales \n', 'Inglés ', NULL, NULL, '-', '', 'jonathanjimenez2015.jpg'),
(154, 0, 'Jonathan Edwin', 'Villeda Hernández', 'jonathan.villeda2014@ensenapormexico.org', 'jonevh@gmail.com', '2014', '-', NULL, '', 'ITESM', 'Ingeniería en Tecnologías Electrónicas', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'jonathanvilleda2014.jpg'),
(155, 0, 'Jorge Ángel', 'Coca Pérez', 'jorge.coca2013@ensenapormexico.org', 'alfadraco9887@hotmail.com', '2013', '2224163343', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Save the Children', 'Promotor Líder en Empleabilidad', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'jorgecoca2013.jpg'),
(156, 0, 'Jorge', 'Larios Rodríguez', 'jorge.larios2015@ensenapormexico.org', 'lariosjorge00@gmail.com', '2015', '6641752332', NULL, '|2|', 'Escuela Normal Fronteriza de Tijuana', 'Educación Especial', NULL, NULL, NULL, NULL, NULL, 'Primaria pública', 'Maestro de Educación Especial', 'Phoenix, Estados Unidos', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/jorge-larios-pem-2015-5b67404e7483|', 'jorgelarios2015.jpg'),
(157, 0, 'José Julio Alberto', 'Ávila ', 'jose.avila2014@ensenapormexico.org', 'jose.julio.avila@gmail.com', '2014', '-', NULL, '', 'Universidad Autónoma del Estado de México', 'Diseño Industrial', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'joseavila2014.jpg'),
(158, 0, 'José Luis', 'Barragán García', 'jose.barragan2013@ensenapormexico.org', 'jl.barragan90@gmail.com', '2013', '5545133577', NULL, 'Sector Privado', 'ITESM Puebla', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Grupo Kopar', 'Asesor técnico', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'josebarragan2013.jpg'),
(159, 0, 'José Andrés', 'Barriguete ', 'jose.barriguete2014@ensenapormexico.org', 'sdibarriguete@gmail.com', '2014', '+1(469)2357348', 1, '|2|', 'ITESM', 'Creación y Desarrollo de Empresas', 1, 'Maestría en Psicología Organizacional', 'Instituto de Estudios Universitarios', 1, NULL, 'UME Preparatory Academy', 'Instructional Technologist / Teacher', 'Flower Mound, Texas', 33, 'Training & Development, Curriculum design, Mixing & Mastering, Guitar, Protools, Cubase, Articulate Storyline. ', 'Inglés\nPortugués ', NULL, NULL, '-', '', 'josebarriguete2014.jpg'),
(160, 0, 'José Luis', 'Flores Guerrero', 'jose.flores2013@ensenapormexico.org', 'ixnamiqui@gmail.com', '2013', '5545133577', NULL, 'Otro', 'BUAP', 'Medicina', NULL, NULL, NULL, NULL, NULL, 'University Medical Center Groningen (UMCG)', 'PhD Candidate: Diabetic nephropathy and nutrition', 'Países Bajos', 33, NULL, '', NULL, NULL, '-', '', 'joseflores2013.jpg'),
(161, 0, 'José Manuel', 'Franco González', 'jose.franco2013@ensenapormexico.org', 'franco@ensenapormexico.org', '2013', '5575001256', NULL, '|2|', 'UPAEP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Director de Reclutamiento y Selección', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_59_242515112605_CV-Jose Manuel Franco Gonzalez.pdf', '-', '', 'josefranco2013.jpg'),
(162, 0, 'José Alfredo', 'Garibay Castillo', 'jose.garibay2014@ensenapormexico.org', 'joseag.castillo@gmail.com', '2014', '-', NULL, '', 'Instituto Tecnológico de Ciudad Guzmán', 'Administración', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'josegaribay2014.jpg'),
(163, 0, 'José Fernando', 'Hernández Valencia', 'jose.hernandez2013@ensenapormexico.org', 'fernando.hernandez.ciencias@gmail.com', '2013', '5532745532', NULL, '-', 'UNAM', 'Biología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'josehernandez2013.jpg'),
(164, 0, 'José Eduardo', 'Márquez Cortés', 'jose.marquez2013@ensenapormexico.org', 'psijemarquez90@gmail.com', '2013', '2222786578', NULL, 'Sector público', 'Escuela Libre de Psicología', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Seguridad Ciudadana del municipio de Puebla', 'Oficial y psicólogo de intervención, departamento de atención a víctimas', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'josemarquez2013.jpg'),
(165, 0, 'José María', 'Sandoval Torres', 'jose.sandoval2014@ensenapormexico.org', 'josesandtorres@hotmail.com', '2014', '3313125950', NULL, '|2|', 'Universidad de Guadalajara', 'Ingeniería Química', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinador de Liderazgo y Aprendizaje', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/jos%C3%A9-mar%C3%ADa-sandoval-torres-pem-2014-c97267d6974f|https://medium.com/historias-pem/jos%C3%A9-ma-sandoval-torres-acf182d577a9|', 'josesandoval2014.jpg'),
(166, 0, 'José Carlos', 'Rodríguez Arzaba', 'josecarlos.rodriguez2015@ensenapormexico.org', 'jcarlosrarzaba@gmail.com', '2015', '2331106926', NULL, '|3|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'Sembrando Vida', 'Técnico social', 'Cuautitlan, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/somos-agentes-de-cambio-6dfbc7dade6b|', 'josecarlosrodriguez2015.jpg'),
(167, 0, 'Xiucoatl José Luis', 'Cuautle Luna', 'joseluis.cuautle2013@ensenapormexico.org', 'luisnetas@hotmail.com', '2013', '5545147460', NULL, '|2|', 'UPN DF', 'Administración Educativa', NULL, NULL, NULL, NULL, NULL, 'Fundación Cemex', 'Profesor', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'joseluiscuautle2013.jpg'),
(168, 0, 'Karen Paola', 'Juárez Balderas', 'karen.juarez2014@ensenapormexico.org', 'pequesjb@hotmail.com', '2014', '(044) 2223503657', NULL, '|2|', 'BUAP', 'Administración Turística', NULL, NULL, NULL, NULL, NULL, 'Centro Escolar Dr. Alfredo Toxqui Fernández de Lara', 'Docente de matemáticas', 'San Pedro Cholula, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'karenjuarez2014.jpg'),
(169, 0, 'Karina', 'Santiesteban Ramírez', 'karina.santiesteban2013@ensenapormexico.org', '', '2013', '5543137203', NULL, '|2|', 'UPN DF', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Escuela Primaria Julio Zarate', 'Maestra frente a grupo', 'Cuautitlán, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'karinasantiesteban2013.jpg'),
(170, 0, 'Kim Jazmin', 'Talavera Suazo', 'kim.talavera2014@ensenapormexico.org', 'Talavera.suazo@gmail.com', '2014', '4433769775', NULL, '-', 'Universidad Tecnológica de Morelia', 'Biotecnología', NULL, NULL, NULL, NULL, NULL, '', '', 'Zacapu, Michoacán', 16, NULL, '', NULL, NULL, '-', '', 'kimtalavera2014.jpg'),
(171, 0, 'Kristen', 'Mercado Gaxiola', 'kristen.mercado2014@ensenapormexico.org', 'kris.mercadogaxiola@gmail.com', '2014', '3319712688', NULL, '|2|', 'Universidad del Valle de Atemajac', 'Ciencias y Técnicas de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Preparando Líderes', 'PEM', 'Tlajomulco, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'kristenmercado2014.jpg'),
(172, 0, 'Laura Isabel', 'Guevara Toledo', 'laura.guevara2014@ensenapormexico.org', 'isabellguevara@hotmail.com', '2014', '4621174719', NULL, 'Sector privado', 'Universidad de Guanajuato', 'Arquitectura', NULL, NULL, NULL, NULL, NULL, 'Clauger', 'Dibujante', 'Irapuato, Guanajuato', 11, NULL, '', NULL, NULL, '-', '', 'lauraguevara2014.jpg'),
(173, 0, 'Laura Patricia', 'Martínez Armadillo', 'laura.martinez2015@ensenapormexico.org', 'laura.p.maar@gmail.com', '2015', '4442779240', NULL, '|2|', 'Universidad Autónoma de San Luis Potosí', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Universidad Politécnica de San Luis Potosí', 'Psicóloga', 'San Luis Potosí, San Luis Potosí', 24, NULL, '', NULL, NULL, '-', '', 'lauramartinez2015.jpg'),
(174, 0, 'Laura Verónica', 'Ortiz Balcazar', 'laura.ortiz2015@ensenapormexico.org', 'lausvero@gmail.com', '2015', '5577676646', NULL, 'Sector privado', 'Universidad Autónoma de Chapingo', 'Ingeniería en Recursos Naturales Renovables', NULL, NULL, NULL, NULL, NULL, 'Biosaberes S. C.', 'Coordinadora de Comunicación Social', 'Texcoco de Mora, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/mi-experiencia-en-ense%C3%B1a-por-m%C3%A9xico-356771a3904|', 'lauraortiz2015.jpg'),
(175, 0, 'Leidy Xochitl', 'Cabrera Barrera', 'leidy.cabrera2014@ensenapormexico.org', 'cabreraleidy@hotmail.com', '2014', '8119241537', NULL, '|2|', 'ITESM', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Directora regional', 'Guadalupe, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'leidycabrera2014.jpg'),
(176, 0, 'Leopoldo', 'Vázquez Meneses', 'leopoldo.vazquez2014@ensenapormexico.org', 'leopoldovazquezmeneses@gmail.com', '2014', '2225787475', NULL, '-', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'leopoldovazquez2014.jpg'),
(177, 0, 'Lidia Sarai', 'Mendoza Escobedo', 'lidia.mendoza2013@ensenapormexico.org', 'mels1519@gmail.com', '2013', '5581858991', NULL, '|2|', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Ideas4Learning', 'Diseñadora Instruccional', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'lidiamendoza2013.jpg'),
(178, 0, 'Liliana', 'Juárez Palomino', 'liliana.juarez2013@ensenapormexico.org', 'lilianita_381@hotmail.com', '2013', '2223517105', NULL, 'Otro', 'BUAP', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, '', 'Estudiante de Maestría', '', 33, NULL, '', NULL, NULL, '-', '', 'lilianajuarez2013.jpg'),
(179, 0, 'Liliana', 'Rodríguez Hernández', 'liliana.rodriguez2013@ensenapormexico.org', 'liliana-rh@hotmail.com', '2013', '2224975286', NULL, '|2|', 'BUAP', 'Enseñanza del Inglés', NULL, NULL, NULL, NULL, NULL, 'Academia Estatal de las Fuerzas de Seguridad Pública', 'Maestra de inglés', '', 33, NULL, '', NULL, NULL, '-', '', 'lilianarodriguez2013.jpg'),
(180, 0, 'Lillyan Arely', 'Pérez Alvarado', 'lillyana.perez2013@ensenapormexico.org', 'lhillyan@hotmail.com', '2013', '9512039370', NULL, '', 'UABJO', 'Enseñanza de Lenguas Extranjeras', NULL, NULL, NULL, NULL, NULL, '', 'Estudiante', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'lillyanaperez2013.jpg'),
(181, 0, 'Lizbeth', 'Trujillo Santamaría', 'lizbeth.trujillo2014@ensenapormexico.org', 'liztrujillostm@gmail.com', '2014', '2221024961', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Psicóloga Educativa', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'lizbethtrujillo2014.jpg'),
(182, 0, 'Luis Alberto', 'Beltrán Flores', 'luis.beltran2013@ensenapormexico.org', 'labf.1412@gmail.com', '2013', '3334738098', NULL, '-', 'UdG', 'Artes Audiovisuales', NULL, NULL, NULL, NULL, NULL, '', '', 'Guadalajara, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'luisbeltran2013.jpg'),
(183, 0, 'Jose Luis', 'Canseco Reyes', 'luis.canseco2015@ensenapormexico.org', 'jolu_cr@hotmail.com', '2015', '2225616967', NULL, '|2|', 'Universidad de Guadalajara', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Instituto de Educación Digital del Estado de Puebla', 'Asesor académico', 'San Salvador El Seco, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'luiscanseco2015.jpg'),
(184, 0, 'Luis Fernando', 'Guzmán Pizano', 'luis.guzman2015@ensenapormexico.org', 'luisfgpizano@gmail.com', '2015', '3121650764', NULL, '-', 'Universidad de Colima', 'Ingeniería en Comunicaciones y Electrónica', NULL, NULL, NULL, NULL, NULL, '', '', 'Manzanillo, Colima', 9, NULL, '', NULL, NULL, '-', '', 'luisguzman2015.jpg'),
(185, 0, 'Luis Alberto', 'Modesto Torres', 'luis.modesto2013@ensenapormexico.org', 'luis.modesto.tics@gmail.com', '2013', '5530110444', NULL, '-', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, '', '', 'Tlalnepantla de Baz, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'luismodesto2013.jpg'),
(186, 0, 'Luis Arturo', 'Parra Guzmán', 'luis.parra2014@ensenapormexico.org', 'luisitoparraguzman@hotmail.com', '2014', '5541397562', NULL, '|2|', 'Universidad de Insurgentes', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Ayuda Educativa Integral', 'Director General', 'Ecatepec, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'luisparra2014.jpg'),
(187, 0, 'Luis Miguel', 'Reyes Loyola', 'luis.reyes2013@ensenapormexico.org', 'reyesloyolalm@gmail.com', '2013', '5532754410', NULL, '|1|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Fortaevalúa', 'Asistente de investigación', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'luisreyes2013.jpg'),
(188, 0, 'Jose Luis', 'Rojas Aldana', 'luis.rojas2015@ensenapormexico.org', 'joseluisrojasaldana@hotmail.com', '2015', '4747299870', NULL, 'Sector privado', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'México Shimbun', 'Jefe de información', 'León, Guanajuato', 11, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/jos%C3%A9-luis-rojas-aldana-pem-2015-e21aded8c8e4|', 'luisrojas2015.jpg'),
(189, 0, 'Magdalena', 'Jasso Yebra', 'magdalena.jasso2015@ensenapormexico.org', 'magdalena.jaye@gmail.com', '2015', '5571502218', 2, 'Sector público', 'Universidad de Guanajuato', 'Economï¿½a', 0, '', '', 1, NULL, 'FinancieraMente', 'Coordinadora general', 'Irapuato, Guanajuato', 11, 'FormaciÃ³n\nDiplomado en EconomÃ­a Aplicada\nDiversos cursos en evaluaciÃ³n de polÃ­ticas pÃºblicas, liderazgo, educaciÃ³n financiera, economÃ­a solidaria, negociaciÃ³n. \nPrinicpales Habilidades \nConferencista, liderazgo, planeaciÃ³n estratÃ©gica, evaluaciÃ³n y monitoreo de metas, logÃ­stica-desarrollo de eventos, gestiÃ³n de recursos y fortalecimiento de capital humano.', 'InglÃ©s Avanzado\nAlemÃ¡n BÃ¡sico', NULL, '../media/pdf/cv_34_242515112605_Magdalena _Jasso_CV_102021.pdf', 'S', '|https://medium.com/@exm/las-ganancias-de-ser-voluntaria-y-servidora-p%C3%BAblica-987213328e9f|', 'magdalenajasso2015.jpg'),
(190, 0, 'Manuel', 'Garcés Rodríguez', 'manuel.garces2015@ensenapormexico.org', 'iq.garces@yahoo.com.mx', '2015', '5533973147', NULL, '|2|', 'UNAM', 'Ingeniería Química', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Izamal, Yucatán', 31, NULL, '', NULL, NULL, '-', '', 'manuelgarces2015.jpg'),
(191, 0, 'José Manuel', 'Náchez Martínez', 'manuel.nachez2015@ensenapormexico.org', 'nachez_87@hotmail.com', '2015', '4771449970', NULL, '|2|', 'Escuela Normal Oficial de León', 'Educación Primaria', NULL, NULL, NULL, NULL, NULL, 'Colegio Altamira La Cima', 'Profesor', 'Zapopan, Jalisco', 14, NULL, '', NULL, '../media/pdf/cv_176_242515112605_CV_Manuel NaÌchez_2021.pdf', '-', '', 'manuelnachez2015.jpg'),
(192, 0, 'María de Lourdes', 'Félix Urbina', 'maria.felix2014@ensenapormexico.org', 'lourdes.urb@gmail.com', '2014', '5529365762', NULL, '|2|', 'Universidad Panamericana', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Instituto Municipal de la Juventud de Cuautitlán Izcalli', 'Directora', 'Cuautitlán Izcalli, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/de-luz-y-obscuridad-el-entretejido-camino-a-la-transformaci%C3%B3n-c1d8829ab6dc|', 'mariafelix2014.jpg'),
(193, 0, 'María Elena', 'García Leyva', 'maria.garcia2014@ensenapormexico.org', 'elenaleyva1@hotmail.com', '2014', '4776942431', 1, '|3|', 'Universidad La Salle Bajío', 'Desarrollo del Capital Humano', 1, 'Maestría', 'Universidad de Guanajuato', 0, NULL, 'Secretaría de Educación Pública', 'Líder Técnico Pedagógico de proyectos. ', 'León, Guanajuato', 11, 'Detección de necesidades de capacitación; diseño, gestión e impartición de programas de capacitación; estrategias de aprendizaje grupal; comportamiento organizacional; liderazgo, trabajo en equipo; comunicación efectiva; responsabilidad; organización del tiempo y actividades de acuerdo a objetivos; capacidad de análisis; solución de problemas y orientación al cliente. ', 'Español nativo, e inglés intermedio. ', NULL, NULL, '-', '', 'mariagarcia2014.jpeg'),
(194, 0, 'María del Rocío', 'Hernández Hernández', 'maria.hernandez2014@ensenapormexico.org', 'mrociohh@gmail.com', '2014', '5531963463', 1, '-', 'UNAM', 'Psicología', 1, 'Maestra en Ciencias', 'Departamento de Investigaciones Educativas Cinvestav', 1, NULL, 'EPI', 'Coordinadora de primaria', 'Ciudad de México', 7, 'Currículum, Didácticas especializadas, Didáctica de las matemáticas, Didáctica de las ciencias, Educación para la salud, Educación ambiental', 'Inglés 85%', NULL, NULL, '-', '', 'mariahernandez2014.jpg'),
(195, 0, 'María Emilia', 'Orozco Del Pino', 'maria.orozco2013@ensenapormexico.org', 'emiliaorozco191@gmail.com', '2013', '5532246857', NULL, '|2|', 'Universidad Iberoamericana DF', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'The Learning Club', 'Profesor', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'mariaorozco2013.jpg'),
(196, 0, 'Mariana', 'Chavez Vega', 'mariana.chavez2015@ensenapormexico.org', 'mariana871121@gmail.com', '2015', '5543652654', NULL, '|2|', 'UNAM', 'Historia', NULL, NULL, NULL, NULL, NULL, 'UNAM', 'Ayudante de profesor', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'marianachavez2015.jpg'),
(197, 0, 'Maribel', 'Vázquez Reyes', 'maribel.vazquez2015@ensenapormexico.org', 'marii.vreyes@gmail.com', '2015', '2227188504', NULL, '|2|', 'BUAP', 'Enseñanza del Inglés', NULL, NULL, NULL, NULL, NULL, 'Kuepa México', 'Coordinador Académico', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'maribelvazquez2015.jpg'),
(198, 0, 'Maricela', 'Ramírez Cortés', 'maricela.ramirez2013@ensenapormexico.org', 'rcmar13@hotmail.com', '2013', '2228203383', NULL, '-', 'UPAEP', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, '', '', 'Pachuca, Hidalgo', 13, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/coaching-deportivo-a-partir-de-la-experiencia-pem-56eec15a2193|', 'maricelaramirez2013.jpg'),
(199, 0, 'Maricruz', 'García Casañas', 'maricruz.garcia2014@ensenapormexico.org', 'maricruz.garcia006@gmail.com', '2014', '2221100011', NULL, '-', 'Universidad Popular Autónoma del Estado de Puebla', 'Mercadotecnia', NULL, NULL, NULL, NULL, NULL, '', '', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'maricruzgarcia2014.jpg'),
(200, 0, 'Mariel', 'Manríquez Ramos', 'mariel.manriquez2013@ensenapormexico.org', 'mirandoalcielo_@hotmail.com', '2013', '5516363323', NULL, '|2|', 'UAQ / Escuela Normal de Puebla', 'Psicología Social / Normalista', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Innovación educativa', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/cierre-del-programa-de-liderazgo-en-el-aula-baja-california-sur-ae3b99c3f3fa|https://medium.com/enero-2018/porque-los-maestros-tambi%C3%A9n-hacen-el-cambio-ca53d1522b8c|', 'marielmanriquez2013.jpg'),
(201, 0, 'Luz Mariela', 'Balderrama Alaniz', 'mariela.balderrama2015@ensenapormexico.org', 'mariela_balderrama@hotmail.es', '2015', '6531282791', NULL, 'Sector privado', 'Universidad Autónoma de Baja California', 'Economía', NULL, NULL, NULL, NULL, NULL, '', 'Gerente de Sucursal', 'Sonora', 26, NULL, '', NULL, NULL, '-', '', 'marielabalderrama2015.jpg'),
(202, 0, 'Marilyn', 'Galeana Toralva', 'marilyn.galeana2015@ensenapormexico.org', 'marylyn_08@hotmail.com', '2015', '7772119213', NULL, '|2|', 'Universidad Internacional de Cuernavaca', 'Idiomas', NULL, NULL, NULL, NULL, NULL, 'UTNG', 'Profesor de asignatura', 'Guanajuato, Guanajuato', 11, NULL, '', NULL, NULL, '-', '', 'marilyngaleana2015.jpg'),
(203, 0, 'Mario de Jesús', 'Márquez Guerrero', 'mario.marquez2014@ensenapormexico.org', 'mydlf@hotmail.com', '2014', '2331314609', NULL, '|2|', 'CNCI Plantel San Juan', 'Administración de Empresas', NULL, NULL, NULL, NULL, NULL, 'Escuela particular Profr Raul Isidro Burgos', 'Docente', 'Zacapoaxtla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'mariomarquez2014.jpg'),
(204, 0, 'Mario Ernesto', 'Olvera Valerio', 'mario.olvera2013@ensenapormexico.org', 'marioolverava@gmail.com', '2013', '2224029818', NULL, '-', 'BUAP', 'Economía', NULL, NULL, NULL, NULL, NULL, '', '', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'marioolvera2013.jpg'),
(205, 0, 'Mario Alberto', 'Villegas Marmolejo', 'mario.villegas2014@ensenapormexico.org', 'mavm1988@hotmail.com', '2014', '5531091820', NULL, '|2|', 'Universidad de Guanajuato', 'Educación', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', '', 33, NULL, '', NULL, NULL, '-', '', 'mariovillegas2014.jpg'),
(206, 0, 'Marisol', 'Lucas Carmona', 'marisol.lucas2014@ensenapormexico.org', 'marysol.0688@gmail.com', '2014', '2223804680', NULL, '-', 'BUAP', 'Matamáticas', NULL, NULL, NULL, NULL, NULL, '', '', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'marisollucas2014.jpg'),
(207, 0, 'Maritza Emilia', 'Gómez Salgado', 'maritza.gomez2015@ensenapormexico.org', 'm_emily7@hotmail.com', '2015', '2221028547', NULL, '-', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, '', '', 'Benito Juarez, Los Reyes de Juarez, Puebla', 21, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/ense%C3%B1ar-como-un-acto-de-amor-por-los-otros-9aa580bc0a7|https://medium.com/@exm/la-caravana-migrante-3493ca4c7a8b|https://medium.com/historias-pem/maritza-g%C3%B3mez-pem-2015-d8d388be03c2|', 'maritzagomez2015.jpg'),
(208, 0, 'Marlene', 'Hernández Torres', 'marlene.hernandez2014@ensenapormexico.org', 'tke_aquarius@hotmail.com', '2014', '-', NULL, '', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'marlenehernandez2014.jpg'),
(209, 0, 'Martha Paola', 'Ponciano Hernández', 'martha.ponciano2013@ensenapormexico.org', 'lcc.paola.ponciano@gmail.com', '2013', '+593984964429', NULL, '|2|', 'UPAEP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Fundación Childfund', 'Coordinadora Nacional Aliado ProFuturo', 'Quito, Ecuador', 33, NULL, '', NULL, NULL, '-', '', 'marthaponciano2013.jpg'),
(210, 0, 'Martha Yazmin', 'Vivar Coyotl', 'martha.vivar2015@ensenapormexico.org', 'marthavivar.dg@hotmail.com', '2015', '2224604211', 1, '-', 'BUAP', 'Diseño Gráfico', 1, 'Maestría en Enseñanza del Inglés', 'BUAP ', 1, NULL, 'UPAEP', 'Líder de Proyecto Bilingüe', 'Puebla, Puebla', 21, 'Capacitación y seguimiento a profesores en una segunda lengua. \nMetodología CLIL, blended learning. \nDesarrollo de material y curriculum para el Bachillerato Internacional. (International Baccalaureate)\nExpertise en certificaciones TOEFL ITP \nGoogle Certified Educator Level 1', 'Inglés', NULL, NULL, '-', '', 'marthavivar2015.jpg'),
(211, 0, 'Marybeth', 'Flores Vázquez', 'marybeth.flores2014@ensenapormexico.org', 'marybethfv@hotmail.com', '2014', '-', NULL, '|3|', 'ITESM', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Educación Pública (USET)', 'Coordinador Académico del Programa de Escuelas de Tiempo Completo', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'marybethflores2014.jpg'),
(212, 0, 'Miguel', 'Dionicio Luna', 'miguel.dionicio2013@ensenapormexico.org', 'migueldionicioluna@gmail.com', '2013', '5517041331', 1, '|2|', 'UPAEP', 'Tecnología Educativa', 1, 'Maestría', 'UPAEP', 1, NULL, 'Enseña por México', 'Director de Tecnologías para la Educación', 'Ciudad de México', 7, 'Administración de LMS: Black Board,\nMoodle y Classroom.\nLenguajes de etiquetado: html y CSS.\nAdobe: PhotoShop, Audition, Premier,\nIllustrator e InDesign.\nOffice: Word, PowerPoint, Excel.\nArticulate 360: Rise, Storyline\nG suite: Documentos, Presentaciones,\nhoja de calculo, formularios, drive,\ngmail.\nOtros: Camtasia Studio, Herramientas\nweb 2.0.', 'Español', NULL, '../media/pdf/cv_195_242515112605_CV-MDL.pdf', '-', '', 'migueldionicio2013.jpg'),
(213, 0, 'Miguel Angel', 'Galicia Nieves', 'miguel.galicia2013@ensenapormexico.org', 'michelangelo455@gmail.com', '2013', '2221920596', NULL, '|2|', 'ITESM Puebla', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'UDLAP', 'Jefe de Proyectos Especiales', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'miguelgalicia2013.jpg'),
(214, 0, 'Miguel Angel', 'Pérez Rodríguez', 'miguel.perez2013@ensenapormexico.org', 'miguelpro@outlook.com', '2013', '2226568165', NULL, 'Sector privado', 'UAT', 'Administración', NULL, NULL, NULL, NULL, NULL, 'Empresa familiar', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'miguelperez2013.jpg'),
(215, 0, 'Guadalupe Mineko', 'Matsumoto López', 'mineko.matsumoto2013@ensenapormexico.org', 'mynekona82@gmail.com', '2013', '2228676765', NULL, '|2|', 'UdG', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Aprendiendo Uno a Uno', 'Coordinadora de Implementación', 'Chile', 33, NULL, '', NULL, NULL, '-', '', 'minekomatsumoto2013.jpg'),
(216, 0, 'Sonia Mirely', 'Avilés Arroyo', 'mirely.aviles2013@ensenapormexico.org', 'soniamirely@gmail.com', '2013', '7971038595', NULL, '|2|', 'BUAP', 'Lenguas Extranjeras: Inglés', NULL, NULL, NULL, NULL, NULL, 'CECYTE Chignahuapan', 'Docente de lengua extranjera Inglés', 'Chignahuapan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'mirelyaviles2013.jpg'),
(217, 0, 'Mireya', 'Esparza Ibarra', 'mireya.esparza2015@ensenapormexico.org', 'mire.esparza@gmail.com', '2015', '5518291328', 1, '|2|', 'Escuela Nacional de Antropología e Historia', 'Etnología', 1, 'M. en C. Desarrollo Rural Regional', 'Universidad Autónoma Chapingo', 1, NULL, 'Humanitas', 'Profesor en la lincenciatura de Educación', 'Ciudad de México', 7, 'liderazgo, capacitación, desarrollo comunitario. ', 'Inglés comprensión (oral y escrita)\nFrancés (comprensión oral)', NULL, '../media/pdf/cv_45_242515112605_CVMireya.pdf', '-', '', 'mireyaesparza2015.jpg'),
(218, 0, 'Monica Karina', 'Montesinos Reyes', 'monica.montesinos2014@ensenapormexico.org', 'moka129@hotmail.com', '2014', '4686892016', NULL, 'Sector privado', 'UNAM', 'Cirujano Dentista', NULL, NULL, NULL, NULL, NULL, 'Consultorio dental particular', 'Dentista encargado', 'Estado de México, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'monicamontesinos2014.jpg'),
(219, 0, 'Mónica', 'Rodríguez Cortés', 'monica.rodriguez2013@ensenapormexico.org', 'monica.rodriguez.cortes@gmail.com', '2013', '2227247584', NULL, '|1|', 'BUAP', 'Arte Dramático', NULL, NULL, NULL, NULL, NULL, 'Lindy Hop Puebla', 'CEO', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'monicarodriguez2013.jpg'),
(220, 0, 'Mónica', 'Severiano Hernández', 'monica.severiano2015@ensenapormexico.org', 'Monicaseverianoh@gmail.com', '2015', '2226539960', NULL, '-', 'BUAP', 'Administración de Empresas', NULL, NULL, NULL, NULL, NULL, '', '', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/m%C3%B3nica-severiano-pem-2015-b12eb20996c5|', 'monicaseveriano2015.jpg'),
(221, 0, 'Montserrat Salustia', 'Vázquez Martínez', 'montserrat.vazquez2013@ensenapormexico.org', 'vazquezsmon@gmail.com', '2013', '5585567091', NULL, '|2|', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', 'Texcoco, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'montserratvazquez2013.jpg'),
(222, 0, 'Nadia Eunice', 'Molina Emigdio', 'nadia.molina2014@ensenapormexico.org', 'cold25eunice@yahoo.com.mx', '2014', '-', NULL, '', 'Universidad Autónoma de Chapingo ', 'Ingeniería en Agronomía especialista en Filotécnia', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'nadiamolina2014.jpg'),
(223, 0, 'Nallely', 'Conde Carpinteyro', 'nallely.conde2015@ensenapormexico.org', 'nallelycondec@hotmail.com', '2015', '2225305293', NULL, '|2|', 'BUAP', 'Lenguas Modernas', NULL, NULL, NULL, NULL, NULL, '', 'Maestra de inglés', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'nallelyconde2015.jpg'),
(224, 0, 'Nancy', 'López Medina', 'nancy.lopez2014@ensenapormexico.org', 'nanis_blue@live.com.mx', '2014', '4686862882', NULL, '|2|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'Universidad Virtual del Estado de Guanajuato y Colegio Miguel Hidalgo', 'Docente', 'San Luis de la Paz, Guanajuato', 11, NULL, '', NULL, NULL, '-', '', 'nancylopez2014.jpg'),
(225, 0, 'Nancy', 'Méndez Hernández', 'nancy.mendez2013@ensenapormexico.org', 'psc_nanmen@hotmail.com', '2013', '2225229342', NULL, '', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'nancymendez2013.jpg'),
(226, 0, 'Natalia', 'López Ramírez', 'natalia.lopez2015@ensenapormexico.org', 'dmit.natalia@gmail.com', '2015', '5585381877', NULL, '|2|', 'Universidad Autónoma de Aguascalientes', 'Diseño de Modas', NULL, NULL, NULL, NULL, NULL, 'La Vaca Independiente', 'Líder de proyectos', 'Mérida, Yucatán', 31, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/transformaci%C3%B3n-a-trav%C3%A9s-del-di%C3%A1logo-a6538194494|https://medium.com/alumni-exm/qu%C3%A9-sentido-tiene-trabajar-en-una-ong-d927caec50b5|https://medium.com/historias-pem/natalia-l%C3%B3pez-pem-2015-be355aa9109c|', 'natalialopez2015.jpg'),
(227, 0, 'Brenda Nayeli', 'Moreno Vargas', 'nayeli.moreno2014@ensenapormexico.org', 'naye_mor1208@hotmail.com', '2014', '-', NULL, '', 'Universidad de Estudios Superiores de Ciencias y Artes', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'nayelimoreno2014.jpg'),
(228, 0, 'Nayely Elizabeth', 'Aguilar León', 'nayely.aguilar2013@ensenapormexico.org', 'nayely_1812@hotmail.com', '2013', '2226786346', NULL, '|2|', 'BUAP', 'Enseñanza del Inglés', NULL, NULL, NULL, NULL, NULL, 'Instituto Educativo Hervic A.C.', 'Profesora bilingüe', '', 33, NULL, '', NULL, NULL, '-', '', 'nayelyaguilar2013.jpg'),
(229, 0, 'Nelly', 'Lara Fuentes', 'nelly.lara2013@ensenapormexico.org', 'nellylara27@hotmail.com', '2013', '2226683004', NULL, 'Sector privado', 'UAEM Tenancingo ', 'Turismo', NULL, NULL, NULL, NULL, NULL, 'Karisma Hotel', 'Concierge', 'Puerto Morelos, Quintana Roo', 23, NULL, '', NULL, NULL, '-', '', 'nellylara2013.jpg'),
(230, 0, 'Noé', 'Gonzalez ', 'noe.gonzalez2014@ensenapormexico.org', 'noegonzalez_18@hotmail.com', '2014', '5512177267', NULL, '|2|', 'Universidad Pedagógica Nacional', 'Intervención Educativa', NULL, NULL, NULL, NULL, NULL, 'Primaria Alberto Correa', 'Profesor de Grupo', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'noegonzalez2014.jpg'),
(231, 0, 'Noemí', 'Gutiérrez ', 'noemi.gutierrez2014@ensenapormexico.org', 'ngv.eco@gmail.com', '2014', '(+31) 620954231', NULL, 'Otro', 'ITESM', 'Ingeniería en Biotecnología', NULL, NULL, NULL, NULL, NULL, '', 'Estudiante', 'Países Bajos', 33, NULL, '', NULL, NULL, '-', '', 'noemigutierrez2014.jpg'),
(232, 0, 'Norberto', 'Cabrera Alonso', 'norberto.cabrera2015@ensenapormexico.org', 'ncabreraalonso@yahoo.com.mx', '2015', '5521522436', NULL, '-', 'Universidad Autónoma de Guerrero', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'norbertocabrera2015.jpg'),
(233, 0, 'Norberto Vladimir', 'Jiménez Valenzuela', 'norberto.jimenez2014@ensenapormexico.org', 'vladimir.jimenez110@gmail.com', '2014', '59667023', NULL, '|2|', 'ENAH', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Tecámac, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'norbertojimenez2014.jpg'),
(234, 0, 'Norma Eva', 'Carbajal Gómez', 'norma.carbajal2013@ensenapormexico.org', 'normaecarbgom@hotmail.com', '2013', '5529114384', NULL, '|2|', 'UPN DF', 'Psicología educativa', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', '', 33, NULL, '', NULL, NULL, '-', '', 'normacarbajal2013.jpg'),
(235, 0, 'Nuritania', 'Neri Zúñinga', 'nuritania.neri2014@ensenapormexico.org', 'nuritania.neri@gmail.com', '2014', '7224445980', NULL, '|2|', 'Universidad Politécnica del Valle de Toluca', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Gobierno del Estado de México', 'Profesor horas clase', 'Toluca, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'nuritanianeri2014.jpg'),
(236, 0, 'Pablo', 'López Guzmán', 'pablo.lopez2014@ensenapormexico.org', 'pablo14lg@gmail.com', '2014', '2721384867', NULL, 'Sector privado', 'Universidad Veracruzana', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'World Education Services', 'Coordinador de Tecnología de la Información', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'pablolopez2014.jpg'),
(237, 0, 'Patricia', 'Huerta Alcantara', 'patricia.huerta2015@ensenapormexico.org', 'patricia.ha.psic@gmail.com', '2015', '5591900026', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Colegio de bachilleres', 'Docente y orientadora', 'Ecatepec, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'patriciahuerta2015.jpg'),
(238, 0, 'Paulina', 'Romero Tercero', 'paulina.romero2014@ensenapormexico.org', 'paulissss.689@hotmail.com', '2014', '-', NULL, '', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'paulinaromero2014.jpg'),
(239, 0, 'Miriam Penélope', 'Pina Juárez', 'penelope.pina2015@ensenapormexico.org', 'mirris.pina@gmail.com', '2015', '7221009167', NULL, '-', 'Escuela Bancaria y Comercial Toluca', 'Mercadotecnia', NULL, NULL, NULL, NULL, NULL, '', '', 'Metepec, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'penelopepina2015.jpg'),
(240, 0, 'María del Pilar', 'Teutle Toxqui', 'pilar.teutle2015@ensenapormexico.org', 'Pilar.teutle@gmail.com', '2015', '2223851911', NULL, '', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'pilarteutle2015.jpg'),
(241, 0, 'Rachel', 'Ginsberg ', 'rachel.ginsberg2014@ensenapormexico.org', 'ra.ad.gins@gmail.com', '2014', '+1 416 414 3942', NULL, '-', 'Universidad de Toronto', 'Desarrollo Internacional', NULL, NULL, NULL, NULL, NULL, '', '', 'Toronto, Ontario', 33, NULL, '', NULL, NULL, '-', '', 'rachelginsberg2014.jpg'),
(242, 0, 'Ricardo', 'Calleja Calderón', 'ricardo.calleja2015@ensenapormexico.org', 'ricardo.calleja.calderon@gmail.com', '2015', '2331039457', NULL, '-', 'Instituto Tecnológico Superior de Zacapoaxtla', 'Biología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'ricardocalleja2015.jpg'),
(243, 0, 'Ricardo', 'Cázares Verdugo', 'ricardo.cazares2013@ensenapormexico.org', 'lums_king1@hotmail.com', '2013', '2224588931', NULL, '|2|', 'Escuela Normal Superior Federalizada del Estado de Puebla', 'Educación Secundaria', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', 'Xicotepec de Juárez, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'ricardocazares2013.jpg'),
(244, 0, 'Rocío Alejandra', 'Alonso Morales', 'rocio.alonso2013@ensenapormexico.org', 'maar_17@hotmail.com', '2013', '2232754244', NULL, '|2|', 'BUAP', 'Lenguas Modernas', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente de Inglés', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'rocioalonso2013.jpg'),
(245, 0, 'Rocio Nayely', 'Pineda Llano', 'rocio.pineda2014@ensenapormexico.org', 'pineda_sac@hotmail.com', '2014', '-', NULL, '', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'rociopineda2014.jpg'),
(246, 0, 'Rosa de Yaneli', 'Jiménez Briones', 'rosa.jimenez2013@ensenapormexico.org', 'rosajimenezbriones@gmail.com', '2013', '2221655630', NULL, '|2|', 'BUAP', 'Comunicación', NULL, NULL, NULL, NULL, NULL, 'LUMEN VITAE A.C.', 'Coordinadora', 'San Pedro Tlaquepaque, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'rosajimenez2013.jpg'),
(247, 0, 'Rosa', 'Juárez Pinzón', 'rosa.juarez2015@ensenapormexico.org', 'siren_vari19@hotmail.com', '2015', '2221917086', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'rosajuarez2015.jpg'),
(248, 0, 'Rosario Guadalupe', 'Villegas Figueroa', 'rosario.villegas2014@ensenapormexico.org', 'lupitachi06@yahoo.com.mx', '2014', '8114711393', NULL, '|2|', 'Universidad de Guadalajara/Instituto de Investigación, Innovación y Estudios de Posgrado para la Edu', 'Trabajo Social/Diplomado en Competencia Docentes del Nivel Medio Superior/Diplomado de Peritaje Social', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Tlajomulco de Zúñiga, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'rosariovillegas2014.jpg'),
(249, 0, 'Ruth Guadalupe', 'Vargas García', 'ruth.vargas2014@ensenapormexico.org', 'ruthvar21@gmail.com', '2014', '-', NULL, '|2|', 'Universidad Popular Autónoma del Estado de Puebla', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Universidad Tecnologica de la Selva', 'Profesor de asignatura', 'Ocosingo, Chiapas', 5, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/ruth-guadalupe-vargas-pem-2014-724879ffd371|', 'ruthvargas2014.jpg'),
(250, 0, 'Salomón', 'Terán Atanacio', 'salomon.teran2015@ensenapormexico.org', 'monche2209@gmail.com', '2015', '2871235494', NULL, '', 'Centro de Estudios Superiores de Tuxtepec', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'salomonteran2015.jpg'),
(251, 0, 'Juan Salvador', 'Luna Fernández', 'salvador.luna2015@ensenapormexico.org', 'lic250389@hotmail.com', '2015', '4721030218', NULL, '', 'Universidad de Guanajuato', 'Filosofía', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'salvadorluna2015.jpg'),
(252, 0, 'Salvador Adrián', 'Tijerina Dávila', 'salvador.tijerina2015@ensenapormexico.org', 'satijerinad@gmail.com', '2015', '8115431353', NULL, '', 'ITESM', 'Ingeniería Física Industrial', NULL, NULL, NULL, NULL, NULL, '', '', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'salvadortijerina2015.jpg'),
(253, 0, 'Sandra Elizabeth', 'Ortiz Varela', 'sandra.ortiz2015@ensenapormexico.org', 'liz1999@live.com.mx', '2015', '2228994829', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'Colegio de bachilleres', 'Docente', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'sandraortiz2015.jpg'),
(254, 0, 'Sara Ivet', 'Yañez Salgado', 'sara.yanez2015@ensenapormexico.org', 'yssara24@hotmail.com', '2015', '5566007043', NULL, '|2|', 'Universidad Mexicana', 'Psicología Social', NULL, NULL, NULL, NULL, NULL, 'A Favor del Niño, I.A.P.', 'Coordinadora del programa de liderazgo joven', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'sarayanez2015.jpg'),
(255, 0, 'Elisa Sarahí', 'Arroyo Relión', 'sarahi.arroyo2013@ensenapormexico.org', 'elisa.arroyo@outlook.com', '2013', '5531043176', NULL, '|1|', 'ULSA', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Servicio Jesuita a Migrantes', 'Psicóloga del área psicosocial', '', 33, NULL, '', NULL, NULL, '-', '', 'sarahiarroyo2013.jpg'),
(256, 0, 'Sarai', 'Rosas Trujillo', 'sarai.rosas2013@ensenapormexico.org', 'somethingforsarah@hotmail.com', '2013', '2221095741', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Jefe de formación región Centro', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'sarairosas2013.jpg'),
(257, 0, 'Saúl Jacobo', 'Mendoza Alvarez', 'saul.mendoza2013@ensenapormexico.org', 'jacobo.90117@gmail.com', '2013', '7351371110', NULL, '|2|', 'Instituto Tecnológico de Cuautla', 'Ingeniería en Sistemas Computacionales', NULL, NULL, NULL, NULL, NULL, 'Potencia Educativa', 'Consultor académico', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'saulmendoza2013.jpg'),
(258, 0, 'Saúl', 'Vera Cerda', 'saul.vera2014@ensenapormexico.org', 'sul_13vc@hotmail.com', '2014', '4661075114', NULL, '|2|', 'Universidad de Guanajuato', 'Filosofía', NULL, NULL, NULL, NULL, NULL, 'Escuela del Nivel Medio Superior Salvatierra', 'Docente', 'Salvatierra, Guanajuato', 11, NULL, '', NULL, NULL, '-', '', 'saulvera2014.jpg'),
(259, 0, 'Selene', 'Vigueras Valenzuela', 'selene.vigueras2013@ensenapormexico.org', 'sel.valenzuela@gmail.com', '2013', '2225646082', NULL, '|3|', 'UPAEP', 'Psicología General', NULL, NULL, NULL, NULL, NULL, 'Tribunal de Justicia', 'Perito', '', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/de-pem-a-perito-en-materia-de-psicolog%C3%ADa-ae86f460eec6|', 'selenevigueras2013.jpg'),
(260, 0, 'Silia Mariana', 'Rodriguez ', 'silia.rodriguez2014@ensenapormexico.org', 'silia_mariana@hotmail.com', '2014', '5543536208', NULL, 'Liderazgo Educativo/', 'Universidad del Valle de Atemajac', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Brain Co / Acámica Consultorio psicológico', 'Tutora pedagógica/Psicóloga', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/ser-alumni-implica-una-gran-responsabilidad-y-un-gusto-c57a0c6a71c2|', 'siliarodriguez2014.jpg'),
(261, 0, 'Silvia', 'Hernández Hernández', 'silvia.hernandez2013@ensenapormexico.org', 'silvia.hernandez2h@gmail.com', '2013', '5536387547', NULL, '|2|', 'UNAM', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'UNIDEP', 'Coordinadora de diseño instruccional', 'Ecatepec, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'silviahernandez2013.jpg'),
(262, 0, 'Susana', 'Flores López', 'susana.flores2015@ensenapormexico.org', 'susy.mayahuel@gmail.com', '2015', '5542904852', NULL, '', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/susana-flores-pem-2015-ffb58acaa7fd|', 'susanaflores2015.jpg');
INSERT INTO `alumnidata` (`idDA`, `idU`, `name`, `lastname`, `email`, `personalemail`, `generation`, `phone`, `phoneormail`, `pathways`, `university`, `career`, `haspostgraduate`, `postgraduatelevel`, `postgraduatewhere`, `hasactualjob`, `lookingforjob`, `organization`, `rol`, `city`, `state`, `competences`, `languages`, `interests`, `cv`, `iscommittee`, `linksmedium`, `img`) VALUES
(263, 222, 'Susana', 'López Malo Lezama', 'susana.lopezmalo2013@ensenapormexico.org', 'susi.lopezmalo@gmail.com', '2013', '2223258061', 2, '|2|', 'Universidad Iberoamericana Puebla', 'Comunicación', 1, 'Maestría en plantitas', 'ABC A', NULL, 1, 'Enseña por México', 'Coordinadora de innovación educativa', 'Puebla, Puebla', 21, 'Escritora, educación, plantas, invernaderos, composta.', 'Inglés', NULL, NULL, '-', '', 'susanalopezmalo2013.jpg'),
(264, 0, 'Tania', 'Espinosa Fragoso', 'tania.espinosa2015@ensenapormexico.org', 'tania_0139@hotmail.com', '2015', '5518384925', NULL, '|2|', 'UNAM', 'Biología', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', 'Mexico, Cuidad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/tania-espinosa-pem-2015-375ab9bb4ef|', 'taniaespinosa2015.jpg'),
(265, 0, 'Tania Alejandra', 'Lopez Conde Cervantes', 'tania.lopezconde2015@ensenapormexico.org', 'tania.lopezconde@gmail.com', '2015', '8119882051', NULL, '|2|', 'Escuela Normal de Chihuahua', 'Educación Preescolar', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Tutora de Primera Infancia', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/tania-l%C3%B3pez-conde-pem-2015-7b026595340|', 'tanialopezconde2015.jpg'),
(266, 0, 'María Teresa', 'Paredes Guerrero', 'teresa.paredes2015@ensenapormexico.org', 'tereparedes51@gmail.com', '2015', '7711509033', 1, '|2|', 'Universidad Autónoma del Estado de Hidalgo', 'Mercadotecnia', 1, 'Maestria en Liderazgo y Eduación ', 'Enseña por México ', 0, NULL, 'ExM', 'PEM año adicional', 'Jojutla, Morelos', 17, 'Expeciencia frente a grupo 6 años, 3 en Primaria, 2 en secundaria y 1 en Media superior (Bachillerato general).\n\nHabilidades: Capacidad de resiliencia, adaptabilidad a los cambios,  \nTrabajo en equipo, autocontrol y autoeficacia.\nCursos:  Diplomado en gestión de proyectos sociales\nTaller de Estrategias STEM en el aula. \n', 'Ninguno ', NULL, NULL, '-', '', 'teresaparedes2015.jpg'),
(267, 0, 'Miguel Ulises', 'Calvillo Nava', 'ulises.calvillo2013@ensenapormexico.org', 'ucalvillo@gmail.com', '2013', '5545438257', NULL, '|2|', 'UAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Centro Comunitario Ecatepec', 'Coordinadora de proyecto de básica y media superior', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/el-f%C3%BAtbol-una-puerta-a-grandes-logros-19a09c31cffe|https://medium.com/@exm/en-d%C3%B3nde-estar%C3%ADa-ahora-si-no-hubiera-estado-dos-a%C3%B1os-en-ense%C3%B1a-por-m%C3%A9xico-e5f81dfc9f20|', 'ulisescalvillo2013.jpg'),
(268, 0, 'Valeria', 'Marín Hernández', 'valeria.marin2015@ensenapormexico.org', 'valeria.mahdz@gmail.com', '2015', '2225722594', NULL, '|2|', 'Escuela Normal de Puebla', 'Educación Preescolar', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente / Director', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'valeriamarin2015.jpg'),
(269, 0, 'Valeria Pamela', 'Ramos Banda', 'valeria.ramos2015@ensenapormexico.org', 'valeria.rabanda@gmail.com', '2015', '9631460509', NULL, '', 'Universidad de Guanajuato', 'Sociología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'valeriaramos2015.jpg'),
(270, 0, 'Valeria Dalai', 'Villanueva Santamaria', 'valeria.villanueva2015@ensenapormexico.org', 'vvs_169@hotmail.com', '2015', '6623440742', NULL, '|2|', 'Escuela Nacional de Maestros', 'Educación Primaria', NULL, NULL, NULL, NULL, NULL, 'Colegio Wexford', 'Profesora titular de primero de primaria', 'Querétaro, Querétaro', 22, NULL, '', NULL, NULL, 'S', '', 'valeriavillanueva2015.jpg'),
(271, 0, 'Víctor Hugo', 'Chávez Alvarado', 'victor.chavez2014@ensenapormexico.org', 'vhugh@hotmail.com', '2014', '4426044773', NULL, '|2|', 'Universidad Autónoma de Querétaro', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'IPN', 'Docente', 'León, Guanajuato', 11, NULL, '', NULL, NULL, '-', '', 'victorchavez2014.jpg'),
(272, 0, 'Víctor', 'Juárez Juárez', 'victor.juarez2013@ensenapormexico.org', 'victor.c.1210@hotmail.com', '2013', '2491178750', NULL, '|2|', 'BUAP', 'Ingeniería en Ciencias de la Computación', NULL, NULL, NULL, NULL, NULL, 'Telesecundaria y Maskil Comunicaciones', 'Encargado de la Red de la Escuela', '', 33, NULL, '', NULL, NULL, '-', '', 'victorjuarez2013.jpg'),
(273, 0, 'Víctor Gonzalo', 'Rivero Martínez', 'victor.rivero2013@ensenapormexico.org', 'victor.rivero25@gmail.com', '2013', '55 1660 4017', NULL, '|2|', 'UNAM', 'Matemáticas Aplicadas y Computación', NULL, NULL, NULL, NULL, NULL, 'UNIVERSO NET', 'Docente', 'Nicolas Romero, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'victorrivero2013.jpg'),
(274, 0, 'Viridiana', 'León Parra', 'viridiana.leon2015@ensenapormexico.org', 'viry.leon-p@hotmail.com', '2015', '2227328292', NULL, 'Sector privado', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, '3 Caballeros Barbería', 'Lady barber', 'San Pedro Cholula, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'viridianaleon2015.jpg'),
(275, 0, 'Viviana', 'Rodríguez Lorenzo', 'viviana.rodriguez2013@ensenapormexico.org', 'vivianarodriguezlorenzo@hotmail.com', '2013', '5513456448', NULL, '|1|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'México Unido Contra la Delincuencia', 'Coordinadora operativa', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/una-l%C3%ADder-7b911917e0ca|', 'vivianarodriguez2013.jpg'),
(276, 0, 'Xóchitl', 'Eufracio Hernández', 'xochitl.eufracio2013@ensenapormexico.org', 'xochitl_eufracio@hotmail.com', '2013', '2223714216', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Escuela de la Familia', 'Coordinadora General', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'xochitleufracio2013.jpg'),
(277, 0, 'Yadira', 'Meza Espinosa De los Monteros', 'yadira.meza2014@ensenapormexico.org', 'yass.mzesp@gmail.com', '2014', '2223574522', 2, '|2|', 'UAM', 'Psicología', 0, '', '', 0, NULL, 'La Vaca Independiente', 'Monitoreo educativo', 'Ciudad de México', 7, 'Capacitación y docencia\nPaquetería de Microsoft Office\nAnalisis e investigación\nDiseño y desarrollo de recursos didácticos.\nTrabajo en campo, etnografía\nHerramientas virtuales', 'Inglés intermedio\nFrancés básico', NULL, NULL, '-', '', 'yadirameza2014.jpg'),
(278, 0, 'Yanet', 'Nepomuceno Ramírez', 'yanet.nepomuceno2013@ensenapormexico.org', 'nery125@gmail.com', '2013', '2221514927', NULL, '-', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', 'Chihuahua, Chihuahua', 6, NULL, '', NULL, NULL, '-', '', 'yanetnepomuceno2013.jpg'),
(279, 0, 'Yesenia', 'Aragón Arellano', 'yesenia.aragon2014@ensenapormexico.org', 'yesenia.aragon.mx@gmail.com', '2014', '5516892443', NULL, '|2|', 'UNAM', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Los Cabos, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'yeseniaaragon2014.jpg'),
(280, 0, 'Yesenia', 'Reyes Contreras', 'yesenia.reyes2015@ensenapormexico.org', 'emi_yesyes@hotmail.com', '2015', '222 463 8874', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'UNICEF', 'Miembro de la Caravana Migrante', 'Tapachula, Chiapas', 5, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/el-sue%C3%B1o-americano-a64a696a3cee|https://medium.com/historias-pem/encontr%C3%A9-mi-inspiraci%C3%B3n-en-ense%C3%B1a-por-m%C3%A9xico-bbf3c8dcbefb|', 'yeseniareyes2015.jpg'),
(281, 0, 'María de Jesus Yujy', 'Navarro López', 'yujy.navarro2015@ensenapormexico.org', 'yujynavarro@gmail.com', '2015', '(+52) 1 33 11 29 14 21', NULL, '|1|', 'Universidad de Guadalajara', 'Trabajo Social', NULL, NULL, NULL, NULL, NULL, 'Laboratoria', 'Alumnae Manager', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'yujynavarro2015.jpg'),
(282, 0, 'Yuridia', 'Aburto Rodríguez', 'yuridia.aburto2014@ensenapormexico.org', 'yuridiaa@hotmail.com', '2014', '2221250180', NULL, '-', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'yuridiaaburto2014.jpg'),
(283, 0, 'Zyanya Isabel', 'Urbina Cortés', 'zyanya.urbina2013@ensenapormexico.org', 'zyan.urbi61@gmail.com', '2013', '5510960869', NULL, '|2|', 'UTM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Universidad CNCI', 'Coordinadora de centro de enlace', 'Los Reyes La Paz, Estado de México', 15, NULL, '', NULL, '../media/pdf/cv_149_242515112605_2. CV Zyanya Isabel.pdf', '-', '', 'zyanyaurbina2013.jpg'),
(284, 0, 'Adriana', 'Román Cabrera', 'adriana.roman2016@ensenapormexico.org', 'torbellinodepalabras@gmail.com', '2016', '3338076056', NULL, '|1|', 'Universidad de Guadalajara', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Centro de Investigación y Acción Social por la Paz, (CIAS por la Paz)', 'Coordinadora del Programa de Reconstrucción del Tejido Social', 'Guadalajara, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'adrianaroman2016.jpg'),
(285, 0, 'Alejandra Ivonne', 'Mejía Guzmán', 'alejandra.mejia2016@ensenapormexico.org', 'mejia.guzman.ale@gmail.com', '2016', '5534987914', NULL, '|2|', 'Universidad Autonoma del Estado de Mexico', 'Ciencias Políticas y Administración Pública', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Educación Pública', 'Asesor de proyectos/Centros de Innovación y Apoyo Educativo', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/transformar-las-experiencias-de-profesionales-de-ense%C3%B1a-por-m%C3%A9xico-en-acciones-educativas-para-un-4805d580af9c|https://medium.com/@exm/transformar-las-experiencias-de-profesionales-de-ense%C3%B1a-por-m%C3%A9xico-en-acciones-educativas-para-un-be8bae042653|', 'alejandramejia2016.jpg'),
(286, 0, 'Alexandra', 'Berrelleza Rendón', 'alexandra.berrelleza2016@ensenapormexico.org', 'hanna.de.gaos@gmail.com', '2016', '7224746997', NULL, '-', 'ITESM', 'Diseño Industrial', NULL, NULL, NULL, NULL, NULL, '', '', 'Zinacantepec, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'alexandraberrelleza2016.jpg'),
(287, 0, 'Alfredo', 'Ramírez Palizada', 'alfredo.ramirez2016@ensenapormexico.org', 'alfredopalizada@gmail.com', '2016', '462 195 8816', 1, '|2|', 'Universidad de Guanajuato', 'Administración de Recursos Turísticos', 1, 'Maestría', 'Universidad de Guanajuato', 0, NULL, 'Cecyteq', 'Docente', 'Irapuato, Guanajuato', 11, 'Gestión ', 'Inglés \nFrancés', NULL, NULL, '-', '', 'alfredoramirez2016.jpg'),
(288, 0, 'Ana Estefanía', 'Jiménez Reyna', 'ana.jimenez2016@ensenapormexico.org', 'anna.ejimenezreyna@gmail.com', '2016', '5585289731', NULL, '|2|', 'Universidad Mexicana Plantel Izcalli', 'Técnico en Trabajo Social', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Tecámac, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/detr%C3%A1s-de-la-frase-origen-no-es-destino-35e388b7a80b|', 'anajimenez2016.jpg'),
(289, 0, 'Ana Gabriela', 'Urbina Trinidad', 'gabriela.urbina2016@ensenapormexico.org', 'urbinatrip@gmail.com', '2016', '2228673336', NULL, '|2|', 'BUAP', 'Ambiental', NULL, NULL, NULL, NULL, NULL, 'Colegio de Bachilleres del Estado de Hidalgo', 'Docente', 'Zimapán, Hidalgo', 13, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/ana-gabriela-urbina-pem-2016-8c79e98c7d48|', 'gabrielaurbina2016.jpg'),
(290, 0, 'Ana Isabel', 'Mendoza Peña', 'ana.mendoza2016@ensenapormexico.org', 'anisa22_mp@hotmail.com', '2016', '871 124 1496', NULL, '|3|', 'ITESM', 'Mercadotecnia y Comunicación', NULL, NULL, NULL, NULL, NULL, 'Secretaria de Educación Pública', 'Coordinadora de Programas federales', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/mi-camino-como-alumni-en-la-sep-de-bcs-385ec38a1981|', 'anamendoza2016.jpg'),
(291, 0, 'Ana Luisa', 'Martinez Garibay', 'ana.martinez2016@ensenapormexico.org', 'unamana@outlook.com', '2016', '5543778338', NULL, '|2|', 'Universidad Nacional Autonoma de Mexico', 'Sociologia', NULL, NULL, NULL, NULL, NULL, 'A Favor del Niño, I.A.P.', 'Directora de Primaria', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_212_242515112605_CV_ANALUISAMARTÃNEZGARIBAY_SOCIOLOGÃA.pdf', '-', '', 'anamartinez2016.jpg'),
(292, 0, 'Ana Norely', 'Flores Robles', 'norely.flores2016@ensenapormexico.org', 'anorely@hotmail.com', '2016', '6442093615', NULL, '|2|', 'Universidad La Salle Noroeste, A.C.', 'Nutrición', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje', 'Tampico, Tamaulipas', 28, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/ana-norely-flores-pem-2016-8f27974cfb56|', 'norelyflores2016.jpg'),
(293, 0, 'Ángel', 'Jiménez García', 'angel.jimenez2016@ensenapormexico.org', 'angeljimg@gmail.com', '2016', '4423178993', NULL, 'Sector privado', 'ITESM', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Aw México', 'Ingeniero de proyectos', 'Querétaro, Querétaro', 22, NULL, '', NULL, NULL, '-', '', 'angeljimenez2016.jpg'),
(294, 0, 'Annais', 'Hernandez Castañeda', 'annais.hernandez2016@ensenapormexico.org', 'cova-36@hotmail.com', '2016', '55 4944 0844', 1, '|2|', 'Universidad Tecnologica de Mexico', 'Psicología', 1, 'Maestría ', 'UNITEC ', 1, NULL, 'UNITEC', 'Consejera Académica', 'Ecatepec, Estado de México', 15, 'Tallerista alumnos y padres de familia\nImplementación de proyectos educativos.\nOrientación estudiantil\nDesarrollo de estrategias académicas para poblaciones específicas.\n', 'INGLES 20 %', NULL, NULL, '-', '', 'annaishernandez2016.jpg'),
(295, 0, 'ARTURO IVAN', 'PEREZ BOLEAGA', 'ivan.perez2016@ensenapormexico.org', 'arturo.ivan475@gmail.com', '2016', '8124106791', 2, '|2|', 'BUAP', 'Fisica', 0, '', '', 0, NULL, 'ExM', 'PEM año adicional', 'Pesquería, Nuevo León', 19, 'Conocimientos: matemáticas,  aritmética, álgebra, geometría y trigonometría,  geometría analítica,  cálculo diferencial e integral, física,  probabilidad y estadísticas. \nHabilidades: explicar, expresar,  experimentar,  debatir,  cuestionar,  construir, crear,  planear  evaluar, justificar,  defender, criticar ', 'Español lengua natal e inglés básico.', NULL, '../media/pdf/cv_185_242515112605_Curriculum_ Arturo IvÃ¡n.pdf', '-', '', 'ivanperez2016.jpg'),
(296, 0, 'Carla', 'Valderrama Berges', 'carla.valderrama2016@ensenapormexico.org', 'carla.valbe@gmail.com', '2016', '4441659817', 1, '|2|', 'Tec de Monterrey', 'Mercadotecnia y Comunicacion', 0, '', '', 1, NULL, 'Grupo RE', 'Directora de Desarrollo', 'Zapopan, Jalisco', 14, 'Facilitadora de habilidades socio emocionales\n Diplomado en Educacion Emocional\n', 'Ingles Avanzado Nivel C1\n Frances Basico Nivel A2', NULL, NULL, '-', '|https://medium.com/historias-pem/carla-valderrama-pem-2015-78654a936ea8|', 'carlavalderrama2016.jpg'),
(297, 0, 'Carlos Eulogio', 'Flores Flores', 'eulogio.flores2016@ensenapormexico.org', 'ceuflores11@gmail.com', '2016', '4611980702', NULL, 'Sector privado', 'ITESM', 'Ingeniería Mecánica Administrativa', NULL, NULL, NULL, NULL, NULL, 'Diseño Electrónico y Automatización', 'Ingeniero de proyectos', 'Celaya, Guanajuato', 11, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/carlos-eulogio-flores-pem-2016-594158a30e98|', 'eulogioflores2016.jpg'),
(298, 0, 'Carmen', 'Guzmán Orozco', 'carmen.guzman2016@ensenapormexico.org', 'carmenguzman65@hotmail.com', '2016', '4741104306', NULL, 'Sector privado', 'Universidad de Guadalajara', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'CIAS por la paz', 'Promotor', 'Lagos de Moreno, Jalisco', 14, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/carm%C3%A9n-guzm%C3%A1n-orozco-pem-2016-461ea17e8d0b|', 'carmenguzman2016.jpg'),
(299, 0, 'Carmen Andrea', 'Espinoza Gutierrez', 'carmen.espinoza2016@ensenapormexico.org', 'carmeen.espinoza@gmail.com', '2016', '6563420364', NULL, '-', 'Universidad Autonoma de Ciudad Juarez', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', 'Ciudad Juárez, Chihuahua', 6, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/carmen-espinoza-pem-2016-31ac2d7ce68f|', 'carmenespinoza2016.jpg'),
(300, 0, 'Cecilia', 'Ramírez Calixtro', 'cecilia.ramirez2016@ensenapormexico.org', 'cramirezcalixtro@gmail.com', '2016', '5565179165', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'La Vaca Independiente', 'Líder de Proyectos Comunitarios', 'Mérida, Yucatán', 31, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/una-alumni-en-el-mayab-f4cb7256c815|', 'ceciliaramirez2016.jpg'),
(301, 0, 'Claudia Soledad', 'Segura Narvaez', 'claudia.segura2016@ensenapormexico.org', 'claudia.segura05@gmail.com', '2016', '8112092003', NULL, '|2|', 'Universidad de Monterrey', 'Artes', NULL, NULL, NULL, NULL, NULL, 'Escuela Técnica Roberto Rocca', 'Docente y coordinadora de humanidades', 'Monterrey, Nuevo León', 19, NULL, '', NULL, '../media/pdf/cv_61_242515112605_Claudia Segura.pdf', '-', '|https://medium.com/historias-pem/claudia-segura-pem-2016-be2624ec8efb|', 'claudiasegura2016.jpg'),
(302, 0, 'Daniela', 'Jiménez Moyao', 'daniela.jimenez2016@ensenapormexico.org', 'mooyaoo@gmail.com', '2016', '5522462755', NULL, '|2|', 'ITESM', 'Emprendimiento Cultural y Social', NULL, NULL, NULL, NULL, NULL, 'A Favor del Niño, I.A.P.', 'Directora General', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'danielajimenez2016.jpg'),
(303, 0, 'Desiderio', 'Vázquez Molina', 'desiderio.vazquez2016@ensenapormexico.org', 'godesi_10@hotmail.com', '2016', '222 512 6337', NULL, '|2|', 'BUAP', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Tecámac, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/desiderio-v%C3%A1zquez-molina-pem-2016-f0607c834137|', 'desideriovazquez2016.jpg'),
(304, 0, 'Diego', 'Carranza Savall', 'diego.carranza2016@ensenapormexico.org', 'dcarranza837@gmail.com', '2016', '3318628507', NULL, '|2|', 'ITESM', 'Ingeniería Industrial y de Sistemas', NULL, NULL, NULL, NULL, NULL, 'CONALEP Los Cabos', 'Director', 'Los Cabos, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/experiencia-alumni-2abbec2a41cc|https://medium.com/historias-pem/diego-carranza-pem-2016-2390456d63e4|', 'diegocarranza2016.jpg'),
(305, 0, 'Dolores Susabi', 'Arellanes Olivera', 'susabi.arellanes2016@ensenapormexico.org', 'susabiis@gmail.com ', '2016', '954 133 3652', NULL, '|2|', 'Universidad Internacional. Cuernavaca', 'Idiomas', NULL, NULL, NULL, NULL, NULL, 'Escuela de español para extranjeros', 'Docente', 'Puerto Escondido, Oaxaca', 20, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/susabi-arellanes-pem-2016-e1cec96e4f52|', 'susabiarellanes2016.jpg'),
(306, 0, 'Edmundo', 'Ortega Becerril', 'edmundo.ortega2016@ensenapormexico.org', 'mundoortegab@gmail.com', '2016', '7224190958', 2, '|1|', 'Universidad Autonoma del Estado de Mexico', 'Diseño Industrial', 0, '', '', 0, NULL, 'Promotora Social México', 'Analista de Filantropía Estratégica', 'Ciudad de México', 7, 'Apasionado por la transformación social con dos años de experiencia en el sector educativo y 2 años en el sector filantrópico, dando seguimiento a proyectos social es diversos a nivel nacional.', 'Inglés intermedio.', NULL, NULL, '-', '|https://medium.com/historias-pem/estar-del-otro-lado-5c9bb501f054|https://medium.com/historias-pem/edmundo-ortega-pem-2016-123b7d9ad01b|', 'edmundoortega2016.jpg'),
(307, 0, 'Eduardo', 'Rodriguez De La Torre', 'eduardo.rodriguez2016@ensenapormexico.org', 'edmen.1917@gmail.com', '2016', '6142175759', 2, '|2|', 'ITESM', 'Ingeniero Mecánico/Administrador', 1, 'Maestría en Educación y Liderazgo', 'Enseña por México', 0, NULL, 'ExM', 'PEM año adicional', 'Tlajomulco de Zúñiga, Jalisco', 14, 'Habilidades computacionales; Software de Diseño e Ingenieril; Dominio de Microsoft Office y Google Suite; Gestión de Proyectos; Metodología del Marco Lógico; Mediación DIA.', 'Inglés avanzado, francés básico.', NULL, '../media/pdf/cv_210_242515112605_EduardoR_CV_2021.pdf', '-', '|https://medium.com/alumni-exm/me-he-vuelto-parte-del-cambio-49ed69f7ef8e|https://medium.com/historias-pem/eduardo-rodr%C3%ADguez-pem-2016-6b7b3ecd11d5|', 'eduardorodriguez2016.jpg'),
(308, 0, 'Elida Karina', 'Cavazos Almaguer', 'karina.cavazos2016@ensenapormexico.org', 'kary.calmaguer@gmail.com', '2016', '81 1910 3143', NULL, 'Sector privado', 'Universidad de Monterrey', 'Psicopedagogía', NULL, NULL, NULL, NULL, NULL, 'ForteOrigen', 'Diseñador de experiencias de aprendizaje', 'San Nicolás de los Garza, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'karinacavazos2016.jpg'),
(309, 0, 'Elisa', 'Angón León', 'elisa.angon2016@ensenapormexico.org', 'elisaal_2@hotmail.com; elisa.angon@gmail.com', '2016', '2711339785', NULL, '|2|', 'ITESM', 'Administración de Empresas', NULL, NULL, NULL, NULL, NULL, '', '', 'Córdoba, Veracruz', 30, NULL, '', NULL, NULL, 'S', '|https://medium.com/historias-pem/elisa-ang%C3%B3n-le%C3%B3n-pem-2016-aa7dd707045a|', 'elisaangon2016.jpg'),
(310, 0, 'Elizabeth Montserrat', 'Villavicencio Vidal', 'elizabeth.villavicencio2016@ensenapormexico.org', 'elizabeth.villavicencio19@gmail.com', '2016', '271 139 7763', NULL, '|2|', 'ITESM', 'Administración de Empresas', NULL, NULL, NULL, NULL, NULL, 'KUEPA | Media Market', 'Asesor tutorías virtuales | Proyect & comunity manager', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/elizabeth-villavicencio-pem-2016-ca85c4f953de|', 'elizabethvillavicencio2016.jpg'),
(311, 0, 'Elodia', 'Villagrán Cano', 'elodia.villagran2016@ensenapormexico.org', 'elodia.villagran@gmail.com', '2016', '5520693285', NULL, '|1|', 'UAM', 'Ingeniería Ambiental', NULL, NULL, NULL, NULL, NULL, 'Sembrando Vida', 'Facilitadora', 'Naucalpan, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'elodiavillagran2016.jpg'),
(312, 0, 'Evelyn Guadalupe', 'Escobar Jiménez', 'evelyn.escobar2016@ensenapormexico.org', 'evy.escobar@hotmail.com', '2016', '5539967282', NULL, '|2|', 'UAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'UNITEC', 'Consejera Académica', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/evelyn-escobar-pem-2016-aed8f96bca33|', 'evelynescobar2016.jpg'),
(313, 0, 'Flor de los Angeles', 'Nieva Sampieri', 'flor.nieva2016@ensenapormexico.org', 'flor100101@hotmail.com', '2016', '271 152 7278', 1, '|2|', 'ITESM', 'Negocios Internacionales', 1, 'Maestría', 'Universidad Popular Autónoma del Estado de Puebla', 1, NULL, 'Tecnológico de Monterrey', 'Especialista de Proyectos de Formación Social', 'Puebla, Puebla', 21, 'Competencias en el área de Desarrollo Humano', 'Inglés', NULL, NULL, '-', '|https://medium.com/historias-pem/flor-de-los-%C3%A1ngeles-nieva-sampieri-pem-2016-9b9a7321b56e|', 'flornieva2016.jpg'),
(314, 0, 'Flor Ivonne', 'Barrera Bruno', 'flor.barrera2016@ensenapormexico.org', 'pedagoga.ibb@gmail.com', '2016', '238 100 8151', NULL, '|2|', 'Universidad Pedagogica Nacional 213 Tehuacan', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Escuela', 'Docente', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'florbarrera2016.jpg'),
(315, 0, 'Francisco Barani', 'Hernández Hernández', 'barani.hernandez2016@ensenapormexico.org', 'barani88@hotmail.com', '2016', '2871282992', NULL, '|2|', 'Universidad Pedagogica Nacional. 20B Tuxtepec', 'Intervención educativa', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente foráneo', 'Municipio, Oaxaca', 20, NULL, '', NULL, NULL, '-', '', 'baranihernandez2016.jpg'),
(316, 0, 'Francisco Javier', 'Pérez Gaspar', 'javier.perez2016@ensenapormexico.org', 'fco.javpg@gmail.com', '2016', '2212469191', NULL, '|2|', 'BUAP', 'Ingeniería Agroindustrial', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinador de Liderazgo y Aprendizaje', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'javierperez2016.jpg'),
(317, 0, 'Gabriela', 'Burgoa Jiménez', 'gabriela.burgoa2016@ensenapormexico.org', 'gabrielaburgoa76@gmail.com', '2016', '442711241360', NULL, '|2|', 'Universidad Veracruzana', 'Lengua Inglesa', NULL, NULL, NULL, NULL, NULL, 'A+  We speak your language', 'Profesor de inglés- Adultos', 'Córdoba, Veracruz', 30, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/gabriela-burgoa-pem-2016-bc4521d3fa64|', 'gabrielaburgoa2016.jpg'),
(318, 0, 'Gerardo Jovani', 'Figueroa Osorio', 'gerardo.figueroa2016@ensenapormexico.org', 'gerardo.figueroao@hotmail.com', '2016', '7757068670', NULL, '|2|', 'BUAP', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Tultitlán, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'gerardofigueroa2016.jpg'),
(319, 0, 'Janette Itzel', 'Ramírez López', 'itzel.ramirez2016@ensenapormexico.org', 'itzelpsi12@gmail.com', '2016', '5534281949', NULL, '|2|', 'Universidad Nacional Autonoma de Mexico', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'La Cima IAP', 'Director Operativo', 'Querétaro, Querétaro', 22, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/itzel-ram%C3%ADrez-pem-2016-96ed9488c9b5|', 'itzelramirez2016.jpg'),
(320, 0, 'Jorge', 'González Gómez', 'jorge.gonzalez2016@ensenapormexico.org', 'gonzalez.gj@outlook.com', '2016', '9192090412', NULL, 'Sector privado', 'Universidad Tecnologica de la Selva', 'Ingeniería Profecional en Seguridad e Inocuidad Alimentaria', NULL, NULL, NULL, NULL, NULL, 'Granos Baja Pacífico', 'Coord. de control de calidad', 'Tecate, Baja California', 2, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/jorge-gonz%C3%A1lez-pem-2016-52c7e4272e56|', 'jorgegonzalez2016.jpg'),
(321, 0, 'José Jesús', 'Camacho Sosa', 'jose.camacho2016@ensenapormexico.org', 'jesus_camacho5@hotmail.com', '2016', '7351624480', 1, '-', 'BUAP', 'Psicología', 1, 'Maestría', 'Instituto Universitario Puebla', 1, NULL, 'Proeducación IAP', 'Coordinador Educativo', '-', 33, 'Psicología educativa, psicología jurídica, criminología, educación especial.', 'Español', NULL, NULL, '-', '', 'josecamacho2016.jpg'),
(322, 0, 'Juan', 'Gutiérrez Mateo', 'juan.gutierrez2016@ensenapormexico.org', 'juan_krym@hotmail.com', '2016', '2311402021', NULL, '|2|', 'Universidad del Desarrollo del Estado de Puebla', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'SEP', 'Docente', 'Hueyapan, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'juangutierrez2016.jpg'),
(323, 0, 'Juan Carlos', 'De Jesús Reséndiz', 'carlos.dejesus2016@ensenapormexico.org', 'jcmecatron@gmail.com', '2016', '4423528075', NULL, '|2|', 'Instituto Tecnologico de Queretaro', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Pinion Education', 'Desarrollador Tecnológico', 'Querétaro, Querétaro', 22, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/las-barreras-que-enfrenta-lil%C3%AD-para-continuar-sus-estudios-f1a6732db197|https://medium.com/enero-2018/familia-latina-per%C3%BA-2018-a02409700432|', 'carlosdejesus2016.jpg'),
(324, 0, 'Karen', 'Garduño Zuñiga', 'karen.garduno2016@ensenapormexico.org', 'karen.garzun@gmail.com', '2016', '2224422991', NULL, '|2|', 'BUAP', 'Ciencias Politicas', NULL, NULL, NULL, NULL, NULL, 'Radix Education', 'Coordinadora de Programa', '', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/karen-gardu%C3%B1o-pem-2016-1329a086e1ca|', 'karengarduno2016.jpg'),
(325, 0, 'Larisa Verónica', 'Ibarra Miranda', 'larisa.ibarra2016@ensenapormexico.org', 'larisa.ibarra@hotmail.com', '2016', '871 119 4292', NULL, '|2|', 'ITESM', 'Negocios Internacionales', NULL, NULL, NULL, NULL, NULL, 'La Vaca Independiente', 'Gestión de proyectos y procesos.', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/coloreando-la-paz-nos-reencontramos-para-seguir-haciendo-comunidad-a63b35f3c939|', 'larisaibarra2016.jpg'),
(326, 0, 'Lucio Misael', 'López Martínez', 'misael.lopez2016@ensenapormexico.org', 'lmstallone@hotmail.com', '2016', '2441153248', NULL, '|2|', 'BUAP', 'Biología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Nezahualcoyotl, Estado de México', 15, NULL, '', NULL, '../media/pdf/cv_116_242515112605_MisaelLÃ³pez CV mayo2021.pdf', '-', '', 'misaellopez2016.jpg'),
(327, 0, 'Luis Enrique', 'Bautista Bacilio', 'enrique.bautista2016@ensenapormexico.org', 'nike1993@live.com', '2016', '7721571275', NULL, '|2|', 'Universidad Tecnologica de la Huasteca Hidalguense', 'TSU. Desarrollo de Negocios', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Tecámac, Estado de México', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/luis-enrique-bautista-bacilio-pem-2016-575ecf711b52|', 'enriquebautista2016.jpg'),
(328, 0, 'Luis Felipe', 'Ochoa Velázquez', 'felipe.ochoa2016@ensenapormexico.org', 'luis18felipe@gmail.com', '2016', '6122323059', NULL, '-', 'ITESM', 'Ingeniería Industrial y de Sistemas', NULL, NULL, NULL, NULL, NULL, '', '', 'Lázaro Cárdenas, Michoacán', 16, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/luis-felipe-ochoa-pem-2016-49622a3a7b67|', 'felipeochoa2016.jpg'),
(329, 0, 'Luis Gerardo', 'Trejo Leone', 'gerardo.trejo2016@ensenapormexico.org', 'gera.leone.1987@gmail.com', '2016', '55 44 95 64 18', 1, '|2|', 'UNAM', 'Arquitectura', 1, 'Maestrante', 'UNAM', 1, NULL, 'Gnius Club/Colegio Francés Hidalgo', 'Director Académico /Docente', 'Nezahualcoyotl, Estado de México ', 15, 'Habilidades Digitales, innovador, resiliente. Especialización en enseñanza STEAM , modelos educativos y técnologia.', 'Inglés', NULL, '../media/pdf/cv_84_242515112605_CV.pdf', '-', '|https://medium.com/alumni-exm/mi-historia-es-nuestra-historia-1edc7958c15e|https://medium.com/historias-pem/luis-gerardo-trejo-leone-pem-2016-6136d15dd7ee|', 'gerardotrejo2016.jpg'),
(330, 0, 'Maria del Carmen', 'Soledad Terrazas', 'carmen.soledad2016@ensenapormexico.org', 'carmen.soledadt@gmail.com', '2016', '5554136408', NULL, '|3|', 'Universidad Panamericana', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, 'Mexicanos primero', 'Coordinadora de Agentes Educativos', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/carmen-soledad-pem-2016-educaci%C3%B3n-b%C3%A1sica-bb23230ba2ca|', 'carmensoledad2016.jpg'),
(331, 0, 'María del Carmen', 'Tamayo Sánchez-Mejorada', 'maria.tamayo2016@ensenapormexico.org', 'mctamayo13@gmail.com', '2016', '6121502804', NULL, '-', 'Universidad del Valle de Mexico', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, '-', '-', 'Toluca', 15, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/mar%C3%ADa-del-carmen-tamayo-pem-2016-1b1db486fa38|', 'mariatamayo2016.jpg'),
(332, 0, 'María Magdalena', 'Rodríguez Hernández', 'magdalena.rodriguez2016@ensenapormexico.org', 'rohermarymagda@gmail.com', '2016', '6121113642', NULL, '|2|', 'Facultad de Estudios Superiores Iztacala UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Los Cabos, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'magdalenarodriguez2016.jpg'),
(333, 0, 'Mariana Del Carmen', 'Vázquez Covarrubias', 'mariana.vazquez2016@ensenapormexico.org', 'mariianadelan@gmail.com', '2016', '4423691316', NULL, '|2|', 'ITESM', 'Comunicación y Medios Digitales', NULL, NULL, NULL, NULL, NULL, 'Tecnológico de Monterrey', 'Asesora de admisiones y coordinadora de embajadores TEC', 'San Luis Potosi, San Luis Potosí', 24, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/el-camino-que-apenas-estaba-comenzando-3280eec61fc2|https://medium.com/alumni-exm/hoy-todo-tiene-sentido-a04a70fcae85|https://medium.com/enero-2018/historias-sin-fronteras-9fa3b65b48f3|https://medium.com/historias-pem/mariana-v%C3%A1zquez-pem-2016-a24b004ce610|', 'marianavazquez2016.jpg'),
(334, 0, 'Mayra Guadalupe', 'Jasso Cárdenas', 'mayra.jasso2016@ensenapormexico.org', 'mayra.jasso91@gmail.com', '2016', '4811070852', NULL, 'Sector público', 'ITESM', 'Ingeniería Mecatrónica', NULL, NULL, NULL, NULL, NULL, 'Unión Ganadera Regional de la Huasteca Potosina', 'Encargada de la Planta de Premezclas Minerales', 'Ciudad Valles, San Luis Potosí', 24, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/mayra-jasso-c%C3%A1rdenas-pem-2016-558a360cef41|', 'mayrajasso2016.jpg'),
(335, 0, 'Melina', 'Chávez Duarte', 'melina.chavez2016@ensenapormexico.org', 'melinachavezduarte@gmail.com', '2016', '222 710 7889', NULL, '', 'ITESM', 'Ingeniería en Biotecnología', NULL, NULL, NULL, NULL, NULL, '', '', '', 33, NULL, '', NULL, NULL, '-', '', 'melinachavez2016.jpg'),
(336, 0, 'Mónica', 'Soto Contreras', 'monica.soto2016@ensenapormexico.org', 'monica.sotocontreras@gmail.com', '2016', '722 288 7535', NULL, '|3|', 'Campus Universitario Siglo XXI, S.C.', 'Comunicación', NULL, NULL, NULL, NULL, NULL, 'Secretaría de Educación Pública', '', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'monicasoto2016.jpg'),
(337, 0, 'Nalleli Dení', 'Navarro Betancourt', 'deni.navarro2016@ensenapormexico.org', 'ndnb2293@gmail.com', '2016', '3331370094', NULL, 'Sector privado', 'ITESM', 'Ingeniería Industrial y de Sistemas', NULL, NULL, NULL, NULL, NULL, 'Taller mecánico', 'Administración', 'Guadalajara, Jalisco', 14, NULL, '', NULL, NULL, '-', '', 'deninavarro2016.jpg'),
(338, 0, 'Pamela Alejandra', 'Urbina Trinidad', 'pamela.urbina2016@ensenapormexico.org', 'yanimo2@hotmail.com', '2016', '2223307481', NULL, 'Sector privado', 'BUAP', 'Ambiental', NULL, NULL, NULL, NULL, NULL, 'LEADEC', 'Administrativo en Mantenimiento Industrial', 'Tecate, Baja California', 2, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/pamela-urbina-pem-2016-cd237672ca22|', 'pamelaurbina2016.jpg'),
(339, 0, 'Patricia', 'Cuevas Servín', 'patricia.cuevas2016@ensenapormexico.org', 'paty428@gmail.com', '2016', '7771035284', NULL, '|1|', 'ITESM', 'Negocios Internacionales', NULL, NULL, NULL, NULL, NULL, 'Tecnológico de Monterrey', 'Especialista en Experiencias de Emprendimiento Social', 'Zapopan, Jalisco', 14, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/patricia-cuevas-pem-2016-f30f8b173513|', 'patriciacuevas2016.jpg'),
(340, 0, 'Paulina', 'Ruiz Ochoa', 'paulina.ruiz2016@ensenapormexico.org', 'ruizochoa.paulina@gmail.com', '2016', '(+52)1 331 479 25 30', NULL, 'Sector privado', 'ITESM', 'Creación y Desarrollo de Empresas', NULL, NULL, NULL, NULL, NULL, 'BigPrint', 'Analista de Operaciones', 'León, Guanajuato', 11, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/paulina-ruiz-pem-2016-c7d6655974d7|', 'paulinaruiz2016.jpg'),
(341, 0, 'Pedro Enrique', 'Sanchez Castelan', 'pedro.sanchez2016@ensenapormexico.org', 'pedro-enrique@live.com.mx', '2016', '7751665781', NULL, '|2|', 'Universidad Tollancingo', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Zacapoaxtla, Puebla', 21, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/pedro-enrique-s%C3%A1nchez-pem-2016-a41e08562e8|', 'pedrosanchez2016.jpg'),
(342, 0, 'Priscila Isabel', 'Morales Saucedo', 'priscila.morales2016@ensenapormexico.org', 'priscila.morales.saucedo@gmail.com', '2016', '8444427051', NULL, '|2|', 'Universidad Autónoma de Coahuila', 'Mercadotecnia', NULL, NULL, NULL, NULL, NULL, 'Fundación FEMSA', 'Coordinador de proyectos y evaluación', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'priscilamorales2016.jpg'),
(343, 0, 'Rosa Maria', 'Gonzalez Rojas', 'rosa.gonzalez2016@ensenapormexico.org', 'psic13@hotmail.com', '2016', '2441112880', NULL, '-', 'Escuela Libre de Psicologia', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', '', 'Guanajuato, Puebla', 21, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/rosa-mar%C3%ADa-gonz%C3%A1lez-pem-2016-eaeb8c16be1e|', 'rosagonzalez2016.jpg'),
(344, 0, 'Alvan Gamaliel', 'Ontiveros Vizarraga', 'alvan.ontiveros2017@ensenapormexico.org', 'alvangamaliel@hotmail.com', '2017', '6181450689', NULL, '|3|', 'Universidad Autónoma Chapingo', 'Agronomía En Horticultura Protegida', NULL, NULL, NULL, NULL, NULL, 'Gobierno municipal', 'Secretario Técnico', 'Canatlán, Durango', 10, NULL, '', NULL, NULL, '-', '', 'alvanontiveros2017.jpg'),
(345, 0, 'Ana Marina', 'Ortiz Baker', 'marina.ortiz2017@ensenapormexico.org', 'a.m.o.baker93@gmail.com', '2017', '81 1790 5672', 1, '-', 'Universidad de Monterrey', 'Letras', 1, 'Maestría', ' Guanajuato', 0, NULL, 'Universidad de Guanajuato', 'Maestría de Literatura Hispanoamericana', 'Guanajuato, Guanajuato', 11, 'Edición y corrección de estilo. Literatura. Docencia. Talleres. Emprendimiento social. ', 'Español nativo, inglés avanzado y francés básico.', NULL, '../media/pdf/cv_191_242515112605_Curriculum vitae.pdf', '-', '', 'marinaortiz2017.jpg'),
(346, 0, 'Benjamín', 'Peña Larios', 'benjamin.pena2017@ensenapormexico.org', 'benjamin.plarios@gmail.com', '2017', '2221233317', NULL, '|2|', 'BUAP', 'Relaciones Internacionales', NULL, NULL, NULL, NULL, NULL, 'A Favor del Niño ', 'Director de Liderazgo Joven y coordinador de ciencias e inglés de primaria ', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/sin-n%C3%BAmeros-5e753f3d9c6c|', 'benjaminpena2017.jpg'),
(347, 0, 'Carmen', 'Jiménez Vázquez', 'carmen.jimenez2017@ensenapormexico.org', 'iscar190185@gmail.com', '2017', '971 100 3483', NULL, '|1|', 'Instituto de Estudios Superiores del Golfo de México', 'Psicología', NULL, NULL, NULL, NULL, NULL, '', 'Psicóloga infantil ', 'Juchitán de Zaragoza, Oaxaca', 20, NULL, '', NULL, NULL, '-', '', 'carmenjimenez2017.jpg'),
(348, 0, 'Carmen Paola', 'Lagunas Ortega', 'paola.lagunas2017@ensenapormexico.org', 'p_lagunas@live.com', '2017', '228 268 9881', NULL, '-', 'Universidad Veracruzana', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'paolalagunas2017.jpg'),
(349, 0, 'Citlali', 'Garzón González', 'citlali.garzon2017@ensenapormexico.org', 'psic.citlaligarzon@gmail.com', '2017', '222 666 3591', 1, '|2|', 'BUAP', 'Psicología', 0, '', '', 1, NULL, 'Casa Jóvenes en Progreso (IMJUVE) ', 'Apoyo en formación integral- Psicóloga', 'Puebla, Puebla', 21, 'Experiencia en el ámbito educativo no formal y formal gestionando e implementando proyectos socioeducativos.\nFacilitadora de cursos académicos y ocupacionales, servicios de desarrollo de lenguaje y apoyo psicopedagógico en población infantil y juvenil.\nAcompañamiento psicológico, planeación-ejecución de taller para padres y madres de familia.\nFacilitadora y mediadora implementando la metodología DIA.', 'Lengua materna español', NULL, '../media/pdf/cv_159_242515112605_CV 2021 Citlali.pdf', '-', '', 'citlaligarzon2017.jpg'),
(350, 0, 'Cristina Nayely', 'Guerrero Molina', 'cristina.guerrero2017@ensenapormexico.org', 'crisguerreromolina@gmail.com', '2017', '55 1878 5276', 1, '-', 'Universidad de Guadalajara', 'DiseÃ±o para la ComunicaciÃ³n GrÃ¡fica', 1, 'MaestrÃ­a en Liderazgo y EducaciÃ³n', 'EnseÃ±a por MÃ©xico', 1, NULL, 'HAMABLE', 'Coordinadora de Proyectos', '-', 33, 'CoordinaciÃ³n de equipos multidisciplinarios, liderazgo consciente, mediaciÃ³n y facilitaciÃ³n.', 'InglÃ©s', NULL, NULL, '-', '|https://medium.com/enero-2018/nuestra-voz-fanzine-conalep-24f2c47c36a|https://medium.com/enero-2018/reality-revolve-2018-charles-and-lynn-schusterman-foundation-47b4f835bff|', 'cristinaguerrero2017.jpg'),
(351, 0, 'Cynthia Isabel', 'Sánchez Bautista', 'cynthia.sanchez2017@ensenapormexico.org', 'liccynthiaisabel_sanchez@outlook.com', '2017', '993 106 2797', NULL, 'Sector privado', 'Universidad Juárez Autónoma de Tabasco', 'Derecho', NULL, NULL, NULL, NULL, NULL, 'Castrol México', 'Coordinadora del proyecto \'Capacitandot + con Castrol\'', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'cynthiasanchez2017.jpg'),
(352, 0, 'Daiysi Isela', 'Palomares López', 'daiysi.palomares2017@ensenapormexico.org', 'daiysipalomares@gmail.com', '2017', '4772753280', 1, '|2|', 'Universidad de Guanajuato', 'Psicología', 0, '', '', 1, NULL, 'Radix Education', 'Coordinadora de Proyecto Nuevo Maestro', 'Guadalajara, Jalisco ', 14, 'Certificación y diplomado en Educación emocional \nCertificación y diplomado en Educación sexual infantil y del adolescente \nCertificación y diplomado en Estimulación Temprana \nDiplomado en Modelos de gestión de proyectos sociales \nCurso de mindfulness\nCurso de habilidades socioemocionales \nPrograma de especialización en Diseño Instruccional: Aprendizaje activo y Pedagogía digital.\n', 'Español', NULL, NULL, '-', '', 'daiysipalomares2017.jpg'),
(353, 0, 'Denisse', 'Díaz Hernández', 'denisse.diaz2017@ensenapormexico.org', 'dnzdiaz@gmail.com', '2017', '462 181 1683', 1, '|2|', 'Instituto Tecnológico Superior de Irapuato', 'Biología', 1, 'Maestría', 'Enseña por México', 0, NULL, 'ExM', 'Alumni', 'Los Cabos, Baja California Sur', 3, 'Biotecnología, genética y bioinformática\nDesarrollo de protocolos, metodologías y seguimiento de campo\nDiseño de experiencias de aprendizaje en ciencias experimentales', 'Español - Nativo\nInglés - Intermedio', NULL, '../media/pdf/cv_62_242515112605_CV_DenisseDÃ­az_EducaciÃ³n.pdf', '-', '|https://medium.com/@exm/acercar-interesar-y-retener-a-mi-comunidad-educativa-a-las-ciencias-y-tecnolog%C3%ADa-99c369817e7|https://medium.com/enero-2018/international-visitors-leadership-program-ac577433f89b|', 'denissediaz2017.jpg'),
(354, 0, 'Diana Elizabeth', 'García Pérez', 'elizabeth.garcia2017@ensenapormexico.org', 'diana.gapz@gmail.com', '2017', '444 800 6123', NULL, 'Sector privado', 'ITESM', 'Mercadotecnia y Comunicación', NULL, NULL, NULL, NULL, NULL, 'Honeywell', 'Customer service', 'San Luis Potosi, San Luis Potosi', 24, NULL, '', NULL, NULL, '-', '', 'elizabethgarcia2017.jpg'),
(355, 0, 'Diana Iveet', 'Montiel Yáñez', 'iveet.montiel2017@ensenapormexico.org', 'diveetmontiely@gmail.com', '2017', '612 194 110', NULL, '-', 'Intituto Nacional de Bellas Artes y Literatura', 'Educacion Dancistica', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/kids-education-revolution-2018-8ee9bfac5fb|https://medium.com/enero-2018/c%C3%B3mo-podemos-fomentar-la-equidad-de-g%C3%A9nero-desde-nuestro-sal%C3%B3n-de-clases-f469d7f942c6|', 'iveetmontiel2017.jpg'),
(356, 0, 'Diana Paola', 'Lagunes Blanco', 'diana.lagunes2017@ensenapormexico.org', 'diana.lagunesb@gmail.com', '2017', '228 754 2705', NULL, 'Sector privado', 'Universidad Veracruzana', 'Economía', NULL, NULL, NULL, NULL, NULL, 'Rurhpumpem', 'Asistente administrativa del área de ventas global', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/cuando-el-futbol-se-convierte-en-un-medio-de-cambio-social-a5ee2fff61c6|', 'dianalagunes2017.jpg'),
(357, 0, 'Diana Paola', 'Torres Rey', 'paola.torres2017@ensenapormexico.org', 'polly.0418@hotmail.com', '2017', '6391015930', NULL, '|2|', 'Benemerita y Centenaria Escuela Normal del Estado Profesor Luis Urias Belderrain', 'Educación Especial', NULL, NULL, NULL, NULL, NULL, 'Servicio Educativo de Chihuahua', 'Docente ', 'Chihuahua', 6, NULL, '', NULL, NULL, '-', '', 'paolatorres2017.jpg'),
(358, 0, 'Edgar Paulino', 'Juárez Gordillo', 'edgar.juarez2017@ensenapormexico.org', 'edgar11_6@hotmail.com', '2017', '735 150 5149', NULL, '|2|', 'Universidad Stratford', 'Ciencias de la Comunicación', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Yautepec de Zaragoza, Morelos', 17, NULL, '', NULL, NULL, '-', '', 'edgarjuarez2017.jpg'),
(359, 0, 'Elsa Beatriz', 'Gómez Espinosa', 'elsa.gomez2017@ensenapormexico.org', 'beatriz_ebge92@hotmail.com', '2017', '967 164 6817', NULL, '-', 'Universidad Autónoma de Chiapas', 'Sociología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'elsagomez2017.jpg'),
(360, 0, 'Erik', 'Zaragoza Maldonado', 'erik.zaragoza2017@ensenapormexico.org', 'arqezaragoza@live.com.mx', '2017', '221 160 3948', 1, '-', 'BUAP', 'Arquitectura', 1, 'Maestría en Educación Superior  ', 'BUAP', 0, NULL, 'CONAFE', 'Académico de Acompañamiento ', '-', 33, 'Manejo de Software \n(AutoCAD, SketchUp, Photoshop, CorelDRAW, Paquetería de Office)\nManejo de personal, liderazgo, iniciativa, trabajo en equipo, gestión social, vocación de servicio, disciplina, compromiso, puntualidad, negociación, responsabilidad, manejo de relaciones públicas, facilidad de palabra y redacción. \n\n', 'Francés A1', NULL, NULL, '-', '|https://medium.com/enero-2018/together-we-can-make-a-greener-place-9bccad6cad93|', 'erikzaragoza2017.jpg'),
(361, 0, 'Erubiel', 'Bernabe López', 'erubiel.bernabe2017@ensenapormexico.org', 'hades.eruy@gmail.com', '2017', '55 2045 3568', 1, '|2|', 'Universidad Autónoma Chapingo', 'Ingeniería Mecánica Agrícola', 1, 'Maestría', 'Maestría en Ingeniería Agrícola y Uso Integral del Agua', 1, NULL, 'Fundación Ternium ', 'Docente ', 'Monterrey, Nuevo León ', 19, 'Automatización industrial y agrícola.\nProgramación, C++, Python, HTML, etc.\nPLC - Uso de software de simulación, lógica boolenaa, ladder, grafcet, etc. (Allen Bradley, Siemens)\nRobótica Industrial y educativa.\nElectrónica de potencia y digital\nVisión artificial.', 'Inglés - Básico', NULL, '../media/pdf/cv_49_242515112605_Erubiel Bernabe ES.pdf', '-', '', 'erubielbernabe2017.jpg'),
(362, 0, 'Florencia', 'Gil Pinzón', 'florencia.gil2017@ensenapormexico.org', 'gp_flower@hotmail.com', '2017', '222 924 8107', NULL, '-', 'BUAP', 'Ciencias de la comunicación', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'florenciagil2017.jpg'),
(363, 0, 'Francisco', 'Sanabria Guerra', 'francisco.sanabria2017@ensenapormexico.org', 'profesorsanabriaguerra@outlook.com', '2017', '55 3519 9189', NULL, '|2|', 'Universidad Autónoma Metropolitana', 'Sociologia', NULL, NULL, NULL, NULL, NULL, 'AULA', 'Director y fundador', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/alumni-exm/un-a%C3%B1o-de-ser-alumni-un-a%C3%B1o-de-ser-aula-de39eabcd8f5|', 'franciscosanabria2017.jpg'),
(364, 0, 'Héctor', 'Gutiérrez Yescas', 'hector.gutierrez2017@ensenapormexico.org', 'hector_yescas@outlook.com', '2017', '55 7006 5558', NULL, '|2|', 'Tecnológico de Estudios Superiores de Ixtapaluca', 'Administración', NULL, NULL, NULL, NULL, NULL, 'Enseña por México ', 'Coordinador de Reclutamiento y Selección ', 'Monterrey, Nuevo León ', 19, NULL, '', NULL, NULL, '-', '', 'hectorgutierrez2017.jpg'),
(365, 0, 'Ilse', 'Hernández Garrido', 'ilse.hernandez2017@ensenapormexico.org', 'ilse.her.gar@gmail.com', '2017', '55 2530 4010', NULL, '|2|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'CONALEP y U-ERRE', 'Docente ', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/oportunidad-de-verano-zihuakali-58c1da23b249|', 'ilsehernandez2017.jpg'),
(366, 0, 'Ilse Abigail', 'Téllez Hernández', 'ilse.tellez2017@ensenapormexico.org', 'iath_psic@outlook.com', '2017', '8126959521', 1, '|2|', 'UNAM', 'Psicología', 1, 'Maestría', 'Enseña por México', 0, NULL, 'ExM', 'PEM año adicional', 'Guadalupe, Nuevo León', 19, 'Estándar de Competencia EC 0647 Propiciar el aprendizaje significativo en Educación Media Superior y Superior.', 'Inglés', NULL, '../media/pdf/cv_147_242515112605_CV Ilse Tellez.pdf', '-', '|https://medium.com/enero-2018/dise%C3%B1ando-ambientes-de-aprendizaje-que-nos-conecten-a-trav%C3%A9s-de-las-pantallas-7188335a7b4b|', 'ilsetellez2017.jpg'),
(367, 0, 'Isaac', 'López Reyna', 'isaac.lopez2017@ensenapormexico.org', 'isaac.lr@itesm.mx', '2017', '81 1070 5559', NULL, '|2|', 'ITESM', 'Letras Hispánicas', NULL, NULL, NULL, NULL, NULL, 'PrepaTec de Monterrey', 'Profesor de Cátedra', 'Monterrey, Nuevo León ', 19, NULL, '', NULL, '../media/pdf/cv_32_242515112605_IsaacLR-CVEsp -ENE21.pdf', '-', '|https://medium.com/alumni-exm/qui%C3%A9n-ense%C3%B1a-a-los-que-ense%C3%B1an-6ab97f0514e6|https://medium.com/@exm/ense%C3%B1a-por-m%C3%A9xico-en-el-world-bank-fad32724e9d8|', 'isaaclopez2017.jpg'),
(368, 0, 'Itzayana Valeria', 'Delgado Ariza', 'valeria.delgado2017@ensenapormexico.org', 'valeriadelariza@gmail.com', '2017', '442 542 1107', NULL, '-', 'ITESM', 'Animación y Arte Digital', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, 'S', '', 'valeriadelgado2017.jpg'),
(369, 0, 'Jacqueline', 'Carretero Jacinto', 'jacqueline.carretero2017@ensenapormexico.org', 'jacqueline.carretero@hotmail.com', '2017', '55 4852 8668', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Tecámac, Estado de México', 15, NULL, '', NULL, NULL, '-', '', 'jacquelinecarretero2017.jpg'),
(370, 0, 'Jazmin Elizabeth', 'Rodríguez Tovar', 'jazmin.rodriguez2017@ensenapormexico.org', 'jaze_vaj@hotmail.com', '2017', '472 157 9001', 1, '|2|', 'Universidad Tecnológica de León', 'Ing. Desarrollo e Innovación Empresarial', 0, '', '', 1, NULL, 'Radix Education', 'Tutora', 'Valladolid, Yucatán', 31, 'Mediación, desarrollo de HSE, manejo de datos.', 'Inglés Intermedio', NULL, NULL, '-', '', 'jazminrodriguez2017.jpg'),
(371, 0, 'Jimena', 'Madrigal Salazar', 'jimena.madrigal2017@ensenapormexico.org', 'jimena.madrigal@gmail.com', '2017', '33 1538 9389', NULL, '|2|', 'ITESM', 'Ingeniería Biomédica', NULL, NULL, NULL, NULL, NULL, 'Radix Education', 'Coordinadora de proyectos', '', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/megan-de-tfa-en-conalep-mty-ii-ef6170608a1d|https://medium.com/enero-2018/historia-ganadora-yosoynuestromovimiento-marzo-f20f5b52bdd2|', 'jimenamadrigal2017.jpg'),
(372, 0, 'Jonatán', 'Cruz Santos', 'jonatan.cruz2017@ensenapormexico.org', 'j_cs_e@hotmail.com', '2017', '55 3455 3718', NULL, '|2|', 'Universidad Veracruzana', 'Lengua y Literatura Hispánicas', NULL, NULL, NULL, NULL, NULL, 'Preparatoria', 'Docente (cursos de regularización)', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/historia-ganadora-yosoynuestromovimiento-febrero-c096b2684b58|', 'jonatancruz2017.jpg');
INSERT INTO `alumnidata` (`idDA`, `idU`, `name`, `lastname`, `email`, `personalemail`, `generation`, `phone`, `phoneormail`, `pathways`, `university`, `career`, `haspostgraduate`, `postgraduatelevel`, `postgraduatewhere`, `hasactualjob`, `lookingforjob`, `organization`, `rol`, `city`, `state`, `competences`, `languages`, `interests`, `cv`, `iscommittee`, `linksmedium`, `img`) VALUES
(373, 0, 'Jorge', 'Ramos Andrade', 'jorge.ramos2017@ensenapormexico.org', 'jorge89ramos@gmail.com', '2017', '5527377360', 2, 'Sector privado', 'ITESM/IBERO/DIM', 'Mercadotecnia/Música/ingeniería en audio', 0, '', '', 1, NULL, 'Producción musical, clases de música ', 'Maestro y productor ', '', 33, 'Audio, producción musical para audiovisuales ', 'Español, inglés, portugués ', NULL, NULL, '-', '|https://medium.com/enero-2018/kids-education-revolution-2018-8ee9bfac5fb|', 'jorgeramos2017.jpg'),
(374, 0, 'Jorge Eduardo', 'Pereida Estrada', 'eduardo.pereida2017@ensenapormexico.org', 'epereida91@gmail.com', '2017', '871 333 2736', NULL, '-', 'Universidad Juarez del Estado de Durango', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/baja-california-sur/abre-paso-a-la-ciencia-470b40c6b82e|', 'eduardopereida2017.jpg'),
(375, 0, 'Karen Alejandra', 'Lara Paz', 'alejandra.lara2017@ensenapormexico.org', 'alejandra_larap@hotmail.com', '2017', '415 566 4732', NULL, '|2|', 'Universidad Autónoma de San Luis Potosi', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/la-importancia-de-la-comunidad-en-el-contexto-educativo-pt1-3623d154b63|', 'alejandralara2017.jpg'),
(376, 0, 'Lesslie Yazmin', 'Aparicio Galván', 'lesslie.aparicio2017@ensenapormexico.org', 'lesapariciog@gmail.com', '2017', '735 191 0088', NULL, '|2|', 'Universidad Stratford', 'Ciencias de la Comunicaciòn', NULL, NULL, NULL, NULL, NULL, 'Fundación Educa/Acámica', 'Coordinadora de programas e instituciones/Tutora académica', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'lesslieaparicio2017.jpg'),
(377, 0, 'Luisa Georgina', 'Turrubiates Cázares', 'luisa.turrubiates2017@ensenapormexico.org', 'lgtc_92@hotmail.com', '2017', '481 331 3800', NULL, '|2|', 'Instituto Tecnológico de Ciudad Valles', 'Gestión Empresarial', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'San Bernabé, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'luisaturrubiates2017.jpg'),
(378, 0, 'María Laura', 'Ontiveros Rodríguez', 'laura.ontiveros2017@ensenapormexico.org', 'lontiveros2205@gmail.com', '2017', '55 4344 5942', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'lauraontiveros2017.jpg'),
(379, 0, 'Michelle', 'Valadez Serrano', 'michelle.valadez2017@ensenapormexico.org', 'mich.onarres@gmail.com', '2017', '8110465449', 2, '|2|', 'Universidad Autónoma del Estado de Hidalgo', 'Biología', 1, 'Maestría en Liderazgo y Educación', 'Enseña por México', 1, NULL, 'ExM', 'PEM año adicional', 'San Nicolás de los Garza, Nuevo León', 19, 'Habilidades y competencias: Trabajo en equipo, organización, comunicación, organización, innovación, adaptación.', 'Inglés avanzado', NULL, '../media/pdf/cv_135_242515112605_MichelleValadez_CV.pdf', '-', '|https://medium.com/alumni-exm/resiliencia-en-tiempos-de-incertidumbre-f8f7f97c4893|', 'michellevaladez2017.jpg'),
(380, 0, 'Miguel Ángel', 'Castillo Romero', 'miguel.castillo2017@ensenapormexico.org', 'a134002@normalfronterizatijuana.edu.mx', '2017', '6644511596', NULL, '|2|', 'Escuela Normal Fronteriza de Tijuana', 'Educación Secundaria con especialidad en Español', NULL, NULL, NULL, NULL, NULL, 'PARTICIPATE', 'Profesor', 'Estados Unidos', 33, NULL, '', NULL, NULL, '-', '', 'miguelcastillo2017.jpg'),
(381, 0, 'Nancy Pamela', 'Valdez Carrillo', 'nancy.valdez2017@ensenapormexico.org', 'npvc94@hotmail.com', '2017', '6141788406', NULL, '-', 'Benemerita y Centenaria Escuela Normal del Estado Profesor Luis Urias Belderrain', 'Educación Especial', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'nancyvaldez2017.jpg'),
(382, 0, 'Nicté', 'Téllez Girón González', 'nicte.tellezgiron2017@ensenapormexico.org', 'nicte.tgg@outlook.com', '2017', '222 662 4593', NULL, '|1|', 'ITESM', 'Biotecnología', NULL, NULL, NULL, NULL, NULL, 'Un Buen Grupo de Amigos A.C.', 'Coordinadora de proyecto de evaluación interna', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'nictetellezgiron2017.jpg'),
(383, 0, 'Norma', 'Estrada Guerrero', 'norma.estrada2017@ensenapormexico.org', 'norma.estrada.guerrero@hotmail.com', '2017', '222 584 8703', NULL, 'Sector privado', 'BUAP', 'Administración Pública y Ciencias Políticas', NULL, NULL, NULL, NULL, NULL, 'ComInduprker S de RL de CV', 'Compras', 'Puebla, Puebla', 21, NULL, '', NULL, NULL, '-', '', 'normaestrada2017.jpg'),
(384, 0, 'Norma Angélica', 'Montes García', 'angelica.montes2017@ensenapormexico.org', 'norageli_29@hotmail.com', '2017', '55 4578 8120', NULL, '-', 'Universidad Nacional Autónoma de México', 'Historia', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'angelicamontes2017.jpg'),
(385, 0, 'Raúl', 'García Fernández', 'raul.garcia2017@ensenapormexico.org', 'ing.forestal.raulgf@outlook.com', '2017', '5628285977', 2, '|2|', 'Instituto Tecnológico Superior de Zongolica', 'Forestal', 0, '', '', 0, NULL, 'Proyecto Nuevo Maestro', 'Tutor', 'Guadalupe, Nuevo León', 19, 'Docente de nivel media superior de Matemáticas, Química, documentación de comercio exterior, inglés, gestor y administrador de proyectos, motivación personal y desarrollo de habilidades socioemocionales en estudiantes. Formación en el Instituto de Verano del programa Enseña por México con una duración de 250 horas', 'Ingles B2', NULL, '../media/pdf/cv_140_242515112605_Curriculum RaÃºl GarcÃ­a FernÃ¡ndez.pdf', '-', '', 'raulgarcia2017.jpg'),
(386, 0, 'Ricardo', 'Manzarron Cabrera', 'ricardo.manzarron2017@ensenapormexico.org', 'manzarronricardo@gmail.com', '2017', '5588030678', 2, '-', 'BUAP', 'Derecho', 1, 'Especialidad en Derechos Humanos', 'UNAM', 1, NULL, 'Radix', 'Interventor educativo en contextos de emergencia', '-', 33, 'Género y Derechos Humanos\nDerechos de NNA y jóvenes', 'Español, inglés', NULL, NULL, '-', '', 'ricardomanzarron2017.jpg'),
(387, 0, 'Rosa Elena', 'Márquez Almanza', 'elena.marquez2017@ensenapormexico.org', 'elena.marquezalmanza@hotmail.com', '2017', '844 344 1125', NULL, '|2|', 'Universidad Autónoma de Coahuila', 'Ciencias de la Educación', NULL, NULL, NULL, NULL, NULL, 'Conalep Nuevo León', 'Docente ', 'Guadalupe, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'elenamarquez2017.jpg'),
(388, 0, 'Samantha Itzel', 'Martínez Narcizo', 'samantha.martinez2017@ensenapormexico.org', 'samanthamarnar501@gmail.com', '2017', '55 6634 1861', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo ', 'La Paz, Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'samanthamartinez2017.jpg'),
(389, 0, 'Sandra Guadalupe', 'Rodríguez Meraz', 'sandra.rodriguez2017@ensenapormexico.org', 'sandrardz4@gmail.com', '2017', '6647569600', 1, '|2|', 'Escuela Normal Fronteriza de Tijuana', 'Educación Secundaria especialidad en Español', 0, '', '', 1, NULL, 'Aldeas Infantiles SOS', 'Pedagoga ', 'Tijuana ', 2, '*Experiencia en el trabajo de campo con NNA y familias en situación de movilidad. \n', 'Español', NULL, '../media/pdf/cv_171_242515112605_2021-CV-SGRM (1).pdf', '-', '', 'sandrarodriguez2017.jpg'),
(390, 0, 'Sergio Alahudy', 'López Hernández', 'alahudy.lopez2017@ensenapormexico.org', 'alahudy.ima@gmail.com', '2017', '222 563 6749', NULL, '-', 'ITESM', 'Ingeniería en Mecánica Y Administración', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'alahudylopez2017.jpg'),
(391, 0, 'Sergio Emmanuel', 'Carrillo Saucedo', 'sergio.carrillo2017@ensenapormexico.org', 'sergio-carrillo@live.com.mx', '2017', '656 276 2719', NULL, '|2|', 'Universidad Autónoma de Ciudad Juárez', 'Aeronáutica', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Pesquería, Nuevo León', 19, NULL, '', NULL, NULL, '-', '', 'sergiocarrillo2017.jpg'),
(392, 0, 'Stephany', 'Peniche Aké', 'stephany.peniche2017@ensenapormexico.org', 'p_stephany_7@hotmail.com', '2017', '999 144 2891', NULL, '|2|', 'Instituto Tecnológico de Conkal', 'Biología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje', 'Mérida, Yucatán', 31, NULL, '', NULL, NULL, '-', '', 'stephanypeniche2017.jpg'),
(393, 0, 'Tania Monserrat', 'Bañuelos Murillo', 'tania.banuelos2017@ensenapormexico.org', 'taniam.banuelosm@gmail.com', '2017', '311 108 0577', NULL, '|2|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje', 'Valladolid, Yucatán', 31, NULL, '', NULL, '../media/pdf/cv_168_242515112605_CV_Tania BaÃ±uelos Murillo.pdf', '-', '|https://medium.com/enero-2018/kids-education-revolution-2018-8ee9bfac5fb|https://medium.com/inve-2018/as%C3%AD-fueron-pasando-las-cosas-ad756cc46974|', 'taniabanuelos2017.JPG'),
(394, 0, 'Thalia', 'Ticante Hernández', 'thalia.ticante2017@ensenapormexico.org', 'thaliaticante@gmail.com', '2017', '55 3366 6203', NULL, '-', 'UNAM', 'Desarrollo y Gestión Interculturales', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'thaliaticante2017.jpg'),
(395, 0, 'Alejandra', 'Montes Sandoval', 'alejandra.montes2018@ensenapormexico.org', 'alejandra_ms9@hotmail.com', '2018', '7121138035', NULL, '|2|', 'Universidad Autónoma del Estado de Hidalgo', 'Biologia', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'alejandramontes2018.jpg'),
(396, 0, 'Alfredo', 'Villar Chagoya', 'alfredo.villar2018@ensenapormexico.org', 'halmstad051@gmail.com', '2018', '5574897851', NULL, '|2|', 'UNAM', 'Psicologia', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, NULL, '', NULL, '../media/pdf/cv_29_242515112605_CV.pdf', '-', '', 'alfredovillar2018.jpg'),
(397, 0, 'Ana Sofía', 'Olguín Díaz', 'ana.sofia2018@ensenapormexico.org', 'anasofia.od7@gmail.com', '2018', '6141610838', NULL, '|2|', 'ITESM', 'Arquitectura', NULL, NULL, NULL, NULL, NULL, 'Universidad Carolina', 'Coordinadora de Distrito Carolina', 'Saltillo, Coahuila', 8, NULL, '', NULL, '../media/pdf/cv_37_242515112605_Curriculum Ana SofÃ­a OlguÃ­n DÃ­az 2020.pdf', '-', '', 'anasofia2018.jpg'),
(398, 0, 'Angélica', 'Pinto Márquez', 'angelica.pinto2018@ensenapormexico.org', 'pintom.angelica@gmail.com', '2018', '2221170477', 1, '-', 'BUAP', 'Psicología', 0, '', '', 0, NULL, '-Enseña por México ', '-Alumni', '-', 33, 'Psicología, educación, organización, talleres, capacitación. ', 'Inglés intermedio ', NULL, NULL, '-', '', 'angelicapinto2018.jpg'),
(399, 0, 'Antonio Apolonio', 'Candelario Jiménez', 'antonio.candelario2018@ensenapormexico.org', 'snyader@gmail.com', '2018', '33 2242 8944', NULL, '|2|', 'Universidad de Guadalajara', 'Sistemas de información', NULL, NULL, NULL, NULL, NULL, 'Radix Education', 'Coordinador de TI', 'Guadalajara, Jalisco', 14, NULL, '', NULL, '../media/pdf/cv_105_242515112605_CV_Antonio Candelario.pdf', '-', '|https://medium.com/alumni-exm/la-mejor-clase-a-distancia-2b8ef914eb65|', 'antoniocandelario2018.jpg'),
(400, 0, 'Arantxa Estefanía', 'Ortega Pérez', 'arantxa.ortega2018@ensenapormexico.org', 'arantxa_orpe@hotmail.com', '2018', '2224554335', NULL, '-', 'Universidad Anahuac de Puebla, S.C.', 'Derecho', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'arantxaortega2018.jpg'),
(401, 0, 'Aurora', 'Nava Vargas', 'aurora.nava2018@ensenapormexico.org', 'auroranavava@gmail.com', '2018', '5518459156', NULL, '-', '', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'auroranava2018.jpg'),
(402, 0, 'Diana Patricia', 'López Martínez', 'diana.lopez2018@ensenapormexico.org', 'lic.lie.diana@hotmail.com.pai', '2018', '2381473878', NULL, '-', 'UPN', 'Intervención Educativa', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'dianalopez2018.jpg'),
(403, 0, 'Diego Daniel', 'López Cuevas', 'diego.lopez2018@ensenapormexico.org', 'diego.danlopez21@gmail.com', '2018', '5514946067', NULL, '-', 'Universidad del Claustro de Sor Juana, A.C.', 'Comunicación Audiovisual', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'diegolopez2018.jpg'),
(404, 0, 'Eleonor', 'Gómez Rebolledo', 'eleonor.gomez2018@ensenapormexico.org', 'eleonor.gomez.rebolledo@gmail.com.pai', '2018', '4424231018', NULL, '-', '', 'Tecnología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'eleonorgomez2018.jpg'),
(405, 0, 'Fabiola', 'García Mendoza', 'fabiola.garcia2018@ensenapormexico.org', 'fabis211994@hotmail.com.lego', '2018', '5528235082', NULL, '|2|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'fabiolagarcia2018.jpg'),
(406, 0, 'Guillermo', 'García Ángeles', 'guillermo.garcia2018@ensenapormexico.org', 'oshody@hotmail.com', '2018', '7751630777', NULL, '-', 'Universidad Veracruzana', 'Gestión Intercultural para el Desarrollo', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, '../media/pdf/cv_41_242515112605_C.V. Guillermo_GarcÃ­a.pdf', '-', '', 'guillermogarcia2018.jpeg'),
(407, 0, 'Hugo Cesar', 'Montaño Mena', 'hugo.montano2018@ensenapormexico.org', 'hcm140292@gmail.com', '2018', '5513220070', NULL, '|2|', 'UAM', 'Ingeniería en alimentos', NULL, NULL, NULL, NULL, NULL, 'Radix Education', 'Coordinador de proyectos', 'Ciudad De México', 7, NULL, '', NULL, NULL, 'S', '|https://medium.com/historias-pem/aulas-sin-frontera-b8777cf1e45d|https://medium.com/enero-2018/proyecto-nuevo-maestro-escuela-t%C3%A9cnica-roberto-rocca-87462131f572|', 'hugomontano2018.jpg'),
(408, 0, 'Iram Alexis', 'Arreguín Díaz', 'iram.arreguin2018@ensenapormexico.org', 'arreguin167@gmail.com', '2018', '5585319228', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/bit%C3%A1cora-semana-1-8b5719419f59|', 'iramarreguin2018.jpg'),
(409, 0, 'Isabel', 'Cuaxiloa Rodríguez', 'isabel.cuaxiloa2018@ensenapormexico.org', 'isabel.cuaxiloarz@udlap.mx', '2018', '2227066174', NULL, '-', 'Universidad de Las Americas Puebla', 'Psicología Clínica y Psicología Organizacional', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'isabelcuaxiloa2018.jpg'),
(410, 0, 'Jorge Antonio', 'Estévez Alarcón', 'jorge.estevez2018@ensenapormexico.org', 'jorgeantonioestevezalarcon@gmail.com', '2018', '2227155553', 1, '-', 'Universidad Iberoamericana Puebla', 'Psicología', 0, '', '', 0, NULL, '-', '-', '-', 33, 'Manejo e intervención con grupos. ', 'Español', NULL, '../media/pdf/cv_36_242515112605_CV JAEA.pdf', '-', '', 'jorgeestevez2018.jpg'),
(411, 0, 'Lizbeth ', 'Ramírez Pérez', 'lizbeth.ramirez2018@ensenapormexico.org', 'vanyliz_caporal@hotmail.com', '2018', '2464942485', NULL, '-', 'IPN', 'Ingeniera Petrolera', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'lizbethramirez2018.jpg'),
(412, 0, 'María José', 'Mendoza Napoles', 'maria.mendoza2018@ensenapormexico.org', 'majomendoza34@hotmail.com', '2018', '5523449851', 2, '-', 'UNAM ', 'Psicología', 0, '', '', 1, NULL, '-Enseña por México ', '-PEM', '-', 33, '?	Trabajo en equipo\n?	Trabajo colaborativo\n?	Evaluación de aprendizajes mediante rúbricas.\n?	Elaboración de contenidos y recursos digitales.\n?	Diseño de programas de estudios/asignatura\n?	Uso de  TIC´S\n?	Asesorías semipresenciales y en línea.\n', 'Español', NULL, '../media/pdf/cv_160_242515112605_CV MarÃ­a JosÃ© Mendoza 2.pdf', '-', '', 'mariamendoza2018.jpg'),
(413, 0, 'Mariana', 'Fuentes Zarco', 'mariana.fuentes2018@ensenapormexico.org', 'mariana669@hotmail.com', '2018', '5539159529', NULL, '-', 'UAM', 'Biología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'marianafuentes2018.jpg'),
(414, 0, 'Mariana', 'Gerardo Antonio', 'mariana.gerardo2018@ensenapormexico.org', 'educacion.comunitaria2012@gmail.com', '2018', '2384018088', NULL, '|2|', 'Universidad Iberoamericana Puebla', 'Procesos Educativos', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Puebla', 21, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/recibiendo-a-una-alumna-del-mit-en-la-prepa-morelos-af1dfbc6d239|', 'marianagerardo2018.jpg'),
(415, 0, 'Marisol', 'Rodríguez Zacarías', 'marisol.rodriguez2018@ensenapormexico.org', 'solparakata@gmail.com', '2018', '5959572177', NULL, '-', 'Universidad Autonoma Chapingo', 'Agronomia', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'marisolrodriguez2018.jpg'),
(416, 0, 'Marissa', 'Rodríguez Zacarías', 'marissa.rodriguez2018@ensenapormexico.org', 'missi_roo@hotmail.com', '2018', '4341556050', NULL, '-', 'Universidad Autonoma Chapingo', 'Ingeniero Agrónomo', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'marissarodriguez2018.jpg'),
(417, 0, 'Mauricio', 'Olvera Benítez', 'mauricio.olvera2018@ensenapormexico.org', 'mauricio.olben@outlook.com', '2018', '5514557200', NULL, '|2|', 'Universidad Autonoma de La Ciudad de México', 'Comunicación y Cultura', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, NULL, '', NULL, '../media/pdf/cv_156_242515112605_MAURICIO.OLVERA_CV-MAYO-2021.pdf', '-', '', 'mauricioolvera2018.jpg'),
(418, 0, 'Michelle', 'Castillo Sanchez', 'michelle.castillo2018@ensenapormexico.org', 'mics.bio@gmail.com', '2018', '6122572940', NULL, '|2|', '', 'Biología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, NULL, '', NULL, '../media/pdf/cv_52_242515112605_CV-Michelle Castillo SÃ¡nchez (3).pdf', '-', '', 'michellecastillo2018.jpg'),
(419, 0, 'Noemi Raquel', 'Molina Mares', 'noemi.molina2018@ensenapormexico.org', 'raquel.molmar@hotmail.com', '2018', '5588043993', NULL, '-', 'UAM', 'Lingüística', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'noemimolina2018.jpg'),
(420, 0, 'Oswaldo', 'Alvizar Bañuelos', 'oswaldo.alvizar2018@ensenapormexico.org', 'oswaldoalvizar@gmail.com', '2018', '5546363317', NULL, '|1|', '', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'GlobalGiving', 'Mexico and Latin America Partnerships Consultant', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/notas-a-la-pedagog%C3%ADa-de-la-esperanza-o-sobre-un-viaje-de-monterrey-a-sao-paulo-y-el-camino-de-4c5edbe584eb|', 'oswaldoalvizar2018.jpg'),
(421, 0, 'Pamela Selene', 'Mondragón Guzmán', 'pamela.mondragon2018@ensenapormexico.org', 'selene.monguz@gmail.com', '2018', '5531891169', 2, '|2|', 'UAM', 'Sociología', 1, 'Maestría en Liderazgo y Educación', 'Enseña por México', 0, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, 'Manejo de grupos infantiles y adultos. \nEscucha activa, comunicación asertiva y proactividad\n\nDiplomado en Mediación Pedagógica\nLicenciatura en Negocios Internacionales', 'Francés A2\nInglés B2', NULL, '../media/pdf/cv_155_242515112605_CV Pamela MondragÃ³n.pdf', '-', '|https://medium.com/historias-pem/mi-experiencia-pem-174c89ba6ab9|', 'pamelamondragon2018.jpg'),
(422, 0, 'Raúl Alberto', 'Carlín Luis', 'raul.carlin2018@ensenapormexico.org', 'raulvama8@hotmail.com', '2018', '2292508376', NULL, '|2|', '', 'Derecho', NULL, NULL, NULL, NULL, NULL, 'Proyecto Nuevo Maestro', 'Coordinador de Proyecto Nuevo Maestro', 'Veracruz, Veracruz', 30, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/la-realidad-es-oscura-6dcf64f0f964|https://medium.com/enero-2018/la-mediaci%C3%B3n-como-modus-vivendi-e2af7161efa0|https://medium.com/enero-2018/somos-seres-que-olvidan-32e493c1e828|', 'raulcarlin2018.jpg'),
(423, 0, 'Sandrina', 'Ramírez García', 'sandrina.ramirez2018@ensenapormexico.org', 'sandrina.rg11@gmail.com', '2018', '8117402463', NULL, '|2|', 'Universidad Autónoma de Nuevo León', 'Nutricion', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, NULL, '', NULL, NULL, '-', '', 'sandrinaramirez2018.jpg'),
(424, 0, 'Sayana Nichdali', 'Bautista Solano', 'sayana.bautista2018@ensenapormexico.org', 'nichdali_bsbb@hotmail.com', '2018', '5534138705', 1, '|2|', 'Universidad Autónoma del Estado de México', 'Derecho', 0, '', '', 0, NULL, 'ExM', 'PEM Alumni', 'Estado de México', 15, 'Mentora en el Programa Mentores de Enseña por México 2021\nHe podido facilitar un curso de Alfabetización digital a jóvenes de 12 a 29 años\nTrabajo en equipo, soy una persona empática, organizada, asertiva, responsable', 'Español\nInglés Básico ', NULL, '../media/pdf/cv_20_242515112605_CV D (1).pdf', '-', '|https://medium.com/historias-pem/trabajandojuntoamipem-e4e5c760faf3|', 'sayanabautista2018.jpeg'),
(425, 0, 'Tania', 'Ríos Cruz', 'tania.rios2018@ensenapormexico.org', 'tania_naunet@hotmail.com', '2018', '6122326756', NULL, '|2|', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/mi-estancia-en-baja-california-sur-4c7398eb765d|', 'taniarios2018.jpg'),
(426, 0, 'Tania María', 'Vidaña Rivera', 'tania.vidana2018@ensenapormexico.org', 'taniavidriv@gmail.com', '2018', '2281440189', NULL, '|2|', 'Universidad Veracruzana', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Estado de México', 15, NULL, '', NULL, '../media/pdf/cv_146_242515112605_Tania CV_bolsa de trabajo ExM.pdf', '-', '', 'taniavidana2018.jpg'),
(427, 0, 'Verónica', 'Martínez De Dios', 'veronica.martinez2018@ensenapormexico.org', 'vero_martinezd@hotmail.com', '2018', '9933019464', 1, '|2|', 'Universidad Juarez Autonoma de Tabasco', 'Sociología', 1, 'Maestría', 'Enseña por México', 0, NULL, 'ExM', 'PEM año adicional', 'Baja California Sur', 3, 'Gestión de recursos\nPlaneación y ejecución de clases\nDominio de herramientas digitales y clases a distancia', 'Español', NULL, '../media/pdf/cv_104_242515112605_CURRICULUM_VEROMARTINEZ (1) (1).pdf', '-', '|https://medium.com/baja-california-sur/una-experiencia-%C3%BAnica-y-enriquecedora-el-planetario-m%C3%B3vil-fc546c139363|https://medium.com/enero-2018/todos-los-viajes-tienen-sus-ventajas-mi-intercambio-regional-850dbb5d19f9|', 'veronicamartinez2018.jpg'),
(428, 0, 'Victoria', 'Hernández Hernández', 'victoria.hernandez2018@ensenapormexico.org', 'viky06hh@gmail.com', '2018', '7461136809', 1, '|2|', 'Universidad Veracruzana - Universidad Veracruzana Intercultural', 'Licenciatura en Gestión Intercultural para el Desarrollo', 1, 'Maestría en Liderazgo y Educación ', 'Enseña por México', 0, NULL, 'ExM', 'Alumni', 'Baja California Sur', 3, 'Trabajo en equipo, trabajo de campo en comunidades, trabajo en comunidades educativas, líder en proyectos culturales y educativos, diseño, implementación y facilitación de actividades educativas en niños con rezago educativo, mediador educativo, seguimiento a actividades y habilidad de uso de programas básicos de la paquetería de Microsoft.  ', 'Náhuatl: nivel intermedio (Lectura: 50%, escritura: 50%, hablante: 50%)', NULL, '../media/pdf/cv_206_242515112605_C.V Victoria HernÃ¡ndez HernÃ¡ndez.pdf', '-', '|https://medium.com/historias-pem/esas-nuevas-personas-que-somos-b4daa341a6a5|', 'victoriahernandez2018.jpg'),
(429, 0, 'Victoria Amparo', 'Hernández González', 'victoria.amparo2018@ensenapormexico.org', 'victoria.ahernandezglz@gmail.com', '2018', '8714039813', 2, '-', 'Instituto Tecnológico de Monterrey', 'Ingeniería mecatrónica', 0, '', '', 1, NULL, 'Enseña por México', 'Alumni Activo', '-', 33, 'Resolución de problemas, comunicación asertiva, Conocimiento sobre HSE.', 'Inglés intermedio', NULL, '../media/pdf/cv_154_242515112605_cv_VictoriaHernandez_facilitador.pdf', '-', '', 'victoriaamparo2018.jpg'),
(430, 0, 'Viridiana', 'Vázquez Velázquez', 'viridiana.velazquez2018@ensenapormexico.org', 'vivave93@gmail.com', '2018', '5533244901', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'viridianavelazquez2018.jpg'),
(431, 0, 'Yair Eliel', 'Vázquez Cruz', 'yair.vazquez2018@ensenapormexico.org', 'yair.9527@gmail.com', '2018', '2287534918', NULL, '|2|', 'Benemerita Escuela Normal Veracruzana Enrique C. Rebsamen', 'Educación Física', NULL, NULL, NULL, NULL, NULL, 'A Favor Del Niño', 'Docente', 'Ciudad de México ', 7, NULL, '', NULL, NULL, '-', '', 'yairvazquez2018.jpg'),
(432, 0, 'Ana Lilia', 'Obregón Ferreira', 'ana.obregon2018pi@ensenapormexico.org', 'anaobregon320@gmail.com', '2018pi', '5539167984 ', 2, '-', 'UNAM', 'Trabajo Social', 0, '', '', 1, NULL, '-Secretaría de Educación Pública', '-Jefa de departamento ', '-', 33, 'Experiencia en primera infancia, he laborado con niños de 1 a 3 años con los que he realizado actividades lúdico educativas. \nHe brindado talleres a padres de familia y agentes educativos en temas de juego, emociones, y crianza amorosa.\nCoordiné 3er el congreso internacional de primera infancia en la SEP y junto con UNICEF y OEI, llevado a cabo el pasado noviembre 2020.\n', 'Inglés básico ', NULL, '../media/pdf/cv_113_242515112605_Curriculum 2021.pdf', '-', '', 'anaobregon2018pi.jpg'),
(433, 0, 'Andrea Lorena', 'Ramos Ramírez', 'andrea.ramos2018pi@ensenapormexico.org', 'dyan.170893@gmail.com', '2018pi', '5560190685', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'andrearamos2018pi.jpg'),
(434, 0, 'María de los Angeles', 'Valencia Pichardo', 'angeles.valencia2018pi@ensenapormexico.org', 'yensitaes_janis@hotmail.com', '2018pi', '7291633832', NULL, '|2|', 'Universidad Autonoma del Estado de Mexico', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/voluntariado-caravana-migrante-ac67a425d350|', 'angelesvalencia2018pi.jpg'),
(435, 0, 'Arandi', 'Hernández Jimenez', 'arandi.hernandez2018pi@ensenapormexico.org', 'arandihj@gmail.com', '2018pi', '5552527312', NULL, '|2|', 'UAM', 'Psicologia', NULL, NULL, NULL, NULL, NULL, 'Radix Education', 'Desarrolladora de contenidos instruccionales para e-learning', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/pr%C3%A1cticas-pedag%C3%B3gicas-66ba687dcaf5|', 'arandihernandez2018pi.jpg'),
(436, 0, ' Beatriz', 'García ', 'beatriz.garcia2018pi@ensenapormexico.org', 'pipola_663@hotmail.com', '2018pi', '5535756000', 1, '|2|', 'Alliant international university', 'Psicología', 0, '', '', 0, NULL, 'ExM', 'PEM año adicional', 'Ciudad de México', 7, 'Psicologia comunitaria\nPicologia clinica\nPsicologia laboral\nPsicologia educativa', '×', NULL, '../media/pdf/cv_200_242515112605_cv. Beatriz Garcia.2021.docx (1).pdf', '-', '', 'beatrizgarcia2018pi.jpg'),
(437, 0, 'Blanca Elena', 'Leiva López', 'blanca.leiva2018pi@ensenapormexico.org', 'blankaantropoleiva@gmail.com', '2018pi', '5536580280 / 5557930542', NULL, '|2|', 'UAM', 'Antropología Social', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje de Primera Infancia', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/mi-experiencia-como-pem-en-la-caravana-migrante-4466a799da43|https://medium.com/enero-2018/mi-pasant%C3%ADa-en-confafe-en-la-era-digital-790a521d4038|https://medium.com/@exm/blanca-leiva-pem-2018-primera-infancia-acbf870ada5d|', 'blancaleiva2018pi.jpg'),
(438, 0, 'Elsa Celina', 'Alcántara Calderón', 'celina.alcantara2018pi@ensenapormexico.org', 'elsacelinaalcantara@hotmail.com', '2018pi', '5512622118 / 5556070512', NULL, '-', 'UAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'celinaalcantara2018pi.jpg'),
(439, 0, 'Christian Daniel', 'Iñiguez Martinez', 'daniel.iniguez2018pi@ensenapormexico.org', 'dnpsic.udg@hotmail.com', '2018pi', '5549045108', NULL, '-', 'Universidad de Guadalajara', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/daniel-i%C3%B1iguez-pem-2018-primera-infancia-15affc4de80|', 'danieliniguez2018pi.jpg'),
(440, 0, 'Elsa', 'Romero García', 'elsa.romero2018pi@ensenapormexico.org', 'marpuebla_8@hotmail.com', '2018pi', '2211961419', NULL, '|2|', 'Escuela de Comunicacion y Ciencias Humanas', 'Comunicación', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Chihuahua', 6, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/elsa-romero-pem-2018-primera-infancia-de97826e709f|', 'elsaromero2018pi.jpg'),
(441, 0, 'Blanca Estela', 'Negrete Gonzalez', 'estela.negrete2018pi@ensenapormexico.org', 'estela_ols5@hotmail.com', '2018pi', '2221506674', NULL, '-', 'BUAP', 'Psicologia General', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'estelanegrete2018pi.jpg'),
(442, 0, 'Carmen Estephanie', 'Bastida Chávez', 'estephanie.bastida2018pi@ensenapormexico.org', 'estefy_17104@hotmail.com', '2018pi', '5549305024', NULL, '-', '', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'estephaniebastida2018pi.jpg'),
(443, 0, 'Gabriela', 'Aguirre Aguirre', 'gabriela.aguirre2018pi@ensenapormexico.org', 'gabrirrela@hotmail.com', '2018pi', '5564669632', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'gabrielaaguirre2018pi.jpg'),
(444, 0, 'Gabriela', 'Guzmán Reyes', 'gabriela.guzman2018pi@ensenapormexico.org', 'giovana_21enero@hotmail.com', '2018pi', '5549426354', NULL, '|2|', 'UNAM', 'Psicologia', NULL, NULL, NULL, NULL, NULL, 'Centro Comunitario de Atención a la Primera Infancia (CCAPI) Programa de Educación Inicial SEP', 'Agente educativo comunitario ', 'Durango ', 10, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/gabriela-guzman-pem-2018-primera-infancia-ba2b862de19|', 'gabrielaguzman2018pi.jpg'),
(445, 0, 'Gabriela', 'Herrera Mena', 'gabriela.herrera2018pi@ensenapormexico.org', 'gabyheme19@gmail.com', '2018pi', '5530748429', NULL, '-', 'IPN', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/ahora-con-los-pies-15a1c14c41b2|', 'gabrielaherrera2018pi.jpg'),
(446, 0, 'Rosa Gabriela', 'Martínez Villareal', 'gabriela.martinez2018pi@ensenapormexico.org', 'gabee.gm7@gmail.com', '2018pi', '5585349812', NULL, '|2|', 'Escuela Nacional para Maestras de Jardines de Niños', 'Educación Preescolar', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'gabrielamartinez2018pi.jpg'),
(447, 0, 'Gabriela', 'Pérez Terrazas', 'gabriela.perez2018pi@ensenapormexico.org', 'gabyp61095@gmail.com', '2018pi', '6141882497', NULL, '|2|', 'Benemerita y Centenaria Escuela Normal del Estado Profesor Luis Urias Belderrain', 'Educación Preescolar', NULL, NULL, NULL, NULL, NULL, 'A Favor del Niño', 'Docente de preescolar', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '', 'gabrielaperez2018pi.jpg'),
(448, 0, 'Guadalupe', 'Juárez Bernal', 'guadalupe.juarez2018pi@ensenapormexico.org', 'lupjuarezb@gmail.com', '2018pi', '5511348350', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/guadalupe-ju%C3%A1rez-pem-2018-primera-infancia-ce9707059bc1|', 'guadalupejuarez2018pi.jpg'),
(449, 0, 'Heller Alfredo', 'Luna Negrete', 'heller.luna2018pi@ensenapormexico.org', 'hllr16@gmail.com', '2018pi', '5520764264', NULL, '-', 'Universidad de La Comunicacion, S.C.', 'Comunicación Visual', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'hellerluna2018pi.jpg'),
(450, 0, 'Ingrid Vianney', 'Juárez Castillo', 'ingrid.juarez2018pi@ensenapormexico.org', 'ingridjc04@hotmail.com', '2018pi', '5515031908 / 5517227878', NULL, '|3|', 'Universidad del Valle de Mexico', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'Secretaria de Educación Pública ', 'Jefe de departamento', 'Ciudad de México ', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/aulas-sin-frontera-en-san-antonio-texas-5db093461c4a|', 'ingridjuarez2018pi.jpg'),
(451, 0, 'Alin Isabel', 'Montejo Cruz', 'isabel.montejo2018pi@ensenapormexico.org', 'izzy.montejo@gmail.com', '2018pi', '5522502870', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_252_242515112605_Montejo_Isabel_cv (1) (1).pdf', '-', '', 'isabelmontejo2018pi.jpg'),
(452, 0, 'Itzel', 'Velázquez Hernández', 'itzel.hernandez2018pi@ensenapormexico.org', 'sevelazquezhernandez@gmail.com', '2018pi', '5568951627', NULL, '-', 'IPN', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'itzelhernandez2018pi.jpg'),
(453, 0, 'Jazmin Andrea', 'Franco Valderrama', 'jazmin.franco2018pi@ensenapormexico.org', 'psicojazmin.f@gmail.com', '2018pi', '55 40979040', NULL, '-', '', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'jazminfranco2018pi.jpg'),
(454, 0, 'José de Jesús', 'Marceliano Hernández', 'jesus.marceliano2018pi@ensenapormexico.org', 'jesusmahez@gmail.com', '2018pi', '5520516458', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'jesusmarceliano2018pi.jpg'),
(455, 0, 'Julio César', 'Benítez Galicia', 'julio.benitez2018pi@ensenapormexico.org', 'juliopuntomx@gmail.com', '2018pi', '7771102781', NULL, '-', 'Universidad Autonoma del Estado de Morelos', 'Comunicación Humana', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/julio-cesar-benitez-pem-2018-primera-infancia-7703def8a1d5|', 'juliobenitez2018pi.jpg'),
(456, 0, 'Ana Karen', 'Hernández Ornelas', 'karen.hernandez2018pi@ensenapormexico.org', 'ana.kho17@gmail.com', '2018pi', '5539404076', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Nuevo León / Coahuila', 19, NULL, '', NULL, NULL, '-', '', 'karenhernandez2018pi.jpg'),
(457, 0, 'Karina Fernanda', 'Corona Hernández', 'karina.corona2018pi@ensenapormexico.org', 'karina_clio@hotmail.com', '2018pi', '5539205806', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/karina-corona-pem-2018-primera-infancia-cef9b8bf72bb|', 'karinacorona2018pi.jpg'),
(458, 0, 'Lisbeth', 'Olvera Santiago', 'lisbeth.olvera2018pi@ensenapormexico.org', 'olvera_lis@hotmail.com', '2018pi', '5562243419', NULL, '-', 'UAM', 'Sociologia', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'lisbetholvera2018pi.jpg'),
(459, 0, 'Maritza Lorena', 'Vargas Ramírez', 'lorena.vargas2018pi@ensenapormexico.org', 'mlorena.vargasr@gmail.com', '2018pi', '2223326744', NULL, '-', 'BUAP', 'Comunicación', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'lorenavargas2018pi.jpg'),
(460, 0, 'Mariana', 'García Hernández', 'mariana.garcia2018pi@ensenapormexico.org', 'mariana_gh@live.com.mx', '2018pi', '55 23 35 20 23', NULL, '-', 'UAM', 'Nutrición Humana', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'marianagarcia2018pi.jpg'),
(461, 0, 'Mariel Ixtzayana', 'López Ramírez', 'mariel.lopez2018pi@ensenapormexico.org', 'ixtza22@gmail.com', '2018pi', '5584266398', NULL, '|2|', 'UAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_78_242515112605_C.V. LÃ³pez RamÃ­rez Mariel Ixtzayana.pdf', '-', '|https://medium.com/enero-2018/una-biblioteca-para-mi-estancia-infantil-c54fc2fdb766|', 'mariellopez2018pi.jpg'),
(462, 0, 'Mary Jose', 'Camacho Velázquez', 'maryjose.camacho2018pi@ensenapormexico.org', 'camachomarjos@gmail.com', '2018pi', '5561901582', NULL, '-', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/mary-jose-camacho-pem-2018-primera-infancia-915ee62a60b1|', 'maryjosecamacho2018pi.jpg'),
(463, 0, 'Miriam Berenice', 'Pachuca Entzin', 'miriam.entzin2018pi@ensenapormexico.org', 'alalachix@gmail.com', '2018pi', '5538865374', NULL, '-', 'UAM', 'Sociología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'miriamentzin2018pi.jpg'),
(464, 0, 'Monserrat', 'García López', 'monserrat.garcia2018pi@ensenapormexico.org', 'skape_dg@hotmail.com', '2018pi', '5513626356', NULL, '|2|', 'UAM', 'Diseño Industrial', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/enero-2018/pasantia-en-conafe-c03f15fb7f04|', 'monserratgarcia2018pi.jpg'),
(465, 0, 'Nathaly', 'Juárez Andrade', 'nathaly.juarez2018pi@ensenapormexico.org', 'nathaz1408@gmail.com', '2018pi', '52 1 222 666 7944', NULL, '-', 'Colegio Minimalista de Ciencias Penales', 'Estudios Crimino-Victimales', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/di%C3%A1logos-2019-pem-en-transformaci%C3%B3n-71e13e7937e|', 'nathalyjuarez2018pi.jpg'),
(466, 0, 'Osiris Penélope', 'Robledo Tabares', 'osiris.robledo2018pi@ensenapormexico.org', 'orobledo.tab@gmail.com', '2018pi', '5540103119', NULL, '|2|', 'UAM', 'Diseño Industrial', NULL, NULL, NULL, NULL, NULL, 'Radix Education', 'Diseñadora instruccional', 'Ciudad de México', 7, NULL, '', NULL, NULL, '-', '|https://medium.com/historias-pem/virando-un-poco-el-enfoque-cdbe3d5f377f|', 'osirisrobledo2018pi.jpg'),
(467, 0, 'Itxel Paola', 'Cortés Vargas', 'paola.cortes2018pi@ensenapormexico.org', 'ipaolacortesv@gmail.com', '2018pi', '5516568443', NULL, '|2|', 'UNAM', 'Psicología', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Monterrey, Nuevo León', 19, NULL, '', NULL, NULL, '-', '|https://medium.com/@exm/el-crecimiento-en-m%C3%AD-que-no-esperaba-5faffec9f9af|https://medium.com/exm-nuevo-le%C3%B3n/la-grandeza-de-los-peque%C3%B1os-actos-83e4ac2cf4b5|', 'paolacortes2018pi.jpg'),
(468, 0, 'Paulina Itzel', 'Zapata Ruiz', 'paulina.zapata2018pi@ensenapormexico.org', 'pizr4693@hotmail.com', '2018pi', '5536556062', NULL, '-', 'Universidad del Valle de Mexico', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'paulinazapata2018pi.jpg'),
(469, 0, 'María del Pilar', 'Vélez Jiménez', 'pilar.velez2018pi@ensenapormexico.org', 'pilar_vj@hotmail.com', '2018pi', '2227062401 / 2227556273', NULL, '|2|', 'BUAP', 'Comunicación', NULL, NULL, NULL, NULL, NULL, 'Enseña por México', 'Coordinadora de Liderazgo y Aprendizaje de Primera Infancia', 'Ciudad de México', 7, NULL, '', NULL, '../media/pdf/cv_16_242515112605_CV_MARIA DEL PILAR VEÌLEZ JIMEÌNEZ.pdf', '-', '|https://medium.com/historias-pem/the-lego-idea-conference-ffe2257079|https://medium.com/historias-pem/mi-experiencia-como-profesional-de-ense%C3%B1a-por-m%C3%A9xico-en-primera-infancia-7a08368db451|', 'pilarvelez2018pi.jpg'),
(470, 0, 'Rebeca', 'Barrios Salmerón', 'rebeca.barrios2018pi@ensenapormexico.org', 'becky_feb12@hotmail.com', '2018pi', '7442681201', NULL, '|2|', 'Universidad Pedagogica Nacional 122 Acapulco', 'Intervención Educativa', NULL, NULL, NULL, NULL, NULL, 'ExM', 'PEM año adicional', 'Chihuahua, Parral y Cuauhtémoc, Chihuahua', 6, NULL, '', NULL, '../media/pdf/cv_30_242515112605_CV REBECA BARRIOS.pdf', '-', '', 'rebecabarrios2018pi.jpg'),
(471, 0, 'Sandy', 'López Miranda', 'sandy.lopez2018pi@ensenapormexico.org', 'sandy.lopez.miranda@gmail.com', '2018pi', '5548445959', NULL, '-', 'UNAM', 'Cirujano dentista', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'sandylopez2018pi.jpg'),
(472, 0, 'Stefany', 'Lluvias Victoriano', 'stefany.lluvias2018pi@ensenapormexico.org', 'slluvias16@gmail.com', '2018pi', '5579222380', 1, '-', 'UNAM', 'Psicología', 1, 'Maestría', 'Enseña por México', 0, NULL, '-', '-', '-', 33, 'Desarrollo infantil\nGestión de proyectos\nIntervención temprana\nInnovación educativa\nLiderazgo', 'Ingles - 50%', NULL, '../media/pdf/cv_238_242515112605_Stefany_Lluvias_Victoriano_CV (1).pdf', '-', '|https://medium.com/enero-2018/pasant%C3%ADa-en-conafe-162f4a1c678d|', 'stefanylluvias2018pi.jpg'),
(473, 0, 'Susana Xhail', 'Muñoz Juárez', 'susana.munoz2018pi@ensenapormexico.org', 'suxhail88@hotmail.com', '2018pi', '5562867752 / 5572657237', NULL, '-', 'Universidad Autonoma del Estado de Mexico', 'Psicología', NULL, NULL, NULL, NULL, NULL, '-', '-', '-', 33, NULL, '', NULL, NULL, '-', '', 'susanamunoz2018pi.jpg'),
(474, 0, 'Valeria Angeles', 'Lara Medina', 'valeria.lara2018pi@ensenapormexico.org', 'valery.psic@gmail.com', '2018pi', '5541933609', 2, '-', 'Universidad de Londres', 'Psicología', 0, '', '', 0, NULL, 'Secretaría de Salud', 'Promotora de Salud', '-', 33, 'CURSO PROMOCIÓN DE LA SALUD: CONCEPTOS, HERRAMIENTAS Y ABORDAJES\nOrganización Panamericana de la Salud\nSeptiembre 2020\nDocumentación: Constancia\n\nDIPLOMADO EN TANATOLOGÍA\nAsociación Mexicana de Tanatología A. C. (AMTAC)\nAgosto 2017\nDocumentación: Diploma\n\nCERTIFICACIÓN EN ESTIMULACIÓN PRENATAL Y TEMPRANA\nAsociación Mexicana de estimulación prenatal, temprana y acuática.\nNoviembre 2016\nDocumentación: Cédula, diploma\n\nDIPLOMADO EN ESTIMULACIÓN E INTERVENCIÓN TEMPRANA\nInstituto Mexicano de estimulación temprana y desarrollo humano (IMETYD)\nJulio-Agosto 2016\nDocumentación: Diploma UNAM', 'Inglés: TOEFL 463 puntos.\n\n', NULL, '../media/pdf/cv_126_242515112605_CV Valeria Lara - abril 2021.pdf', '-', '', 'valerialara2018pi.jpg'),
(475, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, '-', '', ''),
(476, 0, 'Sharón Abigaíl', 'Echeverría Mayén', 'abigail.echeverria2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'null.jpg'),
(477, 0, 'Agustín', 'Villavicencio Vilchis', 'agustin.villavicencio2019pi@ensenapormexico.org', '-', '2019pi', '55-69350388', 1, NULL, 'Universidad Autónoma Metropolitana-', '-Sociologia', 1, 'Maestría en Liderazgo y Educación ', 'Enseña por México', 0, NULL, 'DIF Quetzalcóatl Tlahuac', 'Docente Primaria y preescolar', NULL, NULL, 'Windows, Linux, MacOS.\nExcel, SPSS, Atlas Ti, Zoom, Meet, Teams.\nEdición de audio y video.\n', 'Español', NULL, NULL, '-', NULL, 'agustinvillavicencio2019pi.png'),
(478, 0, 'Alejandra', 'Abad Leon', 'alejandra.abad2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'null.jpg'),
(479, 0, 'Karen Alejandra', 'Hernandez Najera', 'alejandra.hernandez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'alejandrahernandez2019pi.jpg'),
(480, 0, 'Alejandra Gisel', 'Leal Cruz', 'alejandra.leal2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, 'alejandraleal2019pi.jpg'),
(481, 0, 'Alejandra Victoria', 'Luna Hernández', 'alejandra.luna2019@ensenapormexico.org', '-', '2019', '2221711310', 2, NULL, 'Universidad de las Américas Puebla', 'Administración de Hoteles y Restaurantes', 1, 'Maestría', 'Universidad Madero', 0, NULL, 'Enseña por México', 'PEM', NULL, NULL, 'Liderazgo, habilidades de mediación para la co-creación de conocimiento, trabajo en equipo, responsabilidad social, pensamiento crítico.', 'Inglés avanzado\nFrancés básico', NULL, '../media/pdf/cv_240_242515112605_CV Alejandra Luna Hdez.pdf', '-', NULL, 'alejandraluna2019.jpg'),
(482, 0, 'Alejandra Dianey', 'Pérez Segura', 'alejandra.perez2019@ensenapormexico.org', '-', '2019', '-5621669883', 1, NULL, '-Universidad Nacional Autónoma de México', '-Licenciatura en Psicología ', 1, 'Maestría', 'Modalidad en línea ', 0, NULL, 'Enseña por México', 'Profesional de Enseña por México', NULL, NULL, '- Experiencia en el trabajo comunitario (rural y urbano)\n- Experiencia en la gestión y desarrollo de proyectos \n- Mentoría y acompañamiento a diferentes públicos\n- Disponibilidad de traslado', 'Inglés intermedio', NULL, '../media/pdf/cv_229_242515112605_CV Alejandra Dianey PÃ©rez Segura (eb) (2).pdf', '-', NULL, 'alejandraperez2019.jpg'),
(483, 0, 'Alejandro', 'Rodríguez Grijalba', 'alejandro.rodriguez2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_277_242515112605_Alejandro RodrÃ­guez Grijalba - CV.pdf', '-', NULL, 'alejandrorodriguez2019.jpg'),
(484, 0, 'Alma Yeni', 'Arriaga Vázquez', 'alma.arriaga2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'almaarriaga2019.jpg'),
(485, 0, 'Alynne', 'Santana Salas', 'alynne.santana2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'alynnesantana2019pi.jpg'),
(486, 0, 'Amairiani', 'Ramirez Azcatl', 'amariani.ramirez2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_279_242515112605_Amariani_Ramirez CV.pdf', '-', NULL, 'amarianiramirez2019.jpg'),
(487, 0, 'Ana Karen', 'Acosta Hernandez', 'ana.acosta2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'anaacosta2019.jpg'),
(488, 0, 'Ana María', 'Alva Herrera', 'ana.alva2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'anaalva2019.jpg'),
(489, 0, 'Ana Luisa', 'Portillo Hurtado de Mendoza', 'ana.portillo2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'anaportillo2019.jpg'),
(490, 0, 'Andrea', 'Colotla Hernández', 'andrea.colotla2019@ensenapormexico.org', 'andrea.colotla@gmail.com', '2019', '5532549221', NULL, NULL, 'UNAM-FESA     ', '   Lengua y Literatura Hispánicas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'andreacolotla2019.jpg'),
(491, 0, 'Araceli', 'Vargas Lombera', 'araceli.vargas2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'aracelivargas2019.jpg'),
(492, 0, 'Arantxa Estefanía', 'Ortega Pérez', 'arantxa.ortega2018@ensenapormexico.org', 'arantxa_orpe@hotmail.com', '2018', '2224554335', NULL, NULL, 'Universidad Anahuac de Puebla, S.C.', 'Derecho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'null.jpg'),
(493, 0, 'Guadalupe Bethzabe', 'Rojas Torres', 'bethzabe.rojas2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'bethzaberojas2019pi.jpg'),
(494, 0, 'Brenda', 'Pérez Escobar', 'brenda.perez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'brendaperez2019pi.jpg'),
(495, 0, 'Carolina', 'Ávila Dolores', 'carolina.avila2019@ensenapormexico.org', 'caro.avila5@gmail.com', '2019', '2211171912', NULL, NULL, 'Benemérita Autónoma Universidad de Puebla', 'Linguistica y literatura hispanoamericana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'carolinaavila2019.jpg'),
(496, 0, 'Cassandra Abigail', 'Arjona Sansores', 'cassandra.arjona2019@ensenapormexico.org', 'abi_arjona_@hotmail.com', '2019', '9992670309', NULL, NULL, 'Instituto Tecnologico de Merida', 'Biomédica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'cassandraarjona2019.jpg'),
(497, 0, 'Catalina Paola', 'Moreno Avila', 'catalina.moreno2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'catalinamoreno2019pi.jpg'),
(498, 0, 'Christian', 'Tun Tun', 'christian.tun2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'christiantun2019.jpg'),
(499, 0, 'Citlalli Estefania', 'Balbuena Soriano', 'citlalli.balbuena2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_261_242515112605_Cv. Citlalli Estefania Balbuena Soriano.pdf', '-', NULL, 'citlallibalbuena2019.jpg'),
(500, 0, 'Cristian Daniel', 'Caballero Martínez', 'cristian.caballero2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'cristiancaballero2019.jpg'),
(501, 0, 'Cynthia Isabel', 'Rodríguez Corral', 'cynthia.rodriguez2019@ensenapormexico.org', 'cyn.isroco@gmail.com', '2019', '5534563545', NULL, NULL, 'Universidad Nacional Autónoma de México', 'Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_276_242515112605_CurriculumCynthiaRodriguez.pdf', '-', NULL, 'cynthiarodriguez2019.jpg');
INSERT INTO `alumnidata` (`idDA`, `idU`, `name`, `lastname`, `email`, `personalemail`, `generation`, `phone`, `phoneormail`, `pathways`, `university`, `career`, `haspostgraduate`, `postgraduatelevel`, `postgraduatewhere`, `hasactualjob`, `lookingforjob`, `organization`, `rol`, `city`, `state`, `competences`, `languages`, `interests`, `cv`, `iscommittee`, `linksmedium`, `img`) VALUES
(502, 0, 'Diana Laura', 'Barrera Reyes', 'diana.barrera2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_226_242515112605_CV Diana Barrera Reyes.pdf', '-', NULL, 'dianabarrera2019pi.jpg'),
(503, 0, 'Diana Carolina', 'Gómez Reyes', 'diana.gomez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'dianagomez2019pi.jpg'),
(504, 0, 'Diana', 'Julián Álvarez', 'diana.julian2019@ensenapormexico.org', 'egstsinaka@hotmail.com', '2019', '5545614503', NULL, NULL, 'Universidad Autónoma Metropolitana', 'Lic. en Ciencia politica.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'dianajulian2019.jpg'),
(505, 0, 'Emmanuel', 'Carreto Barbosa', 'emmanuel.carreto2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'emmanuelcarreto2019.jpg'),
(506, 0, 'Erik Eduardo', 'Álvarez Cortes', 'erik.alvarez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'erikalvarez2019pi.jpg'),
(507, 0, 'Erika', 'Pèrez Gómez', 'erika.perez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'erikaperez2019pi.jpg'),
(508, 0, 'Ernesto Jonathan', 'Balam Aguilar', 'ernesto.balam2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'ernestobalam2019.jpg'),
(509, 0, 'Ernesto', 'Montiel Rodriguez', 'ernesto.montiel2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'ernestomontiel2019.jpg'),
(510, 0, 'Estefania Anaid', 'Perez Hernández', 'estefania.perez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'estefaniaperez2019pi.jpg'),
(511, 0, 'Esther', 'Huerta Reyes', 'esther.huerta2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'estherhuerta2019pi.jpg'),
(512, 0, 'Guadalupe Francely', 'González Alvárez', 'francely.gonzalez2019@ensenapormexico.org', '-', '2019', '55 2115 9476', NULL, NULL, 'Academia Internacional de Formación en Ciencias Forenses', 'Criminalística y Criminología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'francelygonzalez2019.jpg'),
(513, 0, 'Gabriela Alejandra', 'Castillo Sanchez', 'gabriela.castillo2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'gabrielacastillo2019pi.jpg'),
(514, 0, 'Gabriela Alejandra', 'Contreras Contreras', 'gabriela.contreras2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'gabrielacontreras2019pi.jpg'),
(515, 0, 'Gloria Noemi', 'Villanueva González', 'gloria.villanueva2019@ensenapormexico.org', 'noemivg1926@gmail.com', '2019', '999 452 4284', NULL, NULL, 'Universidad Autónoma del Estado de Yucatán', 'Educación', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'null.jpg'),
(516, 0, 'Grecia', 'Sosa Nuñez', 'grecia.sosa2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'greciasosa2019pi.jpg'),
(517, 0, 'María Griselda', 'Martínez Almaraz', 'griselda.martinez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'griseldamartinez2019pi.jpg'),
(518, 0, 'María Guadalupe', 'Vázquez Ortiz', 'guadalupe.vazquez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'guadalupevazquez2019pi.jpg'),
(519, 0, 'Hzurisadai', 'Cancino Pérez', 'hzurisadai.cancino2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'hzurisadaicancino2019.jpg'),
(520, 0, 'Ingrid Sofía', 'Rojas Pérez', 'ingrid.rojas2019@ensenapormexico.org', 'ingrid.rojas@ilab.net', '2019', '2711428200', NULL, NULL, 'Universidad Paccioli de Cordoba', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'ingridrojas2019.jpg'),
(521, 0, 'Irad', 'Alfonso García', 'irad.alfonso2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'iradalfonso2019.jpg'),
(522, 0, 'Israel', 'Vega Zacarías', 'israel.vega2019@ensenapormexico.org', '-', '2019', '-5518668756', 2, NULL, 'UAM', 'Filosofía', 1, 'Maestría', 'Enseña por México', 0, NULL, 'Enseña por Mexico', 'Profesional de Enseña por México', NULL, NULL, 'Competencias:\n? Tolerancia a la frustración\n? Comprometido con el equipo\n? Compromiso social\n? Iniciativa y motivación\n? Gestión de tiempo\nHabilidades:\n? Comunicación positiva\n? Ver en los conflictos nuevos retos\n? Apertura al aprendizaje\n? Empatía\n? Autoconocimiento\n? Priorizar el diálogo como medio de aprendizaje\nMANEJO DE COMPUTACIÓN\n? Manejo de herramientas en G Suit\n? Dominio en herramientas digitales para facilitar sesiones en \n línea\n? Conocimientos en Paquetería de Office\nCURSOS Y TALLERES\n? Diplomado en mediación pedagógica por parte del Instituto DIA\n? Constancia por habercompletado el taller ?HERRAMIENTAS DIGITALES PARA DOCENTES? por parte de Supervisión Escolar EDOMEX\n? Certificado ?SER DOCENTE EN TIEMPOS DE COVID-19? por parte de Programa Nuevo Maestro y Fundación Alberto Bailleres\n', 'Inglés básico', NULL, NULL, '-', NULL, 'israelvega2019.jpg'),
(523, 0, 'Itati Guadalupe', 'Baeza Colorado', 'itati.baeza2019@ensenapormexico.org', 'sullivanita@gmail.com', '2019', '9811001929', NULL, NULL, 'Universidad Autonoma de Campeche', 'Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'itatibaeza2019.jpg'),
(524, 0, 'Iván Peter Geibell', 'Pérez Jiménez', 'ivan.perez2019pi@ensenapormexico.org', '-', '2019pi', '5591923926', 1, NULL, 'Universidad Nacional Autónoma de México', 'Psicología', 0, '', '', 1, NULL, 'Asociación de Ciencias de la Conducta', 'Psicólogo Cognitivo-Conductual', NULL, NULL, '- Diseño y ejecución de actividades desde la metodología del aprendizaje a través del juego.\n- Planeación e implementación de proyectos para el desarrollo de habilidades socioemocionales en primera infancia.\n- Orientación a personal académico y familias sobre desarrollo \n infantil y prácticas educativas y de crianza.\n- Orientación vocacional.\n- Evaluación psicológica a niños y adolescentes.\n- Terapia Cognitivo-Conductual a niños y adolescentes.', 'Inglés Básico', NULL, '../media/pdf/cv_260_242515112605_CV_IvÃ¡n PÃ©rez.pdf', '-', NULL, 'ivanperez2019pi.jpg'),
(525, 0, 'Ivonne', 'Hernández Olandes', 'ivonne.hernandez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'ivonnehernandez2019pi.jpg'),
(526, 0, 'Janet', 'Hernandez Lázaro', 'janet.hernandez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'janethernandez2019pi.jpg'),
(527, 0, 'Janeth', 'Castro Maldonado', 'janeth.castro2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'janethcastro2019pi.jpg'),
(528, 0, 'Jaqueline', 'Serralde Venancio', 'jaqueline.serralde2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_243_242515112605_CV Jaqueline Serralde (6).pdf', '-', NULL, 'jaquelineserralde2019pi.jpg'),
(529, 0, 'Jennifer', 'Castro Hernández', 'jennifer.castro2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'jennifercastro2019pi.jpg'),
(530, 0, 'Jennifer Aimée', 'Rodríguez Freyre', 'jennifer.rodriguez2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'jenniferrodriguez2019.jpg'),
(531, 0, 'Jessica Guadalupe', 'Ornelas Trejo', 'jessica.ornelas2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'jessicaornelas2019.jpg'),
(532, 0, 'Jóse Carlos', 'Galavis Bonilla', 'jose.galavis2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'josegalavis2019.jpg'),
(533, 0, 'Karen Alexia', 'García Rodriguez', 'karen.gracia2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'karengracia2019pi.jpg'),
(534, 0, 'Karina', 'Olvera Arreola', 'karina.olvera2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'karinaolvera2019pi.jpg'),
(535, 0, 'Karla Teresa', 'Hernández Ramos', 'karla.hernandez2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'karlahernandez2019.jpg'),
(536, 0, 'Karla Ivonn', 'Santos Martínez', 'karla.santos2019@ensenapormexico.org', 'karla.unam.94@gmail.com', '2019', '5568977703', 1, NULL, 'Universidad Nacional Autónoma de México', 'Psicología', 1, 'Maestría de Liderazgo y Educación', 'Enseña por México', 0, NULL, 'Enseña por México', 'Profesional de Enseña por México', NULL, NULL, 'Diplomado en mediación pedagógica, Diplomado en nutrición integral, mente cuerpo y espíritu en armonía, Curso de e-commerce.', 'Inglés y francés', NULL, '../media/pdf/cv_233_242515112605_CV actualizado.pdf', '-', NULL, 'karlasantos2019.jpg'),
(537, 0, 'Katya del Rocío', 'López Ramírez', 'katya.lopez2019@ensenapormexico.org', 'rocio_190@hotmail.com', '2019', '3316304648', NULL, NULL, 'Universidad de Guadalajara', 'Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'katyalopez2019.jpg'),
(538, 0, 'Laura Azucena', 'Enríquez González', 'laura.enriquez2019@ensenapormexico.org', 'laura25azu@gmail.com', '2019', '5575294178', NULL, NULL, 'Universidad Nacional Autónoma de México', 'Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'lauraenriquez2019.jpg'),
(539, 0, 'Laura Stephany', 'Villa Sánchez', 'laura.villa2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'lauravilla2019pi.jpg'),
(540, 0, 'Lidia Francine', 'Santos Murillo', 'lidia.santos2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'lidiasantos2019.jpg'),
(541, 0, 'Lorena Patricia', 'Sandoval Mireles', 'lorena.sandoval2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'lorenasandoval2019pi.jpg'),
(542, 0, 'Lucero', 'Rodríguez Vargas', 'lucero.rodriguez2019@ensenapormexico.org', 'lucero.rodriguezv@hotmail.com', '2019', '5528621192', NULL, NULL, 'Universidad Nacional Autónoma de México', 'Trabajo Social', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'lucerorodriguez2019.jpg'),
(543, 0, 'Luis Ernesto', 'Medellín Medina', 'luis.medellin2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_227_242515112605_Luis Ernesto MedellÃ­n Medina Curriculum Septiembre 2021.pdf', '-', NULL, 'luismedellin2019.jpg'),
(544, 0, 'Luis Eduardo', 'Ruedas Heredia', 'luis.ruedas2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'luisruedas2019pi.jpg'),
(545, 0, 'Juan Manuel', 'Onofre Castillo', 'manuel.onofre2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'manuelonofre2019pi.jpg'),
(546, 0, 'Manuel Fernando', 'Sánchez Hernández', 'manuel.sanchez2019@ensenapormexico.org', 'manu1991f@gmail.com', '2019', '9851065154', NULL, NULL, 'Instituto de Educación Digital del Estado de Puebla', 'Lic en Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'manuelsanchez2019.jpg'),
(547, 0, 'María Guadalupe', 'Bobadilla Arizmendi', 'maria.bobadilla2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'mariabobadilla2019.jpg'),
(548, 0, 'María Guadalupe', 'López Salazar', 'maria.lopez2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'marialopez2019.jpg'),
(549, 0, 'Maria Mercedes', 'Roman Casique', 'maria.roman2019@ensenapormexico.org', '-', '2019', '2471001507', 1, NULL, '-Benemérita Universidad Autónoma de Puebla', '-Lic. en Lenguas Modernas ', 0, '', '', 0, NULL, 'Enseña por México', 'Alumni', NULL, NULL, 'Experiencia en la enseñanza del idioma ingles en sector publico y privado en diferentes niveles niños, adolecentes y adultos. Habilidades pedagógicas y comunicativas competentes. Apertura al trabajo colaborativo. Actitudes de servicio, pro actividad y corresponsabilidad.', 'Español e Ingles ', NULL, NULL, '-', NULL, 'mariaroman2019.png'),
(550, 0, 'Marisol', 'Ramirez Acatlitlan', 'marisol.ramirez2019@ensenapormexico.org', '-', '2019', '-7443119647', 2, NULL, '----Autonoma de Guerrero ', '-Lic. En Ecología Marina', 0, '', '', 0, NULL, 'Enseña por México', 'PEM2019', NULL, NULL, 'Trabajo en equipo.\nLiderazgo.\nInnovadora.\nResponsable.\n', 'Español\nIngles básico.\n', NULL, '../media/pdf/cv_254_242515112605_Curriculum MARISOL RAMIREZ.. Correcto - Estado de MÃ©xico.docx.pdf', '-', NULL, 'marisolramirez2019.jpg'),
(551, 0, 'Marlen Guadalupe', 'Alvarez Urbina', 'marlen.alvarez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'marlenalvarez2019pi.jpg'),
(552, 0, 'Martha Raquel', 'Cruz Vázquez', 'martha.cruz2019@ensenapormexico.org', 'pingui_560@msn.com', '2019', '9191129505', NULL, NULL, 'Universidad Autonoma de Chiapas', 'Pedagogía', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'marthacruz2019.jpg'),
(553, 0, 'Marycruz', 'Davalos Velasco', 'marycruz.davalos2019@ensenapormexico.org', 'marycruzdavalos@gmail.com', '2019', '556 459 3017', NULL, NULL, 'UAM Xochimilco', 'Biología ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'marycruzdavalos2019.jpg'),
(554, 0, 'Miguel Angel', 'Padilla Reyes', 'miguel.padilla2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'miguelpadilla2019.jpg'),
(555, 0, 'Mitzy Israely', 'Ojeda Murillo', 'mitzy.ojeda2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'mitzyojeda2019pi.jpg'),
(556, 0, 'Mónica', 'Alvarado Espíndola', 'monica.alvarado2019@ensenapormexico.org', 'monik-alvar1@hotmail.com', '2019', '5565796339', NULL, NULL, 'Universidad Nacional Autónoma de México', 'Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'null.jpg'),
(557, 0, 'Mónica Eloisa', 'López Landa', 'monica.lopez2019@ensenapormexico.org', 'psicologamonicalopez@gmail.com', '2019', '228 161 0649', NULL, NULL, 'Universidad Veracruzana', 'Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'monicalopez2019.jpg'),
(558, 0, 'Nelli Yolotzin', 'Hernandez Rangel', 'nelli.hernandez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'nellihernandez2019pi.jpg'),
(559, 0, 'Olivia', 'Granada Escobar', 'olivia.granada2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'oliviagranada2019.jpg'),
(560, 0, 'Pamela', 'Gálvez Girón', 'pamela.galvez2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'pamelagalvez2019pi.jpg'),
(561, 0, 'Itzel Pammeli', 'Cruz Almeida', 'pammeli.cruz2019@ensenapormexico.org', 'pammelicruz17@gmail.com', '2019', '9931821016', NULL, NULL, 'Universidad Veracruzana', 'Psicología', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'pammelicruz2019.jpg'),
(562, 0, 'Roberto Ivan', 'Gurrusquieta Quezada', 'roberto.gurrusquieta2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'robertogurrusquieta2019.jpg'),
(563, 0, 'Rocío Vanessa', 'Moreno Rodríguez', 'rocio.moreno2019@ensenapormexico.org', '-', '2019', '5535102046 | 55 7537 6012', 2, NULL, '-Universidad Nacional Autónoma de México', '-Biología', 1, 'Maestría', 'Enseña por México', 0, 1, 'Enseña por México', 'Facilitadora educativa | Docente aliada', NULL, NULL, '*Manejo de software paquetería office y Google workspace for education.\n*Manejo de TIC\'s para educación y diseño.\n*Planeación, diseño y ejecución de experiencias de aprendizaje. \n*Design thinking, Learning 1 to 1, gamificación, aprendizaje basado en problemas,...\n*Coordinación, logística y monitoreo de proyectos educativos.\n*Estadística (R Studio) y análisis cuantitativo/cualitativo.\n*Mediación pedagógica a través del arte.\n*Tallerista y capacitadora respecto a temas educativos, para NNA y docentes.\n*Líder activista por el cambio climático de The Climate Reality Project. \n*Estudiante en cursos sobre género y coeducación. ', 'Inglés', NULL, 'eb63c5f4af1ca5071d361aabb5c7a93d.pdf', '-', NULL, 'rociomoreno2019.jpg'),
(564, 0, 'Sandra', 'Santos Pérez', 'sandra.santos2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../media/pdf/cv_234_242515112605_CV_Sandra Ivonne Santos PÃ©rez.pdf', '-', NULL, 'sandrasantos2019.jpg'),
(565, 0, 'Sara Noemi', 'Pedrero Flores', 'sara.pedrero2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'sarapedrero2019.jpg'),
(566, 0, 'Andrea Sofía', 'Ronson Carrillo', 'sofia.carrillo2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'sofiacarrillo2019pi.jpg'),
(567, 0, 'Surisadday', 'Eslava Márque', 'surisadday.eslava2019@ensenapormexico.org', '-', '2019', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'surisaddayeslava2019.jpg'),
(568, 0, 'Susana', 'Garza León', 'susana.garza2019@ensenapormexico.org', '-', '2019', '123456789', NULL, NULL, 'UANL', 'Ingeniería ambiental', 1, 'Maestría', 'Enseña por México', NULL, NULL, 'Enseña por México', 'CLA región Norte', NULL, NULL, 'Soy la mejor de las mejores, lo que es.', 'Inglés', NULL, NULL, '-', NULL, 'susanagarza2019.jpg'),
(569, 0, 'Vania Marian', 'Becerril Toriz', 'vania.becerril2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'vaniabecerril2019pi.jpg'),
(570, 0, 'Verónica Aidé', 'Hidalgo Ramírez', 'veronica.hidalgo2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'veronicahidalgo2019pi.jpg'),
(571, 0, 'Vicente Adrián', 'Aguilar Aké', 'vicente.aguilar2019@ensenapormexico.org', ' aguilar.vicente16@gmail.com', '2019', '999 329 6228', NULL, NULL, 'Universidad Autónoma del Estado de Yucatán', 'Educación', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'vicenteaguilar2019.jpg'),
(572, 0, 'Viviana Isabel', 'Reyes González', 'viviana.reyes2019pi@ensenapormexico.org', '-', '2019pi', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', NULL, 'vivianareyes2019pi.jpg'),
(573, 0, 'Yenni Guadalupe', 'Tuz Caamal', 'yenni.tuz2019@ensenapormexico.org', 'yenni.tuzcaamal@itsva.edu.mx', '2019', '985 112 8045', NULL, NULL, 'Instituto Tecnológico Superior de Valladolid', 'Ingeniería Ambiental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, 'yennituz2019.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `idE` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `monthNum` int(2) NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `transformation` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `idU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`idE`, `title`, `date`, `month`, `monthNum`, `link`, `transformation`, `status`, `timestamp`, `idU`) VALUES
(1, 'Show de talentos Alumni', '12/11/2020', 'NOV', 11, '', 3, 0, '2020-09-21 16:39:25', 5),
(2, 'Llamada inicial Alumni', '28/01/2021', 'ENE', 1, '', 1, 0, '2021-01-27 13:48:32', 2),
(3, 'Llamada inicial Alumni', '28/01/2021', 'ENE', 1, '', 1, 0, '2021-01-27 13:48:35', 2),
(4, 'Llamada inicial Alumni', '28/01/2021', 'ENE', 1, 'https://zoom.us/j/95489848145', 1, 0, '2021-01-28 12:45:06', 2),
(5, 'Charla Inspiradora \"Construyendo tus caminos\" - Tania Eulalia MartÃ­nez Cruz', '18/02/2021', 'FEB', 2, 'https://zoom.us/meeting/register/tJcuduqoqj8pGNQIHQ65NHvJJMPFpmBLQmi1', 1, 0, '2021-02-09 16:15:58', 2),
(6, 'â€œCiencia para todos/asâ€ y â€œEntre nosotras hay cientÃ­ficasâ€ | DÃ­a Internacional de la Mujer', '11-12/02/2021', 'FEB', 2, 'https://udg-mx.zoom.us/meeting/register/tZAuf-ioqjwpGNZ-vy75rke0b0lXnqUHfNya?fbclid=IwAR2l7oVKH0J41PxsGSWagzlFd0omckt7flH3MJLgTEkXcaFqD4ACBuym6bk', 2, 0, '2021-02-09 16:21:33', 2),
(7, 'Aniversario de EnseÃ±a por MÃ©xico', '14/04/2021', 'ABR', 4, '', 1, 0, '2021-02-09 16:28:05', 2),
(8, 'Aniversario de EnseÃ±a por MÃ©xico', '14/10/2021', 'ABR', 4, '', 1, 0, '2021-02-09 16:28:10', 2),
(9, 'Taller de desarrollo profesional (CV, entrevista, etc.)', '24/03/2021', 'MAR', 3, 'https://zoom.us/j/94313248785', 3, 0, '2021-02-09 16:29:32', 2),
(10, 'Â¿CÃ³mo invertir mi dinero?', '25/02/2021', 'FEB', 2, 'https://docs.google.com/forms/d/e/1FAIpQLSeUDs8jWHtgq8MfMTMC9w8JerJW6BQm7e5udqkuD2hI-NDdgQ/viewform?gxids=7628', 3, 0, '2021-02-18 10:22:45', 2),
(11, 'Charla inspiradora ', '17/04/2021', 'MAR', 3, 'https://zoom.us/j/99772912710', 1, 0, '2021-03-03 16:30:23', 2),
(12, '2Â° Encuentro de la Comunidad de EducaciÃ³n Sexual Integral', '27/04/2021', 'ABR', 4, 'https://us02web.zoom.us/meeting/register/tZIsduipqzIuHNA8uhfbqW_Rbh_OBEvcflkA', 2, 0, '2021-04-23 11:07:48', 2),
(13, 'Conectividad con la red de Teach For All', '05/05/2021', 'MAY', 5, 'https://zoom.us/j/94659523017', 1, 0, '2021-05-03 15:47:47', 2),
(14, 'Taller sobre Responsabilidad Social', '19/05/2021', 'MAY', 5, 'https://zoom.us/j/95543652688', 1, 0, '2021-05-03 15:49:48', 2),
(15, 'Taller \"Uso de redes para bÃºsqueda de empleo o generar relaciones profesionales\"', '02/06/2021', 'JUN', 6, 'https://zoom.us/j/96676718823', 3, 0, '2021-05-03 15:50:31', 2),
(16, 'Latido Latino Virtual 2021', '20-24/07/2021', 'JUL', 7, 'https://drive.google.com/file/d/1ZxAAWlrMZkmqBaNb7Zjsbo77Q-KR0jab/view?usp=sharing', 1, 0, '2021-05-06 15:31:00', 2),
(17, 'Voces ExM', '27/05/2021', 'MAY', 5, '', 1, 0, '2021-05-10 18:11:26', 2),
(18, 'Charla inspiradora \"Caminando juntos\" - Nelly Meraz', '10/06', 'JUN', 6, 'https://zoom.us/j/95827983843', 3, 0, '2021-06-09 12:24:59', 2),
(19, 'Iniciar un posgrado / Becas educativas', '15/06/2021', 'JUN', 6, 'UbicaciÃ³n: https://zoom.us/j/99843595494', 3, 0, '2021-06-14 10:38:57', 2),
(20, 'Rally Alumni', '15/07/2021', 'JUL', 7, 'https://zoom.us/j/93271931109', 3, 0, '2021-06-28 11:21:50', 2),
(21, 'InducciÃ³n al Movimiento Alumni', '27/08/2021', 'AGO', 8, 'https://zoom.us/j/99170168617', 3, 0, '2021-06-28 11:23:34', 2),
(22, 'Tianguis Alumni', '19/08', 'AGO', 8, 'https://docs.google.com/forms/d/e/1FAIpQLScGeVft8uIKYeeopqC_-5eJrV55uR06Obwp4uBVIEoc19vC2A/viewform?usp=sf_link', 1, 0, '2021-08-03 09:28:59', 2),
(23, 'Tianguis Alumni', '23/09/2021', 'SEP', 9, 'https://us06web.zoom.us/meeting/register/tZMvfuuvpj0sG9DfAKDQdbBgwdKz2eJ_SjIU', 2, 0, '2021-09-03 15:58:12', 2),
(24, 'Feria virtual de empleo', '26/10/2021', 'OCT', 10, 'https://feriavirtual.lapieza.io/?utm_campaign=Feria%20Virtual&utm_medium=email&_hsmi=165964216&_hsenc=p2ANqtz-9Tz2w9JUSy0sBFgNkIOKS_cEyPesYYQBLUAmzyqpcEK486MMwmgXIIBYiHdsDjWsUDO1hTL-_syhTYYiFAVmRI3_WGBpSH7kjIu3aXJ5VqqjZsLj0&utm_content=165964216&utm_source=hs_email', 3, 0, '2021-10-04 11:50:09', 2),
(25, '', '', 'Febrero', 2, 'https://www.youtube.com/', 2, 0, '2022-01-18 09:58:35', 1),
(26, 'Evento de prueba', 'De lunes a viernes', 'Febrero', 2, 'https://www.youtube.com/', 2, 0, '2022-01-18 09:59:28', 1),
(27, 'Evento de prueba', '20/01/2022', 'ENE', 1, 'https://www.youtube.com', 1, 0, '2022-01-18 10:05:03', 1),
(28, 'Evento de prueba 3', '20/03/2022', 'MAR', 3, 'https://www.youtube.com', 2, 1, '2022-01-18 10:27:46', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobtimes`
--

CREATE TABLE `jobtimes` (
  `idJT` int(11) NOT NULL,
  `jobtime` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `jobtimes`
--

INSERT INTO `jobtimes` (`idJT`, `jobtime`) VALUES
(1, 'Tiempo completo'),
(2, 'Medio tiempo'),
(3, 'Pasantía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `idL` int(11) NOT NULL,
  `idU` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`idL`, `idU`, `date`) VALUES
(56, 222, '2022-02-21 11:56:38'),
(57, 222, '2022-02-21 12:45:05'),
(58, 222, '2022-02-21 15:19:40'),
(59, 222, '2022-02-21 15:20:12'),
(60, 222, '2022-02-21 15:59:59'),
(61, 222, '2022-02-23 10:25:41'),
(62, 222, '2022-02-23 10:29:22'),
(63, 222, '2022-02-23 11:09:35'),
(64, 1, '2022-02-23 11:23:04'),
(65, 222, '2022-02-23 12:31:05'),
(66, 222, '2022-02-23 13:21:23'),
(67, 222, '2022-02-23 13:32:19'),
(68, 222, '2022-02-23 17:14:07'),
(69, 1, '2022-04-23 19:26:01'),
(70, 222, '2022-04-23 20:04:38'),
(71, 222, '2022-04-23 20:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logbt`
--

CREATE TABLE `logbt` (
  `idLB` int(11) NOT NULL,
  `idU` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `logbt`
--

INSERT INTO `logbt` (`idLB`, `idU`, `date`) VALUES
(200, 222, '2022-02-21 12:39:40'),
(201, 222, '2022-02-21 12:39:59'),
(202, 222, '2022-02-21 12:45:15'),
(203, 222, '2022-02-21 15:21:01'),
(204, 223, '2022-02-21 15:22:06'),
(205, 223, '2022-02-21 15:22:10'),
(206, 223, '2022-02-21 15:22:52'),
(207, 222, '2022-02-21 15:49:17'),
(208, 222, '2022-02-21 15:49:19'),
(209, 222, '2022-02-21 15:59:18'),
(210, 223, '2022-02-21 16:03:27'),
(211, 222, '2022-02-21 16:04:52'),
(212, 223, '2022-02-21 16:06:36'),
(213, 223, '2022-02-21 16:07:52'),
(214, 223, '2022-02-21 16:12:37'),
(215, 223, '2022-02-21 16:13:57'),
(216, 222, '2022-02-23 10:29:04'),
(217, 1, '2022-02-23 11:23:10'),
(218, 222, '2022-02-23 12:31:07'),
(219, 222, '2022-02-23 12:34:03'),
(220, 222, '2022-02-23 12:35:46'),
(221, 222, '2022-02-23 12:39:03'),
(222, 222, '2022-02-23 12:39:50'),
(223, 222, '2022-02-23 12:47:20'),
(224, 222, '2022-02-23 12:48:24'),
(225, 222, '2022-02-23 12:49:57'),
(226, 222, '2022-02-23 12:52:39'),
(227, 222, '2022-02-23 12:57:08'),
(228, 222, '2022-02-23 13:00:20'),
(229, 222, '2022-02-23 13:00:56'),
(230, 222, '2022-02-23 13:10:23'),
(231, 222, '2022-02-23 13:11:32'),
(232, 222, '2022-02-23 13:12:05'),
(233, 222, '2022-02-23 13:32:21'),
(234, 6, '2022-02-23 17:14:16'),
(235, 6, '2022-02-23 17:14:21'),
(236, 1, '2022-04-23 19:29:58'),
(237, 1, '2022-04-23 19:31:11'),
(238, 1, '2022-04-23 20:00:56'),
(239, 1, '2022-04-23 20:03:59'),
(240, 222, '2022-04-23 20:06:29'),
(241, 222, '2022-04-23 20:10:36'),
(242, 222, '2022-04-23 20:11:39'),
(243, 222, '2022-04-23 20:11:59'),
(244, 222, '2022-04-23 20:12:42'),
(245, 222, '2022-04-23 20:13:31'),
(246, 222, '2022-04-23 20:16:07'),
(247, 2, '2022-04-23 20:17:50'),
(248, 2, '2022-04-23 20:20:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletters`
--

CREATE TABLE `newsletters` (
  `idB` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `newsletters`
--

INSERT INTO `newsletters` (`idB`, `title`, `month`, `year`, `link`, `type`, `status`, `date`) VALUES
(1, 'Febrero 2019', 2, 2019, 'https://mailchi.mp/49c5c539af72/boletn-alumni-ensea-por-mxico-febrero-2019?e=b59e525aca', 1, 1, '2020-08-21 16:39:01'),
(2, 'Marzo 2019', 3, 2019, 'https://mailchi.mp/5f7e6958b636/boletn-alumni-ensea-por-mxico-marzo-2019?e=b59e525aca', 1, 1, '2020-08-21 16:39:01'),
(3, 'Abril 2019', 4, 2019, 'https://mailchi.mp/3310d6cf21aa/boletn-alumni-ensea-por-mxico-abril-2019?e=b59e525aca', 1, 1, '2020-08-21 16:40:05'),
(4, 'Mayo 2019', 5, 2019, 'https://mailchi.mp/218bf81db75b/boletn-alumni-ensea-por-mxico-mayo-2019?e=b59e525aca', 1, 1, '2020-08-21 16:40:05'),
(5, 'Junio 2019', 6, 2019, 'https://mailchi.mp/af0b96eb43a2/boletn-alumni-ensea-por-mxico-junio-2019?e=b59e525aca', 1, 1, '2020-08-21 16:43:10'),
(6, 'Julio 2019', 7, 2019, 'https://mailchi.mp/81e8e921783e/boletn-alumni-ensea-por-mxico-julio-2019?e=b59e525aca', 1, 1, '2020-08-21 16:43:10'),
(7, 'Agosto 2019', 8, 2019, 'https://mailchi.mp/235a41af7ced/boletn-alumni-ensea-por-mxico-agosto-2019?e=b59e525aca', 1, 1, '2020-08-21 16:43:46'),
(8, 'Octubre 2019', 10, 2019, 'https://mailchi.mp/f905219221ba/boletn-alumni-ensea-por-mxico-octubre-2019?e=b59e525aca', 1, 1, '2020-08-21 16:43:46'),
(9, 'Diciembre 2019', 12, 2019, 'https://mailchi.mp/f564832d4b5a/boletn-alumni-ensea-por-mxico-diciembre-2019?e=b59e525aca', 1, 1, '2020-08-21 16:44:26'),
(10, 'Enero 2020', 1, 2020, 'https://mailchi.mp/a7c3e509aa9c/boletn-alumni-ensea-por-mxico-enero-2020?e=b59e525aca', 1, 1, '2020-08-21 16:44:26'),
(11, 'Febrero 2020', 2, 2020, 'https://mailchi.mp/fbf04c8c9c6b/boletn-alumni-ensea-por-mxico-febrero-2020?e=b59e525aca', 1, 1, '2020-08-21 16:44:54'),
(12, 'Marzo 2020', 3, 2020, 'https://mailchi.mp/b250b2214cd6/boletn-alumni-ensea-por-mxico-marzo-2020?e=b59e525aca', 1, 1, '2020-08-21 16:44:54'),
(13, 'Abril 2020', 4, 2020, 'https://mailchi.mp/0048baf2120f/boletn-alumni-ensea-por-mxico-abril-2020?e=b59e525aca', 1, 1, '2020-08-21 16:45:27'),
(14, 'Mayo 2020', 5, 2020, 'https://mailchi.mp/dc400a5fbf0d/boletn-alumniensea-por-mxico-mayo-2020?e=b59e525aca', 1, 1, '2020-08-21 16:45:27'),
(15, 'Junio 2020', 6, 2020, 'https://mailchi.mp/fc8699b37143/boletn-alumni-ensea-por-mxico-junio-2020?e=b59e525aca', 1, 1, '2020-08-21 16:47:59'),
(16, 'Julio 2020', 7, 2020, 'https://mailchi.mp/f4173903376f/boletn-alumni-ensea-por-mxico-julio-2020?e=b59e525aca', 1, 1, '2020-08-21 16:47:59'),
(17, 'Agosto 2020', 8, 2020, 'https://mailchi.mp/3ea8192278dc/boletn-alumni-ensea-por-mxico-agosto-2020?e=b59e525aca', 1, 1, '2020-08-21 16:48:29'),
(18, 'Noviembre 2019', 11, 2019, 'https://mailchi.mp/942ae2aa4261/2do-boletn-exm-regin-centro?e=9e9c6f827e', 3, 1, '2020-08-26 13:15:07'),
(19, 'Febrero 2020', 2, 2020, 'https://mailchi.mp/c5ac2d54ce17/boletn-febrero-exm-regin-centro?e=9e9c6f827e', 3, 1, '2020-08-26 13:15:50'),
(20, 'Abril 2020', 4, 2020, 'https://mailchi.mp/06e3ef3f9daf/boletn-abril-2020-exm-regin-centro?e=9e9c6f827e', 3, 1, '2020-08-26 13:15:50'),
(21, 'Junio 2020', 6, 2020, 'https://mailchi.mp/2f2156310745/boletn-junio-exm-regin-centro?e=9e9c6f827e', 3, 1, '2020-08-26 13:17:15'),
(22, 'Septiembre 2020', 9, 2020, 'https://mailchi.mp/110d02b9cc2a/boletn-alumni-ensea-por-mxico-septiembre-2020?e=b59e525aca', 1, 1, '2020-09-21 16:57:01'),
(24, 'Noviembre 2020', 11, 2020, 'https://mailchi.mp/067a1d7fdb09/boletn-alumni-ensea-por-mxico-noviembre-2020?e=b59e525aca', 1, 1, '2020-11-03 09:15:51'),
(25, 'Octubre 2020', 10, 2020, 'https://mailchi.mp/c256e8e1a8a1/boletn-alumni-ensea-por-mxico-octubre-2020?e=b59e525aca', 1, 1, '2020-11-03 09:16:11'),
(26, 'Diciembre 2020', 12, 2020, 'https://mailchi.mp/a007510032e9/boletn-alumni-ensea-por-mxico-diciembre-2020?e=b59e525aca', 1, 1, '2020-12-11 12:09:48'),
(27, 'Noviembre 2020', 11, 2020, 'https://mailchi.mp/4150fda3cafc/50fj2uqv9k?e=5b88ae30ea', 3, 1, '2021-01-05 16:53:03'),
(28, 'Enero 2021', 1, 2021, 'https://mailchi.mp/403906e4a1bb/boletn-alumni-ensea-por-mxico-enero-2021?e=b59e525aca', 1, 1, '2021-01-11 15:28:40'),
(29, 'Enero 2020', 1, 2020, 'https://mailchi.mp/ensenapormexico/enero2020', 2, 1, '2021-01-18 16:43:33'),
(30, 'Febrero 2020', 2, 2020, 'https://mailchi.mp/ensenapormexico/febrero2020', 2, 1, '2021-01-18 16:43:55'),
(31, 'Marzo 2020', 3, 2020, 'https://mailchi.mp/ensenapormexico/marzo2020', 2, 1, '2021-01-18 16:44:11'),
(32, 'Mayo 2020', 5, 2020, 'https://mailchi.mp/ensenapormexico/mayojunio2020', 2, 1, '2021-01-18 16:44:28'),
(33, 'Julio 2020', 7, 2020, 'https://mailchi.mp/cabf1d4b8968/julio2020', 2, 1, '2021-01-18 16:44:47'),
(34, 'Agosto 2020', 8, 2020, 'https://mailchi.mp/ensenapormexico/agosto2020', 2, 1, '2021-01-18 16:44:59'),
(35, 'Septiembre 2020', 9, 2020, 'https://mailchi.mp/ensenapormexico/agosto2020-5521185', 2, 1, '2021-01-18 16:45:12'),
(36, 'Noviembre 2020', 11, 2020, 'https://mailchi.mp/ensenapormexico/noviembre2020', 2, 1, '2021-01-18 16:45:28'),
(37, 'Diciembre 2020', 12, 2020, 'https://mailchi.mp/ensenapormexico/elcamino-7224089', 2, 1, '2021-01-18 16:45:43'),
(38, 'Enero 2021', 1, 2021, 'https://mailchi.mp/3d9df3635a0c/50fj2uqv9k-5137966?e=a397c283a1', 3, 1, '2021-02-04 15:40:48'),
(39, 'Marzo 2021', 3, 2021, 'https://mailchi.mp/13168c5404fd/fi252fotc8-5641374?e=a397c283a1', 3, 1, '2021-03-02 11:56:16'),
(40, 'Febrero 2021', 2, 2021, 'https://mailchi.mp/003001192763/boletn-alumni-ensea-por-mxico-febrero-2021?e=b59e525aca', 1, 1, '2021-04-19 12:36:45'),
(41, 'Marzo 2021', 3, 2021, 'https://mailchi.mp/d94c82569071/boletn-alumni-ensea-por-mxico-marzo-2021?e=b59e525aca', 1, 1, '2021-04-19 12:37:04'),
(43, 'Abril 2021', 4, 2021, 'https://mailchi.mp/3c842d2ba56f/boletn-alumni-ensea-por-mxico-abril-2021?e=b59e525aca', 1, 1, '2021-04-19 12:37:31'),
(44, 'Enero 2021', 1, 2021, 'http://mailchi.mp/ensenapormexico/enero2021', 2, 1, '2021-04-22 16:01:06'),
(45, 'Marzo 2021', 3, 2021, 'http://mailchi.mp/ensenapormexico/marzo-2021', 2, 1, '2021-04-22 16:01:28'),
(46, 'Abril 2021', 4, 2021, 'https://mailchi.mp/249a0119723e/fi252fotc8-5703434?e=a397c283a1', 3, 1, '2021-04-27 14:45:08'),
(47, 'Mayo 2021', 5, 2021, 'https://mailchi.mp/6577c54931a5/boletn-alumni-ensea-por-mxico-mayo-2021?e=b59e525aca', 1, 1, '2021-05-03 09:21:14'),
(48, 'Mayo 2021', 5, 2021, 'https://mailchi.mp/e30ab8e9d849/50fj2uqv9k-5714330?e=a397c283a1', 3, 1, '2021-05-18 13:42:08'),
(49, 'Junio 2021', 6, 2021, 'https://mailchi.mp/8615be57bea9/boletn-alumni-ensea-por-mxico-junio-2021?e=b59e525aca', 1, 1, '2021-06-01 16:52:44'),
(50, 'Junio 2021', 6, 2021, 'https://mailchi.mp/1f0a3fadf422/fi252fotc8-5725986?e=a397c283a1', 3, 1, '2021-06-11 17:14:35'),
(51, 'Julio 2021', 7, 2021, 'https://mailchi.mp/c2d1465b58bb/boletn-alumni-ensea-por-mxico-julio-2021?e=b59e525aca', 1, 1, '2021-07-02 12:27:56'),
(52, 'Agosto 2021', 8, 2021, 'https://us12.campaign-archive.com/?e=__test_email__&u=e3209f074466fc4a40d3fccb1&id=f5d33a8186', 1, 1, '2021-08-03 09:27:31'),
(53, 'Septiembre 2021', 9, 2021, 'https://mailchi.mp/7a66bbcb8479/boletn-alumni-ensea-por-mxico-septiembre-2021?e=b59e525aca', 1, 1, '2021-11-01 10:38:00'),
(54, 'Octubre 2021', 10, 2021, 'https://mailchi.mp/e4e9418302d3/boletn-alumni-ensea-por-mxico-octubre-2021?e=b59e525aca', 1, 1, '2021-11-01 10:38:18'),
(55, 'Noviembre 2021', 11, 2021, 'https://mailchi.mp/3ae0be5c43c5/boletn-alumni-ensea-por-mxico-noviembre-2021?e=b59e525aca', 1, 1, '2021-11-01 10:38:34'),
(58, 'Febrero 2022', 2, 2022, 'https://www.youtube.com', 1, 0, '2022-01-18 12:10:40'),
(59, 'Enero 2022', 1, 2022, 'https://www.facebook.com', 1, 1, '2022-01-18 12:22:22'),
(60, 'Abril 2022', 4, 2022, 'facebook.com', 1, 1, '2022-04-23 19:43:36'),
(61, 'Marzo 2022', 3, 2022, 'www.facebook.com', 1, 1, '2022-04-23 19:46:46'),
(62, 'Febrero 2022', 2, 2022, 'www.facebook.com', 2, 1, '2022-04-23 19:48:24'),
(63, 'Febrero 2022', 2, 2022, 'www.facebook.com', 2, 1, '2022-04-23 19:48:33'),
(64, 'Febrero 2022', 2, 2022, 'facebook.com', 2, 1, '2022-04-23 19:49:36'),
(65, 'Marzo 2022', 3, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:50:13'),
(66, 'Marzo 2022', 3, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:50:36'),
(67, 'Junio 2022', 6, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:50:50'),
(68, 'Julio 2022', 7, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:53:54'),
(69, 'Agosto 2022', 8, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:54:42'),
(70, 'Septiembre 2022', 9, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:55:32'),
(71, 'Octubre 2022', 10, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:56:16'),
(72, 'Noviembre 2022', 11, 2022, 'https://www.ensenapormexico.org/', 1, 1, '2022-04-23 19:57:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oportunities`
--

CREATE TABLE `oportunities` (
  `idO` int(11) NOT NULL,
  `organization` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `iDate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fDate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `forPEM` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `forAlumni` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `forStaff` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `forStudents` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `numApplicants` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `applicants` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oportunities`
--

INSERT INTO `oportunities` (`idO`, `organization`, `type`, `year`, `name`, `description`, `iDate`, `fDate`, `forPEM`, `forAlumni`, `forStaff`, `forStudents`, `link`, `numApplicants`, `applicants`, `status`) VALUES
(1, 'Enseña por México', 'Oferta laboral', '2020', 'ExM', 'Director de Asuntos Legales', '03/08/2020\n', '15/09/2020\n', '', 'X', '', '', '', '', '', 0),
(2, 'Aliado', 'Opciones de Estudio', '2020', 'Curso \"Desafíos y oportunidades de la economía digital\" del BID', '¿Conoces qué competencias laborales son las más demandadas hoy para sobrevivir en esta \"nueva normalidad\"? ¿Están América Latina y el Caribe preparados para tomar ventaja de esta era digital?<br>La revolución digital ya ha comenzado.<br>¿Te unes? Revisa la información aquí.<br>Curso abierto hasta el 17 de septiembre 2020', '20/07/2020\n', '17/09/2020\n', '', 'X', '', '', '', '', '', 0),
(3, 'Aliado', 'Convocatoria', '2020', 'Premio Docentes Extraordinarios: National Teacher Prize México', 'Movimiento STEM en alianza exclusiva con Varkey Foundation llevará a cabo la edición del Premio Docentes Extraordinarios: National Teacher Prize México presentado por Citibanamex, reconociendo con un 1 millón de pesos al mejor docente de nuestro país, quien será premiado en el marco del Congreso Nacional de Educación en STEM 2020.', '31/08/2020\n', '20/09/2020', '', '', '', '', 'https://docentesextraordinarios.org/', '', '', 0),
(4, 'Aliado', 'Convocatoria', '2020', 'Organiza tu propio TEDx en octubre', 'Countdown (impulsado por Future Stewards y TED) tiene como objetivo defender y acelerar las soluciones a la crisis climática, convirtiendo las ideas en acciones. El objetivo: construir un futuro mejor reduciendo a la mitad las emisiones de gases de efecto invernadero para 2030 en la carrera hacia un mundo sin carbono. Como parte de esta iniciativa, te brindamos acceso sin precedentes para organizar tu propio evento TEDx virtual o en persona. Como individuo, empresa u organización, puedes postularte ahora. Beneficios:\n1. Únete a la carrera hacia Zero y conviértete en un campeón climático. Esta es una oportunidad única para obtener un acceso privilegiado a las últimas ideas sobre la acción climática.\n2. Muestra tu ambición e inspira a tu red para que se una a ti en el viaje para cambiar el cambio climático.\n3. Involucra a los empleados, colegas, clientes y otras partes interesadas con una experiencia diferente en torno a un tema de interés común.\n4. Poco esfuerzo, gran impacto. Ni siquiera necesitarás crear tu propio contenido; ¡TEDx compartirá toda su formación y herramientas contigo!\n5. Sé parte de un movimiento global. Únete a una comunidad diversa de cientos de líderes que albergan TEDx Countdown en todo el mundo.\r\n', '10/08/2020', '15/10/2020\n', '', 'X', '', '', '', '', '', 0),
(5, 'Aliado', 'Opciones de Estudio', '2020', 'Curso \"Políticas Efectivas de desarrollo infantil\" del BID', 'Te invitamos a descubrir todo sobre el desarrollo infantil y su importancia en la sociedad en nuestro curso en línea abierto. Aprenderás más sobre:<br>• Interacción familiar y el rol de la comunidad<br>• Participación de los hombres en el cuidado de los niños<br>• Importancia del juego<br>• Calidad de los centros de cuidado infantil<br>Abierto desde el 2 de junio 2020 hasta el 18 de diciembre 2020<br>Metodología: a tu propio ritmo<br>Costo: Acceso al contenido gratis', '06/07/2020\n', '18/12/2020\n', '', 'X', '', '', 'https://www.edx.org/es/course/politicas-efectivas-de-desarrollo-infantil?utm_campaign=idbx&utm_medium=partner-marketing&utm_source=email&utm_content=desarrollo_infantil_mailchimp%0A', '', '', 0),
(6, 'Teach For All', 'Convocatoria', '2020', 'Comunidad \"Laboratorio de Conexión\" - Teach For All Latinoamérica', 'Algunos Alumni de la red de Teach For All en Latinoamércia crearon una nueva comunidad enfocada en investigaciones socioemocionales.<br>Su objetivo es generar un diseño dinámico de investigación latinoamericana de la red Teach For All con la finalidad de sistematizar metodologías y adaptarlas en los diversos contextos culturales con la intención maximizar el impacto en los principales aliados educativos.', '06/07/2020\n', '31/12/2020\n', '', 'X', '', '', 'https://drive.google.com/file/d/1OOwXBido9IpjTRjYCW1LZIGEmDKWp54s/view', '', '', 0),
(7, 'Aliado', 'Convocatoria', '2020', 'ICF', 'International Coach Federation (ICF) es la mayor organización de coaches en el mundo, reúne a más de 35 mil miembros en 145 países. En colaboración con Enseña por México, ICF lanza un piloto para que los Alumni de ExM puedan recibir coaching. Existen 2 categorías:<br>1. 20 lugares para Alumni recién egresados que aún no han encontrado trabajo, para apoyarlos en su búsqueda: entre 8 y 12 sesiones, 5 meses, $250 pesos / sesión, sesión quincenal<br>2. 10 lugares para cualquier Alumni interesado en desarrollarse profesionalmente: entre 8 y 12 sesiones, 5 meses, $500 pesos / sesión, sesión quincenal', '20/07/2020\n', '31/12/2020\n', '', 'X', '', '', 'https://docs.google.com/forms/d/e/1FAIpQLScDsvt00TWRuLYeeKBPJFDGqLulOLwl3vf97i7KUyBKDH2Ykw/viewform?usp=sf_link', '', '', 0),
(8, 'Aliado', 'Convocatoria', '2020', 'Spotlight on 21st Century Skills in Latin America and the Caribbean', 'HudrED y el BID buscan innovaciones enfocadas en cultivar \"habilidades para el Siglo 21\" en jóvenes de América Latina y el Caribe. Si eres un(a) innovador(a) con una solución relacionada con habilidades socioemocionales, aprendizaje basado en proyectos, música, deportes, entre otras -- ¡este llamado es para ti! ', '19/10/2020', '30/11/2020', '', 'X', '', '', 'https://hundred.org/en/collections/21st-century-skills-in-latin-america-and-the-caribbean?utm_medium=email&utm_source=Ashoka&utm_campaign=2799057_Copy%20of%20Newsletter%20Fellows%20MCC%2013%2F10%2F2020&dm_i=2ILH,1NZRL,9N71RI,5NTU5,1&nbsp;', '', '', 0),
(9, 'Aliado', 'Convocatoria', '2020', 'Ashoka Changemaker Summit', '\"¡Súmate a la reunión global más grande de Ashoka! Conecta con nuestra comunidad de innovadores sociales y líderes de los negocios y la filantropía para celebrar soluciones inspiradoras, aprender y colaborar en estrategias para el cambio sistémico.\r\nJunto con la comunidad global de agentes de cambio, queremos re-descrubrir la certeza al aprender y colaborar en cómo construir un futuro más resiliente a través del poder de la innovación social. \"', '19/10/2020', '19/11/2020', '', 'X', '', '', 'https://www.ashoka.org/en/event/ashoka-changemaker-summit-2020?utm_medium=email&utm_source=Ashoka&utm_campaign=2799057_Copy%20of%20Newsletter%20Fellows%20MCC%2013%2F10%2F2020&dm_i=2ILH,1NZRL,9N71RI,5NTU0,1', '', '', 0),
(10, 'Aliado', 'Oferta laboral', '2021', 'Toyota', 'Ingeniero/a de Calidad y Chemical Engineer', '11/01/2021', '15/02/2021', '', 'X', '', '', 'https://www.empleonuevo.com/empleo/chemical-engineer--d3674d20-ea7f-11ea-9502-6adbe925ebb1/tijuana--baja-california', '', '', 0),
(11, 'Teach For All', 'Convocatoria', '2021', 'Comunidad Laboratorio de Conexión - Teach For All', 'Desde el Equipo de investigación Docente necesitamos de la ayuda de las y los profes de la red Teach For All. \n\nPara eso, te invitamos a llenar la encuesta de percepción Docente. \n\nEl objetivo de la misma es conocer cómo los y las docentes de la red abordan el desarrollo de habilidades socioemocionales con sus estudiantes, así como sus fortalezas y áreas de mejora con respecto a este tema. \n\nSi nos apoyas en difundir con otras personas de tu generación, te lo agradeceremos mucho.', '11/01/2021', '15/02/2021', '', 'X', '', '', 'https://docs.google.com/forms/d/e/1FAIpQLSfx_3QN_-oCMAPET_oOhouCuD0k0uwkgDYm1f5kqfAna8iy5A/viewform', '', '', 0),
(12, 'Aliado', 'Oferta laboral', '2021', 'Radix Education', '1) Ejecutivo JR de Marketing y Ventas\n\n2) Content y Community Manager', '25/01/2021', '25/02/2021', '', 'X', '', '', 'https://drive.google.com/file/d/1iwgg2W4FooiCrxjFyoAtipWxCv3oOVEk/view', '', '', 0),
(13, 'Aliado', 'Opciones de Estudio', '2021', 'Becas de postgrados en inteligencia artificial de MBZUAI', 'Mohamed bin Zayed University of Artificial Intelligence (MBZUAI) en Abu Dhabi es una nueva universidad fundada por el gobierno de UAE que está ofreciendo becas completas de maestrías y postgrados en Computer Vision, Machine Learning y Natural Language Processing. Y están muy entusiasmados de tener una clase con estudiantes diversos de todo el mundo, incluyendo de Latinoamérica.\n\nLink con detalles sobre las becas: https://www.iie.org/mbzuai. \n\n• MBZUAI ofrece becas completas para maestrías y doctorados en Inteligencia Artificial que cubren: matrícula completa, alojamiento, seguro médico, viajes hacia y desde los EAU, y un apoyo mensual de $2100 USD para estudiantes de maestría y $2700 para doctorados.\n\n• La universidad tiene 3 áreas de programa que los estudiantes pueden elegir: visión por computadora, aprendizaje automático y procesamiento del lenguaje natural.\n\n• Los requisitos incluyen: título completado (BA o MS), promedio de calificaciones en el 20% superior de la clase académica, fluidez demostrada en inglés (examen TOEFL iBT o IESL), presentación de una declaración de propósito y dos recomendaciones. Candidatos al doctorado también deben enviar una propuesta de investigación de 3-5 páginas.\n\n• Para la clase de “Fall 2021” (que empieza en septiembre) están aceptando aplicaciones en un proceso continuo hasta el 15 de abril de 2021.', '25/01/2021', '25/02/2021', '', 'X', '', '', 'https://www.iie.org/mbzuai', '', '', 0),
(14, 'Aliado', 'Convocatoria', '2021', 'Nomina a Jóvenes Líderes para el Programa WISE de Líderes Emergentes', 'WISE Emerging Leaders es un programa de becas de nueve meses que tiene como objetivo cultivar la próxima generación de líderes educativos con las herramientas, habilidades y mentalidades necesarias para transformar sus comunidades y cambiar los sistemas. WISE busca jóvenes profesionales de la educación para apoyar su desarrollo profesional y personal. Da clic aquí para nominar a un joven líder antes del 28 de Febrero.', '', '31/03/2021', '', '', '', '', 'https://www.wise-qatar.org/wise-works/wise-emerging-leaders/', '', '', 0),
(15, 'Teach For All', 'Convocatoria', '2021', '¡Únete a la Comunidad de Conciencia Social de Teach For All LatAm!', 'Conoce a otros maestros, Alumni, staff y estudiantes de la red en la región de Latinoamérica para conversar y crear conciencia sobre la justicia social, compartir y aprender de los problemas en el sistema educativo. Regístrate aquí para recibir información sobre las próximas llamadas y los temas que te gustaría que se abordaran.', '', '31/03/2021', '', '', '', '', 'https://docs.google.com/forms/d/e/1FAIpQLSc7-IjlWsNLIE3JP1aj3J_S9L2gtEcfG085ub_j1qTDBJCW8w/viewform', '', '', 0),
(16, 'Aliado', 'Convocatoria', '2021', 'Escribe un Artículo para el \"Journal on Children\'s Lives\"', '\"Children First: Journal on Children\'s Lives\" es una nueva revista de la Comisión de Delhi para la Protección de los Derechos de los niños y está invitando a investigadores y escritores sobre educación en todo el mundo a enviar sus escritos antes del 20 de Febrero sobre el impacto del COVID-19 en la vida de los niños. La revista se publicará dos veces al año y tiene como objetivo profundizar el discurso en torno a los derechos y el desarrollo de la infancia en todo el mundo.', '', '31/03/2021', '', '', '', '', 'https://docs.google.com/forms/d/e/1FAIpQLScEg_LRc3JyqKmLXrXQ7oQqEIjgTFdUTG9JdoMcbgnaE46mtQ/viewform', '', '', 0),
(17, 'Aliado', 'Convocatoria', '2021', 'CleverKids Ofrece Inscripciones Gratis a Escuelas Alrededor del Mundo ', 'CleverKids es una plataforma en línea para compartir y aprender, diseñada para estudiantes talentosos con discapacidades de aprendizaje. Envía un email a hello@cleverkids.be antes del 14 de Febrero para registrar tu escuela o aula y recibir una suscripción gratuita de CLEVERKIDS hasta Septiembre de 2021 (que se extenderá en casos específicos).', '', '31/03/2021', '', '', '', '', 'https://www.cleverkids.be/', '', '', 0),
(18, 'Teach For All', 'Convocatoria', '2021', 'Únete a la Comunidad de Primera Infancia y Adapta Perspectivas Globales a tu Contexto Local', 'Lee sobre una de las experiencias de la comunidad y conoce cómo las perspectivas globales impactaron sus prácticas locales y completa este formulario si te interesa unirte a la comunidad para compartir en llamadas, aprender de expertos, participar en podcasts y desarrollar programas con perspectiva global en la Primera Infancia.', '', '31/03/2021', '', '', '', '', 'https://earlyinsights.org/the-power-of-global-perspectives-to-inform-local-innovations-in-early-education-3feb36cefec1', '', '', 0),
(19, 'Aliado', 'Convocatoria', '2021', 'Conviértete en Voluntario en RewirEd Talks y Comparte tu Voz', 'Dubai Cares, en asociación con RewirEd, una nueva plataforma global sobre educación, está invitando a voluntarios a participar en una iniciativa única que tiene como objetivo amplificar las voces que generalmente no se escuchan en las discusiones sobre el futuro de la educación. Comparte discusiones inspiradoras que inviten a la reflexión y / o conocimientos aprendidos. A los voluntarios se les acreditarán cinco horas de voluntariado y un certificado de participación por sus presentaciones. Lee más información y regístrate aquí antes del 15 de Febrero.', '', '15/02/2021', '', '', '', '', 'https://www.dubaicares.ae/initiatives/volunteering-opportunities/volunteer-rewiredtalks?ct=t(VE8_2017_Campaign_COPY_01', '', '', 0),
(20, 'Aliado', 'Convocatoria', '2021', 'Buscando Maestros Innovadores para Cambiar el Mundo ', '¿Está ejecutando una innovación que capacita / brinda apoyo a maestros utilizando tecnología o haz creado una herramienta / recurso orientado al educador con impacto comprobado? El Banco Mundial y HundrED se están asociando, con financiamiento de la Alianza Global para la Educación, para identificar y compartir soluciones de todo el mundo que capaciten y mejoren las prácticas de enseñanza y ayuden a los maestros a prosperar en un aula en constante cambio. Lee más información y envía tu solución aquí antes del 20 de Marzo. Un número selecto de soluciones serán seleccionadas para ayudarlos a crecer y recibir financiamiento.', '', '31/03/2021', '', '', '', '', 'https://hundred.org/en/collections/teachers-for-a-changing-world', '', '', 0),
(21, 'Teach For All', 'Convocatoria', '2021', 'Nueva Comunidad de Teach For All en Latinoamérica: Literatura Infantil y Juvenil ', 'Maestros y alumni de la red están lanzando una nueva comunidad para todos los interesados en intercambiar estrategias y recursos de mediación de lectura. Por favor completa este formulario antes del 20 de Febrero si te interesa unirte y recibir más información sobre los espacios virtuales que planean comenzar en marzo!', '', '20/02/2021', '', '', '', '', 'https://docs.google.com/forms/d/e/1FAIpQLSe35Xngsl8vEWqyJohIWmZhJZbykxyZNM0rpsls8lMI5qZHHQ/viewform', '', '', 0),
(22, 'Teach For All', 'Convocatoria', '2021', 'Experiencia de Aprendizaje: Profundización del Coaching', 'La Comunidad de Coaching Transformacional te invita a participar en esta experiencia extraordinaria que será facilitada por Jose Merino, fundador de Reencuadre en México.', '', '31/03/2021', '', 'X', '', '', 'https://docs.google.com/document/d/1tq14q3fe3Ag0BXj_qIln0sVThn7_edBzd0gYV7FcW2s/edit', '', '', 0),
(23, 'Aliado', 'Convocatoria', '2021', 'Global Teacher Prize 2021', 'El Global Teacher Prize sirve para subrayar la importancia de los educadores y el hecho de que, en todo el mundo, sus esfuerzos merecen ser reconocidos y celebrados. Busca reconocer los impactos de los mejores maestros, no solo en sus estudiantes sino en las comunidades que los rodean.', '', '31/03/2021', 'X', 'X', '', '', 'https://www.globalteacherprize.org/global-teacher-prize/apply-now/', '', '', 0),
(24, 'Aliado', 'Convocatoria', '2021', 'Teachers for a Changing World', 'Banco Mundial y HundrED se están asociando, con financiamiento de la Alianza Global para la Educación (GPE), para identificar y compartir soluciones de todo el mundo que están ayudando a los maestros a prosperar en un aula en constante cambio. \nPuedes tener mayor oportunidad de ser seleccionado si has creado una herramienta y este recurso está siendo utilizado por muchos más personas de tu comunidad educativa durante la pandemia para llegar a sus estudiantes, si utilizas tecnología de manera innovadora, entre muchas otras opciones.', '', '20/03/2021', 'X', 'X', '', '', 'https://hundred.org/en/collections/teachers-for-a-changing-world', '', '', 0),
(25, 'Aliado', 'Convocatoria', '2021', 'Policython 2021', '¿Cuál será el futuro de las ciudades y cómo podemos contribuir a asegurar su sostenibilidad ante los desafíos que enfrentamos actualmente? \nSi tienes experiencia en temas de temas de: \n_ género, movilidad y/o salud pública. \n_ diseño, implementación y/o evaluación de políticas públicas en México. \n_ o has participado en sesiones de co-creación de iniciativas de política pública, prospección creativa o sesiones de innovación multidisciplinaria. \nEntonces forma parte del grupo de expertos seleccionados para re-imaginar, co-crear y accionar a través de la colaboración intersectorial y la creación de políticas públicas en materia de género, movilidad y salud pública.', '18/02/2021', '25/02/2021', '', 'X', '', '', 'https://airtable.com/shrkqgHX8qIVaU3n1?utm_source=makesense_m%C3%A9xico&utm_campaign=cbb5e53a33-EMAIL_CAMPAIGN_2020_02_10_09_43_COPY_01&utm_medium=email&utm_term=0_e093be1f98-cbb5e53a33-&mc_cid=cbb5e53a33&mc_eid=UNIQID', '', '', 0),
(26, 'Aliado', 'Convocatoria', '2021', 'Curso de cultura de la legalidad para jóvenes del MUCD', 'Te invitamos al curso de cultura de la legalidad para jóvenes, el cual tiene como objetivo formar a líderes juveniles como promotores activos de la cultura de la legalidad y como gestores directos de proyectos sociales, con el fin de que se asuman como agentes de cambio e implementen acciones de solución a las problemáticas que enfrentan en su comunidad. \nLa formación se imparte en la plataforma digital de MUCD y se complementa con sesiones Zoom. Iniciamos el 2 de marzo y concluimos el 23 de marzo. \nEl curso es una formación gratuita y con valor curricular. Al final se les expide una acreditación como líder juvenil y carta de recomendación.', '23/02/2021', '02/03/2021', 'X', 'X', '', '', 'https://formacion.mucd.org.mx/login/index.php', '', '', 0),
(27, 'Aliado', 'Convocatoria', '2021', 'ASHOKA OFRECE CURSO SOBRE TRABAJO CON EL GOBIERNO PARA LOGRAR CAMBIO SISTÉMICO', 'Nos alegra invitarte a nuestro nuevo curso \"Trabajo con el gobierno como un camino hacia el cambio sistémico\" desarrollado por el equipo de Globalizer con el apoyo de PES Latam.\nEste curso es una recopilación y analisis de la experiencia de los Fellows de Ashoka que trabajan con el gobierno, convertida en una ruta de aprendizaje guiada y estructurada, para que emprendedores sociales, financistas y distintas organizaciones puedan beneficiarse de estos conocimientos y lograr su mayor potencial de impacto posible.\nLos módulos te ayudarán a responder las siguientes preguntas:\n¿Debería considerar trabajar con el gobierno para abordar un problema social? Si es así, en qué rol.\n¿Quién dentro del gobierno tiene el poder de tomar decisiones y cuál es mi estrategia para lograr que se sumen?\n¿Qué tácticas comprobadas pueden ayudar a aumentar la conciencia, la voluntad y la capacidad de actuar de nuestras contrapartes gubernamentales?\n¿Hay recursos que me puedan ayudar a trabajar con el gobierno?\nPara realizar el curso y ver más detalles ingresa aquí: https://academy.vc4a.com/courses/trabajo-con-el-gobierno/?utm_medium=email&utm_source=Ashoka&utm_campaign=2872439_Curso%20Trabajo%20con%20el%20Gobierno%20como%20un%20camino%20hacia%20el%20cambio%20sist%C3%A9mico&dm_i=2ILH,1PKDZ,9N71RI,5U6GF,1\nEl curso es de libre acceso en la plataforma ES2 Latam gracias al soporte de PES LATAM, una alianza global que que impulsa el emprendimiento social en América Latina y el Caribe: https://bit.ly/3aNzdm4', '24/02/2021', '30/04/2021', '', 'x', '', '', 'https://academy.vc4a.com/courses/trabajo-con-el-gobierno/?utm_medium=email&utm_source=Ashoka&utm_campaign=2872439_Curso%20Trabajo%20con%20el%20Gobierno%20como%20un%20camino%20hacia%20el%20cambio%20sist%C3%A9mico&dm_i=2ILH,1PKDZ,9N71RI,5U6GF,1', '', '', 0),
(28, 'Teach For All', 'Convocatoria', '2021', 'Iniciativa Conectores Globales', 'Ya está abierta la convocatoria para postular como Conectores Globales de Teach For All.', '24/02/2021', '02/04/2021', '', '', '', '', 'https://teachforall.org/iniciativa-conectores-globales-informaci%C3%B3n-para-postular-o-nominar-candidatos', '', '', 0),
(29, 'Teach For All', 'Convocatoria', '2021', 'Fondo de Comunidades y Conexiones', 'Teach For All está poniendo en marcha un pequeño Fondo de Comunidades y Conexiones, abierto a participantes y alumni de la red. El objetivo del fondo es apoyar iniciativas auto-organizadas y transfronterizas que promuevan el aprendizaje a través de la conectividad entre pares.​ Las solicitudes se recibirán de forma contínua y los fondos se otorgarán de acuerdo a los Criterios de Evaluación.', '24/02/2021', '31/12/2021', '', '', '', '', 'https://teachforall.app.box.com/s/alkv0jk8hnb5tj68e8kjlzbv2rgeco32', '', '', 0),
(30, 'Aliado', 'Convocatoria', '2021', 'CROSSROADS EMERGING LEADERS PROGRAM', 'Descubre el Programa de Líderes Emergentes de Crossroads, un programa de desarrollo académico y de liderazgo totalmente financiado para estudiantes universitarios de bajos ingresos y de primer grado, con sede en el Instituto Mittal de Harvard.', '01/03/2021', '15/03/2021', '', '', '', '', 'https://drive.google.com/file/d/1ffsOnYUD8MYjjSv-lrcW5VfoAo8rSrh3/view?usp=sharing', '', '', 0),
(31, 'Enseña por México', 'Convocatoria', '2021', 'Espacios de Escucha', 'Te invitamos al próximo Espacio de Escucha con el tema \"Mujer Latinoamericana\" el día viernes 5 de marzo del 2021 a las 19:00 hrs.\nPara la sesión queremos construir una definición colectiva sobre el significado de \"Mujer Latinoamericana\" por lo que te pedimos contestar la siguiente pregunta: https://forms.gle/p8VNLtMEXzKjQphk9\n**Espacio de mujeres para mujeres.**\n¡Te esperamos!\nLink de ZOOM: https://zoom.us/j/94208406940', '02/03/2021', '05/03/2021', '', '', '', '', 'https://forms.gle/p8VNLtMEXzKjQphk9', '', '', 0),
(32, 'Teach For All', 'Convocatoria', '2021', 'Comunidad de Educación Sexual Integral', '¡Lanzamos la Comunidad de Educación Sexual Integral!\nTe invitamos a sumarte al primer encuentro para conversar sobre la realidad de la educación sexual en nuestros países: cuáles son las normativas vigentes, qué problemáticas o resistencias existen en torno a ella, compartir experiencias docentes y comunitarias, propuestas, proyectos y buenas prácticas que hoy están sucediendo.\n¡Comparte la invitación y sumate a esta llamada el próximo martes 9 de marzo!\nHorario: 16:00 hrs\nEvento abierto a toda la comunidad educativa (Alumni, PEM, Docentes, Estudiantes y Ex-Estudiantes, Staff)', '02/03/2021', '09/03/2021', '', '', '', '', 'https://us02web.zoom.us/meeting/register/tZckceuupjIpHNGB9Z-b34Zl_xwp4df89VT_', '', '', 0),
(33, 'Aliado', 'Opciones de Estudio', '2021', 'Curso: Trabajo con el Gobierno como un Camino Hacia el Cambio Sistémico', 'Ashoka te invita al curso \"Trabajo con el gobierno como un camino hacia el cambio sistémico\", desarrollado por el equipo de Globalizer con el apoyo de PES Latam.\nEste curso es una recopilación y análisis de la experiencia de los Fellows de Ashoka que trabajan con el gobierno, convertida en una ruta de aprendizaje guiada y estructurada, para que emprendedores sociales, financiadores y distintas organizaciones puedan beneficiarse de estos conocimientos y lograr su mayor potencial de impacto posible. \n¿Debería considerar trabajar con el gobierno para abordar un problema social, y en qué rol? \n¿Quién dentro del gobierno tiene el poder de tomar decisiones y cuál es mi estrategia para lograr que se sumen? \n¿Qué tácticas comprobadas pueden ayudar a aumentar la conciencia, la voluntad y la capacidad de actuar de nuestras contrapartes gubernamentales? \n¿Hay recursos que me puedan ayudar a trabajar con el gobierno? \n¡Inscríbete ya para resolves estas y más preguntas!', '03/03/2021', '31/12/2021', '', '', '', '', 'https://academy.vc4a.com/courses/trabajo-con-el-gobierno/?utm_medium=email&utm_source=Ashoka&utm_campaign=2872439_Curso%20Trabajo%20con%20el%20Gobierno%20como%20un%20camino%20hacia%20el%20cambio%20sist%C3%A9mico&dm_t=0,0,0,0,0&dm_i=2ILH,1PWCZ,9N71RI,5VIJO,1', '', '', 1),
(34, 'Aliado', 'Opciones de Estudio', '2021', 'Diplomado en Responsabilidad Social ISO 2600', 'Programa realizado por la Universidad ORT México en conjunto con AliaRSE y CONLA con el objetivo de formar profesionales especializados en la Norma ISO 26000 en Responsabilidad Social, capaces de acompañar a empresas y organizaciones en la implementación del ISO 26000, con un ejercicio ético y una visión sistémica que promueva la vinculación con la problemática social, económica, política y ambiental de nuestro país. \n\nDirigido a: directivos y gerentes de empresas interesadas en promover la Responsabilidad Social. \nModalidad: en línea \nDuración: 144 horas \nHorario: martes y jueves de 18:00 a 21:00 h \nCosto: $14,000 MXN (con opción de beca del 20%) \nInicio: 16 de marzo de 2021 \nContacto: informes@ort.edu.mx | 55 67218576 \nPlan de estudios e semblanzas de los facilitadores: https://www.ort.edu.mx/diplomado-iso26000', '03/03/2021', '16/03/2021', '', '', '', '', 'https://www.ort.edu.mx/diplomado-iso26000', '', '', 0),
(35, 'Aliado', 'Convocatoria', '2021', 'Lanzan oferta de trabajo temporal para maestros mexicanos en EU', 'La organización Participate Learning abrió la convocatoria para que maestros mexicanos trabajen hasta cinco años dando clases a niños en Estados Unidos.', '03/03/2021', '31/12/2021', '', '', '', '', 'https://www.viveusa.mx/negocios/lanzan-oferta-de-trabajo-temporal-para-maestros-mexicanos-en-eu', '', '', 0),
(36, 'Aliado', 'Convocatoria', '2021', 'Leading Education', 'Somos una organización que reúne a jóvenes de 20 a 35 años de Latinoamérica con vocación y compromiso. Junto a Latin America Leadership Program de la Universidad de Georgetown, lanzamos una nueva iniciativa con la misión de acompañarlos en su desarrollo personal y profesional. \nOfrecemos un espacio de formación de 4 meses donde junto a profesores reconocidos, aprenderán habilidades técnicas pero también blandas para potenciar su liderazgo y comprender los desafíos que hoy presentan los sistemas educativos de la región. Comenzará el 7 de abril y finalizará el 31 de julio.\nEntre los principales temas a desarrollarse se encontrarán: casos nacionales, buenas prácticas educativas, políticas de formación laboral, finanzas e inversión, empresas del sector (su origen y relevancia), liderazgo, negociación, comunicación, trabajo en equipo y datos, entre otros.\nAdemás de ser una experiencia única y de alta calidad, será el corazón de una gran red de jóvenes decididos a cambiar la educación.\nTe invitamos a conocer más sobre el programa ingresando en: www.leadingedu.org', '03/03/2021', '07/04/2021', '', '', '', '', 'http://bit.ly/Leading_2021', '', '', 0),
(37, 'Aliado', 'Convocatoria', '2021', 'Purpose Challenge | El Futuro de la Educación en México', '¿Te gustaría ayudar a transformar el futuro de la educación?\nEste próximo 17 de abril, personas de todo México y el mundo uniremos fuerzas para idear diferentes formas de transformar la educación y crear mejores sistemas para nuestras generaciones futuras.\nCualquier persona o startup se puede registrar antes del 7 de abril.\n▶️ Recibirás capacitación sobre metodologías de innovación y tendrás acceso a conferencias inspiradoras del 12 al 16 de Abril.\n▶️ Tendrás acceso a mentores y asesores para generar iniciativas que puedan redefinir la educación.\n▶️ Generar un impacto positivo en el mundo.\n▶️ Obtendrás un diploma de participación blockchain gratuito.\n▶️ Las mejores iniciativas recibirán mentoría de un año con seguimiento semanal y tendrán acceso a presentar su proyecto ante inversionistas especializados en el tema.\n¡Únete hoy al Desafío del Futuro de la Educación México!\nEnseña por México es aliado del evento entonces si te registras, escribe a kathrin@ensenapormexico.org', '20/03/2021', '17/04/2021', '', '', '', '', 'https://www.purposealliance.org/futuro-education-mexico', '', '', 0),
(38, 'Aliado', 'Convocatoria', '2021', 'UNESCO Global Learning House initiative', 'This is an opportunity for teaching participants and alumni to contribute actively to a global project that’s being set up under the leadership of the UNESCO Global Education Coalition to help address the learning losses that our communities have been navigating due to the pandemic. The teachers who join this initiative will gain free access to and unlimited use of a growing global suite of educational resources, they’ll become part of this Global Learning House network and gain access to events hosted under the Global Education Coalition, and they’ll be recognized by UNESCO as a member of the “Teach For Global Learning House” network. This is not a funding opportunity, but we do think it could be amazing for a critical mass of Teach For All network partner teachers to contribute to and engage in this global discussion.\nApply here by April 30! The responsible team at UNESCO can be contacted at globallearninghouse@unesco.org.', '20/03/2021', '30/04/2021', '', '', '', '', 'https://en.unesco.org/covid19/educationresponse/globalcoalition', '', '', 0),
(39, 'Aliado', 'Opciones de Estudio', '2021', 'Curso de cultura de la legalidad para jóvenes del MUCD', 'Te invitamos al curso de cultura de la legalidad para jóvenes, el cual tiene como objetivo formar a líderes juveniles como promotores activos de la cultura de la legalidad y como gestores directos de proyectos sociales, con el fin de que se asuman como agentes de cambio e implementen acciones de solución a las problemáticas que enfrentan en su comunidad.\nLa formación se imparte en la plataforma digital de MUCD y se complementa con sesiones Zoom. Iniciamos el 5 de abril y concluimos el 20 de abril.\nEl curso es una formación gratuita y con valor curricular. Al final se les expide una acreditación como líder juvenil y carta de recomendación.', '24/03/2021', '05/04/2021', '', '', '', '', 'https://formacion.mucd.org.mx/course/view.php?id=94', '', '', 0),
(40, 'Teach For All', 'Convocatoria', '2021', 'Lista de oportunidades Teach For All', 'Teach For All acaba de lanzar una sección en su página web que recopila TODAS las oportunidades para alumni en un lugar.\nSe pueden suscribir a CONNECT para recibir noticias de nuevas oportunidades, o ingresar a la página a ver qué hay de nuevo.', '04/05/2021', '31/12/2025', '', '', '', '', 'https://teachforall.org/nta-opportunities', '', '', 1),
(41, 'Aliado', 'Convocatoria', '2021', 'Lanzan oferta de trabajo temporal para maestros mexicanos en EU', 'La organización Participate Learning abrió la convocatoria para que maestros mexicanos trabajen hasta cinco años dando clases a niños en Estados Unidos. ', '03/03/2021', '31/12/2021', '', '', '', '', 'https://www.viveusa.mx/negocios/lanzan-oferta-de-trabajo-temporal-para-maestros-mexicanos-en-eu', '', '', 1),
(42, 'Aliado', 'Convocatoria', '2021', 'Starling Collective 2021', 'GivingTuesday abrió la convocatoria para el ciclo 2021 de Starling Collective, un programa de aprendizaje global y una beca innovadora diseñados para apoyar a líderes comunitarios, activistas, artistas y agentes de cambio, que trabajan para fomentar la generosidad, la empatía, la equidad y la justicia. El programa ofrece asesoramiento, aprendizaje entre pares y conexión con la comunidad global de líderes del movimiento.', '03/09/2021', '01/09/2021', '', '', '', '', 'https://www.givingtuesday.org/es/starling-collective/ ', '', '', 1),
(43, 'Teach For All', 'Convocatoria', '2021', 'Programa de Ment-working', 'Nueva oportunidad de conectar con las y los alumni de la red de Teach For All en Latinoamérica: el Programa de Ment-working', '17/08/2021', '03/09/2021', '', 'X', '', '', 'https://docs.google.com/document/d/1FIc1f-wnUGFg_o8xBSo8qj4Pl8Rl-WcYqJ__vRog8f8/edit?usp=sharing', '', '', 1),
(44, 'Aliado', 'Convocatoria', '2021', 'Programa “Knowledgehook en mi Escuela”', 'El área de Investigación y Desarrollo de Radix Education estará lanzando un piloto del programa “Knowledgehook en mi Escuela” este agosto con docentes de matemáticas de nivel primaria y secundaria de diferentes entidades. federativas.', '18/08/2021', '31/08/2021', 'X', 'X', '', '', 'https://drive.google.com/file/d/10LSG6eHimCEF_pHHhYuR86kSG1OahsLH/view?usp=sharing', '', '', 1),
(45, 'Aliado', 'Convocatoria', '2021', 'EL COLE ONLINE (ECO) | REPASAR.COM', '\"El equipo trae para las escuelas, liceos, colegios e instituciones educativas (formales y no formales) de América Latina, el proyecto El Cole Online (ECO).  En https://www.eco.repasar.com puedes encontrar información sobre esta solución que integra, facilita y unifica la gestión y planificación de clases y recursos educativos dirigida especialmente a colegios de nivel medio/bajo que han sido afectados por la pandemia y que dan clases en modalidad virtual y/o híbrida.\r\nEstán ofreciendo pruebas piloto sin costo para colegios de la región.\r\nSi te interesa, contacta a María Inés Garriga +58 (412) 255-1111 maria@repasar.com\"', '19/08/2021', '31/12/2021', 'X', 'X', '', '', 'https://www.eco.repasar.com', '', '', 1),
(46, 'Aliado', 'Convocatoria', '2021', 'Finanzas para compartir', 'Fomentar en niñas, niños y adolescentes decisiones responsables basadas en valores que apunten a la sostenibilidad de los recursos del planeta, a través de actividades lúdicas.', '23/08/2021', '27/08/2021', '', '', '', '', 'https://drive.google.com/file/d/1fzZu4cQfanc2ZmzRKaAQFep2ocXqFA5h/view?usp=sharing', '', '', 1),
(47, 'Aliado', 'Convocatoria', '2021', 'Young Antiracist Leadership Project (YALP)', 'Estamos buscando ideas que ayuden disminuir el racismo en México y a los nuevos jóvenes líderes/as antirracistas para fortalecer habilidades en activismo digital, investigación, desarrollo de proyectos,  incidencia política, defensoría de derechos humanos y procuración de fondos, de la mano de expertas/os/es provenientes de la academia, gobierno, activismos y entes internacionales de primer nivel.', '25/08/2021', '29/08/2021', '', '', '', '', 'https://racismo.mx/yalp-2021', '', '', 1),
(48, 'Aliado', 'Convocatoria', '2021', 'Convocatoria: Fortalece tus acciones para la creación de ciudades más sustentables', 'La Cooperación Alemana al Desarrollo Sustentable (GIZ) en México con la colaboración de Alternativas y Capacidades A.C te invitan a participar en la convocatoria Fortalecimiento de la Sociedad Civil Organizada que promueve el uso sustentable del espacio público urbano.', '30/08/2021', '05/09/2021', '', '', '', '', 'https://alternativasycapacidades.org/noticias/convocatoria/', '', '', 1),
(49, 'Enseña por México', 'Convocatoria', '2021', 'Fortalecimiento de incidencia en políticas públicas', 'Postula y fortalecer tus conocimientos y habilidades para realizar incidencia en políticas públicas educativas y de primera infancia.', '06/09/2021', '15/09/2021', '', '', '', '', 'https://docs.google.com/document/d/184JOgaaIoh4rI4p8jm-C2iFe4IffzRYq/edit', '', '', 1),
(50, 'Enseña por México', 'Convocatoria', '2021', 'Convocatoria \"La nueva voz de \"El poder de las emociones\"', '\"Enseña por México está buscando a 2 nuevos locutores para el podcast semanal “El Poder de las Emociones”. \r\nSi ya has escuchado El Poder de las Emociones, sabes que Ale Contreras y Raúl Carlín, alumni de Enseña por México, conducen este programa, ahora estamos buscando darle la oportunidad a más PEM y/o alumni de ser la voz de El Poder de las Emociones.\r\nConsulta la convocatoria para ser la nueva voz de El Poder de las Emociones y postula escribiendo a kathrin@ensenapormexico.org\"', '08/10/2021', '17/10/2021', '', '', '', '', 'https://mcusercontent.com/b953ce046a7ae6516869f6bc5/files/1cc6df4c-67d9-74b4-88c0-c7d6f186f11c/Convocatoria_La_nueva_voz_de_El_Poder_de_las_Emociones.pdf', '', '', 1),
(51, 'Aliado', 'Convocatoria', '2021', 'Convocatoria \"Comunidades Afectivas Resilientes\"', 'Comunidades Afectivas Resilientes tiene como objetivo impulsar el desarrollo socioemocional de agentes educativos, enriquecer sus prácticas pedagógicas y fortalecer sus habilidades de colaboración.', '11/10/2021', '21/10/2021', '', '', '', '', 'https://docs.google.com/document/d/1eyMqI0GvUUhTIfZoCSIdooFektk_cIXuNb55ObmNfUw/edit', '', '', 1),
(52, 'Aliado', 'Convocatoria', '2021', 'Comunidad de Práctica', 'Radix Education en colaboración con Knowledgehook.mx te invitan a diseñar, facilitar y liderar una Comunidad de Práctica a llevarse a cabo los días miércoles 17 y jueves 18 de noviembre de 2021.', '12/10/2021', '31/10/2021', '', '', '', '', 'https://mcusercontent.com/e2bcef2f19ea15e67f1748d3a/files/e6192e16-03b1-cf48-aca0-c62924d1e734/KH___Estructura_Comunidad_de_Pr%C3%A1ctica_Radix.pdf', '', '', 1),
(53, 'Aliado', 'Convocatoria', '2021', 'Congreso Internacional de Pertinencia de la Educación 2021', 'Podrán participar con trabajos de investigación como ponentes.', '20/09/2021', '15/10/2021', '', '', '', '', 'https://drive.google.com/file/d/1veTb_Pm03OV7htWNnHobX_8uI6TA-Wto/view?usp=sharing', '', '', 1),
(54, 'Aliado', 'Convocatoria', '2021', 'CONVOCATORIA DE INNOVACIÓN PARA LA JUSTICIA EDUCACIONAL EN CENTROAMÉRICA Y EL CARIBE', 'Pueden participar organizaciones sin fines de lucro como: redes de escuelas, ONGs, gobiernos locales y municipales, secretarías estatales de educación, organizaciones de la sociedad civil, corporaciones, organizaciones comunitarias y gremiales.', '15/10/2021', '05/12/2021', '', '', '', '', 'https://comunidad.socialab.com/challenges/convocatoria-KIXLA-SUMMA-innovaciones?fbclid=IwAR11LnOB1uyorveQpxTP8jddKL8N1gj4cnhiNyBPPihkWToiZ-FmZw2P3Fw', '', '', 1),
(55, 'Aliado', 'Opciones de Estudio', '2021', 'Convocatoria de Ingreso al Ciclo Primavera 2022 en la Universidad ORT con acceso a Fondo de Becas', '\"Inicio de clases: enero 2022\r\nLas y los alumni tienen acceso al Fondo de Becas, que los puede apoyar con descuentos en colegiaturas de hasta 50%. \r\n50% en posgrados y la Lic. en Administración y Emprendimiento Social\r\n25% en las licenciaturas en Comunicación, Derecho y Psicología \r\n20% en programas de Extensión Universitaria\"', '19/10/2021', '31/01/2022', '', '', '', '', 'https://ort.edu.mx/', '', '', 1),
(59, 'Aliado', 'Convocatoria', '2021', 'Echidna Global Scholars Program', 'The program is a six-month visiting fellowship in Washington, D.C. that aims to strengthen the capacity of local leaders to drive evidence-based change in girlsâ€™ education in low- and middle-income countries around the world. Upon completing the program, scholars join a robust alumni network of leading girlsâ€™ education practitioners and experts where they continue to receive guidance and support to promote their collective influence on girlsâ€™ education.\r', '19/10/2021', '1/12/2021', '', '', '', '', 'https://careers-brookings.icims.com/jobs/2748/echidna-global-scholar-%28job-id%3a-2021-2748%29/job?mobile=false&width=890&height=500&bga=true&needsRedirect=false&jan1offset=-300&jun1offset=-240&utm_campaign=Center+for+Universal+Education&utm_medium=email&utm_content=170808557&utm_source=hs_email', '', '', 1),
(60, 'Aliado', 'Convocatoria', '2021', 'Chat for Impact Global Bootcamp Series 2021', 'Â¿Quieres conectar con tus comunidades de impacto a travÃ©s de Whatsapp?', '27/10/2021', '3/11/2021', '', '', '', '', 'https://www.turn.io/bootcamp/chat-for-impact-global-bootcamp-series-2021?utm_source=Emprendedores+2019+-+Coronavirus&utm_campaign=dccf1d430d-EMAIL_CAMPAIGN_2020_07_27_08_15_COPY_01&utm_medium=email&utm_term=0_2941757cd5-dccf1d430d-', '', '', 1),
(61, 'Aliado', 'Convocatoria', '2021', 'Convocatoria La Chispa Incubadora', 'SÃ© parte de La Chispa Incubadora para crear o fortalecer tu emprendimiento.\r\n', '16/11/2021', '25/11/2021', '', '', '', '', 'https://drive.google.com/file/d/1Og7prrXWfx4vcjAHqpkbKGFOt1NWVFqt/view?usp=sharing', '', '', 1),
(62, 'Aliado', 'Convocatoria', '2021', 'Sense_camp 2021 de Makesense', 'PodrÃ¡s participar en varias sesiones sobre emprendimiento como: Transformando el mundo con emprendimiento social, 5 Pasos para crear un proyecto con Design Thinking, etc.\n', '16/11/2021', '27/11/2021', '', '', '', '', 'https://sensecamplatam.com/?mc_cid=9cc5d29b65&mc_eid=b7e70e58b2&fbclid=IwAR1TSuxxSPXZBPvY6DsisAfwKPqHEXTQEC7NLLHi_oIoVRKH7OEtxN_qG6g', '', '', 1),
(63, 'Aliado', 'Convocatoria', '2021', 'Bitcoin Bankathon', 'Llamando a todos los programadores, diseÃ±adores, e innovadores. Banco Hipotecario estÃ¡ invitando a las mentes creativas a El Salvador para diseÃ±ar prototipos que puedan ayudar a facilitar la adopciÃ³n del #Bitcoin en el sistema de servicios financieros.\nEmpezando desde el 19 de noviembre, los equipos podrÃ¡n pasar 3 emocionantes semanas prototipando sus ideas y Â¡tener la oportunidad de ganar de $250 mil dÃ³lares en premios! ', '16/11/2021', '19/11/2021', '', '', '', '', 'www.bitcoin-alliance.org', '', '', 1),
(64, 'Aliado', 'Convocatoria', '2021', 'Una idea 2021', 'Grandes inventos y descubrimientos han cambiado la historia, como, el fuego, la rueda, la imprenta, el telÃ©grafo y un sin fin de ideas que traspasaron del papel de las y los innovadores y las volvieron realidad.\nÂ¿Tienes una idea para compartir con el mundo?', '22/11/2021', '30/11/2021', '', '', '', '', 'https://unaidea.historyplay.tv', '', '', 1),
(65, 'Teach For All', 'Convocatoria', '2021', 'Ooportunidad de desarrollo de liderazgo en PI', 'Los participantes recibirÃ¡n formaciÃ³n, tutorÃ­a y apoyo para implementar proyectos de impacto en PI', '24/11/2021', '6/12/2021', '', '', '', '', 'https://teachforall.org/nta-opportunities/10377?expanded=1', '', '', 1),
(66, 'Teach For All', 'Convocatoria', '2021', 'Completa la encuesta #LÃ­deresEscolaresFortalecidos', 'Busca empoderar las voces de los educadores en los debates de polÃ­ticas sobre liderazgo escolar. ', '24/11/2021', '3/12/2021', '', '', '', '', 'https://survey.zohopublic.com/zs/TPD7FO', '', '', 1),
(67, 'Aliado', 'Convocatoria', '2021', 'Programa Atlantic Fellows', 'London School of Economics abre postulaciones a becas para programa Atlantic Fellows para la Equidad EconÃ³mica y Social\n', '1/12/2021', '10/1/2022', '', '', '', '', 'https://www.summaedu.org/london-school-of-economics-abre-postulaciones-a-becas-para-programa-atlantic-fellows-para-la-equidad-economica-y-social/', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orgdata`
--

CREATE TABLE `orgdata` (
  `idOD` int(11) NOT NULL,
  `idU` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comercialname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orgdata`
--

INSERT INTO `orgdata` (`idOD`, `idU`, `name`, `comercialname`, `address`, `description`, `link`, `img`) VALUES
(1, 2, 'Enseña por México', 'Enseña por México I.A.P.', 'Londres 241, 06600', 'Somos chidos.', 'https://www.ensenapormexico.org', NULL),
(2, 6, 'Razón social ABC', 'Nombre comercial ABC', 'Dirección 123 ABC', 'Descripción de prueba ABC', 'https://www.ensenapormexico.org', 'profile6.jpg'),
(3, 223, 'Nombre comercial', 'Organizacion', 'Dirección', 'Descripción', 'www.youtube.com', 'profile223.jpg'),
(4, 235, 'rsp', 'ncp', 'dp', '', 'facebook.com', NULL),
(5, 236, 'rz', 'nm', 'dr', '', 'instagram.com', NULL),
(6, 237, 'rz3', 'nm3', 'dir3', '', 'twitter.com', NULL),
(7, 238, 'r4', 'n4', 'd4', '', 'facebook.com', NULL),
(8, 239, '5', '5', '5', '', 'instagram.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `idP` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`idP`, `page`, `link`, `status`) VALUES
(1, 'INICIO', 'inicio', 1),
(2, 'SER ALUMNI', 'ser-alumni', 1),
(3, 'COMUNIDAD', 'comunidad', 1),
(4, 'OPORTUNIDADES', 'oportunidades', 1),
(5, 'BOLSA DE TRABAJO', 'bolsa-trabajo', 1),
(6, 'VINCÚLATE', 'vinculate', 1),
(7, 'NOTICIAS', 'noticias', 1),
(8, 'PERFIL', 'perfil', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulations`
--

CREATE TABLE `postulations` (
  `idP` int(11) NOT NULL,
  `vacant` int(11) NOT NULL,
  `alumni` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `cv` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `motiveletter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `recommendationletter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `washired` int(2) NOT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hireddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `postulations`
--

INSERT INTO `postulations` (`idP`, `vacant`, `alumni`, `timestamp`, `status`, `cv`, `motiveletter`, `recommendationletter`, `washired`, `comments`, `reasons`, `hireddate`) VALUES
(15, 7, 216, '2022-02-10 19:37:37', 4, 'c29578ae68707da8324c6bc4062aec75.pdf', '05f6489071557570dd788ee16e66e4d0.pdf', '', 0, '', '|nocubreperfil|otra|Comenta que ya tiene otro trabajo.|', NULL),
(16, 6, 216, '2022-02-10 19:38:41', 1, '', '', '', 0, '', NULL, NULL),
(17, 7, 5, '2022-02-10 19:41:39', 3, 'a677e0c77563d78837bfc5b86946d702.pdf', '6dcb58f74e349f3b0b8acdff0478cbd5.pdf', '', 0, '', '', NULL),
(18, 6, 5, '2022-02-10 19:41:43', 3, '', '', '', 0, '', '', NULL),
(19, 7, 222, '2022-02-21 12:45:29', 1, 'a7d6779c5df07c8a2c981aa2961eb896.pdf', '9768a5c9d59df916625696291273740b.pdf', '', 0, '', NULL, NULL),
(20, 6, 222, '2022-02-21 12:45:34', 1, '', '', '', 0, '', NULL, NULL),
(21, 10, 222, '2022-02-21 16:05:06', 1, '', '', '', 0, '', NULL, NULL),
(22, 8, 222, '2022-02-23 13:12:22', 1, '', '', '', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulationsstatus`
--

CREATE TABLE `postulationsstatus` (
  `idPS` int(11) NOT NULL,
  `statusPS` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `postulationsstatus`
--

INSERT INTO `postulationsstatus` (`idPS`, `statusPS`) VALUES
(1, 'En proceso'),
(2, 'Pasó primer filtro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requestspass`
--

CREATE TABLE `requestspass` (
  `idR` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `code` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `requestspass`
--

INSERT INTO `requestspass` (`idR`, `user`, `code`, `status`, `timestamp`) VALUES
(1, 1, 'ae193a8dc774240c4ceb8d0b3696ff02', 1, '2022-01-19 06:29:47'),
(2, 1, 'a4b3c745137b8392b18e0547184cb9b0', 1, '2022-01-19 06:32:46'),
(3, 1, '1d582a8fabb2f3bad6265559f3433d92', 1, '2022-01-19 06:37:32'),
(4, 1, '2f3d07872f4324bba7175c29b23ee8e0', 1, '2022-01-19 06:43:20'),
(5, 1, 'c228a0c54d81e420d897cce5bdad5293', 0, '2022-01-19 06:45:56'),
(6, 1, 'd4537f9f65c1653045b90823569a6c9a', 1, '2022-02-24 00:10:57'),
(7, 1, 'c60b6003d4fb414349784efd64359490', 0, '2022-02-24 00:20:42'),
(8, 1, '312d62b2b2431708d72556590be09f64', 0, '2022-04-24 07:24:13'),
(9, 0, 'bc189c2683d8b71cb2fc121064487261', 1, '2022-09-07 17:47:32'),
(10, 1, '1e1d07ae453d69e140d4c9850484e843', 0, '2022-09-07 18:56:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `idE` int(11) NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `states`
--

INSERT INTO `states` (`idE`, `state`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Chiapas'),
(6, 'Chihuahua'),
(7, 'Ciudad de México'),
(8, 'Coahuila'),
(9, 'Colima'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'México'),
(16, 'Michoacán'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo León'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Querétaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatán'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transformations`
--

CREATE TABLE `transformations` (
  `idT` int(11) NOT NULL,
  `transformation` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `transformations`
--

INSERT INTO `transformations` (`idT`, `transformation`) VALUES
(1, 'Social'),
(2, 'Educativa'),
(3, 'Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idU` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `tok` varchar(35) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idU`, `email`, `password`, `usertype`, `status`, `tok`) VALUES
(1, 'sergio@ensenapormexico.org', '73aa940e48cce19706083c9088d23073', 1, 1, '8a0eb30040995972b59c5fa622e593a9'),
(2, 'exm@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 3, 1, '1a136ed2936ec05de132e78cfeae851c'),
(6, 'abc@mail.com', '25f9e794323b453885f5181f1b624d0b', 3, 1, 'e1fe98b4aa2fc0a975b600c4c7a6be83'),
(222, 'susana.lopezmalo2013@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 2, 1, '5f909170f49b5f852d56b8297492581a'),
(223, 'organizacion@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 3, 1, '8c0bc3d1c17a622741e9c54efb24c31e'),
(231, 'susana.garza2019@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 2, 1, '6e0bd2111c614c75139bfbb784679cbd'),
(235, 'organizacion1@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 3, 1, '528394776a467d6ff3beeb9211bc3435'),
(236, 'organizacion2@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 3, 1, 'f67a9c161ad7b78b2b75c254116d977c'),
(237, 'organizacion3@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 3, 1, 'd897f147f9b0e5c35a84edf4108f29d2'),
(238, 'organizacion4@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 3, 1, '90766d383ebfa7ae2712414903a8b493'),
(239, 'organizacion5@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 3, 1, '4bb39b763920d63d630ef952599f1e97'),
(240, 'adriana.ibanez2013@ensenapormexico.org', '25f9e794323b453885f5181f1b624d0b', 2, 1, '5375726292b2be33f105dfe382118863');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usertypes`
--

CREATE TABLE `usertypes` (
  `idUT` int(11) NOT NULL,
  `nameUT` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usertypes`
--

INSERT INTO `usertypes` (`idUT`, `nameUT`) VALUES
(1, 'Admin'),
(2, 'Alumni'),
(3, 'Organización');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacants`
--

CREATE TABLE `vacants` (
  `idV` int(11) NOT NULL,
  `charge` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idOrg` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `industry` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsabilities` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `functions` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `aplicantAvailability` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `benefits` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `requiredDocs` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `initialDate` date DEFAULT NULL,
  `closeDate` date DEFAULT NULL,
  `showName` int(1) DEFAULT NULL,
  `confidentialName` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowSocialMediaExM` int(1) DEFAULT NULL,
  `PDFroute` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 1,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `vacants`
--

INSERT INTO `vacants` (`idV`, `charge`, `idOrg`, `state`, `industry`, `time`, `description`, `requirements`, `responsabilities`, `experience`, `functions`, `aplicantAvailability`, `salary`, `benefits`, `requiredDocs`, `initialDate`, `closeDate`, `showName`, `confidentialName`, `allowSocialMediaExM`, `PDFroute`, `status`, `date`) VALUES
(6, 'Cargo con PDF', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10', '2022-04-11', 0, 'Importante empresa de educación', 1, '0913f12937ca862f88ae2952a249af6b.pdf', 1, '2022-02-10 19:33:16'),
(7, 'Cargo sin PDF', 6, 7, NULL, 2, 'Descripción', 'Perfil requerido', 'Responsabilidades', 'Experiencia requerida', NULL, 'Inmediata', NULL, 'Beneficios', '|cv|cm|0|', '2022-02-10', '2022-04-11', 1, '', 1, '', 1, '2022-02-10 19:35:22'),
(8, 'Cargo con PDF 160222', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16', '2022-05-26', 0, 'Importante empresa del sector educativo', 1, 'a63c2bde45993f1bde016141410a7c34.pdf', 1, '2022-02-16 15:25:05'),
(9, 'Cargo sin PDF 160222', 6, 7, NULL, 2, 'Descripción de la vacante alv\nde la vacante alv\nde la vacante alv\nde la vacante alv\nde la vacante alv\nde la vacante alvde la vacante alv\nde la vacante alv\nde la vacante alv', 'Perfil de la vacante alv', 'Responsabilidades de la vacante alv', 'Experiencia de la vacante alv', NULL, 'Inmediata', NULL, 'Beneficios de la vacante alv', '|cv|0|cr|', '2022-02-16', '2022-04-11', 0, 'Importante empresa del sector educativo sin PDF', 0, '', 1, '2022-02-16 15:26:50'),
(10, 'Cargo de prueba 21/02/2022 1', 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-21', '2022-05-26', 1, '', 1, '4dbad9079382cb552bbbf1bcdc8b4cdf.pdf', 1, '2022-02-21 16:04:21'),
(11, 'wdfqwefwe', 223, 5, NULL, 1, 'wefqwef', 'wqefqwefqwef', 'qwefqwef', 'qwefqwef', NULL, 'qwefqwef', NULL, 'wqefqwef', '|cv|cm|0|', '2022-02-21', '2022-04-11', 1, '', 1, '', 1, '2022-02-21 16:04:46'),
(12, 'efrerf', 2, 7, NULL, 1, 'erferw', 'ergergretg', 'ferfwerf', 'rtgrtg', NULL, '12000', NULL, 'rtgrtg', '|cv|cm|0|', '2022-04-23', '2022-07-20', 1, '', 1, '', 1, '2022-04-23 20:18:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacantsstatus`
--

CREATE TABLE `vacantsstatus` (
  `idVs` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `vacantsstatus`
--

INSERT INTO `vacantsstatus` (`idVs`, `status`) VALUES
(1, 'Activa'),
(2, 'Desactivada'),
(3, 'Expirada'),
(4, 'Eliminada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
--

CREATE TABLE `visits` (
  `idV` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `dateandtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`idE`),
  ADD KEY `transformation` (`transformation`);

--
-- Indices de la tabla `jobtimes`
--
ALTER TABLE `jobtimes`
  ADD PRIMARY KEY (`idJT`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`idL`),
  ADD KEY `idU` (`idU`);

--
-- Indices de la tabla `logbt`
--
ALTER TABLE `logbt`
  ADD PRIMARY KEY (`idLB`),
  ADD KEY `idU` (`idU`);

--
-- Indices de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`idB`);

--
-- Indices de la tabla `orgdata`
--
ALTER TABLE `orgdata`
  ADD PRIMARY KEY (`idOD`),
  ADD KEY `idU` (`idU`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`idP`);

--
-- Indices de la tabla `postulations`
--
ALTER TABLE `postulations`
  ADD PRIMARY KEY (`idP`);

--
-- Indices de la tabla `postulationsstatus`
--
ALTER TABLE `postulationsstatus`
  ADD PRIMARY KEY (`idPS`);

--
-- Indices de la tabla `requestspass`
--
ALTER TABLE `requestspass`
  ADD PRIMARY KEY (`idR`);

--
-- Indices de la tabla `transformations`
--
ALTER TABLE `transformations`
  ADD PRIMARY KEY (`idT`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idU`),
  ADD KEY `usertype` (`usertype`);

--
-- Indices de la tabla `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`idUT`);

--
-- Indices de la tabla `vacants`
--
ALTER TABLE `vacants`
  ADD PRIMARY KEY (`idV`),
  ADD KEY `status` (`status`);

--
-- Indices de la tabla `vacantsstatus`
--
ALTER TABLE `vacantsstatus`
  ADD PRIMARY KEY (`idVs`);

--
-- Indices de la tabla `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`idV`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `idE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `jobtimes`
--
ALTER TABLE `jobtimes`
  MODIFY `idJT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `idL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `logbt`
--
ALTER TABLE `logbt`
  MODIFY `idLB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `idB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `orgdata`
--
ALTER TABLE `orgdata`
  MODIFY `idOD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `postulations`
--
ALTER TABLE `postulations`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `postulationsstatus`
--
ALTER TABLE `postulationsstatus`
  MODIFY `idPS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `requestspass`
--
ALTER TABLE `requestspass`
  MODIFY `idR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `transformations`
--
ALTER TABLE `transformations`
  MODIFY `idT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de la tabla `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `idUT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vacants`
--
ALTER TABLE `vacants`
  MODIFY `idV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `vacantsstatus`
--
ALTER TABLE `vacantsstatus`
  MODIFY `idVs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `visits`
--
ALTER TABLE `visits`
  MODIFY `idV` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`transformation`) REFERENCES `transformations` (`idT`);

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`idU`) REFERENCES `users` (`idU`);

--
-- Filtros para la tabla `logbt`
--
ALTER TABLE `logbt`
  ADD CONSTRAINT `logbt_ibfk_1` FOREIGN KEY (`idU`) REFERENCES `users` (`idU`);

--
-- Filtros para la tabla `orgdata`
--
ALTER TABLE `orgdata`
  ADD CONSTRAINT `orgdata_ibfk_1` FOREIGN KEY (`idU`) REFERENCES `users` (`idU`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`usertype`) REFERENCES `usertypes` (`idUT`);

--
-- Filtros para la tabla `vacants`
--
ALTER TABLE `vacants`
  ADD CONSTRAINT `vacants_ibfk_1` FOREIGN KEY (`status`) REFERENCES `vacantsstatus` (`idVs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

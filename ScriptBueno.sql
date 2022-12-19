-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 14:38:18
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `helpcook`
--

create database helpcook;

--
--   Creación usuario y permisos
--


CREATE USER 'admin' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON `helpcook`.* TO 'admin';
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID_Favoritos` int(11) NOT NULL,
  `ID_Recetas` int(11) NOT NULL,
  `ID_Usuarios` int(11) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `ID_Ingredientes` int(11) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `Tipo` varchar(255) COLLATE utf8_bin NOT NULL,
  `Cantidad` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`ID_Ingredientes`, `Nombre`, `Tipo`) VALUES
(1, 'Pollo', 'Carnes'),
(2, 'Pavo', 'Carnes'),
(3, 'Cerdo', 'Carnes'),
(4, 'Ternera', 'Carnes'),
(5, 'Cordero', 'Carnes'),
(6, 'Bacalao', 'Pescados'),
(7, 'Atún', 'Pescados'),
(8, 'Salmón', 'Pescados'),
(9, 'Merluza', 'Pescados'),
(10, 'Sardinas', 'Pescados'),
(11, 'Rape', 'Pescados'),
(12, 'Ajo', 'Hortalizas y Verduras'),
(13, 'Cebolla', 'Hortalizas y Verduras'),
(14, 'Patata', 'Hortalizas y Verduras'),
(15, 'Calabacín', 'Hortalizas y Verduras'),
(16, 'Tomate', 'Hortalizas y Verduras'),
(17, 'Gambas', 'Mariscos'),
(18, 'Sepia', 'Mariscos'),
(19, 'Almejas', 'Mariscos'),
(20, 'Mejillones', 'Mariscos'),
(21, 'Pulpo', 'Mariscos'),
(22, 'Surimi', 'Mariscos'),
(23, 'Garbanzo', 'Legumbres'),
(24, 'Judias', 'Legumbres'),
(25, 'Habas', 'Legumbres'),
(31, 'Judias verdes', 'Legumbres'),
(32, 'Guisantes', 'Legumbres'),
(33, 'Lentejas', 'Legumbres'),
(34, 'Pimiento rojo', 'Hortalizas y Verduras'),
(35, 'Pimiento verde', 'Hortalizas y Verduras'),
(36, 'Puerro', 'Hortalizas y Verduras'),
(37, 'Sal', 'Otros'),
(38, 'Pimienta', 'Especias'),
(39, 'Aceite de oliva', 'Aceites'),
(40, 'Vino blanco', 'Vinos'),
(41, 'Caldo de Pescado', 'Caldos'),
(42, 'Harina de trigo', 'Otros'),
(43, 'Esparrago blanco', 'Hortalizas y Verduras'),
(44, 'Perejil', 'Especias'),
(45, 'Huevo cocido', 'Otros'),
(46, 'Aceitunas negras', 'Otros'),
(47, 'Obleas de masa para empanadillas', 'Otros'),
(48, 'Salsa de tomate', 'Salsas'),
(49, 'Pimentón dulce', 'Especias'),
(50, 'Tomillo seco', 'Especias'),
(51, 'Espinacas', 'Hortalizas y Verduras'),
(52, 'Nata para cocinar', 'Otros'),
(53, 'Aguacate', 'Fruta'),
(54, 'Mayonesa', 'Salsas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasos`
--

CREATE TABLE `pasos` (
  `ID_Pasos` int(11) NOT NULL,
  `Tipo` int(11) DEFAULT NULL,
  `Descripcion` text NOT NULL,
  `Id_Recetas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `pasos`
--

INSERT INTO `pasos` (`ID_Pasos`, `Tipo`, `Descripcion`, `Id_Recetas`) VALUES
(1, NULL, '1- La noche anterior poner en remojo las judias. En un recipiente grande, las cubrimos con agua. Esto lo hacemos para que las judias crezcan y absorban parte del agua.\r\n2- A la mañana siguiente empezamos con la preparación, para ello las metemos en una cazuela y echamos el mismo agua donde estubieron en remojo. Dependiendo de si te gustan mas caldosas dejas que cubran dos o tres dedos por encima de las judias, sino con un dedo es suficiente.\r\n3- Añadimos el resto de ingredientes. El pimiento rojo y el verde, los dientes de ajo peladors enteros, la cebolla, el puerro y medio vaso de aceite de oliva. Finalmente echamos un buen pellizco de sal y un poco de pimienta molida.r\n4- Dejamos cocer las judias mientras estan tapadas y a fuego medio. El tiempo exacto puede variar entre 45 y 60 minutos dependiendo de la variedad de judia que utilize. Lo mas recomendable es ir probandolas pasado el tiempo aproximado hasta que no esten duras. Además esto también te servirá para saber si el punto de sal y pimienta es el correcto.', 1),
(2, NULL, '1- En una sartén ponemos un chorrito de aceite a calentar a fuego medio. Cuando este esta caliente añadimos los dientes de ajo picados y dejamos que se cocinen durante unos 3 minutos, sin que cojan color.\r\n2- A continuación, agregamos una cucharada de harina, lo integramos con el ajo y el aceite y dejamos tostar 1 min más. Añadimos el vino blanco, entonces subimos la potencia del fuego y removemos para integrar los ingredientes. Lo dejamos cocinar 5 minutos.\r\n3- Seguimos con la elaboración de la salsa, cuando se hayan cumplido los 5 minutos anteriores debemos añadir los guisantes el caldo de pescado y el perejil picado. Salpimentamos, lo removemos para que se integre todo de nuevo y lo dejamos cocinar a fuego suave unos 15 minutos.\r\n4- Pasados los 15 minutos es turno de añadir la merluza. Colocamos cada rodaja por toda la superficie de la sartén para que esta se impregne bien de la salsa. Agregamos las almejas y los espárragos blancos también y dejamos que se cocine todo manteniendo el fuego suave durante unos 20 minutos mas.', 2),
(3, NULL, '1- Empezaremos preparando el relleno de las empanadillas de atún, empezando por un sofrito con verduras. Para ello necesitaremos una sarten, donde echaremos un chorrito de aceite y lo calentaremos a fuego medio. Cuando este este caliente aádiremos la cebolla, el pimiento rojo, el verde y el ajo, todo estos bien picados. Salpimentamos y lo dejaremos cocinar alrededor de unos 15 minutos mientras lo removeremos con frecuencia.\r\n2- Pasados los 15 minutos agregamos la salsa de tomate y el pimentón. Mezclamos nuevamente y lo dejamos reposar durante 5 minutos.\r\n3- Picamos los huevos y las aceitunas y los mezclamos bien. Dejamos que se cocine durante 2 miutos removiendo con frecuencia.\r\n4- Hecho esto, escurrimos el atún y lo añadimos a la mezcla, dejamos que se cocine nuevamente unos 5 minutos, insisto removiendo con frecuencia, hasta que los liquidos se hayan evaporado por completo. Pasado el tiempo, retiramos la sartén del fuego y tendremos el relleno listo de nuestras empanadas de atún.\r\n5- Cuando el relleno se haya enfriado un poco, vamos a empezar a rellenar las empanadillas. Para ello necesitaremos colocar las obleas sobre una superficie plana. Sobre cada una de ellas vamos a añadir una cucharada del relleno de atún y huevo, con cuidado de no poner demasiada cantidad. Plegamos entonces la oblea y la cerramos presionando con un tenedor.\r\n6- Una vez hayamos rellenado todas las empanadillas, las vamos a colocar en una bandeja de horno cubierta de papel para hornear. Colocamos la bandeja en el horno, previamente calentado a 180 grados arriba y abajo y dejamos que se cocinen alrededor de unos 20 minutos. Cuando veamos que las empanadillas han cogido color las retiramos.', 3),
(4, NULL, '1- En una sartén ponemos un chorrito de aceite a calentar a fuego medio. Cuando este esta caliente añadimos los dientes de ajo picados y dejamos que se cocinen durante unos 3 minutos, sin que cojan color.\r\n2- A continuación, agregamos una cucharada de harina, lo integramos con el ajo y el aceite y dejamos tostar 1 min más. Añadimos el vino blanco, entonces subimos la potencia del fuego y removemos para integrar los ingredientes. Lo dejamos cocinar 5 minutos.\r\n3- Seguimos con la elaboración de la salsa, cuando se hayan cumplido los 5 minutos anteriores debemos añadir los guisantes el caldo de pescado y el perejil picado. Salpimentamos, lo removemos para que se integre todo de nuevo y lo dejamos cocinar a fuego suave unos 15 minutos.\r\n4- Pasados los 15 minutos es turno de añadir la merluza. Colocamos cada rodaja por toda la superficie de la sartén para que esta se impregne bien de la salsa. Agregamos las almejas y los espárragos bláncos también y dejamos que se cocine todo manteniendo el fuego suave durante unos 20 minutos mas.', 4),
(5, NULL, '1- Poner en remojo los garbanzos la noche anterior, añadimos un puñadito de sal y lo dejamos toda la noche. Al dia siguiente los escurrimos del agua y los introducimos en una olla. Los tapamos y los dejamos cocinar alrededor de 2 o 3 horas hasta que esten blandos.\r\n2- Mientras se cocinan, prepararemos el sofrito que acompañara a nuestros garbanzos con espinacas. En una cazuela ponemos un chorrito de aceite y lo calentamos a fuego muy suave, cuando esté caliente, añadimos los dientes de ajo bien picados y dejamos que se cocinen aquí arededor de unos 2 minutos.\r\n3- A continuación, agregamos la cebolla, también picada, y salpimentamos. Removemos todo y dejamos que se cocine unos 10 minutos a fuego suave.\r\n4- Después de esto agregamos las espinacas, subimos la potencia de fuego y removemos frecuentemente. Cuando esta haya reducido su tamaño, añadimos una cucharadita de pimentón. Mezclamos todo brevemente y cuando los grabanzos estén ya cocidos, los agregamos junto con el agua de la cocción. Mezclamos nuevamente, revisamos el punto de sal, tapamos y dejamos que se cocine unos 20 minutos.', 5),
(6, NULL, '1- Preparar la sartén a fuego muy bajo para que vaya tomando calor. De mientras preparamos el aliño de ajo y perejil para la sepia picandolos. Luego lo colocamos en un mortero cun una pizca de sal y lo machacamos hasta formar una pasta lo mas homogénea posible.\r\n2- Limpia bien la sepia y troceala en cuadrados medianos, no los piques muy pequeños ya que el calor reduce su tamaño.\r\n3- Para hacer la sepia, añadimos unas gotas de aceite en la sartén que debe estar bien caliente y subimos el fuego. Añadimos los trozos de sepia y cocinamos removiendo durante un minuto.\r\n4- Para finalizar, añadimos el aliño de ajo y perejil y salteamos todo durante unos segundos.', 6),
(7, NULL, '1- El dia anterior, pelamos los dientes de ajo y los fileteamos. En una olla ponemos aceite a calentar y cuando este caliente echamos los ajos. Bajamos entonces el fuego y dejamos que se vayan tostando.\r\n2- Colocamos los lomos de bacalao con la piel hacia arriba en una cazuela y le vamos añadiendo el aceite sin los ajos preparado del dia anterior. Colocamos la cazuela al fuego y llevamos el conjunto hasta que empieze a hervir, lo tapamos y dejamos reposar 5 minutos. Repetimos esto dos veces más.\r\n3- Cuando este tiempo haya pasado pinchamos el pescado para saber si ya esta hecho.\r\n4- Una vez hecho esto comenzamos a girar fuera del fuego la cazuela, haciendo medias circumferencias para que los corrillos de gelatina comienzen la emulsión. A medida que se va templando el aceite se va ligando la salsa. Una vez ligada toda la salsa, ponemos la cazuela al fuego de nuevo y cuando comienze a borbotear ya tendremos el pil pil.', 7),
(8, NULL, '1- En primer lugar salpimentamos las pechugas de pavo, picamos la cebolla en trozos pequeños.\r\n2- Añadimos un chorro de aceite en una sartén y añadimos las pechugas en la sartén. Las vamos a mantener en la sartén a fuego fuerte poco tiempo hasta que se doren. Cuando esten doradas por fuera bajamos a fuego medio, añadimos la cebolla cortada y dejamos que se cocine la pechuga.\r\n3- Cuando la cebolla coja color transparente añadimos el vino blanco y lo dejamos un par de minutos para que se evapore el alcohol.\r\n4- Seguidamente, añadimos la nata para cocinar y dejamos que se cocine todo unos 15 minutos, moviendolo todo para que se mezcle bien y no se pegue la pechuga.\r\n5- Cuando se haya mezclado toda la salsa prueba el punto de sal y rectificalo si hace falta. Despues de los 15 minutos retiramos las pechugas y las cortamos en rodajas para presentarlas en los platos.', 8),
(9, NULL, '1- En primer lugar quitamos los bigotes del marisco para que no nos estorben y con cuidado lo colocamos en un recipiente apto para usar en el horno.\r\n2- Colocaremos las gambas en el recipiente que vayamos a usar y echaremos un chorrito de aceite de oliva sobre estos procurando que se quede repartido. Picamos unos dientes de ajo y lo añadimos por encima y entre los huecos de las gambas.\r\n3- Precalentamos el horno a 190 grados con calor arriba y abajo, cuando este calentado introducimos el recipiente con las gambas y horneamos durante 15 minutos.\r\n4- Cuando las gambas esten preparadas, emplatamos y añadimos un poco de sal gruesa por encima de las gambas.', 9),
(10, NULL, '1- Pelamos los aguacates y cortamos su carne en trozos.\r\n2- Lavamos y cortamos en dados los tomates cherry y los surimis. En un bol mezclamos los cherry y los surimis con la mayonesa y añadimos la carne de aguacate.\r\n3- Con una cucharita rellenamos los aguacates y ya lo tenemos listo.', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `ID_Recetas` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `Tiempo` float NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Categoria` varchar(255) NOT NULL,
  `Fecha_Alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ValoracionMedia` float NOT NULL,
  `Comensales` int(11) NOT NULL,
  `ID_Usuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`ID_Recetas`, `Descripcion`, `Tiempo`, `Foto`, `Tipo`, `Categoria`, `Fecha_Alta`, `ValoracionMedia`, `Comensales`, `ID_Usuarios`) VALUES
(1, 'Se trata de una receta básica de alubias blancas con verduras, sin duda una buena manera de comer legumbres con una preparación rapida y sencilla.', 60, 'https://static-sevilla.abc.es/media/gurmesevilla/2015/03/alubias-jardinera.jpg', 'Comida española', 'Comida', '2022-12-18 12:04:53', 0, 4, 1),
(2, 'Deliciosa receta de merluza en salsa verde, la mar de fácil de hacer y que vas a disfrutar seguro.', 40, 'https://lacocinadefrabisa.lavozdegalicia.es/wp-content/uploads/2017/02/merluza-con-almejas-y-salsa-verde-1.jpg', 'Cocina española', 'Comida o Cena', '2022-12-18 12:05:19', 0, 4, 1),
(3, 'Empanadillas de atún al horno, una receta fácil de hacer y típica de la gastronomía española.', 50, 'https://i.ytimg.com/vi/IaAb9RtvYXo/mqdefault.jpg', 'Cocina española', 'Comida o Cena', '2022-12-18 16:16:38', 0, 4, 1),
(4, 'Pollo al horno con paratas y cebolla, para chuparse los dedos.', 70, 'https://1.bp.blogspot.com/-TSbycJ9ZLn8/X-HCrntfltI/AAAAAAAAcZ4/DHpRpVWAgNQVtpn78C64F5q4mg6Ssw1kACLcBGAsYHQ/s960/cuartos%2Bde%2Bpollo%2Bal%2Bhorno%2Bcon%2Bpatatas%2Bal%2Bvino%2Bblanco%2B%25287%2529.jpg', 'Cocina española', 'Comida', '2022-12-19 09:34:01', 0, 4, 1),
(5, 'Garbanzos con espinacas, una comida saludable que te va a sorprender.', 180, 'https://www.comedera.com/wp-content/uploads/2016/09/potaje-de-garbanzos-con-espinacas.jpg', 'Cocina española', 'Comida', '2022-12-19 10:02:47', 0, 4, 1),
(6, 'Sepia a la plancha con ajo y perejil, una receta para muy sencilla de exquisito sabor.', 10, 'https://t1.rg.ltmcdn.com/es/posts/9/9/2/sepia_a_la_plancha_con_ajo_y_perejil_59299_orig.jpg', 'Cocina española', 'Entrante', '2022-12-19 10:38:13', 5, 2, 1),
(7, 'Bacalao al pil pil, un pescado con mucha proteina facil de hacer y disfrutar.', 60, 'https://t1.rg.ltmcdn.com/es/posts/9/9/2/sepia_a_la_plancha_con_ajo_y_perejil_59299_orig.jpg', 'Cocina española', 'Comida o Cena', '2022-12-19 11:12:29', 4, 4, 1),
(8, 'Sorprendente receta de pechuga de pavo en salsa, que tienes que probar y que seguro te va a gustar.', 45, 'https://static-sevilla.abc.es/media/gurmesevilla/2011/11/pechugadepavoensalsa.jpg', 'Cocina española', 'Cena', '2022-12-19 16:13:34', 3, 4, 1),
(9, 'Gambas al horno, una receta hecha para que se chupen los dedos.', 20, 'https://cdn6.recetasdeescandalo.com/wp-content/uploads/2018/11/Gambas-al-horno-jugosas-con-majado-de-ajo-y-perejil.-Receta-facil-y-rapida.jpg', 'Cocina española', 'Cena', '2022-12-19 16:16:10', 5, 2, 1),
(10, 'Aguacate relleno de surimi, es un entrante delicioso y facil de cocinar.', 5, 'https://cdn7.kiwilimon.com/recetaimagen/26253/23268.jpg', 'Cocina española', 'Entrante', '2022-12-19 16:18:16', 3, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas_ingredientes`
--

CREATE TABLE `recetas_ingredientes` (
  `ID_Rec_Ingr` int(11) NOT NULL,
  `ID_Recetas` int(11) NOT NULL,
  `ID_Ingredientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `recetas_ingredientes`
--

INSERT INTO `recetas_ingredientes` (`ID_Rec_Ingr`, `ID_Recetas`, `ID_Ingredientes`, `Cantidad`) VALUES
(1, 1, 24, '400g'),
(2, 1, 34, '1 unidad'),
(3, 1, 35, '1 unidad'),
(4, 1, 12, '2 dientes'),
(5, 1, 13, 'La mitad'),
(6, 1, 36, 'La mitad'),
(7, 1, 37, ''),
(8, 1, 38, ''),
(9, 1, 39, ''),
(10, 2, 9, '4 rodajas'),
(11, 2, 12, '3 dientes'),
(12, 2, 40, '200ml'),
(13, 2, 41, '500ml'),
(14, 2, 42, 'Una cucharada'),
(15, 2, 32, '250g'),
(16, 2, 43, '300g'),
(17, 2, 44, ''),
(18, 2, 37, ''),
(19, 2, 38, ''),
(20, 2, 39, ''),
(21, 3, 47, ''),
(22, 3, 7, '250g'),
(23, 3, 13, '1 unidad'),
(24, 3, 34, '1/2 unidad'),
(25, 3, 35, '1/2 unidad'),
(26, 3, 12, '4 dientes'),
(27, 3, 45, '3'),
(28, 3, 46, '50g'),
(29, 3, 48, '200g'),
(30, 3, 49, '2 cucharadas'),
(31, 3, 37, ''),
(32, 3, 38, ''),
(33, 3, 39, ''),
(34, 4, 1, '1 entero o 4 muslos'),
(35, 4, 14, '4 unidades'),
(36, 4, 13, '4 unidades'),
(37, 4, 50, ''),
(38, 4, 37, ''),
(39, 4, 38, ''),
(40, 4, 39, ''),
(41, 5, 23, '400g'),
(42, 5, 51, '500g'),
(43, 5, 13, '1/2 unidad'),
(44, 5, 12, '2 dientes'),
(45, 5, 49, '1 cucharada'),
(46, 5, 37, ''),
(47, 5, 38, ''),
(48, 5, 39, ''),
(49, 6, 18, '500g'),
(50, 6, 44, '1 manojo'),
(51, 6, 37, ''),
(52, 6, 39, ''),
(53, 7, 6, '200g'),
(54, 7, 12, '5 dientes'),
(55, 7, 39, ''),
(56, 8, 2, '2 pechugas'),
(57, 8, 13, '1 unidad'),
(58, 8, 40, '150ml'),
(59, 8, 52, '200ml'),
(60, 8, 37, ''),
(61, 8, 38, ''),
(62, 8, 39, ''),
(63, 9, 17, '8 unidades'),
(64, 9, 12, '2 dientes'),
(65, 9, 37, ''),
(66, 9, 39, ''),
(79, 10, 53, '3 unidades'),
(80, 10, 16, '9 unidades'),
(81, 10, 22, '12 unidades'),
(82, 10, 54, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuarios` int(11) NOT NULL,
  `Nick` varchar(255) NOT NULL,
  `Contraseña` varchar(10) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuarios`, `Nick`, `Contraseña`, `Nombre`, `Apellido`, `Email`, `Foto`) VALUES
(1, 'Admin', 'Admin', 'Noah', 'Jimenez', 'noahjimab6@gmail.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

CREATE TABLE `valoraciones` (
  `ID_Valoraciones` int(11) NOT NULL,
  `ID_Recetas` int(11) NOT NULL,
  `ID_Usuarios` int(11) NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `valoraciones`
--

INSERT INTO `valoraciones` (`ID_Valoraciones`, `ID_Recetas`, `ID_Usuarios`, `Valor`) VALUES
(1, 1, 1, 3),
(2, 2, 1, 4),
(3, 3, 1, 5),
(4, 4, 1, 4),
(5, 5, 1, 3),
(6, 6, 1, 5),
(7, 7, 1, 4),
(8, 8, 1, 3),
(9, 9, 1, 5),
(10, 10, 1, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID_Favoritos`),
  ADD KEY `Favoritos_usuarios` (`ID_Usuarios`),
  ADD KEY `Favoritos_recetas` (`ID_Recetas`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`ID_Ingredientes`);

--
-- Indices de la tabla `pasos`
--
ALTER TABLE `pasos`
  ADD PRIMARY KEY (`ID_Pasos`),
  ADD KEY `Recetas_claveforanea` (`Id_Recetas`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`ID_Recetas`),
  ADD KEY `usuarios_claveforanea` (`ID_Usuarios`);

--
-- Indices de la tabla `recetas_ingredientes`
--
ALTER TABLE `recetas_ingredientes`
  ADD PRIMARY KEY (`ID_Rec_Ingr`),
  ADD KEY `recetas_ingredientes_recetas` (`ID_Recetas`),
  ADD KEY `receta_ingredientes_ingredientes` (`ID_Ingredientes`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuarios`);

--
-- Indices de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD PRIMARY KEY (`ID_Valoraciones`),
  ADD KEY `valoraciones_usuario` (`ID_Usuarios`),
  ADD KEY ` recetas_usuario` (`ID_Recetas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID_Favoritos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `ID_Ingredientes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pasos`
--
ALTER TABLE `pasos`
  MODIFY `ID_Pasos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `ID_Recetas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas_ingredientes`
--
ALTER TABLE `recetas_ingredientes`
  MODIFY `ID_Rec_Ingr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuarios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  MODIFY `ID_Valoraciones` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `Favoritos_recetas` FOREIGN KEY (`ID_Recetas`) REFERENCES `recetas` (`ID_Recetas`),
  ADD CONSTRAINT `Favoritos_usuarios` FOREIGN KEY (`ID_Usuarios`) REFERENCES `usuarios` (`ID_Usuarios`);

--
-- Filtros para la tabla `pasos`
--
ALTER TABLE `pasos`
  ADD CONSTRAINT `Recetas_claveforanea` FOREIGN KEY (`Id_Recetas`) REFERENCES `recetas` (`ID_Recetas`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `usuarios_claveforanea` FOREIGN KEY (`ID_Usuarios`) REFERENCES `usuarios` (`ID_Usuarios`);

--
-- Filtros para la tabla `recetas_ingredientes`
--
ALTER TABLE `recetas_ingredientes`
  ADD CONSTRAINT `Receta_ingredientes_ingredientes` FOREIGN KEY (`ID_Ingredientes`) REFERENCES `ingredientes` (`ID_Ingredientes`),
  ADD CONSTRAINT `Recetas_ingredientes_Recetas` FOREIGN KEY (`ID_Recetas`) REFERENCES `recetas` (`ID_Recetas`);

--
-- Filtros para la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD CONSTRAINT ` Recetas_usuario` FOREIGN KEY (`ID_Recetas`) REFERENCES `recetas` (`ID_Recetas`),
  ADD CONSTRAINT `valoraciones_usuario` FOREIGN KEY (`ID_Usuarios`) REFERENCES `usuarios` (`ID_Usuarios`);

ALTER TABLE ingredientes 
  DROP Cantidad;

ALTER TABLE recetas_ingredientes 
  ADD Cantidad VARCHAR (255);

ALTER TABLE `pasos` 
  CHANGE `Tipo` `Tipo` INT(11) NULL;

ALTER TABLE `usuarios` 
  CHANGE `Foto` `Foto` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_bin NULL;
  COMMIT;
  

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


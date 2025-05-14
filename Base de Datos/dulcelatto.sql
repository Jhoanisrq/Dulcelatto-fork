-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2025 at 09:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dulcelatto`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--
CREATE TABLE `categorias` (
    `id_catg` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `nombr_catg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--
INSERT INTO `categorias` (`id_catg`,`nombr_catg`) VALUES 
(1, 'Pasteles y Tortas'), 
(2, 'Helados'), 
(3, 'Galletas y Bizcochos'),
(4, 'Cupcakes'),
(5, 'Postres salados'),
(6, 'Postres dulces'),
(7, 'Postres de crema o frias'); /*Natillas, flanes, mousses, y otras preparaciones frías*/ 

--
-- Table structure for table `productos`
--
CREATE TABLE `productos` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) NOT NULL,
  `id_catg` int(11),
  FOREIGN KEY (`id_catg`) REFERENCES `categorias`(`id_catg`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--
INSERT INTO `productos` (`id`,`id_catg` ,`nombre`, `descripcion`, `precio`, `imagen`) VALUES
(1, 1, 'Torta de chocolate', 'Bizcocho esponjoso cubierto cuidadosamente con una capa de chocolate negro y una frambuesa en el centro.', 37.80, '../assets/img/postres/torta_de_chocolate.jpg'),
(2, 1, 'Cheesecake de Frutos Rojos', 'Una base de galleta crocante que sostiene una cremosa mezcla de queso, coronada con una capa generosa de mermelada de frutos rojos naturales: frambuesas, fresas y arándanos.', 43.70, '../assets/img/postres/cheesecake_de_frutos_rojos.jpg'),
(3, 6, 'Tiramisú Clásico Italiano', 'Bizcochos empapados en café espresso, entre capas de crema de mascarpone sedosa, espolvoreado con cacao puro para un final sofisticado. 2 por unidad', 9.50, '../assets/img/postres/tiramisu_clasico_italiano.jpg'),
(4, 7, 'Flan Casero con Caramelo', 'Textura suave y delicada, con un brillante caramelo líquido que aporta dulzura y un sabor nostálgico a cada bocado.', 5.20, '../assets/img/postres/flan_casero_con_caramelo.jpg'),
(5, 6, 'Brownie de Chocolate Amargo con Nueces', 'Denso, húmedo y con un intenso sabor a chocolate, con nueces tostadas que aportan un contraste crujiente irresistible.', 15.30, '../assets/img/postres/brownie_de_chocolate_amargo_con_nueces.jpg'),
(6, 1, 'Pastel Tres Leches Tradicional', ' Un bizcocho esponjoso bañado en leche condensada, evaporada y crema de leche, cubierto con merengue dorado y un toque de canela', 42.50, '../assets/img/postres/pastel_de_tres_leches_tradicional.jpg'),
(7, 7, 'Mousse de Maracuyá con Base Crocante', 'Postre aireado con el sabor exótico y ligeramente ácido del maracuyá, servido sobre una base de galleta triturada.', 41.20, '../assets/img/postres/mousse_de_maracuya.jpg'),
(8, 1, 'Tarta de Manzana Casera', 'Manzanas caramelizadas al horno sobre masa hojaldrada, aromatizadas con canela y nuez moscada.', 36.20, '../assets/img/postres/tarta_manzana_casera.jpg'),
(9, 4, 'Cupcake Red Velvet con Crema de Queso', 'Suave pastel rojo con glaseado de queso crema batido, decorado con migas de red velvet. 6 por unidad', 15.10, '../assets/img/postres/cupcake_red_velvet_con_crema_de_queso.jpg'),
(10, 6, 'Profiteroles Rellenos de Crema Pastelera', 'Delicadas bolas de masa choux rellenas de crema de vainilla, bañadas en chocolate negro. 6 por unidad ', 12.60, '../assets/img/postres/profiteroles_rellenos_de_crema_pastelera.jpg'),
(11, 7, 'Gelatina Tricolor de Sabores Frutales', 'Tres capas coloridas con sabores de uva, piña y fresa, perfectamente definidas y refrescantes.', 23.50, '../assets/img/postres/gelatina_tricolor_de_sabores_frutales.jpg'),
(12, 6, 'Arroz con Leche Cremoso a la Canela', 'Arroz tierno cocinado con leche, azúcar, canela y ralladura de naranja.', 4.10, '../assets/img/postres/arroz_con_leche_cremoso_a_la_canela.jpg'),
(13, 1, 'Pastel de Zanahoria con Nueces y Glaseado', 'Bizcocho húmedo con zanahoria rallada y nueces, cubierto con glaseado de queso crema.', 48.80, '../assets/img/postres/pastel_de_zanahoria_con_nueces_y_glaseado.jpg'),
(14, 2, 'Helado Artesanal de Fresa Natural', 'Helado hecho con fresas frescas, sin colorantes, con textura suave y sabor auténtico.', 6.30, '../assets/img/postres/helado_artesanal_de_fresa_natural.jpg'),
(15, 1, 'Pastel de Chocolate Intenso con Ganache', 'Bizcocho oscuro con cobertura espesa de ganache de chocolate derretido.', 58.20, '../assets/img/postres/pastel_de_chocolate_intenso_con_ganeche.jpg'),
(16, 6, 'Pay de Limón con Merengue Tostado', 'Relleno de limón sobre base de galleta, cubierto con merengue dorado al horno.', 36.50, '../assets/img/postres/pay_de_limon_con_merengue_tostado.jpg'),
(17, 7, 'Mousse de Chocolate Negro', 'Espuma de chocolate aireada, decorada con ralladura de chocolate y menta fresca. ', 4.50, '../assets/img/postres/mousse_chocolate_negro.jpg'),
(18, 7, 'Pannacotta de Coco con Salsa Tropical', 'Suave postre italiano con leche de coco y reducción de piña y mango.', 6.40, '../assets/img/postres/pannacotta_de_coco_con_salsa_tropical.jpeg'),
(19, 1, 'Pastel Selva Negra Clásico', 'Capas de bizcocho de chocolate, cerezas maceradas y crema batida, con virutas de chocolate.', 52.50, '../assets/img/postres/pastel_selva_negra_clasico.jpg'),
(20, 7, 'Bavarois de Mango Tropical', 'Postre frío y ligero con mango fresco y nata, ideal como postre refrescante.', 20.20, '../assets/img/postres/bavarois_de_mango_tropical.jpg'),
(21, 6, 'Donas Glaseadas Artesanales', 'Donas esponjosas con glaseado dulce de vainilla o chocolate. 6 por unidad', 14.60, '../assets/img/postres/donas_glaseadas_artesanales.jpg'),
(22, 1, 'Pastel de Oreo con Crema de Vainilla', 'Capas de crema batida con galleta Oreo y base crocante de chocolate.', 50.20, '../assets/img/postres/pastel_de_oreo_con_crema_de_vainilla.jpg'),
(23, 7, 'Crema Volteada Casera', 'Similar al flan, con textura firme, cubierta con caramelo espeso.', 34.40, '../assets/img/postres/Crema_Volteada_Casera.jpg'),
(24, 6, 'Rollitos de Canela recién horneados', 'Masa tierna enrollada con canela y azúcar moreno, glaseada con vainilla. 6 por unidad', 11.40, '../assets/img/postres/rollitos_de_canela.jpg'),
(25, 6, 'Napoleón de Fresas y Crema Pastelera', 'Capas de hojaldre rellenas con crema pastelera y fresas frescas.', 21.10, '../assets/img/postres/napoleon_de_fresas_y_crema_pastelera.jpg'),
(26, 1, 'Pastel de Limón y Arándanos', 'Bizcocho con arándanos frescos y glaseado de limón natural.', 48.90, '../assets/img/postres/pastel_de_limon_y_arandanos.jpeg'),
(27, 6, 'Trufas de Chocolate con Relleno Cremoso', 'Bombones redondos con centro suave de ganache y cobertura de cacao. 6 por unidad', 10.20, '../assets/img/postres/trufas_de_chocolate_con_relleno.jpg'),
(28, 1, 'Tarta de Queso al Horno estilo Nueva York', 'Cremosa, firme y dorada, servida con salsa de frutos rojos.', 48.20, '../assets/img/postres/tarta_de_queso_estilo_nueva_york.jpg'),
(29, 7, 'Parfait de Yogur Griego y Frutas', 'Capas frescas de yogur cremoso, granola tostada con miel y frutas naturales como kiwi, fresas y arándanos', 6.10, '../assets/img/postres/parfait_de_yogur_griego_y_frutas.jpg'),
(30, 2, 'Helado de Maracuyá con Chips de Chocolate', 'Helado tropical con toque ácido y trozos crujientes de chocolate.', 7.30, '../assets/img/postres/helado_de_maracuya_con_chips_de_chocolate.jpg'),
(31, 1, 'Torta de Plátano y Nuez Caramelizada', 'Bizcocho húmedo de plátano con nueces tostadas y glaseado de caramelo caliente', 55.60, '../assets/img/postres/torta_de_platano_y_nuez_caramelizada.jpg');
(32, 4, 'Cupcake de Chocolate Triple', 'Bizcocho de chocolate esponjoso, relleno de ganache de chocolate oscuro y cubierto con frosting de chocolate con chispas. 6 por unidad', 12.10 , '../assets/img/postres/Dulcelatto/assets/img/postres/cupcake_de_chocolate_triple.jpg' )
(33, 4, 'Cupcake de Vainilla Clásico', 'Esponjoso pastel de vainilla con un ligero glaseado de mantequilla de vainilla, decorado con chispas de colores. 6 por unidad', 11.30, '../assets/img/postres/cupcake_de_vainilla_clasico.jpg')
(34, 4, 'Cupcake de Zanahoria con Nueces', 'Pastel húmedo de zanahoria, con toques de canela y nuez, cubierto con glaseado de queso crema y decorado con nueces picadas. 6 por unidad',13.30 , '../assets/img/postres/cupcake_de_zanahoria_con_nueces.jpg')
(35, 4, 'Cupcake de Limón y Merengue', 'Base de pastel de limón suave, con un centro cremoso de limón y coronado con un merengue tostado. 6 por unidad', 12.40, '../assets/img/postres/cupcake_de_limon_y_merengue.jpg')
(36, 4, 'Cupcake de Frutas del Bosque', 'Bizcocho de vainilla con frutos del bosque (fresas, moras y frambuesas), cubierto con crema batida y frutas frescas 6 por unidad', 11.50, '../assets/img/postres/cupcake_de_frutas_del_bosque.jpg')
(37, 4, 'Cupcake de Café Mocha', 'Un pastel con sabor a café y cacao, cubierto con crema de café suave y decorado con granos de café cubiertos de chocolate 6 por unidad', 10.80, '../assets/img/postres/cupcake_de_cafe_mocha.jpg')
(38, 4, 'Cupcake de Menta y Chocolate', 'Pastel de chocolate oscuro con glaseado de menta, decorado con hojuelas de chocolate amargo 6 por unidad', 11.60, '../assets/img/postres/cupcake_de_menta_y_chocolate.jpeg')
(39, 4, 'Cupcake de Dulce de Leche', 'Bizcocho de vainilla relleno de dulce de leche, cubierto con un glaseado suave de caramelo y una pizca de sal. 6 por unidad', 10.70, '../assets/img/postres/cupcake_de_dulce_de_leche.jpg')
(40, 4, 'Cupcake de Fresa y Crema', 'Base esponjosa de vainilla rellena de mermelada de fresa y cubierta con crema batida y fresas frescas. 6 por unidad', 11.60, '../assets/img/postres/cupcake_de_fresa_y_crema.jpg')
(41, 4, 'Cupcake de Oreo', 'Bizcocho de chocolate está mezclado con trozos de galleta Oreo, que aportan un toque crujiente en cada bocado. El glaseado es una crema de queso ligeramente dulce, mezclada con Oreo triturado, y se corona con media galleta como toque final. 6 por unidad', 12.30, '../assets/img/postres/cupcake_de_oreo.jpg')
(42, 5, 'Cheesecake de Queso Azul y Nueces', 'Una reinterpretación del clásico cheesecake, pero con un toque salado. La base crujiente de galletas saladas sostiene una crema suave de queso azul, decorada con nueces caramelizadas y un toque de miel.', 14.50, '../assets/img/postres/cheesecake_de_queso_azul_y_nueces.png'),
(43, 1, 'Tarta de Queso y Cebolla Caramelizada', 'Masa dorada con un relleno cremoso de queso y cebolla caramelizada.', 22.10, '../assets/img/postres/tarta_de_queso_y_cebolla_caramelizada.jpeg'),
(44, 5, 'Flan de Queso Manchego', 'Un flan suave y cremoso con el sabor profundo del queso manchego.', 31.50, '../assets/img/postres/flan_de_queso_manchego.jpg'),
(45, 5, 'Profiteroles Rellenos de Paté', 'Masa choux rellena de paté cremoso, perfecta para una entrada elegante.', 10.00, '../assets/img/postres/profiteroles_rellenos_de_pate.jpg'),
(46, 5, 'Mousse de Queso Parmesano y Hierbas', 'Suave mousse de parmesano con un toque de hierbas frescas.', 11.20, '../assets/img/postres/mousse_de_queso_parmesano_y_hierbas.jpg'),
(47, 4, 'Magdalenas Saladas de Jamon y Queso', 'Magdalenas esponjosas con trozos de jamón ahumado y queso fundido. Suave y doradas, combinan perfectamente el sabor salado del jamón con la cremosidad del queso. Ideales para desayunos o meriendas saladas.', 10.80, '../assets/img/postres/magdalenas_saladas_de_jamon_y_queso.jpg'),
(48, 5, 'Bizcocho de Parmesano y Tomates Secos', 'Bizcocho esponjoso con parmesano y tomates secos.', 7.90, '../assets/img/postres/bizcocho_de_parmesano_y_tomates_secos.jpg'),
(49, 1, 'Tarta de Espinacas y Ricotta', 'Masa crujiente rellena de espinacas salteadas y queso ricotta.', 13.50, '../assets/img/postres/tarta_de_espinacas_y_ricotta.jpg'),
(50, 1, 'Pastel de Queso y Jamón Serrano', 'Capas de queso fundido y jamón serrano en un pastel dorado.', 15.60, '../assets/img/postres/pastel_de_queso_y_jamon_serrano.jpg'),
(51, 5, 'Mousse de Salmón Ahumado', 'Mousse ligera de salmón ahumado y queso crema.', 12.40, '../assets/img/postres/mousse_de_salmon_ahumado.jpg'),
(52, 3, 'Galletas Saladas de Queso y Hierbas', 'Crujientes galletas con queso cheddar y hierbas frescas.', 6.70, '../assets/img/postres/galletas_saladas_de_queso_y_hierbas.jpg'),
(53, 5, 'Quiche de Espárragos y Gruyère', 'Masa crujiente con espárragos frescos y queso gruyère.', 14.00, '../assets/img/postres/quiche_de_esparragos_y_gruyere.jpg'),
(54, 5, 'Crepes de Queso y Jamón', 'Crepes doradas rellenas de queso fundido y jamón.', 10.20, '../assets/img/postres/crepes_de_queso_y_jamon.jpg'),
(55, 5, 'Soufflé de Queso Cheddar', 'Soufflé esponjoso de queso cheddar con un toque de pimienta.', 9.90, '../assets/img/postres/souffle_de_queso_cheddar.jpeg'),
(56, 5, 'Pannacotta de Tomate y Albahaca', 'Panna cotta salada de tomate, decorada con albahaca.', 11.00, '../assets/img/postres/pannacotta_de_tomate_y_albahaca.jpg'),
(57, 5, 'Mini Tartas de Queso y Espinaca', 'Pequeñas tartaletas con espinacas y mezcla de quesos.', 8.50, '../assets/img/postres/mini_tartas_de_queso_y_espinaca.jpeg'),
(58, 5, 'Choux Salados Rellenos de Queso Azul', 'Choux rellenos de crema de queso azul suave.', 9.00, '../assets/img/postres/choux_de_queso_azul.png'),
(59, 2, 'Helado de Vainilla Natural', 'Una receta clásica elaborada con vainilla natural y auténtica. Su sabor suave y delicado, junto con su cremosidad, lo convierten en el acompañante perfecto para otros postres.', 7.20, '../assets/img/postres/helado_de_vainilla_natural.jpg'),
(60, 5, 'Flan de Puerros y Gruyère', 'Flan suave con puerros dulces y queso gruyère.', 9.70, '../assets/img/postres/flan_de_puerros_y_gruyere.jpg'),
(61, 4, 'Cupcakes de Queso Feta y Aceitunas', 'Cupcakes esponjosos con queso feta y aceitunas negras.', 8.20, '../assets/img/postres/cupcakes_de_queso_feta_y_aceituna.jpg'),
(62, 1, 'Pastel de Pollo y Queso', 'Pastel salado con pollo desmenuzado y mezcla de quesos.', 13.80, '../assets/img/postres/pastel_de_pollo_y_queso.jpg'),
(63, 5, 'Profiteroles de Queso Brie', 'Choux rellenos de queso brie suave y mermelada.', 9.90, '../assets/img/postres/profiteroles_de_queso_brie.jpg'),
(64, 5, 'Soufflé de Espinaca y Queso de Cabra', 'Soufflé esponjoso con espinacas y queso de cabra.', 11.20, '../assets/img/postres/souffle_de_espinaca_y_queso_de_cabra.jpg'),
(65, 5, 'Croquetas de Queso Gorgonzola', 'Croquetas crujientes con corazón de queso gorgonzola.', 7.60, '../assets/img/postres/croquetas_de_gorgonzola.jpg'),
(66, 3, 'Galletas de Parmesano y Pimienta', 'Galletas saladas y crujientes de parmesano.', 5.80, '../assets/img/postres/galletas_de_parmesano.jpg'),
(67, 5, 'Gelatina de Queso con Mermelada de Tomate', 'Gelatina cremosa de queso con mermelada casera de tomate.', 7.40, '../assets/img/postres/gelatina_de_queso_con_mermelada_de_tomate.jpg'),
(68, 5, 'Napoleón de Queso Brie y Almendras', 'Capas de hojaldre, queso brie y almendras tostadas.', 12.70, '../assets/img/postres/napoleon_de_queso_brie_y_almendras.jpeg'),
(69, 5, 'Tartaletas de Queso Camembert y Peras', 'Masa crujiente con queso camembert y peras caramelizadas.', 11.50, '../assets/img/postres/tartaletas_de_queso_camembert_y_peras.jpg'),
(70, 2, 'Helado de Pistacho Premium', 'Un helado suave y cremoso elaborado con auténticos pistachos seleccionados. Su color verde natural y su sabor profundo lo convierten en una opción sofisticada para los amantes de los frutos secos.', 10.20, '../assets/img/postres/helado_de_pistacho_premium.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--
CREATE TABLE `usuario` (
  `id_us` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombre_us` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fech_nacmnto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuario`
--
INSERT INTO `usuario` (`id_us`, `nombre_us`, `correo`, `password`, `fech_nacmnto`) VALUES
(1, 'luciana', 'luciana@gmail.com', '251006', '2006-10-25'),
(2, 'maria', 'maria@gmail.com', '12345', '2004-07-22'),
(3, 'juan', 'juan5412@gmail.com', 'juan', '2025-05-29'),
(4, 'Joaquin', 'joaquin@gmail.com', 'femboy', '2005-03-04');


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
MODIFY `id_catg` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY; 
ALTER TABLE `categorias` AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
MODIFY `id` int(11) NOT NULL NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE `productos` AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario` 
MODIFY `id_us` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE `usuario` AUTO_INCREMENT = 5;

COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

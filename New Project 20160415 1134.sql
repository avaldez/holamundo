-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.20-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema positivo_chiperia
--

CREATE DATABASE IF NOT EXISTS positivo_chiperia;
USE positivo_chiperia;

--
-- Definition of table `barrio`
--

DROP TABLE IF EXISTS `barrio`;
CREATE TABLE `barrio` (
  `COD_BARRIO` char(3) NOT NULL DEFAULT '',
  `DESCRIPCION` char(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barrio`
--

/*!40000 ALTER TABLE `barrio` DISABLE KEYS */;
/*!40000 ALTER TABLE `barrio` ENABLE KEYS */;


--
-- Definition of table `caja_cuentas`
--

DROP TABLE IF EXISTS `caja_cuentas`;
CREATE TABLE `caja_cuentas` (
  `id_cuentacaja` char(15) NOT NULL,
  `id_cuenta_padre` char(15) NOT NULL,
  `nombre_padre` char(50) NOT NULL,
  `nombre` char(50) NOT NULL,
  `nivel` int(2) NOT NULL,
  `imputable` int(1) NOT NULL,
  `id_ctacontable` int(15) NOT NULL,
  `iva` int(1) NOT NULL,
  `cuota` char(1) NOT NULL,
  `saldo_ano` float(10,2) NOT NULL,
  `saldo_mes` float(10,2) NOT NULL,
  `saldo` float NOT NULL,
  `signo` char(1) NOT NULL,
  `id_numero` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_numero`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caja_cuentas`
--

/*!40000 ALTER TABLE `caja_cuentas` DISABLE KEYS */;
INSERT INTO `caja_cuentas` (`id_cuentacaja`,`id_cuenta_padre`,`nombre_padre`,`nombre`,`nivel`,`imputable`,`id_ctacontable`,`iva`,`cuota`,`saldo_ano`,`saldo_mes`,`saldo`,`signo`,`id_numero`) VALUES 
 ('3','24221','Ingresos','Ingresos',1,0,0,0,'',0.00,0.00,0,'C',2),
 ('2594','25','GASTOS DE OFICINA','Servicios de Herrero',3,1,0,0,'',0.00,0.00,0,'D',115),
 ('23','2','Egresos','Pago de Patente e impuestos.',3,1,0,0,'',0.00,0.00,0,'D',89),
 ('211','21','Sueldos','Pago Sueldo',3,1,0,0,'',0.00,0.00,0,'D',79),
 ('249','24','PAGO PROVEEDORES','Debicki Abrerturas',3,1,0,0,'',0.00,0.00,0,'D',78),
 ('2593','25','Gastos de Oficina','Descuento Ocacional',3,1,0,0,'',0.00,0.00,0,'D',77),
 ('2581','25','GASTOS DE OFICINA','Reparaciones',3,1,0,0,'',0.00,0.00,0,'D',151),
 ('25','2','Egresos','GASTOS DE OFICINA',2,0,0,0,'',0.00,0.00,0,'D',75),
 ('258','25','GASTOS DE OFICINA','Pago por Servicios electricista',3,1,0,0,'',0.00,0.00,0,'D',107),
 ('252','25','GASTOS DE OFICINA','Ferreteria',3,1,0,0,'',0.00,0.00,0,'D',106),
 ('256','25','GASTOS DE OFICINA','Gas',3,1,0,0,'',0.00,0.00,0,'D',105),
 ('255','25','GASTOS DE OFICINA','Internet Tigo',3,1,0,0,'',0.00,0.00,0,'D',104),
 ('254','25','GASTOS DE OFICINA','Combustible Y Lubricante',3,1,0,0,'',0.00,0.00,0,'D',103),
 ('253','25','GASTOS DE OFICINA','Carga de Saldo',3,1,0,0,'',0.00,0.00,0,'D',102),
 ('251','25','GASTOS DE OFICINA','Luz',3,1,0,0,'',0.00,0.00,0,'D',101),
 ('248','24','PAGO PROVEEDORES','W.P.G. S.R.L.',3,1,0,0,'',0.00,0.00,0,'D',100),
 ('247','24','PAGO PROVEEDORES','Sex Shop',3,1,0,0,'',0.00,0.00,0,'D',99),
 ('246','24','PAGO PROVEEDORES','Alianza',3,1,0,0,'',0.00,0.00,0,'D',98),
 ('245','24','PAGO PROVEEDORES','La Colonia',3,1,0,0,'',0.00,0.00,0,'D',97),
 ('244','24','PAGO PROVEEDORES','Ferpaz',3,1,0,0,'',0.00,0.00,0,'D',96),
 ('243','24','PAGO PROVEEDORES','D.K.W.',3,1,0,0,'',0.00,0.00,0,'D',95),
 ('242','24','Pago Proveedores','Edesa',3,1,0,0,'',0.00,0.00,0,'D',94),
 ('21','2','Egresos','SUELDOS',2,1,0,0,'',0.00,0.00,0,'D',61),
 ('241','24','Pago Proveedores','Aromas',3,1,0,0,'',0.00,0.00,0,'D',93),
 ('213','2','Egresos','Seguro Motel',3,1,0,0,'',0.00,0.00,0,'D',92),
 ('212','21','Sueldos','Comisiones',3,1,0,0,'',0.00,0.00,0,'D',91),
 ('24','2','Egresos','PAGO PROVEEDORES',2,0,0,0,'',0.00,0.00,0,'D',83),
 ('26','2','Egresos','COMPRAS',2,1,0,0,'',0.00,0.00,0,'D',90),
 ('12','1','Ingresos','VENTA DE MERCADERIA',3,1,0,0,'',0.00,0.00,0,'C',88),
 ('11','1','Ingresos','ALOJAMIENTOS',3,1,0,0,'',0.00,0.00,0,'C',87),
 ('259','25','GASTOS DE OFICINA','Pago por servicios Plomero',3,1,0,0,'',0.00,0.00,0,'D',108),
 ('257','25','GASTOS DE OFICINA','Pago por servicios Nelson Nunez',3,1,0,0,'',0.00,0.00,0,'D',109),
 ('2595','25','GASTOS DE OFICINA','Libreria e Imprenta',3,1,0,0,'',0.00,0.00,0,'D',110),
 ('2490','24','PAGO PROVEEDORES','Albisol S.R.L.',3,1,0,0,'',0.00,0.00,0,'D',111),
 ('2','','','Egresos',1,0,0,0,'',0.00,0.00,0,'D',112),
 ('2591','25','GASTOS DE OFICINA','Pago por servicios Arsenio',3,1,0,0,'',0.00,0.00,0,'D',113),
 ('2592','25','GASTOS DE OFICINA','Servicio de Actualizacion Tv',3,1,0,0,'',0.00,0.00,0,'D',114),
 ('13','1','Ingresos','PRODUCCION COCINA',3,1,0,0,'0',0.00,0.00,0,'C',116),
 ('261','26','COMPRAS','Pan Para Mixto',3,1,0,0,'',0.00,0.00,0,'D',117),
 ('262','26','COMPRAS','Pre Pizza',3,1,0,0,'',0.00,0.00,0,'D',118),
 ('263','26','COMPRAS','Jamon Para Mixto',3,1,0,0,'',0.00,0.00,0,'D',119),
 ('264','26','COMPRAS','Jamon Para Picada',3,1,0,0,'',0.00,0.00,0,'D',120),
 ('265','26','COMPRAS','Tomate',3,1,0,0,'',0.00,0.00,0,'D',121),
 ('266','26','COMPRAS','Cebolla',3,1,0,0,'',0.00,0.00,0,'D',122),
 ('267','26','COMPRAS','Morron',3,1,0,0,'',0.00,0.00,0,'D',123),
 ('268','26','COMPRAS','Queso para Mixto y Pizza',3,1,0,0,'',0.00,0.00,0,'D',124),
 ('269','26','COMPRAS','Queso para Picada',3,1,0,0,'',0.00,0.00,0,'D',125),
 ('2491','24','PAGO PROVEEDORES','Dist. Gloria',3,1,0,0,'',0.00,0.00,0,'D',126),
 ('2492','24','PAGO PROVEEDORES','Sur Comercial (cavallaro)',3,1,0,0,'',0.00,0.00,0,'D',127),
 ('2493','24','PAGO PROVEEDORES','Manofactura de Pilar',3,1,0,0,'',0.00,0.00,0,'D',128),
 ('2596','25','GASTOS DE OFICINA','CENTRO GRAFICO',3,1,0,0,'',0.00,0.00,0,'D',129),
 ('2497','24','PAGO PROVEEDORES','Indosur S.A.',3,1,0,0,'',0.00,0.00,0,'D',130),
 ('2498       251','24','PAGO PROVEEDORES','Deuda Deivi',3,1,0,0,'',0.00,0.00,0,'D',131),
 ('2499','24','PAGO PROVEEDORES','Distribuidora Heep SRL',3,1,0,0,'',0.00,0.00,0,'D',132),
 ('2411','24','PAGO PROVEEDORES','London Import S.A.',3,1,0,0,'',0.00,0.00,0,'D',133),
 ('2611','26','COMPRAS','Pepino para Picada',3,1,0,0,'',0.00,0.00,0,'D',134),
 ('2612','26','COMPRAS','Aceitunas para Pizza y Picada',3,1,0,0,'',0.00,0.00,0,'D',135),
 ('2613','26','COMPRAS','Compras Varias D.K.W.',3,1,0,0,'',0.00,0.00,0,'D',136),
 ('2614','26','COMPRAS','PAPAS FRITAS',3,1,0,0,'',0.00,0.00,0,'D',137),
 ('2615','26','COMPRAS','MILANESITAS PARA PICADA',3,1,0,0,'',0.00,0.00,0,'D',138),
 ('2616','26','COMPRAS','Compras Varias',3,1,0,0,'',0.00,0.00,0,'D',139),
 ('2617','26','COMPRAS','Azul Para Ropa',3,1,0,0,'',0.00,0.00,0,'D',140),
 ('2618','26','COMPRAS','Coop Colonias Unidas',3,1,0,0,'',0.00,0.00,0,'D',141),
 ('2481','24','PAGO PROVEEDORES','Productos Mati',3,1,0,0,'',0.00,0.00,0,'D',142),
 ('2619','26','COMPRAS','Aceite para Cocina',3,1,0,0,'',0.00,0.00,0,'D',143),
 ('2597','25','GASTOS DE OFICINA','Honorarios Contables',3,1,0,0,'',0.00,0.00,0,'D',144),
 ('2482','24','PAGO PROVEEDORES','Paraguay Trading S.A.',3,1,0,0,'',0.00,0.00,0,'D',145),
 ('2421','24','PAGO PROVEEDORES','Sur Med Dist.',3,1,0,0,'',0.00,0.00,0,'D',146),
 ('1','','','Ingresos',1,0,0,0,'',0.00,0.00,0,'C',147),
 ('2620','26','COMPRAS','Tapa p/ Empanadas',3,1,0,0,'',0.00,0.00,0,'D',148),
 ('2574','25','GASTOS DE OFICINA','TRABAJOS RICHARD VALLEJOS',3,1,0,0,'',0.00,0.00,0,'D',149),
 ('2422','24','PAGO PROVEEDORES','DISTRIBUIDORA BF',3,1,0,0,'',0.00,0.00,0,'D',150),
 ('2599','25','GASTOS DE OFICINA','PAGOS A CERRO CORA (VARIOS)',3,1,0,0,'',0.00,0.00,0,'D',152),
 ('2571','25','GASTOS DE OFICINA','SERVICIO DE JARDINERIA',3,1,0,0,'',0.00,0.00,0,'D',153),
 ('2572','25','GASTOS DE OFICINA','AGUA CORRIENTE',3,1,0,0,'',0.00,0.00,0,'D',154),
 ('2494','24','PAGO PROVEEDORES','SINDEC S.A.',3,1,0,0,'',0.00,0.00,0,'D',155),
 ('2573','25','GASTOS DE OFICINA','Productos Vencidos',3,1,0,0,'',0.00,0.00,0,'D',156),
 ('2631','26','COMPRAS','Coop. Pirapo.',3,1,0,0,'',0.00,0.00,0,'D',157),
 ('216','21','SUELDOS','IPS',3,1,0,0,'',0.00,0.00,0,'D',158),
 ('2498','24','PAGO PROVEEDORES','Dist. Saeta',3,1,0,0,'',0.00,0.00,0,'D',159),
 ('217','21','SUELDOS','SEI IVA',3,1,0,0,'',0.00,0.00,0,'D',160),
 ('218','21','SUELDOS','Liquidaciones',3,1,0,0,'',0.00,0.00,0,'D',161),
 ('2495','24','PAGO PROVEEDORES','Bordados J.B.',3,1,0,0,'',0.00,0.00,0,'D',162),
 ('2598','25','GASTOS DE OFICINA','Serv. Administrativos',3,1,0,0,'',0.00,0.00,0,'D',163),
 ('219','21','SUELDOS','Iracis',3,1,0,0,'',0.00,0.00,0,'D',164),
 ('2423','24','PAGO PROVEEDORES','Roperia Intima',3,1,0,0,'',0.00,0.00,0,'D',165),
 ('2425','24','PAGO PROVEEDORES','Electro Pindu',3,1,0,0,'',0.00,0.00,0,'D',166),
 ('2582','25','GASTOS DE OFICINA','Claro Tv',3,1,0,0,'',0.00,0.00,0,'D',167);
/*!40000 ALTER TABLE `caja_cuentas` ENABLE KEYS */;


--
-- Definition of table `caja_historico`
--

DROP TABLE IF EXISTS `caja_historico`;
CREATE TABLE `caja_historico` (
  `ID_NUMERO` int(10) NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `ID_CUENTACAJA` decimal(15,0) NOT NULL,
  `NOMBRE` char(50) NOT NULL,
  `SIGNO` char(1) NOT NULL,
  `EXENTA` decimal(10,1) NOT NULL,
  `GRAVADA` decimal(10,1) NOT NULL,
  `M_IVA` decimal(10,1) NOT NULL,
  `COMENTARIO` text NOT NULL,
  `ID_CAJAS` decimal(10,0) NOT NULL,
  `ID_CONCEPTO` decimal(10,0) NOT NULL,
  `NRO_BOLETA` char(20) NOT NULL,
  `ID_MONEDA` decimal(10,0) NOT NULL,
  `NOM_MONEDA` char(50) NOT NULL,
  `COTIZACION` decimal(10,0) NOT NULL,
  `ID_OT` decimal(18,0) NOT NULL,
  `ID_SUCURSAL` decimal(18,0) NOT NULL,
  `NOM_SUCURSAL` char(50) NOT NULL,
  PRIMARY KEY (`ID_NUMERO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caja_historico`
--

/*!40000 ALTER TABLE `caja_historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja_historico` ENABLE KEYS */;


--
-- Definition of table `caja_movimientos`
--

DROP TABLE IF EXISTS `caja_movimientos`;
CREATE TABLE `caja_movimientos` (
  `FECHA` date NOT NULL,
  `ID_CUENTACAJA` varchar(50) NOT NULL,
  `NOMBRE` char(50) NOT NULL,
  `SIGNO` char(1) NOT NULL,
  `EXENTA` decimal(10,1) NOT NULL,
  `GRAVADA` decimal(10,1) NOT NULL,
  `M_IVA` decimal(10,1) NOT NULL,
  `ID_CAJAS` decimal(10,0) NOT NULL,
  `ID_CONCEPTO` decimal(10,0) NOT NULL,
  `NRO_BOLETA` char(20) NOT NULL,
  `COMENTARIO` text NOT NULL,
  `ID_MONEDA` decimal(10,0) NOT NULL,
  `NOM_MONEDA` char(50) NOT NULL,
  `COTIZACION` decimal(10,0) NOT NULL,
  `ID_OT` decimal(18,0) NOT NULL,
  `ID_SUCURSAL` decimal(18,0) NOT NULL,
  `NOM_SUCURSAL` char(50) NOT NULL,
  `ID_NUMERO` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_NUMERO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caja_movimientos`
--

/*!40000 ALTER TABLE `caja_movimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja_movimientos` ENABLE KEYS */;


--
-- Definition of table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
CREATE TABLE `cajas` (
  `ID_CAJAS` int(10) NOT NULL AUTO_INCREMENT,
  `NOMBRE` char(50) NOT NULL,
  `ID_SUCURSAL` decimal(10,0) NOT NULL,
  `NOM_SUCURSAL` char(50) NOT NULL,
  `FONDO_FIJO` decimal(10,2) NOT NULL,
  `ID_MONEDA` decimal(10,0) NOT NULL,
  `NOM_MONEDA` char(50) NOT NULL,
  `CERRADO` char(1) NOT NULL,
  `FECHA_CIERRE` date NOT NULL,
  `ID_OPERADOR` decimal(10,0) NOT NULL,
  `NOM_OPERADOR` char(50) NOT NULL,
  PRIMARY KEY (`ID_CAJAS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cajas`
--

/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;


--
-- Definition of table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE `ciudad` (
  `COD_CIUDAD` char(3) NOT NULL DEFAULT '',
  `DESCRIPCION` char(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ciudad`
--

/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;


--
-- Definition of table `componentes`
--

DROP TABLE IF EXISTS `componentes`;
CREATE TABLE `componentes` (
  `COD_PRODUCTO` char(20) NOT NULL DEFAULT '',
  `COD_COMPON` char(20) NOT NULL DEFAULT '',
  `NOMBRE_COMP` char(50) NOT NULL DEFAULT '',
  `PORCENTAJE` decimal(3,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `componentes`
--

/*!40000 ALTER TABLE `componentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `componentes` ENABLE KEYS */;


--
-- Definition of table `composiciones`
--

DROP TABLE IF EXISTS `composiciones`;
CREATE TABLE `composiciones` (
  `id_orden` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_producto` int(10) unsigned NOT NULL,
  `nombre_producto` varchar(45) NOT NULL,
  `id_subproducto` int(10) unsigned NOT NULL,
  `nombre_subproducto` varchar(50) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `porcentaje` float DEFAULT NULL,
  `merma` float NOT NULL,
  `unidad_medida` varchar(45) NOT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  `precio` float NOT NULL,
  `total_item` float(10,2) DEFAULT NULL,
  `mano_obra` float(10,2) DEFAULT NULL,
  `costo_indirecto` float(10,2) DEFAULT NULL,
  `costo_producto` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `composiciones`
--

/*!40000 ALTER TABLE `composiciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `composiciones` ENABLE KEYS */;


--
-- Definition of table `conceptos`
--

DROP TABLE IF EXISTS `conceptos`;
CREATE TABLE `conceptos` (
  `ID_CONCEPTO` int(2) NOT NULL DEFAULT '0',
  `DESCRIPCION` char(50) NOT NULL DEFAULT '',
  `SIGNO` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conceptos`
--

/*!40000 ALTER TABLE `conceptos` DISABLE KEYS */;
INSERT INTO `conceptos` (`ID_CONCEPTO`,`DESCRIPCION`,`SIGNO`) VALUES 
 (2,'VENTAS','D'),
 (1,'COMPRAS','C'),
 (8,'AJUSTE DE INVENTARIO','C');
/*!40000 ALTER TABLE `conceptos` ENABLE KEYS */;


--
-- Definition of table `depositos`
--

DROP TABLE IF EXISTS `depositos`;
CREATE TABLE `depositos` (
  `COD_DEPOSITO` char(3) NOT NULL DEFAULT '',
  `NOMBRE` char(50) NOT NULL DEFAULT '',
  `DIRECCION` char(50) NOT NULL DEFAULT '',
  `CIUDAD` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depositos`
--

/*!40000 ALTER TABLE `depositos` DISABLE KEYS */;
/*!40000 ALTER TABLE `depositos` ENABLE KEYS */;


--
-- Definition of table `depto`
--

DROP TABLE IF EXISTS `depto`;
CREATE TABLE `depto` (
  `COD_DEPART` char(2) NOT NULL DEFAULT '',
  `DESCRIPCION` char(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depto`
--

/*!40000 ALTER TABLE `depto` DISABLE KEYS */;
/*!40000 ALTER TABLE `depto` ENABLE KEYS */;


--
-- Definition of table `detalle_movpro`
--

DROP TABLE IF EXISTS `detalle_movpro`;
CREATE TABLE `detalle_movpro` (
  `NUMERO` char(10) NOT NULL DEFAULT '',
  `COD_DEPOSITO` char(3) NOT NULL DEFAULT '',
  `COD_TALONARIO` char(3) NOT NULL DEFAULT '',
  `COD_PRODUCTO` char(20) NOT NULL DEFAULT '',
  `NOMBRE_PRODUCTO` char(50) NOT NULL DEFAULT '',
  `TIPO_IVA` bit(1) NOT NULL DEFAULT b'0',
  `CANTIDAD` decimal(10,2) NOT NULL DEFAULT '0.00',
  `PRECIO` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DESCUENTO` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SUB_TOTAL` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SUB_TOTALIVA` decimal(10,2) NOT NULL DEFAULT '0.00',
  `OBS` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detalle_movpro`
--

/*!40000 ALTER TABLE `detalle_movpro` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_movpro` ENABLE KEYS */;


--
-- Definition of table `detalle_pedidos`
--

DROP TABLE IF EXISTS `detalle_pedidos`;
CREATE TABLE `detalle_pedidos` (
  `id_detallepedido` int(10) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(10) NOT NULL,
  `nro_mesa` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio` float(10,2) NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `total_item` float(10,2) NOT NULL,
  `cocina` int(1) NOT NULL,
  `id_concepto` int(2) unsigned NOT NULL,
  `id_cuenta_caja` varchar(10) NOT NULL,
  `cantidad_devuelto` float(10,2) NOT NULL,
  `nombre_concepto` varchar(100) NOT NULL,
  `total_devuelto` float(10,2) NOT NULL,
  `saldo` float(10,2) NOT NULL,
  PRIMARY KEY (`id_detallepedido`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detalle_pedidos`
--

/*!40000 ALTER TABLE `detalle_pedidos` DISABLE KEYS */;
INSERT INTO `detalle_pedidos` (`id_detallepedido`,`id_pedido`,`nro_mesa`,`id_producto`,`nombre_producto`,`precio`,`cantidad`,`total_item`,`cocina`,`id_concepto`,`id_cuenta_caja`,`cantidad_devuelto`,`nombre_concepto`,`total_devuelto`,`saldo`) VALUES 
 (1,1,0,100,'CHIPA TRADICIONAL',2000.00,140.00,280000.00,0,10,'',0.00,'Pedidos',0.00,280000.00),
 (3,2,0,100,'CHIPA TRADICIONAL',2000.00,175.00,350000.00,0,10,'',175.00,'PEDIDOS',350000.00,0.00),
 (4,3,0,100,'CHIPA TRADICIONAL',2000.00,665.00,1330000.00,0,10,'',665.00,'Pedidos',1330000.00,0.00),
 (5,4,0,100,'CHIPA TRADICIONAL',2000.00,105.00,210000.00,0,10,'',105.00,'Pedidos',210000.00,0.00),
 (6,4,0,101,'CHIPA SO’O',3000.00,20.00,60000.00,0,10,'',20.00,'Pedidos',60000.00,0.00),
 (7,4,0,102,'CHIPA QUESÚ',2500.00,15.00,37500.00,0,10,'',15.00,'Pedidos',37500.00,0.00),
 (36,5,0,100,'CHIPA TRADICIONAL',2000.00,70.00,140000.00,0,10,'',60.00,'PEDIDOS',120000.00,20000.00),
 (35,5,0,103,'COCIDO',2000.00,5.00,10000.00,0,10,'',5.00,'PEDIDOS',10000.00,0.00),
 (34,5,0,104,'Chipa Argolla',5000.00,4.00,20000.00,0,10,'',4.00,'PEDIDOS',20000.00,0.00),
 (33,5,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'PEDIDOS',70000.00,0.00),
 (31,5,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'PEDIDOS',70000.00,0.00),
 (32,5,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'PEDIDOS',70000.00,0.00),
 (15,6,0,100,'CHIPA TRADICIONAL',2000.00,105.00,210000.00,0,10,'',105.00,'Pedidos',210000.00,0.00),
 (16,6,0,101,'CHIPA SO’O',3000.00,20.00,60000.00,0,10,'',20.00,'Pedidos',60000.00,0.00),
 (17,6,0,102,'CHIPA QUESÚ',2500.00,15.00,37500.00,0,10,'',15.00,'Pedidos',37500.00,0.00),
 (30,5,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'PEDIDOS',70000.00,0.00),
 (29,5,0,101,'CHIPA SO’O',3000.00,35.00,105000.00,0,10,'',35.00,'PEDIDOS',105000.00,0.00),
 (28,5,0,102,'CHIPA QUESÚ',2500.00,35.00,87500.00,0,10,'',35.00,'PEDIDOS',87500.00,0.00),
 (37,7,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'Pedidos',70000.00,0.00),
 (51,8,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',25.00,'PEDIDOS',50000.00,20000.00),
 (50,8,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'PEDIDOS',70000.00,0.00),
 (49,8,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'PEDIDOS',70000.00,0.00),
 (48,8,0,100,'CHIPA TRADICIONAL',2000.00,35.00,70000.00,0,10,'',35.00,'PEDIDOS',70000.00,0.00),
 (47,8,0,102,'CHIPA QUESÚ',2500.00,35.00,87500.00,0,10,'',9.00,'PEDIDOS',22500.00,65000.00),
 (52,8,0,103,'COCIDO',2000.00,2.00,4000.00,0,10,'',2.00,'PEDIDOS',4000.00,0.00);
/*!40000 ALTER TABLE `detalle_pedidos` ENABLE KEYS */;


--
-- Definition of table `detalle_presu`
--

DROP TABLE IF EXISTS `detalle_presu`;
CREATE TABLE `detalle_presu` (
  `NUMERO` char(10) NOT NULL DEFAULT '',
  `COD_DEPOSITO` char(3) NOT NULL DEFAULT '',
  `COD_TALONARIO` char(3) NOT NULL DEFAULT '',
  `COD_PRODUCTO` char(20) NOT NULL DEFAULT '',
  `NOMBRE_PRODUCTO` char(50) NOT NULL DEFAULT '',
  `TIPO_IVA` bit(1) NOT NULL DEFAULT b'0',
  `CANTIDAD` decimal(10,2) NOT NULL DEFAULT '0.00',
  `PRECIO` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DESCUENTO` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SUB_TOTAL` decimal(10,2) NOT NULL DEFAULT '0.00',
  `SUB_TOTALIVA` decimal(10,2) NOT NULL DEFAULT '0.00',
  `OBS` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detalle_presu`
--

/*!40000 ALTER TABLE `detalle_presu` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_presu` ENABLE KEYS */;


--
-- Definition of table `familia`
--

DROP TABLE IF EXISTS `familia`;
CREATE TABLE `familia` (
  `COD_FAMILIA` char(3) NOT NULL DEFAULT '',
  `NOMBRE` char(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `familia`
--

/*!40000 ALTER TABLE `familia` DISABLE KEYS */;
/*!40000 ALTER TABLE `familia` ENABLE KEYS */;


--
-- Definition of table `mesas`
--

DROP TABLE IF EXISTS `mesas`;
CREATE TABLE `mesas` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `mombre_mesa` varchar(50) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `comensales` int(5) NOT NULL,
  `cerrado` int(1) NOT NULL,
  `tarifa` float NOT NULL,
  `tarifa_exedente` float NOT NULL,
  `cod_producto` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mesas`
--

/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
INSERT INTO `mesas` (`id_mesa`,`mombre_mesa`,`ubicacion`,`comensales`,`cerrado`,`tarifa`,`tarifa_exedente`,`cod_producto`) VALUES 
 (1,'HABITACION Nro 1','',0,0,50000,20000,1),
 (2,'HABITACION Nro 2','',0,0,70000,25000,2),
 (3,'HABITACION Nro 3','',0,0,70000,25000,3),
 (4,'HABITACION Nro 4','',0,0,50000,20000,4),
 (5,'HABITACION Nro 5','',0,0,100000,30000,5),
 (6,'HABITACION Nro 6','',0,0,100000,30000,6),
 (7,'HABITACION Nro 7','',0,0,50000,20000,7),
 (8,'HABITACION Nro 8','',0,1,70000,25000,8),
 (9,'HABITACION Nro 9','',0,0,70000,25000,9),
 (10,'HABITACION Nro 10','',0,0,50000,20000,10),
 (11,'Habitacion Nro. ','',0,0,0,0,0),
 (12,'Habitacion Nro. ','',0,0,0,0,0),
 (13,'Habitacion Nro. ','',0,0,0,0,0),
 (14,'Habitacion Nro. ','',0,0,0,0,0),
 (15,'Habitacion Nro. ','',0,0,0,0,0),
 (16,'Habitacion Nro. ','',0,0,0,0,0),
 (17,'Habitacion Nro. ','',0,0,0,0,0),
 (18,'Habitacion Nro. ','',0,0,0,0,0),
 (19,'Habitacion Nro. ','',0,0,0,0,0),
 (99,'Consumision Interno','',0,0,0,0,0);
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;


--
-- Definition of table `monedas`
--

DROP TABLE IF EXISTS `monedas`;
CREATE TABLE `monedas` (
  `ID_MONEDA` int(10) NOT NULL AUTO_INCREMENT,
  `NOMBRE` char(50) NOT NULL DEFAULT '',
  `SIGNO` char(10) NOT NULL,
  `COTIZACION` float(10,2) NOT NULL,
  PRIMARY KEY (`ID_MONEDA`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monedas`
--

/*!40000 ALTER TABLE `monedas` DISABLE KEYS */;
INSERT INTO `monedas` (`ID_MONEDA`,`NOMBRE`,`SIGNO`,`COTIZACION`) VALUES 
 (4,'GUARANIES','GS.',10.00),
 (5,'PESOS','$',1100.00),
 (6,'Dolares','U$s',4500.00),
 (7,'Dolar','$',4500.00);
/*!40000 ALTER TABLE `monedas` ENABLE KEYS */;


--
-- Definition of table `mosos`
--

DROP TABLE IF EXISTS `mosos`;
CREATE TABLE `mosos` (
  `id_moso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_moso` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  PRIMARY KEY (`id_moso`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mosos`
--

/*!40000 ALTER TABLE `mosos` DISABLE KEYS */;
INSERT INTO `mosos` (`id_moso`,`nombre_moso`,`turno`,`fecha_inicio`) VALUES 
 (1,' ','','0000-00-00');
/*!40000 ALTER TABLE `mosos` ENABLE KEYS */;


--
-- Definition of table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `id_pedido` int(10) NOT NULL AUTO_INCREMENT,
  `nro_mesa` int(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_vendedor` int(10) DEFAULT '0',
  `nombre_vendedor` varchar(50) DEFAULT '',
  `total_descuento` float(10,2) NOT NULL,
  `pago_parcial` float(10,2) NOT NULL,
  `total_pedido` float(10,2) NOT NULL,
  `cerrado` int(1) NOT NULL,
  `cierre_turno` int(1) unsigned NOT NULL,
  `fecha_cierre` datetime NOT NULL,
  `id_concepto` int(2) unsigned NOT NULL,
  `nro_factura_compra` varchar(45) NOT NULL,
  `id_proveedor` int(10) unsigned NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `contado` int(10) unsigned NOT NULL,
  `credito` int(10) unsigned NOT NULL,
  `vencimiento` datetime NOT NULL,
  `fecha_salida` datetime NOT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedidos`
--

/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` (`id_pedido`,`nro_mesa`,`fecha`,`id_vendedor`,`nombre_vendedor`,`total_descuento`,`pago_parcial`,`total_pedido`,`cerrado`,`cierre_turno`,`fecha_cierre`,`id_concepto`,`nro_factura_compra`,`id_proveedor`,`nombre_proveedor`,`contado`,`credito`,`vencimiento`,`fecha_salida`) VALUES 
 (7,0,'2016-03-26 10:43:40',2,'JOSE ROMAN',0.00,0.00,0.00,0,0,'0000-00-00 00:00:00',10,'',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (8,0,'2016-03-26 10:44:23',1,'FATIMA PAIVA',0.00,0.00,0.00,0,0,'0000-00-00 00:00:00',10,'',0,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;


--
-- Definition of table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id_producto` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `familia` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `precio_costo` float NOT NULL,
  `moneda` varchar(50) NOT NULL,
  `deposito` varchar(50) NOT NULL,
  `activo` int(1) NOT NULL,
  `fecha_vigencia` date NOT NULL,
  `nom_unimedida` varchar(50) NOT NULL,
  `produccion` int(1) NOT NULL,
  `id_producto1` int(10) NOT NULL AUTO_INCREMENT,
  `alojamiento` int(10) unsigned DEFAULT NULL,
  `materia_prima` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `id_producto1` (`id_producto1`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productos`
--

/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id_producto`,`nombre`,`familia`,`precio`,`precio_costo`,`moneda`,`deposito`,`activo`,`fecha_vigencia`,`nom_unimedida`,`produccion`,`id_producto1`,`alojamiento`,`materia_prima`) VALUES 
 (102,'CHIPA QUESÚ','CHIPA',3000,3000,'','',0,'2016-03-10','UNIDAD',1,6,0,0),
 (101,'CHIPA SO’O','CHIPA',3000,3000,'','',0,'2016-03-10','UNIDAD',1,5,0,0),
 (100,'CHIPA TRADICIONAL','CHIPA',2000,2000,'','',0,'2016-03-10','UNIDAD',1,4,0,0),
 (500,'ALMIDÓN','ALMIDÓN',1,1,'','',0,'2016-03-10','GRAMOS',0,7,0,1),
 (501,'SAL','SAL',1,1,'','',0,'2016-03-10','GRAMOS',0,8,0,1),
 (502,'SUERO','SUERO',1,1,'','',0,'2016-03-10','GRAMOS',0,9,0,1),
 (503,'GRASA','GRASA',1,1,'','',0,'2016-03-10','GRAMOS',0,10,0,1),
 (504,'ACEITE','ACEITE',1,1,'','',0,'2016-03-10','LITROS',0,11,0,1),
 (505,'HUEVO','HUEVO',1,1,'','',0,'2016-03-10','DOCENAS',0,12,0,1),
 (506,'QUESO','QUESO',1,1,'','',0,'2016-03-10','GRAMOS',0,13,0,1),
 (507,'RICOTA','QUESO',1,1,'','',0,'2016-03-10','GRAMOS',0,14,0,1),
 (508,'LECHE','LECHE',1,1,'','',0,'2016-03-10','LITROS',0,15,0,1),
 (509,'COLORANTE','COLORANTE',1,1,'','',0,'2016-03-11','LITROS',0,16,0,1),
 (103,'COCIDO','COCIDO',2000,2000,'','',0,'2016-03-17','LITROS',1,17,0,0),
 (104,'Chipa Argolla','CHIPA ARGOLLA',5000,5000,'','',0,'2016-03-24','UNIDAD',1,18,0,0),
 (105,'MASA CRUDA','MASA CRUDA',16000,16000,'','',0,'2016-03-24','GRAMOS',1,19,0,0),
 (106,'CHIPA JAMON Y QUESO','CHIPA JAMON Y QUESO',3000,3000,'','',0,'2016-04-11','UNIDAD',1,20,0,0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;


--
-- Definition of table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores` (
  `ID_PROVEEDOR` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE_CORTO` char(10) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `RUC` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `TELEFONO` varchar(50) DEFAULT NULL,
  `CIUDAD` varchar(50) DEFAULT NULL,
  `LINEA_CREDITO` decimal(10,0) DEFAULT NULL,
  `SALDO_DEUDOR` decimal(10,0) DEFAULT NULL,
  `CONTACTO` varchar(50) DEFAULT NULL,
  `TELEF_CONTACTO` varchar(20) DEFAULT NULL,
  `CARGO_CONTACTO` varchar(50) DEFAULT NULL,
  `NOTA` text,
  `CTA_CONTABLE` varchar(45) DEFAULT NULL,
  `PLAZO` int(11) DEFAULT NULL,
  `FECHA_ULTIMO_PAGO` datetime DEFAULT NULL,
  `UBICACION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_PROVEEDOR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proveedores`
--

/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;


--
-- Definition of table `setup`
--

DROP TABLE IF EXISTS `setup`;
CREATE TABLE `setup` (
  `id_setup` int(1) NOT NULL,
  `cerrado` int(1) NOT NULL,
  `fecha_operativa` date NOT NULL,
  `segundos_base` int(10) unsigned NOT NULL,
  `segundos_por_exedente` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setup`
--

/*!40000 ALTER TABLE `setup` DISABLE KEYS */;
INSERT INTO `setup` (`id_setup`,`cerrado`,`fecha_operativa`,`segundos_base`,`segundos_por_exedente`) VALUES 
 (1,0,'2016-03-01',5400,1800);
/*!40000 ALTER TABLE `setup` ENABLE KEYS */;


--
-- Definition of table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE `tarjetas` (
  `nro` int(11) NOT NULL AUTO_INCREMENT,
  `veces` int(11) NOT NULL DEFAULT '0',
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`nro`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarjetas`
--

/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` (`nro`,`veces`,`fecha`) VALUES 
 (1,0,NULL),
 (2,0,NULL),
 (3,2,'2014-12-18 00:00:00'),
 (4,2,'2014-08-06 00:00:00'),
 (5,0,NULL),
 (6,0,NULL),
 (7,0,NULL),
 (8,0,NULL),
 (9,0,NULL),
 (10,0,NULL),
 (11,0,'2015-01-02 00:00:00'),
 (12,0,NULL),
 (13,0,NULL),
 (14,0,NULL),
 (15,0,NULL),
 (16,0,NULL),
 (17,0,NULL),
 (18,0,NULL),
 (19,0,NULL),
 (20,0,NULL),
 (21,6,'2014-12-08 00:00:00'),
 (22,0,NULL),
 (23,1,'2014-11-12 00:00:00'),
 (24,0,NULL),
 (25,6,'2014-09-18 00:00:00'),
 (26,0,NULL),
 (27,0,NULL),
 (28,1,'2014-02-10 00:00:00'),
 (29,0,NULL),
 (30,0,NULL),
 (31,0,NULL),
 (32,0,NULL),
 (33,0,NULL),
 (34,0,NULL),
 (35,0,NULL),
 (36,1,'2014-01-20 00:00:00'),
 (37,0,NULL),
 (38,0,NULL),
 (39,0,NULL),
 (40,0,NULL),
 (41,0,NULL),
 (42,0,NULL),
 (43,0,NULL),
 (44,0,NULL),
 (45,0,NULL),
 (46,0,NULL),
 (47,0,NULL),
 (48,0,NULL),
 (49,0,NULL),
 (50,0,NULL),
 (51,0,NULL),
 (52,0,'0000-00-00 00:00:00'),
 (53,4,'2014-08-17 00:00:00'),
 (54,0,NULL),
 (55,4,'2014-12-28 00:00:00'),
 (56,1,'2014-12-27 00:00:00'),
 (57,1,'2014-03-17 00:00:00'),
 (58,6,'2014-12-04 00:00:00'),
 (59,0,NULL),
 (60,1,'2014-11-16 00:00:00'),
 (61,0,NULL),
 (62,0,NULL),
 (63,0,NULL),
 (64,0,NULL),
 (65,0,NULL),
 (66,0,NULL),
 (67,0,NULL),
 (68,0,NULL),
 (69,0,NULL),
 (70,0,NULL),
 (71,0,NULL),
 (72,0,NULL),
 (73,0,NULL),
 (74,0,NULL),
 (75,0,NULL),
 (76,0,NULL),
 (77,0,NULL),
 (78,0,NULL),
 (79,0,NULL),
 (80,0,NULL),
 (81,0,NULL),
 (82,0,NULL),
 (83,0,NULL),
 (84,0,NULL),
 (85,0,NULL),
 (86,0,NULL),
 (87,0,NULL),
 (88,0,NULL),
 (89,0,'0000-00-00 00:00:00'),
 (90,0,NULL),
 (91,0,NULL),
 (92,0,NULL),
 (93,0,NULL),
 (94,0,NULL),
 (95,0,NULL),
 (96,0,NULL),
 (97,0,NULL),
 (98,0,NULL),
 (99,0,NULL),
 (100,0,NULL);
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;


--
-- Definition of table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
CREATE TABLE `tipo_producto` (
  `COD_TIPO` char(3) NOT NULL DEFAULT '',
  `NOMBRE` char(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_producto`
--

/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;


--
-- Definition of table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
CREATE TABLE `ubicacion` (
  `COD_UBICACION` char(3) NOT NULL DEFAULT '',
  `NOMBRE` char(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ubicacion`
--

/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;


--
-- Definition of table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `CLAVEUSUARIO` char(10) NOT NULL DEFAULT '',
  `USUARIO` char(45) NOT NULL DEFAULT '',
  `CARGO` char(30) NOT NULL DEFAULT '',
  `PASSWORD` char(10) NOT NULL DEFAULT '',
  `nivel` int(1) NOT NULL,
  `activo` varchar(1) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id_usuario`,`CLAVEUSUARIO`,`USUARIO`,`CARGO`,`PASSWORD`,`nivel`,`activo`) VALUES 
 (1,'admin','Administrador','','1',1,'S'),
 (2,'karina','Karina Ortigoza','','123',1,'S');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


--
-- Definition of table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
CREATE TABLE `vendedores` (
  `id_vendedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_vendedor` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `comision_contado` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_vendedor`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendedores`
--

/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` (`id_vendedor`,`nombre_vendedor`,`turno`,`fecha_inicio`,`telefono`,`comision_contado`) VALUES 
 (12,'JAVIER BENITEZ','','0000-00-00','0994868131',35),
 (10,'JOSE ROMAN','','0000-00-00','0983159176',30),
 (11,'RAMON CHAMORRO','','0000-00-00','0985238927',35),
 (6,'TEODORO CABAÑAS','','0000-00-00','',30),
 (9,'KARINA ORTIGOZA','','0000-00-00','0994855820',0),
 (8,'FATIMA PAIVA','','0000-00-00','0984960434',0);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

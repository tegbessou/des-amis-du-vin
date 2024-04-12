-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB-1:10.11.7+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dadv`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dadv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dadv`;

--
-- Table structure for table `bottle`
--

DROP TABLE IF EXISTS `bottle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottle` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) NOT NULL,
  `estate_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `grape_varieties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`grape_varieties`)),
  `rate` varchar(2) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `owner_id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  `tasted_at` date DEFAULT NULL COMMENT '(DC2Type:date_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99,'2024-04-10',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99,'2024-04-10',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99,'2024-04-10',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99,'2024-04-10',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','\�o;ԈC����\�\nl','France',1599.99,'2024-04-10',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'\�o;ԈC����\�\nl','France',358.99,'2024-04-10',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99,'2024-04-10',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99,'2024-04-10',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','\�NE\�DԍB\�\�\�a�','United States',199.99,'2024-04-10',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99,'2024-04-10',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99,'2024-04-10',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99,'2024-04-10',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99,'2024-04-10',NULL);
/*!40000 ALTER TABLE `bottle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5373C9665E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES
('jo{�ޞJ̃*!M�\�A','Afghanistan'),
('<vL\�K�K�/\�\�<G','Afrique du Sud'),
('�U�ǤG磁��\��\Zz','Albanie'),
('F�\�\\`I�y,/�','Algérie'),
('�R\�\�-Kô\\�&xC','Allemagne'),
(')U���D���۸D\�\�\�','Andorre'),
('\��\�\�B�mM\"','Angola'),
('\�v\����I��P��B�kS','Anguilla'),
('n*�;�\�C?�u���c\"$','Antarctique'),
('��\�)H\�(W�\'U�<','Antigua-et-Barbuda'),
('�D\�\�áA>��\�\�\�C\�.','Antilles Néerlandaises'),
('.�#�\�A\�\�*��\�','Arabie Saoudite'),
('��Zl��D��º�b�\�','Argentine'),
('�b^\�M��y�\�H[h�','Arménie'),
('~�YF$\�AZ�\�+�q�','Aruba'),
('v\�\�ZB���\�A�1�q','Australie'),
('�\�;T�DMԺ���.\�','Autriche'),
('E\��hOʷa\�pV�r�','Azerbaïdjan'),
('�kFT�6L��\���|\�','Bahamas'),
('v\�U\Z�|Gf�\'\�~�F�','Bahreïn'),
('�b\Z\�!\�Nё/la\"AZ','Bangladesh'),
('Y���oGʹPw�[\')\�','Barbade'),
('\r\�\�=G\�F>�FS \�','Bélarus'),
('�\0\�wAA�5\�)u�\�','Belgique'),
('d~q;D$�{�ǡ��','Belize'),
('F,\"�D٧�����m','Bénin'),
('XmD/\n<F`�\�xj\�4','Bermudes'),
('��pvJ�E�����9�o=','Bhoutan'),
('\�v��_J������\�\'','Bolivie'),
('\�L\�/\�\�M��\�1��-��','Bosnie-Herzégovine'),
('�\�\�\�TD}�q3\�l\��','Botswana'),
('�;\�T_\�HR�h�hl�7','Brésil'),
('8\�\�ӱYF��6\�\�n>','Brunéi Darussalam'),
('\�1NT�\�Hy�KY5-�','Bulgarie'),
('�	[�\�\�Fn��ש�<','Burkina Faso'),
('ŉB�G6�Yՠ��','Burundi'),
('��\�kF��{nj\�\�\�','Cambodge'),
('\�\�k&\�-Oضb\�\�ic\�','Cameroun'),
('\�\�XRV\�Ei�G7�\���','Canada'),
('\��^J��Grzf�[','Cap-vert'),
('=\04$\�MC�۩\�L\�.','Chili'),
(':�����Op�Rl�se�\�','Chine'),
('6�g:<@�h/66d11','Chypre'),
('��\�\�K��\��\�j?','Colombie'),
('@	\�\�Fi�\��.\�[','Comores'),
('�ŭ\�@���w\�ؕ','Costa Rica'),
('�P\����DC��\�IG,\��','Côte d\'Ivoire'),
('KǨV\�~N��&�W\�ڸ\�','Croatie'),
('f:x<@k���\�4ȓh','Cuba'),
('̈́I�\�\�HR��\�U�\��','Danemark'),
('�\�\�\��J�p�\�\�,','Djibouti'),
('�W\�\�&�G+�䌪m�!�','Dominique'),
('\�RU?�O\�V�MA+��','Égypte'),
('�;pCe�F\r�Ⱥ�X2','El Salvador'),
('�:.\Z~\�@�����.�','Émirats Arabes Unis'),
('`\�\�J�\�Cz�\�9]2F�Z','Équateur'),
('/���8@{�(\�@l\�\�','Érythrée'),
('\�	\�\�\�sI-�d�\Z:R�','Espagne'),
('��o@�\�K��w	F\�\�\�','Estonie'),
('�\�\�\�5O��)\�\�C1r�','États Fédérés de Micronésie'),
('t#	\�\�I��9\�\�F\�u\�','États-Unis'),
('�c*��EZ�r�mFE<','Éthiopie'),
('5\�\n��A5�\�1\��d','Fédération de Russie'),
('�\�O�\"TE��\�\��D�','Fidji'),
('c{\�\'�*L����\�\�','Finlande'),
('\�q��,\�Bz�\�}�R�Y','France'),
('\�h׹O\�:��\�{M','Gabon'),
('ߪ��\��C���o\�,ߍ\�','Gambie'),
('%4�Tf�G\�GE�\��','Géorgie'),
('��0MxE�ꭄ!� ','Géorgie du Sud et les Îles Sandwich du Sud'),
('(lu\nn@Μ_9\�b\�\�','Ghana'),
('\��\�H�Kx��\�l)��\�','Gibraltar'),
('\�a\�l�K\�pgE\�;\'','Grèce'),
('�ft|\�BE9�(!!}`','Grenade'),
('\�uuc�\�F��\r�⵲`\�','Groenland'),
('閏q7Gf���ރnp','Guadeloupe'),
('F��uGLW�\��8\�i','Guam'),
('IV\�4{@��1���\�\r�','Guatemala'),
('�4� rM	�ٸ(�?\�','Guinée'),
('�\�bT`tAݲƐe\��\�','Guinée Équatoriale'),
('&:���Iΐ\n�oQ\�','Guinée-Bissau'),
('ņuL]O#�÷\r\'\�\�','Guyana'),
('!3ؕ$MG�(�]�\�ag','Guyane Française'),
('��\r-OL\n���l�\�\�7','Haïti'),
(';1\�\�&\�K֐���','Honduras'),
('ı�\�D��,�\�#\�','Hong-Kong'),
('`u�EгB���\�l�5','Hongrie'),
('{\�\�AQA>�{~\�ȕ�,','Île Bouvet'),
('�U#gc&F~��}j��','Île Christmas'),
('�MU��NJ�Y�ӅZ\�','Île de Man'),
('��^�jB��~;i{\�n','Île Norfolk'),
('���Y	\�MS�ZA�\�~','Îles (malvinas) Falkland'),
('���\�\��C�Pڻ��q','Îles Åland'),
('�B@p�B̚\�\"a@\�n','Îles Caïmanes'),
('\�1�bI��\n\n.','Îles Cocos (Keeling)'),
('\�]��ǫJ�������B�','Îles Cook'),
('��t�7pA��OGG\rq�\�','Îles Féroé'),
('Ď\�pڣE�\�:V��\�','Îles Heard et Mcdonald'),
('\�\�\�FI�N葟�͢��g','Îles Mariannes du Nord'),
('#\r|\�-\�Ob��u1\�ޖY','Îles Marshall'),
('��ȑZ G��\�\�&c/','Îles Mineures Éloignées des États-Unis'),
('JP\�gLF��jf�ϗ\�l','Îles Salomon'),
('+�\�\�\'Gͼ��\�\�\n!','Îles Turks et Caïques'),
('�\�\����GB�\�\�eؿ\�','Îles Vierges Britanniques'),
('\Z%�a�*K���FDl�','Îles Vierges des États-Unis'),
('zs\�5�*I��n�`\�^','Inde'),
('_�vȊ�F	�\n6��k','Indonésie'),
('\�����/IO�*\�K�`%W','Iraq'),
('p\nN\��M����\�\�8k','Irlande'),
('s��\�3�@.�\���,\�','Islande'),
('�4՟@Ƣg�6kI\�','Israël'),
('Q\Zs�\�\�M��̐�K�','Italie'),
('gۼ&2\�BE���\�\�\�','Jamahiriya Arabe Libyenne'),
('���W�0D#��˜�<�','Jamaïque'),
('�\'��^Ev�>�\�QV�9','Japon'),
('�Љ9Fű\�\�쾔��','Jordanie'),
('�\�@x\�/D���	�\�\���','Kazakhstan'),
('��\�eC�IZ�&$\�H�\�M','Kenya'),
('u�\'�N\"��A|��(�','Kirghizistan'),
('\�I@N+Nӟ�\�\�\�B','Kiribati'),
('eZK\n\�N���0��','Koweït'),
('�\�\�߇Ko��_���7�','L\'ex-République Yougoslave de Macédoine'),
('��>HX���=��I','Lesotho'),
('\'�\�mW�F��̯A���\\','Lettonie'),
('\�\�\"ل/N��;Kq\�','Liban'),
('H\�̊�\�LY�r	�s\�\�','Libéria'),
('2�\�\��pF\��\���U','Liechtenstein'),
('�8���A@���\�\�\�M','Lituanie'),
('�\�)ۿ_I\r�\�tջ��','Luxembourg'),
('���a�\�CL��`<�^��','Macao'),
('�\��/�HN�\�\�w�I�S','Madagascar'),
('l�\\L�B.��ZҐfŇ','Malaisie'),
('>`A\�\�M��\�_o�9','Malawi'),
('\'=��NJªT\�wM� ','Maldives'),
('(��f��B��Zvϊ#\�','Mali'),
('\�95�$cC�E1\�\�$ح','Malte'),
('\�\��\��H���\�V]\�\�','Maroc'),
('��Bl\02E@�+!\�\�?-�','Martinique'),
('K%\�\�B�p\�\n��F�','Maurice'),
('kN\�Ÿ�A\�\"؛I!\�','Mauritanie'),
('{��\"�Kg��ķyY','Mayotte'),
('#\�4�&BM;�XU5�','Mexique'),
('E;~\�\'�O<��MLH@ 5','Monaco'),
('�\�+΀�C��\�\�)R\�q','Mongolie'),
('�Υ5�H���Ѭ/','Montserrat'),
('�\"��(�J8����\�((','Mozambique'),
('\\	��SN���p\�>e�','Myanmar'),
('F㽒\�L��ō\�\�Q\r\�','Namibie'),
('Z�\�ƽ\�K\�K�Y�2\�','Nauru'),
('\0hK�\�=M8�=��\'\'�?','Népal'),
('9���\'E�����]r\�','Nicaragua'),
('�x0��\�Mi�-��\�]\��','Niger'),
('���3�xEI�Ä�Z\�.M','Nigéria'),
('WN�\��Fx�N�-\�Xo','Niué'),
('�7R�Ff���_~\��','Norvège'),
('��\n\�\"}Lۣ�\�\�D ','Nouvelle-Calédonie'),
(')���K��n \�\�8','Nouvelle-Zélande'),
('�4����B��\�\�lL','Oman'),
('�m�\�u�A��@A��cL','Ouganda'),
('\�2\��\�L��\n\0\�h�\�\�','Ouzbékistan'),
('Q�HT�]NS�	�D[�{','Pakistan'),
('[|�ޠGi��n7�\�\�\�','Palaos'),
('!�\�6\'�L���b\�p&\�','Panama'),
('\���CD��\�2�tҩ','Papouasie-Nouvelle-Guinée'),
('bǥ�T@	�\�C\�5%','Paraguay'),
('F�qL�|t\�I\�','Pays-Bas'),
('nu\�\�\�I��s-�\��}','Pérou'),
('\�\�\'ZۯAh��)ev�9-','Philippines'),
('�\�:N��n\�u-�`\�','Pitcairn'),
('\�(\�[\�J�\�\�\�薃�','Pologne'),
('ޔ�\�G���A�٥�X','Polynésie Française'),
('\�\���QK��\�\���[','Porto Rico'),
('\�?I\��F��%�9\�\�\�','Portugal'),
('(UUCĮ\�wG\�','Qatar'),
('�\�q�VKL\�\0�[\�n','République Arabe Syrienne'),
('\\B�\�A�@���Y(��','République Centrafricaine'),
('\n<t\\��Ld�\�Oi\�','République de Corée'),
('X\�\�NK��#�.i�','République de Moldova'),
('��#�͙@n�tJ`z��\�','République Démocratique du Congo'),
('KT�ɐ�L\��s�xB1�#','République Démocratique Populaire Lao'),
('l���K4�\�\0m7','République Dominicaine'),
('(V)\��AKq�\���\�','République du Congo'),
('\�HH�\�\�L��of�ӡ\0�','République Islamique d\'Iran'),
('\�\�w1�F\�\n�9�#\�j','République Populaire Démocratique de Corée'),
('�\�\�\��6LF��\�\�ǓG�','République Tchèque'),
('�&��m\rMǚX�Bz\�=b','République-Unie de Tanzanie'),
('~h\�\�\�>G\�h%T���','Réunion'),
('\�\n\�\0C\��(�	y���','Roumanie'),
('}��,Ow�\�\�j1��','Royaume-Uni'),
('s=��B����\��\�','Rwanda'),
('��]B&�@Q�\�dVNOa|','Sahara Occidental'),
('\�F����Cj�\�*\�U�','Saint-Kitts-et-Nevis'),
('�a!:�|Ey�b]\0�h\�','Saint-Marin'),
('m\'\�\�!J���8��','Saint-Pierre-et-Miquelon'),
('�Ϛ\�@IS��\Z�2YH�','Saint-Siège (état de la Cité du Vatican)'),
('^\�\�\�\��M��WC\�ک�\�','Saint-Vincent-et-les Grenadines'),
('\�\�p6\�C�%\�š�x�','Sainte-Hélène'),
('�wnu\�Gd��w\�ā\�','Sainte-Lucie'),
('Q\�-Z\��G��\�eBU6','Samoa'),
('t\��&�\�Ac�\�ueٛ)','Samoa Américaines'),
('�U/\�\�\�O���dul\�+','Sao Tomé-et-Principe'),
('A�\���I��Y&��\�\�4','Sénégal'),
('��V�?Mj�(��ގPb','Serbie-et-Monténégro'),
('*�\�4!CJ]��\Z�\�g��','Seychelles'),
('v6��\�wO ��8�\��\�\�','Sierra Leone'),
('�\�Ơ\�O����\�\"\�\�','Singapour'),
('c[�\�H*�\�AD�n�d','Slovaquie'),
('\�&\�O@\�EϮq\�\�\�\�f','Slovénie'),
('\�\��F]\�D�� |c�%p�','Somalie'),
('E�3�\�M\�ͼ�3\�\�','Soudan'),
('[m\��\�@���6}\�','Sri Lanka'),
('U\�\�`wjL��꿺\�\�\�,','Suède'),
('O\n@�\Z\�Nʑ\�WA\�8\�','Suisse'),
('\�G,@��S\�`EW�','Suriname'),
('\�ٳNG/�q0�v�\��','Svalbard etÎle Jan Mayen'),
('L;�\�Mh�k��(\�oQ','Swaziland'),
('\�7�xt@!��-\�S�','Tadjikistan'),
('\�{�S�dMB�\�W�\��\�','Taïwan'),
('��8\�XI �\�s\�\\R','Tchad'),
('L\�)0\"qG\�uT�\�Qx','Terres Australes Françaises'),
('V\�e�u7H���\��P\�','Territoire Britannique de l\'Océan Indien'),
('�G�ǣN@ĵɼ*\�\��C','Territoire Palestinien Occupé'),
('B�zsYEϠ�O�垇\�','Thaïlande'),
('瓆U$bHM�d��\�\�v\�','Timor-Leste'),
(':RL\�i@��\�\�r8Jc','Togo'),
('�+\�s\��I��F\�Uy�\�\�','Tokelau'),
('I�\��P$DY�ut��\�\�','Tonga'),
('w9J�H\rJϞv�\"@��','Trinité-et-Tobago'),
('\�J\�\�OEI�2\� xo4','Tunisie'),
('\�Z)u\�F���Y�&','Turkménistan'),
('\��^Q\��B_�E�P��\�','Turquie'),
('eB�!\�cGL���K2J��','Tuvalu'),
('\�\�3\�\�G��-t�\�\�\�','Ukraine'),
('��\�k}J��\�_BQ�ګ','Uruguay'),
('B<\���B��M�\�\n\�','Vanuatu'),
('\�\�\�<Mٯ\��r�\�\�','Venezuela'),
(',�9L\�G��\"*�\\\�d�','Viet Nam'),
('\�T�\�L��C\�9+\�','Wallis et Futuna'),
('c*z\�\�N`�f	j\�\�\�','Yémen'),
('s��\�ޛF:�2�\r�\�{','Zambie'),
('���Փ�K뜽iЮbZ/','Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES
('DoctrineMigrations\\Version20240124155119','2024-04-10 20:56:39',4),
('DoctrineMigrations\\Version20240201152951','2024-04-10 20:56:39',3),
('DoctrineMigrations\\Version20240202084749','2024-04-10 20:56:39',2),
('DoctrineMigrations\\Version20240202150901','2024-04-10 20:56:39',3),
('DoctrineMigrations\\Version20240207105701','2024-04-10 20:56:39',3),
('DoctrineMigrations\\Version20240319212437','2024-04-10 20:56:39',2);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grape_variety`
--

DROP TABLE IF EXISTS `grape_variety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grape_variety` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_ECDE22675E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grape_variety`
--

LOCK TABLES `grape_variety` WRITE;
/*!40000 ALTER TABLE `grape_variety` DISABLE KEYS */;
INSERT INTO `grape_variety` VALUES
('�-�\'-�A>�6H�;�1�','Cabernet Franc'),
('H�=n+�A��+Q\�\�n4h','Cabernet Sauvignon'),
('��\�0�eL٥>o��\�	','Chardonnay'),
('{��9�\�K\�\�\'\�g9Ob','Chenin'),
(']\�<�TJϨ�\��	\�(','Cinsault'),
('Or?`��H\��\�+`\n','Grenache'),
('��Ȩr@ܢ�[�,C�','Merlot'),
('w3\��qO\r�\�\�\�A','Nebbiolo'),
('�chi�C�� Z�\�\r�','Petit Verdot'),
('��\�\�\�F��h\�DN׋','Pinot Noir'),
('���7QD��93�\�=','Sauvignon Blanc'),
('ݸ\Z\�\�DQ�\�\��Ҽj�','Shiraz'),
('�P��\�Nu�|>��\�','Syrah'),
('5DY�I$��\�@v�','Tempranillo');
/*!40000 ALTER TABLE `grape_variety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
('\�o;ԈC����\�\nl','hugues.gobet@gmail.com'),
('\�NE\�DԍB\�\�\�a�','root@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 20:56:40

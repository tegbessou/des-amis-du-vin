/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB-ubu2204

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
-- Current Database: `dadv_test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dadv_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dadv_test`;

--
-- Table structure for table `bottle`
--

DROP TABLE IF EXISTS `bottle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottle` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `estate_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `grape_varieties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`grape_varieties`)),
  `rate` varchar(2) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `owner_id` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL,
  `tasted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-21',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-21',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-21',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-21',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-21',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-21',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-21',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-21',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-21',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-21',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-21',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-21',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-21',NULL);
/*!40000 ALTER TABLE `bottle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` binary(16) NOT NULL,
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
('�\"ScxLM�4\�=\�\�U','Afghanistan'),
('J`kwwYGߞ2ZgK#\�r','Afrique du Sud'),
('�FU9�IH�&\�\�\�\�\�','Albanie'),
('ilH��C\'��k\�\��','Algérie'),
('9��f�E�w&Y�a\�','Allemagne'),
(';7o��KI�:��\�m\�','Andorre'),
('\0\�έ\�I٭LQz�~','Angola'),
('pދرH\�\�3�\�\�','Anguilla'),
('\�+�paB�&�i�j\�C','Antarctique'),
('L<\�t\ZH��y=\�n�','Antigua-et-Barbuda'),
('�QQ+)\�O��E�\�\�%�','Antilles Néerlandaises'),
('馓i��K��\�C\�\���','Arabie Saoudite'),
('}�����Hr�\�-Zv�\�\�','Argentine'),
('>��bq�FQ���h`[�-','Arménie'),
('��?\�C��b*Fb�','Aruba'),
('Z��d\�]@#�\���olKA','Australie'),
('�\�yeqG=��B�ƊV�','Autriche'),
(':y*\�N⨱\�\�t�Z','Azerbaïdjan'),
('�\�\0΂\�H��\��\"\�\�!','Bahamas'),
('��P�\\.O �ntf(��0','Bahreïn'),
('p�a\"\�GA��\����jv','Bangladesh'),
('\�\�$�Hf�\�<��R}','Barbade'),
('�}��\�`IۅZ\�2\�\��','Bélarus'),
('\�,^;Kd�Ě�P:�','Belgique'),
('y\�Q�AD�So)\�aY','Belize'),
('�涭@��t\�r|�','Bénin'),
('\�\�\�߰HO��\�\�\�2�','Bermudes'),
('\�NF\�J���O.Y�','Bhoutan'),
('5\�\nZ�;D�\��J�0 O','Bolivie'),
('\�\�r�2\�M��\�\�Id]\�','Bosnie-Herzégovine'),
(' QMc�Eѯ\�5\n/M\�\�','Botswana'),
('�е-GrOx���E	��','Brésil'),
('�	�R�wM\��K�+1�','Brunéi Darussalam'),
('\�iBƠ\�Fʁ;�^�z�','Bulgarie'),
('�����Nȟ�w�����','Burkina Faso'),
('C�IF@�D�J_�)ǴG','Burundi'),
('\�1D\�_{OΔ�{dp��','Cambodge'),
('\�\�(gWJ��>dDfD.','Cameroun'),
('iB9��CJѥ��p\�\�','Canada'),
('A\�2\�\�CK�\'�\'jM\�','Cap-vert'),
('9S�\�Z7F��z-�\�V\�','Chili'),
('\n\� \�L��\��\�\����','Chine'),
('�\"\�;@YDG���?%\0\�','Chypre'),
('.cp\\�L��b6҉_\�9','Colombie'),
('�\��jD~�\�DW�i(','Comores'),
('\�\\\�h\�\�E\�iu�c6�','Costa Rica'),
('p�\�{C�Cn�[�m`1\�\�','Côte d\'Ivoire'),
('\�t��DI�Yo\��l�','Croatie'),
('Vr|_�N��5x\�k�','Cuba'),
('�p=n�\�AДDe\�\��','Danemark'),
('\�n���Cͫ*�(\�Z\\C','Djibouti'),
('\Z�\�e\�M��\�jw��.�','Dominique'),
(')\�!\�\ZBB{���i���3','Égypte'),
('\�\"��\�I.�b+�\�\�','El Salvador'),
('N����)H,���j\�\n�\�','Émirats Arabes Unis'),
('Q\�/[1=E��H\ZQ��-','Équateur'),
('�aV[p�J|�\�\�\0ص;\�','Érythrée'),
('6ྸ\�\�LݿS;3Y\��\�','Espagne'),
('\�,\�6��FW�\�5g���','Estonie'),
('\r���Kd���\�onK','États Fédérés de Micronésie'),
('\��r�\�D%�\�|Q�˯�','États-Unis'),
('��\�8A���h\�_�Z','Éthiopie'),
('\�lq\�>F\n�\�\�\�ړ\�','Fédération de Russie'),
('��{*Nn�)~\�\����','Fidji'),
('7w�\�gTI��\�œ\�i�^','Finlande'),
('\��Z\�\�L��\�s\�b�r','France'),
('v���D��\�2�\�\�','Gabon'),
('\�\��\"\�A��m\�P\�d','Gambie'),
('�q\�\�SKɀ-%��?+�','Géorgie'),
('l��|��E~��\�e\�oE\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('�\� ���N#����]bz','Ghana'),
('l\Z9\�CNR���$!\\��','Gibraltar'),
('�(y�[I\�\�\�{\"\�Ժ','Grèce'),
('~9R�	F�\�݁g�','Grenade'),
('P\�H�\�`D˲\�\�\r�/','Groenland'),
('��EtmE��\���','Guadeloupe'),
('�7\��+nM��V\r\�\�rp7','Guam'),
('�\�r\�+Ix���\"P0','Guatemala'),
('`:lp@X�b\�G>|�','Guinée'),
('۔>~�\�D��`NDD�','Guinée Équatoriale'),
('\�=\�{y\�J�o�\'','Guinée-Bissau'),
('�\�\�UU\�@ԭ)��v��}','Guyana'),
('\��8LK��\�\\�aQ�','Guyane Française'),
('�Q�\�\�$O߰\�	s%�','Haïti'),
('���c\�J��i\���u','Honduras'),
('\�!\�\�C\\O��f]lR��','Hong-Kong'),
('ttc��NQ�\�9n�\�\�','Hongrie'),
('\�\��\�A�4~�\�ʑ�','Île Bouvet'),
('jr=\'a\�K���\�x�\0','Île Christmas'),
('�\�\�QwE��\�a\�\�\�\�','Île de Man'),
('���6q�I��<V�4\ZZ\�','Île Norfolk'),
('&�9���O��=B#\�P\�','Îles (malvinas) Falkland'),
('\�\�\��\�ID����,S�l4','Îles Åland'),
('Ғ�\n\"*L��}`=\�UL','Îles Caïmanes'),
('��\����H��+JR\\\\\�','Îles Cocos (Keeling)'),
('z9�Q\"B禓>{���\�','Îles Cook'),
('\�E\�m�\�F#���\�q\�\�F','Îles Féroé'),
('\\���\�.G:���61\��','Îles Heard et Mcdonald'),
('\�\\\�K\�Aa�eۆ\nsI\�','Îles Mariannes du Nord'),
('�/�}\�\�@���\�\�|9\�','Îles Marshall'),
('\\?\��vGʑ\�\�tFm\�','Îles Mineures Éloignées des États-Unis'),
('\�QU\�KÃ,\�5\�Y\�','Îles Salomon'),
('\��XmL<�\�Oۆ\��\�','Îles Turks et Caïques'),
('\�\�O��H^��q]0/d=','Îles Vierges Britanniques'),
('\�ⰬO\��\0jVǙ�d','Îles Vierges des États-Unis'),
('�<N\�\�\�B\�\n�\�ި7�','Inde'),
('�j���E��\�\�\�j\�\�','Indonésie'),
('\�B�NC�I�W�(\�&B','Iraq'),
('xu\�m�_@\�iU\�2�\�o','Irlande'),
('\�A6Y��Gކ&^�\�0>','Islande'),
('\���8N��ѪnE\�_*','Israël'),
('!a�\�O\�M톚\�ta \�\�','Italie'),
('��Z\�L��`�[l3k','Jamahiriya Arabe Libyenne'),
('�<K\�{�O6�bF\�\�l8','Jamaïque'),
('�G\�\�`9N�)-\�qs-3','Japon'),
('J+es��J���d=�\�','Jordanie'),
('q�\r\�Am�W�1No�','Kazakhstan'),
('$��\�KG�UԚ\�I*','Kenya'),
('\��\�_E@��a��@\�\�','Kirghizistan'),
('���L�G=��W�E�','Kiribati'),
('V��\�^Et��\�e�\�','Koweït'),
('8N�IJ�\�\�N�\n','L\'ex-République Yougoslave de Macédoine'),
('W:3$\��E)�[m��\0V','Lesotho'),
('��1>�N)��e\�Wu\�+','Lettonie'),
('j.Ap\�FF�\�{A\�!�','Liban'),
('\���}F.�R��\�T\�','Libéria'),
('5�\�x�DP�J\�i�\�','Liechtenstein'),
('mW6��yI&�ܿ\�\�,\�','Lituanie'),
('�T#�IfHt����%\�\�','Luxembourg'),
('�\�8rE	FB�6?~�\�U','Macao'),
('��,I\�M���\�\�\�Jl','Madagascar'),
('0զ\�j�@��T�\0�a','Malaisie'),
('#T�6�\�L/�M�\�}Ar\�','Malawi'),
('\�CɚU\0\\�\�','Maldives'),
('Q�\��:DZ��a��o,','Mali'),
('�\�$\�)Ft�O��pΊ','Malte'),
('3I;���H��\';D m�','Maroc'),
('�§�K\�F���l�\�0','Martinique'),
('��g�R�@��\�.\�\��!','Maurice'),
('���ޥ\�E\\�C\�\�rFG','Mauritanie'),
('\�$��\ZA��#^$\�E#\�','Mayotte'),
('����\�Aˆj\�/V>WT','Mexique'),
('���I\�H��LR\'','Monaco'),
('Cm�~=�K��\�YÁΦ','Mongolie'),
('\�\�V\�\�\�L�\0y\�\�?T�','Montserrat'),
('�\�!\��G�\�&Q���','Mozambique'),
('\�\�]p3�CH���-��ݔ','Myanmar'),
('\�+<�\'\nO��\�c�\�)�F','Namibie'),
('\�e�ńIk�\�|\�$g\�','Nauru'),
('O�I1\�$D-�\�EP��\�','Népal'),
(';���@�(i/l~YA','Nicaragua'),
('�\�8\�yF4���\Z�l\�','Niger'),
('�{E��\�\�\�','Nigéria'),
('m-�\�:L��i\�_�`i4','Niué'),
('\�2M*Jk�ci�1b','Norvège'),
('�\�pA�jNJ��\�؜ї\�','Nouvelle-Calédonie'),
('�1n=\�-N�\�\�2jQ\�','Nouvelle-Zélande'),
('\�+G��$E���\�\�?�{','Oman'),
('�4\�\"(\�G��\�[ݘ�c\�','Ouganda'),
('Q��5\�wIn�^���m','Ouzbékistan'),
('\�b�Ѹ|D{�9�k}','Pakistan'),
('Z\�\�qd\�A~�\�f\�p)\�','Palaos'),
('Y�^\�\�G}�iiS\�|�%','Panama'),
('�!�w\�I��\�w.tKH\�','Papouasie-Nouvelle-Guinée'),
('��\\EECV�r@$+\'[','Paraguay'),
('\�N6[*G���g\�\�\�^','Pays-Bas'),
('�l\Z\��BU�oA���Ռ','Pérou'),
('p\��\�<@����TY','Philippines'),
('a��\�\�B���-\�\Z�q�','Pitcairn'),
('���;A���u}�\�','Pologne'),
('\�J`�K^O3�7\�\�\�\n','Polynésie Française'),
('e�\�g�!NX�\���VN\�','Porto Rico'),
('�n�qH�L���\�G-�P�','Portugal'),
('�J�3-�B����Ic1	�','Qatar'),
('\'M��\�Nt�\�ߋsW\�\�','République Arabe Syrienne'),
('\�\�L\�\�J��\�d`�/r ','République Centrafricaine'),
('\�N\�\�/\�@֤\"�\�\�','République de Corée'),
('aR]�JAFb�`ދ�B\�','République de Moldova'),
('ʉZu�K~�\�\�}�*','République Démocratique du Congo'),
('�7	\�K`���b��]\�','République Démocratique Populaire Lao'),
('u�\�ܹ\�EB���a��Q','République Dominicaine'),
('	E\���,K\�P7V�5��','République du Congo'),
('LRbְ�@���\0*�]�g','République Islamique d\'Iran'),
('u33��8K��\�_���~$','République Populaire Démocratique de Corée'),
('\�L�\�g�Ms��}��W\�s','République Tchèque'),
('\��\�G0�\r���/�','République-Unie de Tanzanie'),
('S�n��C��V1\�\�','Réunion'),
('\�O�\�AbE�\�ɨ�\�8','Roumanie'),
('\����KD법�QzL0\�','Royaume-Uni'),
('a\�\�\�D��T��\�3�','Rwanda'),
('�� �n�Oy��:�Cz','Sahara Occidental'),
('�夰�@W�\�\�va�f�','Saint-Kitts-et-Nevis'),
('[	��\�O��E[\��','Saint-Marin'),
('�%�\�\"\�Li�KS\0�a?J','Saint-Pierre-et-Miquelon'),
('\��5e�NەN�k�nt�','Saint-Siège (état de la Cité du Vatican)'),
('^��\��B/�<���','Saint-Vincent-et-les Grenadines'),
('7�\�OLݓj�\�O�x','Sainte-Hélène'),
('�Z�\�~AҖ�}L�\�\'a','Sainte-Lucie'),
('�ߵ\�N0�NwR�6G�','Samoa'),
('��\�\�G��\�[y�I\'B','Samoa Américaines'),
('ա+��G��[\�9{�\0I','Sao Tomé-et-Principe'),
('t\nV��F��R\�,��\�','Sénégal'),
('c�\�\�M��]�v\�\�\r\\','Serbie-et-Monténégro'),
('3&g�O��d$=&%\�','Seychelles'),
('��8!MQ��EkWM','Sierra Leone'),
('6�ʤ5\'OZ�m�p�,S&','Singapour'),
('�\'�\�RK��bP֖t]\n','Slovaquie'),
('\�\�\�\�K\�Z\�\���\�','Slovénie'),
('݅ZEUFC��bG��','Somalie'),
('v\�6�|\�@R�\�A7HS','Soudan'),
('\0E�\�\�~@ֈ\r\��\�\�.','Sri Lanka'),
('��\�B���\�g��\Z','Suède'),
('ת\�\�Er�:G\�fg\�Q','Suisse'),
('\'p7\�C�HǄ\����','Suriname'),
(':{\�ڏ�H �\Z?Q�$\�','Svalbard etÎle Jan Mayen'),
('Z�\r\�J��o\\4�� ','Swaziland'),
('�\Z]y��OX��F˛J�\�','Tadjikistan'),
(')��}MJ��\�ŉiT\�','Taïwan'),
('\�\�]\�5$O\r��KB\�','Tchad'),
('\�I�-\0OB�᫜\'�s','Terres Australes Françaises'),
('9�S\�\�=G��7���sv�','Territoire Britannique de l\'Océan Indien'),
('�5ˢ\�\�@7�\�\�\Z��b','Territoire Palestinien Occupé'),
('\�)rj Mf� \�\�s|\�','Thaïlande'),
('f\�Ӳ�@�8Pk��\Z','Timor-Leste'),
('\�\�?��Kl��Ys\�\�y\�','Togo'),
('I5	A�3%\�\�b,]','Tokelau'),
('1��/�\�FU�_�\0��sl','Tonga'),
('\��>5+O)�5\�\�\�\�','Trinité-et-Tobago'),
('2\�iЫFN��,GS\r\�s','Tunisie'),
('�4\�\�\�K�����t�\�','Turkménistan'),
('L\�\�\�j\�F���d`&p�	','Turquie'),
('cN[ׁ�Kv�h\��\�<�','Tuvalu'),
('�\�ڕGI��\�\�ٳOLt','Ukraine'),
('��O��N/��\�\�ɷ81','Uruguay'),
('\�h��\�J��&n�{ �','Vanuatu'),
('�+��D��w�\'X�P','Venezuela'),
('w�C.\"�G翳Tv\'qv','Viet Nam'),
('Ȋ�H\�M���7N(��\�','Wallis et Futuna'),
('-\�f�+�@�%!\�\�\��','Yémen'),
('+\�_\�DB\�n7��*�','Zambie'),
('f�J\�߄G�������','Zimbabwe');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES
('DoctrineMigrations\\Version20240124155119','2024-11-21 20:45:23',3),
('DoctrineMigrations\\Version20240201152951','2024-11-21 20:45:23',1),
('DoctrineMigrations\\Version20240202084749','2024-11-21 20:45:23',2),
('DoctrineMigrations\\Version20240202150901','2024-11-21 20:45:23',3),
('DoctrineMigrations\\Version20240207105701','2024-11-21 20:45:23',3),
('DoctrineMigrations\\Version20240319212437','2024-11-21 20:45:23',1),
('DoctrineMigrations\\Version20240614133504','2024-11-21 20:45:23',11),
('DoctrineMigrations\\Version20240617165906','2024-11-21 20:45:23',8),
('DoctrineMigrations\\Version20240708061729','2024-11-21 20:45:23',12),
('DoctrineMigrations\\Version20240801202153','2024-11-21 20:45:23',2),
('DoctrineMigrations\\Version20240815153823','2024-11-21 20:45:23',2),
('DoctrineMigrations\\Version20240916065051','2024-11-21 20:45:23',3),
('DoctrineMigrations\\Version20240929091802','2024-11-21 20:45:23',11),
('DoctrineMigrations\\Version20241002164506','2024-11-21 20:45:23',6),
('DoctrineMigrations\\Version20241119144432','2024-11-21 20:45:23',13);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grape_variety`
--

DROP TABLE IF EXISTS `grape_variety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grape_variety` (
  `id` binary(16) NOT NULL,
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
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `id` binary(16) NOT NULL,
  `tasting_id` binary(16) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link` longtext NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `target` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F11D61A25BC0FE1E` (`tasting_id`),
  CONSTRAINT `FK_F11D61A25BC0FE1E` FOREIGN KEY (`tasting_id`) REFERENCES `tasting` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-21 20:45:23','root@gmail.com');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasting`
--

DROP TABLE IF EXISTS `tasting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasting` (
  `id` binary(16) NOT NULL,
  `owner_id` varchar(255) NOT NULL,
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`participants`)),
  `bottle_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasting`
--

LOCK TABLES `tasting` WRITE;
/*!40000 ALTER TABLE `tasting` DISABLE KEYS */;
INSERT INTO `tasting` VALUES
('.�l5��Ln�I�y\�\�7','hugues.gobet@gmail.com','[\"hugues.gobet@gmail.com\"]','Domaine Leflaive Montrachet Grand Cru 2016'),
('�J<�_�Fx�\�\�q���\"','hugues.gobet@gmail.com','[\"hugues.gobet@gmail.com\"]','Château Latour 2010');
/*!40000 ALTER TABLE `tasting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` binary(16) NOT NULL,
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
('\�NE\�DԍB\�\�\�a�','root@gmail.com'),
('$m7\���@���\�A\�:','services.bottle_inventory@gmail.com'),
('ϟP5#\�JH�]Ų_\�_','services.tasting@gmail.com');
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

-- Dump completed on 2024-11-21 20:45:25

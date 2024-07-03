/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-ubu2204

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
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `name` varchar(255) NOT NULL,
  `estate_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `grape_varieties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`grape_varieties`)),
  `rate` varchar(2) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `owner_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  `tasted_at` date DEFAULT NULL COMMENT '(DC2Type:date_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_ACA9A9557E3C61F9` (`owner_id`),
  CONSTRAINT `FK_ACA9A9557E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-06-24',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-06-24',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-06-24',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-06-24',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-06-24',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-06-24',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-06-24',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-06-24',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-06-24',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-06-24',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-06-24',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-06-24',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-06-24',NULL);
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
('\�`i\�J\�\"\�PA�Y','Afghanistan'),
('@\�¦*\�N{�\�P(\�D�','Afrique du Sud'),
('P^\�LeH\���9\�9P\�','Albanie'),
('�.S]DB�����͸$�','Algérie'),
('�2M��M��L�\�\nQ�\�','Allemagne'),
('G6�)�SM��W�Nu\�','Andorre'),
(':�9P	{E��\'ۺ��','Angola'),
('�> \�\0zG��#%����','Anguilla'),
('\�\�󑎺Ck�����g-g','Antarctique'),
('�a���@˒��Кy\�','Antigua-et-Barbuda'),
('\�A�VԥM��\�\�\�|��','Antilles Néerlandaises'),
('I\�\n�C\"��	�\�1','Arabie Saoudite'),
('\�\�\��Hq�R��x�k','Argentine'),
('Mo�\�O=�\�\��\�\�','Arménie'),
('\�Z����C)�#{Kd��','Aruba'),
('`\�\�~\�B:�\�sV\�zs\�','Australie'),
('qA]k��J�\�\�\0_Q��','Autriche'),
('\�~�N��\�/��(A7','Azerbaïdjan'),
('\�3ܮ0�H\�R�\��','Bahamas'),
('��T��%@5�.\ZaΗ�\�','Bahreïn'),
('�\�X�@N|�	xQ�','Bangladesh'),
('\�/W�\�VKJ�\�\�+\�\�','Barbade'),
('\�\����L9�	�0�\0\06','Bélarus'),
('��-��H���< L\�\�I','Belgique'),
('��\�\�s<H��U*��g��','Belize'),
('�/<AT��Y�\�v','Bénin'),
('LS\�\�\�B���4-S','Bermudes'),
('��wq�N��w$�\r','Bhoutan'),
('�M���RM}�]�B\"','Bolivie'),
('ux�ֳL\���\�\�\�d;�','Bosnie-Herzégovine'),
('����&�Mэ���\�','Botswana'),
('?1��R�G}�UQ,lJ~','Brésil'),
('W,\�\�I\�C��\�%T�o','Brunéi Darussalam'),
('�t^��G��p\�ߪ��','Bulgarie'),
('=�\��:CC��E ��J','Burkina Faso'),
('toȧ\rM��#ǌ>�\��','Burundi'),
('\�r�[��C�	\��>X','Cambodge'),
('�M\�\�SM1��o��\�','Cameroun'),
('�4I�9(H��ez\�h�','Canada'),
('2�x�&Fo�a\�\��\�6{','Cap-vert'),
('�>�{<Aާ6\r�G\�','Chili'),
('9P�g�}E։�\��8�','Chine'),
('����\�Nԇ�է\�ӌ','Chypre'),
('�S��\�@W��fz%z]\�','Colombie'),
('qc���M߁k\�E\�&�','Comores'),
('\�A=$\�qC\�\�U\�\Z�','Costa Rica'),
('\�	8\�G\���\r�\�L\�','Côte d\'Ivoire'),
('\�\�CMՄ�\�\�l�R','Croatie'),
('�F��\�B�\��\�.\�\�','Cuba'),
('�\�V���N��\�G��+�','Danemark'),
('\�~V7I.�\"�.\���','Djibouti'),
('پ���F�7m�\�+SS','Dominique'),
('�@\Z=oTOA��~\�\�΢','Égypte'),
('\� I���E���\Z\�p�','El Salvador'),
('�\�\�o�EЮ7\�k�W�','Émirats Arabes Unis'),
('��=�C�NB�LX�	��a','Équateur'),
(';����\�L��\�q\�(\�Ξ','Érythrée'),
('��C���L���\�Q\�\�','Espagne'),
('r\�\r��\�GրULJ�\�','Estonie'),
('�N\�\�yH\�\n�;(_5','États Fédérés de Micronésie'),
('�\�o�a\�B\\���\�\�\�Q\�','États-Unis'),
('C�\ra��G��Y{ôj\��','Éthiopie'),
('�-�;\�@A�D5���H�','Fédération de Russie'),
('���\�_Jg�\nW�V�(�','Fidji'),
('�W�^o�Lj��\��\�Ǯ�','Finlande'),
('X�\�o7�Hm�\�\�\�RQ','France'),
('0K�k��O���l�5�','Gabon'),
('�\�\�n{$G2�i�q�!:','Gambie'),
('�\���*�C���\�H\�곉','Géorgie'),
('l�\�;\�D���-MH&\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('\�߆\�RkF	��\�^�','Ghana'),
('@\�k��\�A\�\�\�Tf뷽','Gibraltar'),
('���_��O���iY)���','Grèce'),
(' �/&�K*�-\�/\�9\�\r','Grenade'),
('yB�\�6N����iG\�c�','Groenland'),
('�f��\�I*�4�D�P\�e','Guadeloupe'),
(':�q^�eF�\�\�Ga0','Guam'),
('c��G�9D\�$\\\�','Guatemala'),
('\�D\�\�LFP���MG��\�','Guinée'),
('�v!M\�F��V�e|P\\V','Guinée Équatoriale'),
('��q<\�)J��٤.�T�\�','Guinée-Bissau'),
('y\�%l	\�B|�gb�ك%','Guyana'),
('���XUI����W>\�','Guyane Française'),
('𔿉\�B\�\�߂\�	`','Haïti'),
('�\��\�B\�\�Y\�','Honduras'),
('�%����C7�O	h��\�','Hong-Kong'),
('\�p\�,A��\�c��$','Hongrie'),
('%�\�AL��ܮb\�lL','Île Bouvet'),
('\�\�J�IU��\�\��\� �','Île Christmas'),
('����ZYMl�z]_��','Île de Man'),
(',�	�\�A\�q��\�>','Île Norfolk'),
('�0�\"hK�b\�Ԯ\Z','Îles (malvinas) Falkland'),
(':�\�r\�O��7�C�\��','Îles Åland'),
('�}��*CމG�%��D','Îles Caïmanes'),
('�^Q\�BЍ\���,\��','Îles Cocos (Keeling)'),
('�~8RQAAޙIR\�\�\�','Îles Cook'),
('<��\�E\��&Qpp�]','Îles Féroé'),
('\�\�\�uvLGb�����/�J','Îles Heard et Mcdonald'),
('�\Z\Z9\r�Ja�^K\�8\�\�','Îles Mariannes du Nord'),
('\�?\�0BٵTw\�Hr\�','Îles Marshall'),
('7_}�\�K�����!u5\n','Îles Mineures Éloignées des États-Unis'),
('`�\�]��AӥoW!\�h','Îles Salomon'),
('�uQր\�O%�\�\�+�i','Îles Turks et Caïques'),
('��m&�\�G��_\�\�҄�','Îles Vierges Britanniques'),
('\�?�sB����G�2�	','Îles Vierges des États-Unis'),
('ۆ\� \�F9�C�e�J','Inde'),
('�\�U%\�A��H=\�D�','Indonésie'),
('7\�R��QB��\�zJ9�','Iraq'),
('\��^\�~H8�\�o\�@�<','Irlande'),
('\\O9*\�KK�\�iN�ڡ=','Islande'),
('\�y\�\�rJᘉ�\�\�0�','Israël'),
('10\�0O\�CR�9\�}`Ef�','Italie'),
('PE��\�X@\�����S\�','Jamahiriya Arabe Libyenne'),
('�X�\�(G������\�','Jamaïque'),
('�\r�u.L���ś^j\�','Japon'),
('u\� \��D��|w~\�','Jordanie'),
('O�7!\�@\�/\"D\�\�B-','Kazakhstan'),
('\�Xuw�IP�\�+Mfr','Kenya'),
('��ǂ;G:�\�Z���\�','Kirghizistan'),
('p˥��WJӳ5\��2�\�C','Kiribati'),
('(\nF\n��F\�o\�{�)�P','Koweït'),
('\�&�`\�K\\���\�\r\�Ȃ','L\'ex-République Yougoslave de Macédoine'),
('kC��\�B碐\�[�\�w*','Lesotho'),
('Y���K쭅�Kg\�\�','Lettonie'),
('V�hE��Bڂ\�K���\�','Liban'),
('�xtZn6L7���`SQc','Libéria'),
('D\�\��N1��ʜ\�~�0','Liechtenstein'),
('�`\�\�UG��\��x�_�F','Lituanie'),
('8�M��D��L%\�;\�\�a','Luxembourg'),
('\�\n\�S�F�\�\�/\�85','Macao'),
('H?|��IۚP\�T+�','Madagascar'),
('\�v}Y4H䵉c�u�\�j','Malaisie'),
('Qp\�ZWH\�P�{\�U\�','Malawi'),
('��^&n�Ky�G��vH�\�','Maldives'),
('tcx#�Ln��J\�5\�\�o','Mali'),
('���IOCB�:��z\�-Z','Malte'),
('\�+\�K9���g2)�','Maroc'),
('\�̨q,�Iƾ�B\��5u\'','Martinique'),
('c\���N���M\�\�\�\�','Maurice'),
('\�˚<\�\�A����fR\�_','Mauritanie'),
('��\�\�H�B��ۓt�\0�4','Mayotte'),
('`\�\�{́C�\�|�\�','Mexique'),
('�Y�W�Gi�f���P','Monaco'),
('m\�Ԛ[E���\�7X','Mongolie'),
('��]\�a)Gg���\\L�','Montserrat'),
('\�\�HK1�\�.�\�(','Mozambique'),
('\�L\�\�mG���&\�\�\�F�','Myanmar'),
('by\�\���Av�ӎ+�1��','Namibie'),
('ϕ\"�e\�G\"����o16/','Nauru'),
('0\�e�\�Mp���\�Q�!K','Népal'),
('\�-\�aJ\�K ���Qá_','Nicaragua'),
('�\�a[\�yG���D\��','Niger'),
(':\�s	<!K��\�g]\�\"�','Nigéria'),
('x�M �Bٿ�\�\�\��','Niué'),
('e�j=t\�E\r�\�_Y\�','Norvège'),
('\�,\�\�|�N)�� T#�\�\�','Nouvelle-Calédonie'),
('(\�L�%Gk�1\�g\�\�','Nouvelle-Zélande'),
('kP�ާ�N�\�L\�\�Ff\\','Oman'),
('\�/)�dF.�\�ZrJ�','Ouganda'),
('O�2tN@���jl��я','Ouzbékistan'),
('\�T��MS�e�(O�~\�','Pakistan'),
('gB:\�A�\�KC�\0<�','Palaos'),
('\�㘪\�l@���=5�>','Panama'),
('��|ƺ�M\�_\�ơ�\"\�','Papouasie-Nouvelle-Guinée'),
('\��uԑI(�y@\�\�\�	','Paraguay'),
('~)�T\�wH۹�\���|E\�','Pays-Bas'),
('�姙Jː�\�U\�?�','Pérou'),
('P\r\\\�lVO\�P����','Philippines'),
('\�-�\�#5Gw�j\�\�\���','Pitcairn'),
('vh\�\�\�,LO�U$\�3\�i�','Pologne'),
('�R\�:s�F���K\�H�	�','Polynésie Française'),
('\�S\��|�F��\n��\�җ','Porto Rico'),
('\���u�Cș\�z\�Ȏ\�','Portugal'),
('�څH-\�@\�\�ʠ\�!','Qatar'),
('!\�sT�E��l`\����\"','République Arabe Syrienne'),
('\�\�\�\�t�KN�8\�[f\�\n�','République Centrafricaine'),
('��b\�\�H���\��\�\\\�','République de Corée'),
('\���H��G-�n\�	A�\�','République de Moldova'),
('~��+\�@��Z\���D�z','République Démocratique du Congo'),
('9bƸ#0Kߨ>\�\�e0�','République Démocratique Populaire Lao'),
('\���\�@}���%+B\rC','République Dominicaine'),
('\�x9sJ\�E^�6t\�n','République du Congo'),
('#3k�ݙF��8\�q\�[�\�','République Islamique d\'Iran'),
('u\�\�υIC�u�U18','République Populaire Démocratique de Corée'),
('\�^�E��\0�`n7�','République Tchèque'),
('r���\�lA\��o\�2\"i','République-Unie de Tanzanie'),
('T�D\�vA��n\�v�A�','Réunion'),
('\�\�\�\��Eݟ\�)���\�[','Roumanie'),
('[\�\\\�\"�DҔ���\���','Royaume-Uni'),
('\�zXG�\�K)�Y0\�F�\�','Rwanda'),
('t�<DM5��B_��','Sahara Occidental'),
(',:-ȼ9D����ֶ�','Saint-Kitts-et-Nevis'),
('\�K�\�Ǹ�\�$���\�','Saint-Marin'),
('��>\�U�HϊF¤�\�\�','Saint-Pierre-et-Miquelon'),
('6�\�\�0�Kg�	\�a�\�� ','Saint-Siège (état de la Cité du Vatican)'),
('��/F��B��\� �\�u','Saint-Vincent-et-les Grenadines'),
('C\�t\�LMŪ�`_�\�','Sainte-Hélène'),
('�\�\���|CJ�GF\�m|`q','Sainte-Lucie'),
('�RV��?Fb�I\�<��','Samoa'),
('���|�O{��^�A1�','Samoa Américaines'),
('\�f\��6G\�!s�r\�~','Sao Tomé-et-Principe'),
('��~\�tG�J\�[H��\�','Sénégal'),
('\�1�\�\�L�����4�','Serbie-et-Monténégro'),
('N�y�8\�Ow�\n�VJ�H�','Seychelles'),
('X�qj�wE��E[=��9','Sierra Leone'),
('��,WxL�����IB2','Singapour'),
('%v��M|�\�pj�|�','Slovaquie'),
('\�i*Ӥ7D喑�5�a9','Slovénie'),
('�Tx\Z{Ex���\"�dM\�','Somalie'),
('\�Ѣ-a\�DD��:\�ٽ2.','Soudan'),
('P\�/\0`CN��\�V\�\�','Sri Lanka'),
('\�y-l�Oť6��ו','Suède'),
('�\�`\�\�G\�6q\�!�\�','Suisse'),
('@\�TvtB��R%Բ/\r\�','Suriname'),
('�l�P\Z:L.�V6\�ڸ\�Y','Svalbard etÎle Jan Mayen'),
('�\�e	\�MO\�\�\�cf�\n','Swaziland'),
(' \�OAB@�n�\�D�\�M','Tadjikistan'),
('L2PH)\�KC��Ua\�\�n','Taïwan'),
('@�\��C\��\�\�, B\�\n','Tchad'),
('4{~��H��\�\ZO��','Terres Australes Françaises'),
('J,f`\�N�\\V\�/�','Territoire Britannique de l\'Océan Indien'),
('a]\�Fq�\�ǦG�ڕ','Territoire Palestinien Occupé'),
('\0�YV�?E��t?�\�]�','Thaïlande'),
('\�}RIͫM���j71a\�\r','Timor-Leste'),
('@�\�J@LǄ�B\�\�$�','Togo'),
('9���>\�Fҧ���e\�\�','Tokelau'),
('�J1�DA��+\�1�','Tonga'),
('IuשּׂJt�����6x�','Trinité-et-Tobago'),
(';}�^d�HN�(��&\�y�','Tunisie'),
('�\�>gSA/��`?\�','Turkménistan'),
('\�\�]\�.�Hǹ�*ʉ\�э','Turquie'),
(',��\�o\"F��\���i��\�','Tuvalu'),
('�@\�J\r��rQ��\�','Ukraine'),
('\�m\�j��Cj�\r�wNY�D','Uruguay'),
(')8\�Hi�Bn�\�\�a8��','Vanuatu'),
('N�K@5��9Z�O,]','Venezuela'),
('(\�DC\�Bl��Cj[�','Viet Nam'),
('Wu\�-\�M���|�\�\�i','Wallis et Futuna'),
(' \�F0EAF�d0.\�`�[','Yémen'),
('n|ѭ��@��+�BL-','Zambie'),
('q{�\�\�@\��岦j8�-','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-06-24 20:32:39',4),
('DoctrineMigrations\\Version20240201152951','2024-06-24 20:32:39',2),
('DoctrineMigrations\\Version20240202084749','2024-06-24 20:32:39',4),
('DoctrineMigrations\\Version20240202150901','2024-06-24 20:32:39',1),
('DoctrineMigrations\\Version20240207105701','2024-06-24 20:32:39',3),
('DoctrineMigrations\\Version20240319212437','2024-06-24 20:32:39',1),
('DoctrineMigrations\\Version20240614133504','2024-06-24 20:32:39',12),
('DoctrineMigrations\\Version20240617165906','2024-06-24 20:32:39',8);
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
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES
('L\�#zO0��j�q�s_','root@gmail.com','Root'),
('�m2\�#M��fh\�3[�','hugues.gobet@gmail.com','Hugues Gobet');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES
('�d\�9�F���\�\���','hugues.gobet@gmail.com','Hugues Gobet'),
('\�5?0O���)\\�ZDQ','root@gmail.com','Root');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasting`
--

DROP TABLE IF EXISTS `tasting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasting` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `owner_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `bottle_id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`participants`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_73621810DCF9352B` (`bottle_id`),
  KEY `IDX_736218107E3C61F9` (`owner_id`),
  CONSTRAINT `FK_736218107E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `participant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasting`
--

LOCK TABLES `tasting` WRITE;
/*!40000 ALTER TABLE `tasting` DISABLE KEYS */;
INSERT INTO `tasting` VALUES
('.�l5��Ln�I�y\�\�7','�d\�9�F���\�\���','^��{�F\�\�\�v�\�\�_','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]');
/*!40000 ALTER TABLE `tasting` ENABLE KEYS */;
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

-- Dump completed on 2024-06-24 20:32:41

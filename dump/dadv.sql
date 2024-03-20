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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99,'2024-03-19',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99,'2024-03-19',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99,'2024-03-19',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99,'2024-03-19',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','\�o;ԈC����\�\nl','France',1599.99,'2024-03-19',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'\�o;ԈC����\�\nl','France',358.99,'2024-03-19',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99,'2024-03-19',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99,'2024-03-19',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','\�NE\�DԍB\�\�\�a�','United States',199.99,'2024-03-19',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99,'2024-03-19',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99,'2024-03-19',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99,'2024-03-19',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99,'2024-03-19',NULL);
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
('\�8�Aܳr3\0�\�vY','Afghanistan'),
('[\�~R\�zO\�.@I��\r','Afrique du Sud'),
('sh\��N���7�G�y+','Albanie'),
('�+]��\�Bo�m*��\"7','Algérie'),
('7I��\�Lπ~\��̍ѹ','Allemagne'),
('\0W3!�\�H\�f8��_','Andorre'),
('1\�\�\�F��%%���df','Angola'),
('\�$O\�R\�I뀕x\�\�3','Anguilla'),
(',\��%F;�\�\�P\�c\�','Antarctique'),
('8�\�\�L��\�C�','Antigua-et-Barbuda'),
('��\�+\�gKA��0\�9\�Q','Antilles Néerlandaises'),
('Ha\�Z�Dz�\�\�\�\�W\n','Arabie Saoudite'),
('iƴ+o\�D�Ld\�','Argentine'),
('�|��W\�C֯\�\� �\�','Arménie'),
('�=\�ׂNT��؛�\�\�{','Aruba'),
('\�BM<C�ĖM�\�\�\�','Australie'),
('DK?\�\�pC�D8ߪX','Autriche'),
('�5\�\�>FЮ\�l�51��','Azerbaïdjan'),
('�WbI�D0��}`\�,�','Bahamas'),
('\��7<:N6�N\�m�R \�','Bahreïn'),
('b�e\'Do�,Ͼ�Tn\�','Bangladesh'),
('ɹ�\�Jҹ\�eZ��*','Barbade'),
('\�\�`�N\�\�\�?2��\�','Bélarus'),
('E���B���Ǌ�\�{','Belgique'),
('d:׭�uAӹD\�5`e\'f','Belize'),
('I\�tE\n�I	���i.y-5','Bénin'),
('�t����A���\���J\�','Bermudes'),
('Ce 4�iH�\�\rȌ�\�_','Bhoutan'),
('\'\�\�\�uG�Q�\�(','Bolivie'),
('\�av�\�IΟ�3Jw1','Bosnie-Herzégovine'),
('�\����MJ���_SmՅ\�','Botswana'),
('�RC=]�G-��\�\�F\Z','Brésil'),
('�\�\n��M����ʦ\�','Brunéi Darussalam'),
('�Y��+�A����}\�H-','Bulgarie'),
('��M�0J��	��М��','Burkina Faso'),
('\�n�h�Eӹ\�2\�Z\��','Burundi'),
('\�k���gO����\�8�|\�','Cambodge'),
('�D���@?�%�[�r�','Cameroun'),
('\�\�7\�C��~�M�;\�Q','Canada'),
('E���W\nOg�\�@/�E8s','Cap-vert'),
('�Y��\�O\r�^DT\�fN\�','Chili'),
('1g\�\n�\�Ih����\�\�','Chine'),
('ǉɒ}\\EԄ�#k�Dvf','Chypre'),
('\���\�TC	�\�\�!/f�\�','Colombie'),
('AP\�\�mBs�Da�:�A','Comores'),
('O)�T/O*�\�9Po/\�5','Costa Rica'),
('���7@��\Zz�e��','Côte d\'Ivoire'),
('�\��>MCR�<��\�\�B\�','Croatie'),
('�\"/\Z�#Kіhk\rof�','Cuba'),
('�q\�v\Z#@]�pyo<\�','Danemark'),
('\���\�\�yC?�2A�`�	�','Djibouti'),
('4=2Q�C@~�\���\�\�\'','Dominique'),
('��1�e<Bl�o�Lk�','Égypte'),
('gw\��`�@�mڗ+e�','El Salvador'),
('Lۘ�ND��XR2۫�U','Émirats Arabes Unis'),
('D�����D���$�V\Z��','Équateur'),
('\�A\�A\�}M����D�\�5','Érythrée'),
(':;\�K,\�Mr�/��\�\�','Espagne'),
('�u\�\�K���� �\�','Estonie'),
('�)}\�\�B���w<�)?','États Fédérés de Micronésie'),
('(s>2�\�Nr�\����.?','États-Unis'),
('\���\�\\�L���\r:;M.}','Éthiopie'),
('Nj0\�\�Mޢt��F:','Fédération de Russie'),
('\�\�=AyC���\�g�Ƙ','Fidji'),
('z�lI��H\�\�\� �','Finlande'),
('��\�\"�\�Ja�\�4�\�','France'),
('\�_\�\'�O��\�}~�F2','Gabon'),
('Š7ŰMF�=�i�\�}P','Gambie'),
('p|`ᄥM�y\�h>F\�\�','Géorgie'),
('\r\�F׮�I��\0\�\�\n\��','Géorgie du Sud et les Îles Sandwich du Sud'),
('\n\�Va{KΉvDu�ڒ','Ghana'),
('9@3\\dF\�2\�\�\�p','Gibraltar'),
('rV�C�C�D&��_\�','Grèce'),
('dހ\�\�BʰfA�zC_\�','Grenade'),
('\n�I�\�Oe�k\�9��\�N','Groenland'),
('9/Ss�@Q�tFL.\�=','Guadeloupe'),
('\\\�d���Bg�]\�O��\�\�','Guam'),
('\�U^ڹB�bЪ�\�(','Guatemala'),
('���:x\�G���l.\��^','Guinée'),
('�6\\\"( F���ʓ�\�Xc','Guinée Équatoriale'),
('\�]Ԯ��A*�RJ�\�\�\\�','Guinée-Bissau'),
('\Z\�ź\�C�m\�`\�\r\�','Guyana'),
('�\�9~C��H\r�fU\�\�','Guyane Française'),
('��<�}O\�>G\�\�','Haïti'),
('O��DH@�}\�{\�\�','Honduras'),
('I\�S��iM��\�F7�\�%�','Hong-Kong'),
('9]Ag�\�CM�\�\�30ܧ;','Hongrie'),
('�\\[�^zJb�n\nӸ�\�\�','Île Bouvet'),
('\�dx�<O8�\r\�RL\�D\�','Île Christmas'),
('ؤp\�LT�)�\�\�\�J','Île de Man'),
('Y�\�\�L�Kܐi�n\'x\�','Île Norfolk'),
('q9E���\r�Np','Îles (malvinas) Falkland'),
(',Mo,.�E]��f�6�\�T','Îles Åland'),
('�\�G�@uM.ZV�','Îles Caïmanes'),
('�2dux\�B*�C���\��','Îles Cocos (Keeling)'),
('y<5�\\L�(0�_','Îles Cook'),
('1��\��J����ڹbR','Îles Féroé'),
('+\�\�~M@\��$���#�','Îles Heard et Mcdonald'),
('�U\�<\nJ<���=\"Y��','Îles Mariannes du Nord'),
('���\�G����5\�7C','Îles Marshall'),
('\�\0/l5IGO�\�M��a�','Îles Mineures Éloignées des États-Unis'),
('�ً\�\�E���\�C��','Îles Salomon'),
('ڢb�pB��\�@�O�\�\�','Îles Turks et Caïques'),
('���p�@U����','Îles Vierges Britanniques'),
('�\�\�T��MçA\�[�K\��','Îles Vierges des États-Unis'),
(' ��{̀Hܟ*\�\�u�','Inde'),
('p\�A\�CD�Q{:h���','Indonésie'),
('�8x\�IϳHɁ �8�','Iraq'),
('��	KmK;��\�@,\�!','Irlande'),
('0(��+Hn�\�*P�0`','Islande'),
('�\�$r\�CŒ\�j7\�\�','Israël'),
('7o#B�Kʆ\n�i8W','Italie'),
('\r�\�\�*A��լ�ɸ','Jamahiriya Arabe Libyenne'),
('\�v8IC\��<\�7�\�*$','Jamaïque'),
('\�S�\�$@��ީ�\�\0q�','Japon'),
('\�	\\h\�O\r��0K\�\�,','Jordanie'),
('�\�2;E\"��\�7\�^\"','Kazakhstan'),
('\�\���K뫇擲��','Kenya'),
('�\ru��H@�]�\�a�','Kirghizistan'),
('G\�\Zz�@h���<b��','Kiribati'),
('3\�\�ӁKJ�X\�_S�o�','Koweït'),
('46Ƞv@a�M�8Wg\�\0','L\'ex-République Yougoslave de Macédoine'),
('fLy\�jMe�<�۽\�V','Lesotho'),
('W7\�\�\�A\�$\��U\�_','Lettonie'),
('��#f@ʙ[�>k��','Liban'),
('�n\�	�O��\�\0\�\�\�Պ','Libéria'),
('��\�t�\'K⠟\��@Z\�','Liechtenstein'),
(',\�|?HM@������\�\�','Lituanie'),
('�\"bOQA\"�&\�~�LF','Luxembourg'),
('��\r\�fA�����','Macao'),
('ɚ��aG?��:%z�\�$','Madagascar'),
('\��l~5A\�\�#2\�i\�','Malaisie'),
('\�F�\�O��ꖤ\�\�;\�','Malawi'),
('Y\�\�5N\�\�z\�\"D�S','Maldives'),
('a\�\nwOު\�q$�\�6�','Mali'),
('b\�\��%Kl�,˰C\�~','Malte'),
('�ǽv�Mu�mfxj\�','Maroc'),
('\"\�R�]\�N�ڈ\�\��\�','Martinique'),
('ߓ\�6|E��\�4,\�\�\�\�','Maurice'),
('�++��D���5\0�%�','Mauritanie'),
('\�\���{Hu���n\�\�n','Mayotte'),
('\�1\�Z�@\\����\�\"C','Mexique'),
('\��D�بI쭒���=\0','Monaco'),
(':U���@\\���#���~','Mongolie'),
('\�$\�+\�\'EƊ\�|\�y23u','Montserrat'),
('\�J\\#WG��ۅs�F','Mozambique'),
('P  (�\�DK��8\n��X','Myanmar'),
('\�h�HhH��l����ԕ','Namibie'),
('\�\n�\�KǗ\�f�`\�)`','Nauru'),
('F-@�%�M������\�','Népal'),
('����G9A��#��\�G','Nicaragua'),
('^L����M]�\�*(>ކ\�','Niger'),
('f3��C\n�sEd\�ft','Nigéria'),
('Ǩ�f�sE\��/\�\�\�\�','Niué'),
('�D\�}GD��U|�t','Norvège'),
('ݪ�-Z@H��\�\�-\�','Nouvelle-Calédonie'),
('N�t\�)L�����h�','Nouvelle-Zélande'),
('Wz\�F\�F\�8���I-\�','Oman'),
('�n7ܯ]F\��_�h\��','Ouganda'),
('z�\�$\�A�\�P���n�','Ouzbékistan'),
('\�\�Y\�XWN��\�8\�na^','Pakistan'),
('lp\�\�\�G׃϶Ii\�\'\0','Palaos'),
('�\�pj�Jo�\�\�a�K\�','Panama'),
('\�Mm�AI��b\�xIX','Papouasie-Nouvelle-Guinée'),
('�zĻSE��Ad�\�Z	\n','Paraguay'),
('\�ŀ�}J��\�cd~�ɒ','Pays-Bas'),
('\���8\�C��	4\�r�f','Pérou'),
('�\�ǈ�\�J��\�vP\�$\�X','Philippines'),
('�\�Ҙ\�1D��7}\�\�#','Pitcairn'),
('h�\�N/N��\�\�(��\�','Pologne'),
('\�\���BC�32�\�J\�\�','Polynésie Française'),
('\�\�K�yFt�J\�\��k','Porto Rico'),
('���\�\�K���LK)�d','Portugal'),
('�n��K�O[�:��F','Qatar'),
('\�a�Y\�@I[�\�\�\�	D\�t','République Arabe Syrienne'),
('í�oN\�Bä�پ\�','République Centrafricaine'),
('s��\��qD\�\�Ͳ�O�','République de Corée'),
('\�@\�\�BB\"��9�m�\Z','République de Moldova'),
('Qʂy\�\rB����w3\�:~','République Démocratique du Congo'),
('\�\�/�\�\�L���yKU�ܰ','République Démocratique Populaire Lao'),
('�`\�\�SON�(��\�k]2','République Dominicaine'),
('\02#�\�L�>ԁߤMi','République du Congo'),
('\�;\ZbP�C�<�&��','République Islamique d\'Iran'),
('\��\�(B��\�R���','République Populaire Démocratique de Corée'),
('\n\�c�\�@�\�a/���','République Tchèque'),
('w7�؆Di�\�\�\�/}&*','République-Unie de Tanzanie'),
('�MP��IA�q��/\�','Réunion'),
('���P��Jq��[\�\Z\�','Roumanie'),
('f�:�\n�A���\�1:B','Royaume-Uni'),
('���b�3M��W�kpOG\�','Rwanda'),
('\�QmU\�L�٭y�\\G\n','Sahara Occidental'),
('&B\"%�H\�\��RbV\�','Saint-Kitts-et-Nevis'),
('30$��M��SIs�\�{','Saint-Marin'),
('\�\�\�lI\���\�����#','Saint-Pierre-et-Miquelon'),
('�\�\�=<E��z*�e<','Saint-Siège (état de la Cité du Vatican)'),
('E?\�5IR�\��r\�\�Ϝ','Saint-Vincent-et-les Grenadines'),
('\�)��PM���\��S�\�','Sainte-Hélène'),
('f���:�D硜\�v�%�\�','Sainte-Lucie'),
('�ap\���B��~�*]֦G','Samoa'),
('���\�R�@ӂ\�\�eV\�','Samoa Américaines'),
('\��z\r�C�TT�\�\�','Sao Tomé-et-Principe'),
('P��CK\�Dr��\n\�:~\�\�','Sénégal'),
('\�\�5�\�TLᅎ6#շu','Serbie-et-Monténégro'),
('K;UM�6G��	�m\�\�','Seychelles'),
('�\�Z�O]�N�\�%\�:','Sierra Leone'),
('��M\�\�\�JS�\�\�8�L','Singapour'),
('&��y\�gC�\��|�\�\0x','Slovaquie'),
('\�ϝ\�G��ʣi	=�\�','Slovénie'),
('�{i�\�\�EK�Ԑ��\"��','Somalie'),
('b\�\�	5Lі\�l�.�','Soudan'),
('-��\�\�Jz��XS��\Z','Sri Lanka'),
('�۝	u�AϞM*.�\�\"','Suède'),
('?P0\�\�K纻`L5�5\�','Suisse'),
('��g\�cE\�\�Ip�>�','Suriname'),
('\�[еQ\�KK�Y�i�r\�','Svalbard etÎle Jan Mayen'),
('����Gf�Z�ؿ�\�','Swaziland'),
('��\�k˃E��s\�+ [5','Tadjikistan'),
('\�Ǻ�\�Ee�+��-�0*','Taïwan'),
('pY,\n�\�Lb�A~�6\�J\�','Tchad'),
('��(5N܊\�R�S��','Terres Australes Françaises'),
('���B\�N6�h\��T\�','Territoire Britannique de l\'Océan Indien'),
('\�S��Mf�FΉ_�\�A','Territoire Palestinien Occupé'),
('\�\�/\�uCd�]\�\�\�E?O','Thaïlande'),
('cEK\�ǏD���1���l�','Timor-Leste'),
('\�a�\�E2�\�9\�RCB','Togo'),
('�3\�\�0E��\�a\�\�hy','Tokelau'),
(' \�MδF2�;d}CU\�','Tonga'),
('\�r\���G��z\��%\�','Trinité-et-Tobago'),
('^�voG�A�\�\\\�)','Tunisie'),
('\�J��\'kF��ġIu�\�<','Turkménistan'),
('�)\'�IND�}\�Ҧ@[','Turquie'),
('\�eV>5MX���n��V','Tuvalu'),
('\Z\��\�KI��OBO�\�','Ukraine'),
('\�!4\�ME��aF)=��','Uruguay'),
('٩7\�k\�D:�[>*c#�\�','Vanuatu'),
('jf�,}UE,�>�7b\�','Venezuela'),
('�b\�r�\�O��[t\�v','Viet Nam'),
('��\�@��K1�\��=7\�\�','Wallis et Futuna'),
('�\�zF\�8VDY$�','Yémen'),
('\�\�U�Kv�-,d#f\�','Zambie'),
(',��F!jG?��\����','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-03-19 21:25:21',9),
('DoctrineMigrations\\Version20240201152951','2024-03-19 21:25:21',3),
('DoctrineMigrations\\Version20240202084749','2024-03-19 21:25:21',4),
('DoctrineMigrations\\Version20240202150901','2024-03-19 21:25:21',5),
('DoctrineMigrations\\Version20240207105701','2024-03-19 21:25:21',4),
('DoctrineMigrations\\Version20240319212437','2024-03-19 21:25:21',3);
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

-- Dump completed on 2024-03-19 21:25:25

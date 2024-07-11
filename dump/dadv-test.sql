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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-07-11',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-07-11',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-07-11',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-07-11',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-07-11',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-07-11',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-07-11',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-07-11',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-07-11',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-07-11',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-07-11',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-07-11',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-07-11',NULL);
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
('\�P�i�Nϱ�\�\�+C�','Afghanistan'),
('��\�u�I��i��QC#','Afrique du Sud'),
('��5ASE^�����\�d�','Albanie'),
('gq�\�M\r�\�\�x��','Algérie'),
('sm/\�\�UC-�G)�wT\�','Allemagne'),
('z��\�D���\�WQ_','Andorre'),
('&S�\�$RM��S\rJN\�','Angola'),
('7t5\�\�Lx���U3)\�','Anguilla'),
('KZ]�.iLS�\Z\�l�em','Antarctique'),
('̈́]\�-K��i�\��\�:','Antigua-et-Barbuda'),
('\�UJ{03C��	�	[_O','Antilles Néerlandaises'),
('\�z\�\�F��-#@\�\�Hj','Arabie Saoudite'),
('���h�nB`�/�N P2\�','Argentine'),
('@!\�\�\�)L��Xb%-��','Arménie'),
('\�D��E�GЗƃ\�|�','Aruba'),
('rI2o�HԀՌ\� \�<','Australie'),
('\�H;6ѻF��a\�/�`\�','Autriche'),
('�\�!jIN��J�SΎ\�','Azerbaïdjan'),
('_\���N@�\�[�\�\�\�','Bahamas'),
('�_\"�LK\�.��J�Am','Bahreïn'),
('\\�n�\��L����`�\"�','Bangladesh'),
('<��J�B �t\�X\"C','Barbade'),
('\�*�S\�$JL�ʬ0�[_','Bélarus'),
('���\�Cڡ;\�︗\n','Belgique'),
('��ok\�\�@��dP��Dc','Belize'),
('�*X\�!Ot�\�\�\�*�3�','Bénin'),
('\Zb{�\�AC��O`\�C\�','Bermudes'),
('\��+iJ���T\�\�،','Bhoutan'),
('9\�<.c�H���^��7�','Bolivie'),
('\�v\0u�O��r.=h','Bosnie-Herzégovine'),
('Ԓ\�\�_A��\����\�\�','Botswana'),
('AQ^���C\�\�&�\�\�','Brésil'),
('�~�ن^A!���.#\�7','Brunéi Darussalam'),
('q#\�^�\�KJ�\"Rm\\k','Bulgarie'),
('�ǀ�\�\�Cŋb�,�\�\�\�','Burkina Faso'),
('H�^��~GN�b\�m6Ҿ\�','Burundi'),
('\�-��-N#�qV�\�pSh','Cambodge'),
('\���\�F���&�}��','Cameroun'),
('��w�l�B\n����\�n\�','Canada'),
('�\�\�蠫CQ��\�\�\�:9','Cap-vert'),
('fIv��A>�\���\�\�i�','Chili'),
('��ٖIC��-��\�L�','Chine'),
('T��r�M\��Y��\���','Chypre'),
('0Sg\�Mg�)щ�\�','Colombie'),
('�b��\�O2�ō\�4ץ9','Comores'),
('r\'~p\�NϹ�\�\�\�\�\�','Costa Rica'),
('������@Ծ?#\�o�','Côte d\'Ivoire'),
('�\�)�\�Bˆ;�藼�\�','Croatie'),
('h\�w��@čo��\��\n','Cuba'),
('�Y\�C�\�~`9x%','Danemark'),
('5\�lw׋AU�ӝ�\"�1\�','Djibouti'),
('H\0�f�\�M˿�/\�k�\�','Dominique'),
('�\�tX��@۵1C����','Égypte'),
('joO�6uI��\\\�,^\0','El Salvador'),
('$��	p�E_��\�\�H\�\�','Émirats Arabes Unis'),
('0��\�Bӂ\�͊��B','Équateur'),
('��\�N\�?M\���ecc\r','Érythrée'),
('�ϸY/nM4���iػ�','Espagne'),
('\Z	&�H{B��m;\�7���','Estonie'),
('w�:n\�\�I��p=�IXh','États Fédérés de Micronésie'),
('�\�(OD�?S��)I','États-Unis'),
('�N2�\�L;��,t�|\�','Éthiopie'),
('q\�\�hBJT��g4\�\�','Fédération de Russie'),
('Ap�\�\�K��\�BNo��','Fidji'),
('枉\�\��J��1^iJ]7�','Finlande'),
('\�\�V/eB�C\�ʜ\�\�','France'),
('8MҢ�KA�!>��ll','Gabon'),
('���pH=��*\�Uw\�/','Gambie'),
('����\�GA�\'-3��\'','Géorgie'),
('�[�\�LE��e�<$1','Géorgie du Sud et les Îles Sandwich du Sud'),
('�a�\\H|��k�\�뺥','Ghana'),
('ZVx\�aA\���b:�6v','Gibraltar'),
('豀�\�\�J�D9�M�','Grèce'),
('L\�l\�/J\�<�\�?��','Grenade'),
('^��.\�qD\�\�O����','Groenland'),
('�\�*\�պMQ�7��\�\��','Guadeloupe'),
('\�I^S\�N���\�\Z�7_�','Guam'),
('��߅H\�EY��:\�e�','Guatemala'),
('�_\��&qN̵\�A�^r','Guinée'),
('@t\�\�\�A���\�\�=�\�\�','Guinée Équatoriale'),
('�[\�	G����\�\�<�\�','Guinée-Bissau'),
('>\��TkJ��;�SF\�\�<','Guyana'),
('\�z�DM��-|q\�\��','Guyane Française'),
('Z�)7�B?�<���h	','Haïti'),
('_�c\�\�OQ�S*\���','Honduras'),
('sJ�yI*�\�J1-�\r�','Hong-Kong'),
('\�ۼ\�\�$B���6�\�','Hongrie'),
('F����M3�\�O5\�\�4�','Île Bouvet'),
('\��[0�D��\�K6�	','Île Christmas'),
('���ևI���t﫣�\�','Île de Man'),
('��\�Fg��ٯ\�','Île Norfolk'),
('!ђ�oF[��m\�>9E','Îles (malvinas) Falkland'),
('�\�ϤD\�*]���','Îles Åland'),
('�^\�\�\Z�NZ���b���E','Îles Caïmanes'),
(';��r\n\�K�����-\��E','Îles Cocos (Keeling)'),
('f\�\�\Z9�CA�H^5�\� H','Îles Cook'),
('$\�12T\�E#��[�YQ','Îles Féroé'),
('���\�I\n���\�\�7\�','Îles Heard et Mcdonald'),
('*���\�HԟQHkB�m','Îles Mariannes du Nord'),
('�\�~\�C�m�\�݁x\�','Îles Marshall'),
('\0\�iуF`��\��;wٌ','Îles Mineures Éloignées des États-Unis'),
('��T\�!�B��9�\�P\�','Îles Salomon'),
('\�\�39\�\�Ep�.\�\���','Îles Turks et Caïques'),
('�}ȇ\'@ǚ1�R>�','Îles Vierges Britanniques'),
('ų�at5A\��\r�\�\r','Îles Vierges des États-Unis'),
('Z]���4E6�d��_g\�','Inde'),
('i_\�ՇD��^//�\�z�','Indonésie'),
('�\��7N�\�:�sZ{p','Iraq'),
('3�I\�L�Aԗ>�v\�~�','Irlande'),
('\�\�\�Z*:J��m�	u��','Islande'),
('�\��$I\��\�i\�\�t','Israël'),
('���\'T�N\�G`H\�f4','Italie'),
('2W\�y�\�D����?�#\0&','Jamahiriya Arabe Libyenne'),
('�*#�|@���k����S','Jamaïque'),
('\�\��K4�����PwD','Japon'),
('g �ـ�NQ����r�M','Jordanie'),
('��\�m\�D=��\��l�a','Kazakhstan'),
('�rݤHI��\��\"x�]','Kenya'),
('\�i1Y\�@\'�����3#\�','Kirghizistan'),
(' KL\�zE\���}�0�V','Kiribati'),
('\�O\"Yk7B³Uh,\�','Koweït'),
('3�j�iLy�!Y\�Y\�[�','L\'ex-République Yougoslave de Macédoine'),
('\rE���G5�n_\�k���','Lesotho'),
('\��z\"jCB�g>\�','Lettonie'),
('O�\�w1�E�Ӻ[d=�\�','Liban'),
('{hN�\�~NЊ\�\��\�{dY','Libéria'),
('ݮ[m>\�K~��\�\�\r=\�','Liechtenstein'),
('%\�h~D���\�t�\�','Lituanie'),
('�\��J�@���\��\�\��\�','Luxembourg'),
('�\�a�\�\�K\�ܳ\��D7','Macao'),
('\�Y\�BN����h%V_','Madagascar'),
('(��\�p�N>�\�0v\�','Malaisie'),
('���+dD�\0�\�\�s_','Malawi'),
('�\�ҺD�H��\�\�\�\�*y','Maldives'),
('׾H���M���\�\�bm�','Mali'),
('\���z\�O\"�\�\�\�M�\�i','Malte'),
('\�\���Dt�\���p','Maroc'),
('^\�׸3I^�7�hz\�l','Martinique'),
('k\���@��mE\�j�','Maurice'),
('z\�Ց��L��M\�\�R\�G','Mauritanie'),
('eY\��O~�_\�.\�','Mayotte'),
('^.���6D\�\�á_]�','Mexique'),
('�ʿ�QADܳ�듬E\�\�','Monaco'),
('ʼ�<P&D^�tə<\�','Mongolie'),
('\�\�\�l\�Gѱ\Z-yzT�\�','Montserrat'),
('�4\��Az�5�h.0�','Mozambique'),
('�3Y\�O�\'2\�:\�\0','Myanmar'),
('pY\�ۄKd�<5\�5��\�','Namibie'),
('L\�ԉ\�J\�pi\rX\n�2','Nauru'),
('\\N\n\�L0�\�}���\�','Népal'),
('#�ڳ�E\\�\��\��\�','Nicaragua'),
('W\�\�j>Ed�\�*\�OA�8','Niger'),
('\��b\�cE���\�\�(�\�;','Nigéria'),
('�\�MtB���Pz�','Niué'),
('����Z�M��*\�\�o4�','Norvège'),
('�\��\nO嘣�\�\�gUS','Nouvelle-Calédonie'),
('�T\�md\�Mך\Zi5h\�f','Nouvelle-Zélande'),
('\�E\�\�L��S\�On_','Oman'),
('���5B0���\n\��','Ouganda'),
('�}\"\�٠DŘ�\�p\�\ZA','Ouzbékistan'),
('�l\0\�JUN\�r�s�ϙn','Pakistan'),
('��f��\�A���\Z�\�)n','Palaos'),
('\�\�z0M��\��J��\�','Panama'),
('�#�6��DТB3�(-�','Papouasie-Nouvelle-Guinée'),
('?5��ſGE�o�;��.\�','Paraguay'),
('.Ӌ8$�I!�\�\�\�S�','Pays-Bas'),
('-t�hLKC�񳊎��q','Pérou'),
('\�K\"��Ey���>\�\�','Philippines'),
('T��\�*B�\�\�ߓ\�\�','Pitcairn'),
('v�+���O��\'�\��\�','Pologne'),
('\�q�\�vMӏ@��h��','Polynésie Française'),
('���2\�\�G��#\�k|\��','Porto Rico'),
('��g���H��\rj�3@��','Portugal'),
('\�)Mʜ�I	��2�e\�\'','Qatar'),
('z��P\�N��\�ϋ�\�v','République Arabe Syrienne'),
('a\�d`H,A���g#U�','République Centrafricaine'),
('?ݣ\��%@±�Ō\�d\�','République de Corée'),
('\�jv��6Md�>\�l�O\�\r','République de Moldova'),
('\��\\�\�(C\�\�<F�D','République Démocratique du Congo'),
('�3\�\�E�I��\�ݙ\�{','République Démocratique Populaire Lao'),
('\0�\\�\�\�D\��䧲��$','République Dominicaine'),
('\�\�\�OI��\����K\�2','République du Congo'),
('u\�X�Me�~�\�\�em�','République Islamique d\'Iran'),
('\�\�r�9�K��<�U�S\�\�','République Populaire Démocratique de Corée'),
('F-�rhE��[\�,�\�g\�','République Tchèque'),
('\0ck�Ox��m���F','République-Unie de Tanzanie'),
('��\�qLz�2\�?\�\�f','Réunion'),
('\�\��n\�O��>rR`b�\�','Roumanie'),
('\�*\�\�\�\�N��E[��#\0','Royaume-Uni'),
('\0\�E}�~Mu�D=:g�\�','Rwanda'),
('z�q���B<�v\�QޏI','Sahara Occidental'),
('7%\�\�9@㲭�#$�	{','Saint-Kitts-et-Nevis'),
('�R�Ae\�M�-\�\�8\�','Saint-Marin'),
('�X\r�ϯM\�\\!�C~Y&','Saint-Pierre-et-Miquelon'),
('�2CSJ��\�\�/(�N','Saint-Siège (état de la Cité du Vatican)'),
('\�\�\��B{�n\�:\�','Saint-Vincent-et-les Grenadines'),
('\�\�?�M\�Lh�\�:C`9','Sainte-Hélène'),
('��\�Й�L��wdT�\��','Sainte-Lucie'),
('5�G\�_/Ds�\��q','Samoa'),
('e�<w��I��?��\�6~X','Samoa Américaines'),
('\�73C\�EP�\��\�{�','Sao Tomé-et-Principe'),
('&r�\�H<����62+v','Sénégal'),
('l$4�\�NH��h��\�\�\�','Serbie-et-Monténégro'),
('?�I\�\��J�f\�\�ed8\�','Seychelles'),
('��\�i��F���J\�N���','Sierra Leone'),
('t_{��MO�Ӧ\�\�>�%','Singapour'),
('\�A9�\�\ZN���<���H','Slovaquie'),
('�3i^gNQ�E���K\�','Slovénie'),
('�a*\�+\�L���f\�gߥq','Somalie'),
('����x�NG�\�#\�!c�','Soudan'),
('\�<]�MB��\�a\�\�n8b','Sri Lanka'),
('�]\�=�E��}?���','Suède'),
('>�	�WGg��kxU\�\\)','Suisse'),
('փ:\��F��G\0Ԓҹ�','Suriname'),
('<M��O쳟xaׄz\�','Svalbard etÎle Jan Mayen'),
('����6J��\��V��,\Z','Swaziland'),
('֓�\�_�L��f�:B\�','Tadjikistan'),
('\�\�`\"�N\��!O�M','Taïwan'),
('\�\r\"I|�V\�cY�\r�','Tchad'),
('��\�\�\�M�}A���5','Terres Australes Françaises'),
('����\�]I��\�.*�\0�','Territoire Britannique de l\'Océan Indien'),
('�I\�݆IHR���n��Sn','Territoire Palestinien Occupé'),
('֔h�\�M ��/g\ZC\�','Thaïlande'),
('��\�\�OЍ�51\�ޘ	','Timor-Leste'),
('8?�\'F��9C\�{P','Togo'),
('_\��6JE��QiV\"\�W','Tokelau'),
('\�V]�\�EL��g#�ͭx','Tonga'),
('�PiU�Fʋ� ��\�\�','Trinité-et-Tobago'),
('DX\�@ArD�喺ZA\�u','Tunisie'),
('���\n#Ee�>��\�\�\�','Turkménistan'),
('�-�D�\�K=�\�	L��$�','Turquie'),
('\���\�i�D���\�=�EX','Tuvalu'),
('~F\���9J��m�Q\�yt�','Ukraine'),
('*$\0ލfA\�3����\�','Uruguay'),
('�\�\�\��\�A(�\�[Tc\�\�\�','Vanuatu'),
('��\�\�sEՔ�j{3D��','Venezuela'),
('%J\�2O��X\�\���Xn','Viet Nam'),
(']��$Iz��J\�~��','Wallis et Futuna'),
('T\�\�\�=�B\�6\r\��63','Yémen'),
('�		���D���9�X5','Zambie'),
('�����\�B芮)p�GP','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-07-11 07:29:26',3),
('DoctrineMigrations\\Version20240201152951','2024-07-11 07:29:26',1),
('DoctrineMigrations\\Version20240202084749','2024-07-11 07:29:26',2),
('DoctrineMigrations\\Version20240202150901','2024-07-11 07:29:26',2),
('DoctrineMigrations\\Version20240207105701','2024-07-11 07:29:26',3),
('DoctrineMigrations\\Version20240319212437','2024-07-11 07:29:26',2),
('DoctrineMigrations\\Version20240614133504','2024-07-11 07:29:26',11),
('DoctrineMigrations\\Version20240617165906','2024-07-11 07:29:26',8),
('DoctrineMigrations\\Version20240708061729','2024-07-11 07:29:26',10);
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
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `tasting_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `target_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `sent_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `link` longtext NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F11D61A25BC0FE1E` (`tasting_id`),
  KEY `IDX_F11D61A2158E0B66` (`target_id`),
  CONSTRAINT `FK_F11D61A2158E0B66` FOREIGN KEY (`target_id`) REFERENCES `participant` (`id`),
  CONSTRAINT `FK_F11D61A25BC0FE1E` FOREIGN KEY (`tasting_id`) REFERENCES `tasting` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
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

-- Dump completed on 2024-07-11  7:29:28

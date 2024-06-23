/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-06-23',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-06-23',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-06-23',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-06-23',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-06-23',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-06-23',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-06-23',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-06-23',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-06-23',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-06-23',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-06-23',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-06-23',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-06-23',NULL);
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
('\�6�6�A墨�}a*','Afghanistan'),
('�n\�=U$C����\�\�\�','Afrique du Sud'),
('�hBNM�\�s�韬?','Albanie'),
('Y�\�w�A��3e�t�N;','Algérie'),
('\�\��\�A��H\�!^\�\�','Allemagne'),
('\�\��\�\�M��Z\�̲W��','Andorre'),
('he�=��Fr�O�\�;','Angola'),
('V/`�+B�\�\�5ب\�','Anguilla'),
('\�KWz\�\�Lҥy����r','Antarctique'),
('\�L\�zXeN��\�@�\�+�','Antigua-et-Barbuda'),
('Ŷ\�<�\�E��\�4\�Ȳ','Antilles Néerlandaises'),
('ac�@\�\�N��L�I�!I','Arabie Saoudite'),
('�ho���FW��Fn�','Argentine'),
(')\�H(�B��Ǝ���6�','Arménie'),
('\�loL�M�giY,�?','Aruba'),
('\�a�H�GG��^%x\��','Australie'),
('D��p�Bx�Ӭ�B\�\�','Autriche'),
('\�jV\�9A!�\�E�\�','Azerbaïdjan'),
('\�a\�z\�kJ4��\���\�0�','Bahamas'),
('��8K�KR��\�$\n\�(','Bahreïn'),
('xNe�E��} -5\�\�','Bangladesh'),
('/��Ż�O\�!����a','Barbade'),
('\�\nx\�sG��N\�v��','Bélarus'),
('����\��ON��\�s�Mb~','Belgique'),
('/�W4�\�E܈��l�x=i','Belize'),
('֚n��B��U8\�%�9Z','Bénin'),
('p\�p\�H<��g�\�SP\�','Bermudes'),
('\0Q\�5I]�$\��)�b','Bhoutan'),
('�a�m�J$��#[\�\�\�Q','Bolivie'),
('XEо��I<�6\��\�','Bosnie-Herzégovine'),
('��Ӧ��@6�z/\�i�\�\�','Botswana'),
('\�{\�a!\�F>�$*\�~\�\�','Brésil'),
('*\�3ݹ\�Mo��k�uO','Brunéi Darussalam'),
('�\�`B�\�Bݽ�Ѥ�\�\�,','Bulgarie'),
('�\�x�V�A���,�R�Ge','Burkina Faso'),
('\�;2�\�L\"��R?�}ڢ','Burundi'),
('\�P\���FC�\�W�)w$S','Cambodge'),
('�X{�\�!Mj�,�s\�t6','Cameroun'),
('\�6O�e�FL��J\�y�u','Canada'),
('3�]H[���\�6&�','Cap-vert'),
('\��\�[HȄ�&b�A\Z','Chili'),
('\�ƙGӐz3\�%','Chine'),
('8\����\�Fɑ�9\���\�','Chypre'),
('|�T�ٝN��\�Ά*;,','Colombie'),
('\��~{\�FZ�$�\��\�+','Comores'),
('�\���ztB󨒃X\�վ\�','Costa Rica'),
('�R擜B��\�8�m\�j','Côte d\'Ivoire'),
('\'�\��zF�TY�)K�','Croatie'),
('4\�\�tčAL���ź�\�','Cuba'),
('-4@�ѾI\���\�&����','Danemark'),
(':Q;��\�BQ�\�mA\n\"\��','Djibouti'),
('\�P�.xE��!\�z(B\�','Dominique'),
('o\��&��E���v$\�c?','Égypte'),
('Q6�谱K��`J:Bz','El Salvador'),
('\�p�ٌ\ZJ8�\�̳�Vl','Émirats Arabes Unis'),
('�o9e��Kf�G4a.�4','Équateur'),
('\�+�E��\�/P\�4`�','Érythrée'),
('�\�Ӽ5\�FǞ\�P�)\�/A','Espagne'),
('Lu��\�aO̱sј\'\�\�d','Estonie'),
('\�\0qe�@��\�M\�|\�z','États Fédérés de Micronésie'),
('\�в�EΆ�\�1�wH�','États-Unis'),
('�y;{��E]�;i	B\�S\�','Éthiopie'),
('��_GO���$\����\�','Fédération de Russie'),
('�2>�BHLq���\�H\�m\r','Fidji'),
('�*Q\�\�?Fx�a����','Finlande'),
('l��PJO���R��\�','France'),
('\�\�bFE=I���5Ą*','Gabon'),
('.v\�c�\�D\'��=p_�\�','Gambie'),
('D�)\�\�AE��.\�a��','Géorgie'),
('�N\�\r�Iq�\�Γ.�','Géorgie du Sud et les Îles Sandwich du Sud'),
('��bRsVL�n�\�W','Ghana'),
('?\�d���@_��\n{󝸶','Gibraltar'),
('%b���&A\n����\r��','Grèce'),
('���{L3Iߪ��S�\�E','Grenade'),
('TH��cNȂ���v\��E','Groenland'),
('�aw�\�G��L~XT\�G','Guadeloupe'),
('�\�\�\�M��#A�)\�','Guam'),
('��/QYM���m��','Guatemala'),
('\���lO&���Y7��','Guinée'),
('^��^\'Ct�2�Hք�','Guinée Équatoriale'),
('@\�ʱ\�\�Io�\n\�#Fq','Guinée-Bissau'),
('S\�?\���@y�Ü�\�','Guyana'),
('T\�\"ٿ|J��b)\�\��','Guyane Française'),
('}ӻ�\�YHb�-\�?O\0�','Haïti'),
('\�\'�t�\�AĀ�\�5��C','Honduras'),
('��6\�=�G���\�cd�X\�','Hong-Kong'),
('O\�M\�\�F��\�R�9�\�\�','Hongrie'),
('�\�Q��J7��{\��\�','Île Bouvet'),
('\�Yj�FE� �E)��\�','Île Christmas'),
('\�\�\�vhAe��a�c���','Île de Man'),
('�0�\�|\�KB��S4�\�x','Île Norfolk'),
('\�L檮Oh���;/5\�','Îles (malvinas) Falkland'),
('�d=\�\�C��4t\�\�-�','Îles Åland'),
('��\�՝2N�#}\�\�','Îles Caïmanes'),
('?��tIv�Eԓ#\�\'\�','Îles Cocos (Keeling)'),
('T\�f\�@\�N�W9:','Îles Cook'),
('+͋]�Kҕ��Ւ\�)','Îles Féroé'),
('����	�F\�\�7��\�s�','Îles Heard et Mcdonald'),
('\�Y��WD]�\�*\��\"3�','Îles Mariannes du Nord'),
('��\�g�C����<\�\��','Îles Marshall'),
(';5*?)�M��`\��\�\�\��','Îles Mineures Éloignées des États-Unis'),
('��u4N`�u�q�c5\�','Îles Salomon'),
('ܛ��@\Z�>=�F��\"','Îles Turks et Caïques'),
('��=\n�Fߚ4s9\�\�','Îles Vierges Britanniques'),
('U<\�\"��F,��i0\� *','Îles Vierges des États-Unis'),
('\�a�Y\\B+�ꗏЮGU','Inde'),
('tDqvEy�6\�z��4','Indonésie'),
('\��y-Jj�ѫ-�Հ','Iraq'),
('䨨�A\�J���#�9Qm\�','Irlande'),
('\�X%��A��\�\�\��\�','Islande'),
('�Om��OK��\�tE[\�,','Israël'),
('�����\�C �����8�a','Italie'),
('k7�L`�\�[`Z\�w\�','Jamahiriya Arabe Libyenne'),
('l\�\�LL>�\�D\�F\�\�','Jamaïque'),
(',�<��iG0�B�Jp','Japon'),
('o\"o+\�D,�\n�\�p\�\�','Jordanie'),
(',�2U4�@Y����Q','Kazakhstan'),
('8\�Z\��\�B\�\�x:6','Kenya'),
('3\���LK���F1��\�','Kirghizistan'),
('%Nf~��MG�F\�R�!b�','Kiribati'),
('9\"R\�$=J��&	ݍ��','Koweït'),
(':\\�\�@��G��Gmj','L\'ex-République Yougoslave de Macédoine'),
('\�TbZL\ZLa�\�=z-,�G','Lesotho'),
('�7#�kK��\�f\�i2��','Lettonie'),
('�\�3Q\�_E����N\�\�','Liban'),
('�~�IӒY���\�h�','Libéria'),
('�n\�\�VH��i\�e�9','Liechtenstein'),
('�sW�\�iB��\�\Z fu�\�','Lituanie'),
('9a\�\�!4@��l�b\�w͒','Luxembourg'),
('��֊U\�F��\�\����\�','Macao'),
('��;\Z�E\�E(\��\�\��','Madagascar'),
('���ܺ\�O��c�Gd\�\�\�','Malaisie'),
('��\�r�SD �k�e\�\�','Malawi'),
('�\�UL�E��>�҅UR','Maldives'),
('Q\�M\�tE��8�u^�19','Mali'),
('a�\�YK��\�\\d\�V\"','Malte'),
('����ڄGQ�\�\�^�\�U\�','Maroc'),
('?\�G�fM3�oFR\�jE','Martinique'),
('��7�>�F-�\r��\0�','Maurice'),
('�o���A\r�*��O1�\�','Mauritanie'),
('D�ݮ�F��\�[+\�ª','Mayotte'),
(' ���\�Bثt��k\�e\�','Mexique'),
('\�,�B \�A��\r	7\r&x\�','Monaco'),
('Co��xD��\�\�\�^\��','Mongolie'),
('\"\�\�ӑ\�O5�\�\���[\�1','Montserrat'),
('\��f�\�@O�\�\�\�9v','Mozambique'),
('\�\�\��\�\�Oy�u�\�\�\�?','Myanmar'),
('�(*���Bɑ\�q�\�\�\�','Namibie'),
('(\��gG��\�W���\�','Nauru'),
('s�-�M.�\��>�\�!','Népal'),
('$\�\�	HN�\��r\�','Nicaragua'),
('/\�-\�\�(FQ�\�\�','Niger'),
('y� L��OJ�h\�\�W','Nigéria'),
('��*kN\�^W\�S�','Niué'),
('b[غIHt�yH\�^\�\�','Norvège'),
('��2H��E��cU�gP\�','Nouvelle-Calédonie'),
('Ȫ\�\�n,G��=FYT}\�','Nouvelle-Zélande'),
('�уե\�H��E_+p ��','Oman'),
('�H\�٫�K��\�6�8','Ouganda'),
('�\�\�͊hD6�<��\�qE�','Ouzbékistan'),
('f\�#�-GJ�xD\�$�','Pakistan'),
('|,	���N��6\�\��Y','Palaos'),
('\��$tD��c72y\�}','Panama'),
('�y\�\�<\�Iԩl5\�!T','Papouasie-Nouvelle-Guinée'),
('}\�cO	IĞ�\�DOw?','Paraguay'),
('|�|ߺN5�\�\�lo\�A9','Pays-Bas'),
('�s�M�\rX6\ZK�','Pérou'),
('\��v��Gl�\�%F�K%','Philippines'),
('�,3\��I\�I5\�\�\�Ɩ','Pitcairn'),
('\�\�tW@ƲhD�י\�\�','Pologne'),
('�t�A\�XG��q\�\�\�KX','Polynésie Française'),
('CK1wA\�hR\�w\�','Porto Rico'),
('��u��G��L!zU�\�','Portugal'),
('�^\�V�H<�\�k�u��','Qatar'),
('\�w\��\�\�Oכ\�Ҡ\����','République Arabe Syrienne'),
('\�\�w}=)O\�6\�>�\��','République Centrafricaine'),
('�\�\�ز0N\�\�\�F\�\�','République de Corée'),
('\�;�YG~���\�ho�:','République de Moldova'),
('\�nE\�\�J���\�7hh','République Démocratique du Congo'),
('U��t;vA��O0ʍ��','République Démocratique Populaire Lao'),
('�S�4\�B��\�mX\�H\�','République Dominicaine'),
('\�4��8�GL���u\�\\4\�','République du Congo'),
('���\��\�Ev�tI�(','République Islamique d\'Iran'),
('\�s-&B7��?[�\�\�','République Populaire Démocratique de Corée'),
('�G�U�Dӵ=\�|�`','République Tchèque'),
('\�Х�y\�M���	�i\r\�','République-Unie de Tanzanie'),
('3�a\�h4J��\�sB\�_�\�','Réunion'),
('$$~��Fu�Ek�\�Ͱ','Roumanie'),
('\�~{C\�O��\\�ʙ','Royaume-Uni'),
('_\�j�\�FS��{�w�','Rwanda'),
('D_U�\\EC��\�\�]�) \�','Sahara Occidental'),
('\Z�4�W8MO��ZWF���','Saint-Kitts-et-Nevis'),
('\�/\���Jݭ�\Z8cQc','Saint-Marin'),
('\�8m�&J��[\�6y�p','Saint-Pierre-et-Miquelon'),
('ZM\�G���G\�!z-','Saint-Siège (état de la Cité du Vatican)'),
('\���[c\�E���\��yh\�','Saint-Vincent-et-les Grenadines'),
('\�`��-O\"�+\�\�\�K\�','Sainte-Hélène'),
('#\�j[RDﷲk�~_Z~','Sainte-Lucie'),
('Q�-�\�\�L��$�\�\�g<','Samoa'),
('$/\�s�Fےeb޻`\�','Samoa Américaines'),
('�{~q��E\Z��A��j','Sao Tomé-et-Principe'),
('̇\"�\�XD׮\��X\��e','Sénégal'),
('\�o����F��=��l\�','Serbie-et-Monténégro'),
('j\�\��\�G��rn�j¡�','Seychelles'),
('N�Oe\Z:G���\�\�\�','Sierra Leone'),
('����\�D��F\�bt\�{t','Singapour'),
('ե�3+RH<��0A�3�','Slovaquie'),
(',\�\�/\�B7�\�7C\�^','Slovénie'),
('A/�4\�NF\�}��\�\�','Somalie'),
(':yA\�FhIP�x��\��Ev','Soudan'),
('�i�t�J%�1�\�8�s','Sri Lanka'),
('&񏛓�ET��|\"#\�','Suède'),
('�\�\�\0\�A>�!姰F\�','Suisse'),
('*\�\�k�I\�Mj\�т�','Suriname'),
('\�I3\��Cq�\�\�\�\�,��','Svalbard etÎle Jan Mayen'),
('\�\�\�A\�ܥ�)�_','Swaziland'),
('\'\Z\�j\�L��\r$4�t.','Tadjikistan'),
('x\�\�w\"\�C\���\02_kp','Taïwan'),
('��묏6@)���	�|\�\�','Tchad'),
('��a\0qECO�\�u\�)��','Terres Australes Françaises'),
('G\�\�\��	C��\rҁ\�\�','Territoire Britannique de l\'Océan Indien'),
('�zj\�\�D����*\�}','Territoire Palestinien Occupé'),
('Km�7KKY��\�C�n','Thaïlande'),
('	\�(��\�@!�����\�U�','Timor-Leste'),
('��\�Ž@\\�\�źZ�9*','Togo'),
('C�C��\�I��1\�PL\�','Tokelau'),
('���h��A��f\�W','Tonga'),
('�\�a\��H\0��e��','Trinité-et-Tobago'),
('\�WRf\�OV�֪�\�\�','Tunisie'),
('�����I�����\���','Turkménistan'),
('v�i�C�\�&\�y�','Turquie'),
(',�/D D#��c�K��f','Tuvalu'),
('��Q\�fHu�\��(�jb=','Ukraine'),
('�q7\�1AϪ��$VYX','Uruguay'),
('�ܾv`�A\���Z괰	m','Vanuatu'),
('\�W`�\�\�L��\�0ek4\�','Venezuela'),
('Ho�\�jGA�u\�Sڜ�z','Viet Nam'),
('\�\�B��HE��i�;�W8D','Wallis et Futuna'),
('_���f�E{��\r�\�\�h','Yémen'),
('S\�?s�Ok�Ps{Bv�','Zambie'),
('nb2�*iNu�\�\�!O\�x�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-06-23 19:13:37',3),
('DoctrineMigrations\\Version20240201152951','2024-06-23 19:13:37',3),
('DoctrineMigrations\\Version20240202084749','2024-06-23 19:13:37',2),
('DoctrineMigrations\\Version20240202150901','2024-06-23 19:13:37',1),
('DoctrineMigrations\\Version20240207105701','2024-06-23 19:13:37',4),
('DoctrineMigrations\\Version20240319212437','2024-06-23 19:13:37',1),
('DoctrineMigrations\\Version20240614133504','2024-06-23 19:13:37',11),
('DoctrineMigrations\\Version20240617165906','2024-06-23 19:13:37',7);
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

-- Dump completed on 2024-06-23 19:13:38

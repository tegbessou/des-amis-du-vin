/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-22',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-22',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-22',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-22',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-22',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-22',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-22',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-22',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-22',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-22',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-22',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-22',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-22',NULL);
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
('?\�k\�YOu�w�\�U��','Afghanistan'),
('b\�2�H\0J���\�\�+���','Afrique du Sud'),
('NBf�\�E\n�\"C�2#\�l','Albanie'),
('}\n/\��A\�l>1t��','Algérie'),
('�dD\�B\��\�\��','Allemagne'),
('\�ҥ�o�G,��M��\�\�\�','Andorre'),
('\�R��\�W@X�\n�^s\�\�5','Angola'),
('�KŮ�(F$�\�OGJ','Anguilla'),
('`,�1NL���`d\�\�\�#','Antarctique'),
('q؊\�\nG\����Z\�\�','Antigua-et-Barbuda'),
('\���L�D��\�\�\��\�9','Antilles Néerlandaises'),
('$�ױ��C9�=|���7','Arabie Saoudite'),
('�O�\�&�JV�\�A�\�~','Argentine'),
('c�\�\�MI:�\�\�\�\r?��','Arménie'),
('p�zF�H��a�J\�J\�T','Aruba'),
('P\�8<q�LN���j�L�\�','Australie'),
('D��\�\�A{�, ��.\�\�','Autriche'),
('\0�d_\��CZ�E\�x�Os','Azerbaïdjan'),
('\�Q2��C|��2|(�\�','Bahamas'),
('\�����@R�m���\�\�','Bahreïn'),
('�6�\�H\�M��\��>��\�	','Bangladesh'),
('�q��MOH�Lw��\�','Barbade'),
('\�&H��FDރ�0�W=\Ze','Bélarus'),
('\��T:�MԊ{����s2','Belgique'),
('��\�(\nK��MN�+�','Belize'),
('\�&o��Bd���r�\�','Bénin'),
('9=����Iʻ^����b','Bermudes'),
('\�\�&�QF\n�\�hH~��','Bhoutan'),
('��E�uJ\��\�RI0\"','Bolivie'),
('�L\�\�\�I��w\�{�2\r\�','Bosnie-Herzégovine'),
('m챼�F���=�(�5\�','Botswana'),
('\�\�[\�\�A(�R/�t�s\�','Brésil'),
(',�3y2tCe�`;��3�','Brunéi Darussalam'),
('\�P�`e�L��wr8�\0�\�','Bulgarie'),
('˒W�\�NET�R�Ƙ\�','Burkina Faso'),
('\�\�TP\�E諑\��\�D	x','Burundi'),
('\�V\�9LM��\�\�\�Ca(T','Cambodge'),
('\��\�i+�H|�\��\�\�\�^<','Cameroun'),
('%_\�t��Fe��&{\�%','Canada'),
('�ʠ\�o\�I�+\�$n\�\�Q','Cap-vert'),
('�f\�T\�\�E/�;g��\Z\�','Chili'),
('&I`��\�J\��ӏ\�%��\�','Chine'),
('\�\�trj\�Ff��g�F�','Chypre'),
('����\�Ah�#W\�wK\�R','Colombie'),
('n{\�>sAH��⌻V�\�','Comores'),
('\�\�y�!AЯ�΢#Js�','Costa Rica'),
('zE\�F�&D���\�,�','Côte d\'Ivoire'),
('�3�z\"\�F�����1�\�','Croatie'),
('ى0��AT�^e}\�\�','Cuba'),
('n?��PrF!�W�\�R�\�','Danemark'),
('d	\�{y|D^���x��\�','Djibouti'),
('�r���|IL�U�w�_\�','Dominique'),
('I�S\�Lܰ��\�eQ\�','Égypte'),
('\�u8L\�M��}�l_]�','El Salvador'),
('\��Z��\�Fg�\\�!\�\"\�w','Émirats Arabes Unis'),
(',�\�U\�C��\�aP\�?�','Équateur'),
('\rH\�ӨH��4�ǈ\"','Érythrée'),
('g��c�Bx����(̴\�','Espagne'),
(')f��OI��k��Q�l','Estonie'),
('����\�HK¥Ub�:`05','États Fédérés de Micronésie'),
('�\n+\�}\�H=�\�N�\�EX','États-Unis'),
('\��*�GV�6\��6z�','Éthiopie'),
('8\�{Ӷ\�N�\�?H����','Fédération de Russie'),
(',\�ug�F��rC\��:H\�','Fidji'),
('KܩO8M%�\�\�\�)�\�3','Finlande'),
('*Ŵ~n\�M����?\n\�','France'),
('\��\�@\��B��lAG','Gabon'),
('\"?\���B\�\�`ݧ','Gambie'),
('\�|\�HD�+J\����','Géorgie'),
('u@e\�\�H����\�ߍV','Géorgie du Sud et les Îles Sandwich du Sud'),
('\��S��yMؽ4dE\�0','Ghana'),
('d:t�g\�K�\��߂g�6','Gibraltar'),
('�%3\�_Bà�\�Oe�\� ','Grèce'),
('Y(0�C��\�>�u\�z>','Grenade'),
('MnبLKu��şD�HN','Groenland'),
('aU%\0\0sFA�:> BuN�','Guadeloupe'),
('\�\�\�ދ\�@-�:x�7\�\�6','Guam'),
('��\�\r�\�EǄ\�\�\"�r','Guatemala'),
('\�y\�\�\�O#�9\�\�k,W)','Guinée'),
('K�\�é\�J���:�\"\�ǜ','Guinée Équatoriale'),
('ƞ\�\�H\�)�X��\'','Guinée-Bissau'),
('�~&?\��F9�\�aʔ��','Guyana'),
('�\�wX\�I\�\�7��Bc','Guyane Française'),
('�OZ\�\�BEN��h��e>�','Haïti'),
('��$\�%G��\�L�a}�\�','Honduras'),
('*\��ɂM\�\�bF\�Sb�','Hong-Kong'),
('a b\�u\�H��AR\�z^t�','Hongrie'),
('�Ӵ3�\�B��\�[��G3','Île Bouvet'),
('?�vQ\�]I�^n\�\�^C','Île Christmas'),
('S^?�śM��\\�x-�\�','Île de Man'),
('����eF͖\�*\�<','Île Norfolk'),
('Lc5Z�QE��w\��)	','Îles (malvinas) Falkland'),
('��+�]%@��\�>k\�\n�','Îles Åland'),
('��{�QLŔZj/�a','Îles Caïmanes'),
('+\�\�1��K��\�yu�G�y','Îles Cocos (Keeling)'),
('\�\�.7G|��\�yI�:	','Îles Cook'),
('l\��x\�GN����?_','Îles Féroé'),
('�\�\�o�B\'�گb\�@�','Îles Heard et Mcdonald'),
('���%��L���5;\r\�y\�','Îles Mariannes du Nord'),
('3��LE�\�q\�Z1','Îles Marshall'),
(':�C�\�K\����\�Ĩ','Îles Mineures Éloignées des États-Unis'),
('��>zFſ\�mY|Ö','Îles Salomon'),
('\��\"(I�Di��D\�ћ\�','Îles Turks et Caïques'),
('�\�6$�B��}x\�<�� ','Îles Vierges Britanniques'),
('���ƪ\�F:�$R|g\�h ','Îles Vierges des États-Unis'),
('�2~�i5M�\�s]e\�\�','Inde'),
('vD���7J������k�','Indonésie'),
('\�b\�rMy�w\�\�','Iraq'),
('�`+t�\�DǓ�X*�\�\�','Irlande'),
('\�\�ФӎD9�I\�xJ�D','Islande'),
('vhd%+OO�3\�J\��','Israël'),
('sF�8QL,�b]��<','Italie'),
('�ZK�.\0?mP�\�','Jamahiriya Arabe Libyenne'),
('�\�\�>�LE�*\�:pj','Jamaïque'),
('��ܯ\�\�@\�X\�c�ƥ','Japon'),
('�o\�\�#!Cg�(\�ۣ� C','Jordanie'),
('ͱ\�IZD�\�\0\�\��','Kazakhstan'),
('�%\�o��M��\�1\�\��','Kenya'),
('S\0����L<�N\�h�\�\�1','Kirghizistan'),
('Y��a�\�L��\�\"\�ؠ�','Kiribati'),
('���T�Dx�e�x\�7>�','Koweït'),
('��{\�aI\�x,t\��\�','L\'ex-République Yougoslave de Macédoine'),
('�h�7(0O\��\�S\�,','Lesotho'),
('\�\�\��v\�K\�p>\�,H','Lettonie'),
('���G B�`d�_߆\�','Liban'),
('_�\�p�(Ie�}>/\�HG\�','Libéria'),
('LƵ��\'F}�[\�8sPw','Liechtenstein'),
('E4�$bE�X����<','Lituanie'),
('�4n]\�3JP�H<\�U85�','Luxembourg'),
('� )O��5�\�A\���','Macao'),
('{]��D\"�&�3\�nT\�','Madagascar'),
('&\�\���F+���\n\'�9','Malaisie'),
('s��G{?D˘�[�\�\�\\\�','Malawi'),
(':�\����N\n�G�}\��','Maldives'),
('j?Q\�&I\�l͍','Mali'),
('f�\�J�\�I\�\�,\�\�\�\�','Malte'),
('\�j�L�\�Kq�\�\��\�F�','Maroc'),
('A>O\�kVGU�#vic','Martinique'),
('7��\�\�K�\Zi��	��','Maurice'),
('u��։J����*\�5','Mauritanie'),
('rS���5F\"�E�#��w�','Mayotte'),
(':f�,��Db�o�ĢFK^','Mexique'),
('\��\�C�&O\n��\���\0','Monaco'),
('p�k4G\�E\n�DC)�T\�','Mongolie'),
('LK\�c�/NM�o�$D\'�7','Montserrat'),
('kD\��A����tG�\�','Mozambique'),
('8T\�/�\�Jb��{��� ','Myanmar'),
('\��\�\�\�D񅃝�_2\�\�','Namibie'),
('O\�=OKH��KNR&{\�','Nauru'),
('/��OD��E�f%78:','Népal'),
('���e�Mu��4��\�f%','Nicaragua'),
('=Z\�\�`�N3�\�ݵ\�CR','Niger'),
('1�mH#CŎ<\�$�','Nigéria'),
('a}\�˹bJ����=!\�/','Niué'),
('\�N��\�iA|�\�\�U5@','Norvège'),
('\��ReHܹ�\�M�<.','Nouvelle-Calédonie'),
('\�ѲW=#F1��/�\�֧\�','Nouvelle-Zélande'),
('�z\�;J<E\��)GV\�	','Oman'),
('q�ϭHw�}a�-�\"\�','Ouganda'),
('\�|�\�8�D\�$/�^�+8','Ouzbékistan'),
('��Ǜ\�N�\��G4�','Pakistan'),
('\�襻\�\�F���I�\�\"\�','Palaos'),
('�|�o��Nȶ\�|�\�z΍','Panama'),
('_㷘\�O��єK\�\�|','Papouasie-Nouvelle-Guinée'),
('��4\�5Bݎ%��@\���','Paraguay'),
('\�F\�\�%O\�\�Y�)/5�','Pays-Bas'),
('�\���\�I��V4\�L\�','Pérou'),
('\�\�|m\�F��߰\�`','Philippines'),
(',\\O,0LW�\r����','Pitcairn'),
('F�\r�\�Nh�t\��!Y','Pologne'),
('3\�\�\r�\�Kɾ\�\0Ǘ{\'>','Polynésie Française'),
('�ll�I��8�1]8�\�','Porto Rico'),
(',\Zcg�Jr�\�\�xE�','Portugal'),
('\�\�__\Z=M��\���Ի','Qatar'),
('{\�6��L͎\� �8θ�','République Arabe Syrienne'),
('L�Ue�K��C\�O]~\�','République Centrafricaine'),
('1\���CkK�N�W��g','République de Corée'),
('\�\\,\"�@��\��E�İ','République de Moldova'),
('/I�\Z�OR�<\�E{\���','République Démocratique du Congo'),
('EM\�\n�@J���#\�\�b��','République Démocratique Populaire Lao'),
('\�\�PDÖ��rR�A','République Dominicaine'),
('��T�\�}H�W\�H#J��','République du Congo'),
(')���\�Bw�bN&�v','République Islamique d\'Iran'),
('wTU\r�)Mx�v�ǦQ�','République Populaire Démocratique de Corée'),
('r�\�*&�D܂n�\0X�~','République Tchèque'),
('T\��T8\�B��b��\�\�','République-Unie de Tanzanie'),
('B�j�M\�\�Λ>\�}�','Réunion'),
('\�\��ݱKѧ��\�Xi�\�','Roumanie'),
('�(fW\�\�H��5�\�I?�','Royaume-Uni'),
('y�\��M\"��\�A@K\�\r','Rwanda'),
('=4��CX�\�Ne�uD','Sahara Occidental'),
('\�)�kZqE���bk\��˃','Saint-Kitts-et-Nevis'),
('\�=uN�vAd�S�X-\�','Saint-Marin'),
(',�\�!6?N�\�\�\�(���','Saint-Pierre-et-Miquelon'),
('t]\����G���\�>-�','Saint-Siège (état de la Cité du Vatican)'),
('\�U\�k\\\0E7�7�(�%�\�','Saint-Vincent-et-les Grenadines'),
('$\�GdC@˴\�X\�\�\�];','Sainte-Hélène'),
('|*��\�~KV�!�Tٛ�','Sainte-Lucie'),
('HrR�i�MV��߭v�9','Samoa'),
('2|�{�G�U�};','Samoa Américaines'),
('�*\��_K�\�m�c\�;','Sao Tomé-et-Principe'),
('y@{C	�Cm�[D�\��','Sénégal'),
('=͐|�\n@ߚ��\�\�t�','Serbie-et-Monténégro'),
('\�6\r�@�\�\�;A\�U\"','Seychelles'),
('�B����D����y\�.','Sierra Leone'),
('}��\��B1�@CQ�','Singapour'),
('[ȁm\nEd�s\�\�\�I','Slovaquie'),
('����n\�NՖ�\�-G(�','Slovénie'),
('l8l}E�$=�\�\�V','Somalie'),
('�����`M��L?VM�\�','Soudan'),
('e\0LaQ�N@��%e\��a\�','Sri Lanka'),
('�a\\�9\�A��\�\�O�x:+','Suède'),
('k%C�EB#�u�׽o�','Suisse'),
('\����KA��Z�mE�h','Suriname'),
('H��|}DŤM02\�\�','Svalbard etÎle Jan Mayen'),
('�0[\�{O=�\�\�\�YZ�\�','Swaziland'),
('�E`�\0D\�\�\�]Fɭ','Tadjikistan'),
('%�G\�\�;BͲB�\�kq	','Taïwan'),
('�\�_0�\�I|�E\n��\�\�K','Tchad'),
('_�V\�A켚mG�1�U','Terres Australes Françaises'),
('��\�VQpHo��\�d�','Territoire Britannique de l\'Océan Indien'),
('\�%s\r�H\���\�\�\�','Territoire Palestinien Occupé'),
('�\�\�\�\�BW�!\�?-��','Thaïlande'),
('uR��\�3F_��6f�x-','Timor-Leste'),
('\�TI�;I5�۳G8\�','Togo'),
('\�P�@�*A��.\Z�','Tokelau'),
('A^�\�n\�BB���d\�$�','Tonga'),
('�\�%%�FԺ���F\\','Trinité-et-Tobago'),
('i��^A˽)\�\�,\�\�','Tunisie'),
('����BWL��m�\��','Turkménistan'),
('\�p\�\�[Bͫ���8��u','Turquie'),
('@5�o�\�LW�\�Dgk�','Tuvalu'),
('\�\�_AEgG\Z�\'v\�\�|','Ukraine'),
('|�v\�Dv��\�BEx�','Uruguay'),
('C\�\�ZK-�3\�\�O_��','Vanuatu'),
('B>\�o�IK)�3\�?\��\"','Venezuela'),
('�\�\�شF-����\'�\�','Viet Nam'),
('cL�q�PCѸ{Ѓ\�*�','Wallis et Futuna'),
('����(F߲��c٩�\�','Yémen'),
('����|�@�\�\�V�Vr0','Zambie'),
('�\"�\�H��8yO\��','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-22 20:33:13',3),
('DoctrineMigrations\\Version20240201152951','2024-11-22 20:33:13',3),
('DoctrineMigrations\\Version20240202084749','2024-11-22 20:33:13',2),
('DoctrineMigrations\\Version20240202150901','2024-11-22 20:33:13',2),
('DoctrineMigrations\\Version20240207105701','2024-11-22 20:33:13',3),
('DoctrineMigrations\\Version20240319212437','2024-11-22 20:33:13',2),
('DoctrineMigrations\\Version20240614133504','2024-11-22 20:33:13',10),
('DoctrineMigrations\\Version20240617165906','2024-11-22 20:33:13',8),
('DoctrineMigrations\\Version20240708061729','2024-11-22 20:33:13',11),
('DoctrineMigrations\\Version20240801202153','2024-11-22 20:33:13',3),
('DoctrineMigrations\\Version20240815153823','2024-11-22 20:33:13',2),
('DoctrineMigrations\\Version20240916065051','2024-11-22 20:33:13',4),
('DoctrineMigrations\\Version20240929091802','2024-11-22 20:33:13',10),
('DoctrineMigrations\\Version20241002164506','2024-11-22 20:33:14',5),
('DoctrineMigrations\\Version20241119144432','2024-11-22 20:33:14',9);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-22 20:33:14','root@gmail.com');
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

-- Dump completed on 2024-11-22 20:33:15

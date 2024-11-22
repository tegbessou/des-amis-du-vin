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
('\�*�~\�xAU�9\�L\�{ʆ','Afghanistan'),
('-���`A��vT(\�)\�','Afrique du Sud'),
('�*n\�WB��A�q-\Z�j','Albanie'),
('�<!{tXC��{���\�\n','Algérie'),
('s�Ǜ\�EԌ�\����','Allemagne'),
('%s��VK���kb��\�\�','Andorre'),
('�=\�\ZՐG(�\�cc/�.K','Angola'),
('B6�éL��쩼\�d','Anguilla'),
('���ȋ�AQ�\�(�(��U','Antarctique'),
('�Aq��@Y���U�$~','Antigua-et-Barbuda'),
('4Qb�\\MZ�mĦPx�H','Antilles Néerlandaises'),
('ö<:yN ��T\�NM�J','Arabie Saoudite'),
(':\�\�#kA\"�I�mr�H','Argentine'),
('\��\��H.�\�d@\Z�K\�','Arménie'),
('\n\�6\�\�J\�[\�:��V','Aruba'),
('�gGTGNA�c�RT8\�','Australie'),
('W\�\Z �N�%\��ׂ	','Autriche'),
('\�#�g\�\�GВ8�<\�A�','Azerbaïdjan'),
('@ن:J[�\�\�d�\�\n�','Bahamas'),
('��u\�QHA��G�\�͘','Bahreïn'),
('_{���OP�����IG�','Bangladesh'),
('\�M8���Mߧ\�~�ᩃ','Barbade'),
('6ǃ�\�B��L\�\�긷f','Bélarus'),
('6(ƸrE��n=Y\ZP�','Belgique'),
('g\�k7D���\�\�-�','Belize'),
('\�\���\�L��\�t\\c��\�','Bénin'),
('\n�\r\�\�	C��2}b��j','Bermudes'),
('w\�y\�\�F\\�BE��\�','Bhoutan'),
('��v��Iɦ����/�','Bolivie'),
('\����eB⋪�\�,c\�','Bosnie-Herzégovine'),
('@���dHĄ�+\�u\�T','Botswana'),
('\�Y�q\�A��GVp,�:o','Brésil'),
('���<��B���[��kc\0','Brunéi Darussalam'),
('f��\nD;F��\�i\�7��','Bulgarie'),
('I�>MM<������%','Burkina Faso'),
('�M> �|M\"�}c\�<ʵ\r','Burundi'),
('iL򡇞E8��8\��.<','Cambodge'),
('\�:\�\�\�\rL\Z�G��C\�)\�','Cameroun'),
('Ik�h\�6D ��p\�87\�','Canada'),
('B6WױA׽����xg\�','Cap-vert'),
('\'\�\�-B�@��\�\�t=','Chili'),
('�2�]��MM�a\">V�','Chine'),
('aT�\�Y.LE�\\.X��b�','Chypre'),
('�ՀRTvG��1ݚ\�\�at','Colombie'),
('\�>�B.M���?⯪','Comores'),
('\�\�\�w\�O��pN�\�\�\�','Costa Rica'),
('\��Fk�E��@I\�\�q','Côte d\'Ivoire'),
('�d�k�!F���(\�\�Fj','Croatie'),
('��ڇC\r�bkZ\��f�','Cuba'),
('0-\�\�}ACO�\�^~\���','Danemark'),
('�\'\�.B������\�','Djibouti'),
('C&\�(��M[��\�\�\�\��\Z','Dominique'),
('Bw}D�I��s\��C��\�','Égypte'),
('�9�o3Bנ\�\�\�~','El Salvador'),
('!E3@\"IJ�f$̶�z�','Émirats Arabes Unis'),
('.cW\�N\��\"JC��','Équateur'),
('{`B\�D��\�<�\���','Érythrée'),
('\�f�\�`>Co�W9���\�.','Espagne'),
('�1\r�RN�\�\��\�F','Estonie'),
('\�Tֳ[HIΨ�D�`��\�','États Fédérés de Micronésie'),
('��C5LF��9��}�\�','États-Unis'),
('�\�؀�3KԚ\�_4I���','Éthiopie'),
('J\�_9��JD�\�L�\�','Fédération de Russie'),
('�\�1�I���婚\�','Fidji'),
('\'�;��Gւ\�Cc``�\�','Finlande'),
(':\\W�	GCv�b�\�G��n','France'),
('\�F\�W\�uA~�1�\�b','Gabon'),
('��N\�JQ�*͢�JTI','Gambie'),
('�\�\�z \�D��׾d{�\�','Géorgie'),
('\�\�d�/TE��C�\r|\�8T','Géorgie du Sud et les Îles Sandwich du Sud'),
('�xCdBsI6�\��h\0e�','Ghana'),
('\�7�4\�K�\��s�\�\�','Gibraltar'),
('y\�5�;I���\�< ��`','Grèce'),
('�`ׄ7�Ly�[Z�d\�cq','Grenade'),
('�n�\\@U��\�0\���','Groenland'),
('�\�\�\\\�sG\�\�\\\�3�\�','Guadeloupe'),
('{\�2��\'B\�\Z(\rt�\�','Guam'),
('�\�\�\�ךJV��|�ot��','Guatemala'),
('��G�\��K\���>Ȋ\�','Guinée'),
('\��Xb;5B��\�\')T\��','Guinée Équatoriale'),
('$\�j^Jś8\��\�ԅ�','Guinée-Bissau'),
('\�\�h\�\�\�J��Hs�\�]d\�','Guyana'),
('��V�Or��9\�P��\�','Guyane Française'),
('`�\�)�KŃ\\s,BD-','Haïti'),
('2\'<�m�A���3}���','Honduras'),
('W})\�D@\0�\�\�\�s}�','Hong-Kong'),
('k�lIM@Ԓk��1\��','Hongrie'),
('o`\�v�Cg�K�ɼ\�','Île Bouvet'),
('\�ž�\�M؛\�f\�\�\�u\�','Île Christmas'),
('\�͐J��KY�\�\�$e�\�','Île de Man'),
('LX\�\�J\'N��[j�\�	T','Île Norfolk'),
('���ޑ\�FN���\�*N@','Îles (malvinas) Falkland'),
('�\�\�q\�\�M���R	��ۥ','Îles Åland'),
('\�\�\�&LJa��I+\�yc','Îles Caïmanes'),
('\��k\�S\�IB�uG�','Îles Cocos (Keeling)'),
('\�Q��)@w�!%�I','Îles Cook'),
('.�rQt�E��n(�ֽ�','Îles Féroé'),
('\�{\n��J���\�w\�\�0','Îles Heard et Mcdonald'),
('�i1��FI�� V�h@X','Îles Mariannes du Nord'),
('�\"� ��L`���]S	','Îles Marshall'),
('��Y�DВ\Z�ϤN\�A','Îles Mineures Éloignées des États-Unis'),
('gL�m\� A��\�����','Îles Salomon'),
('8M�#K��\�\�l�','Îles Turks et Caïques'),
('\�J�\'\�H,�5���\�\�','Îles Vierges Britanniques'),
('s{��lFZ��Ϩ��;�','Îles Vierges des États-Unis'),
('�U\�o\�B��O\�-eů\�','Inde'),
('�\�[�SF�6|u\�0','Indonésie'),
('c-v�p�JƊ&�	Y','Iraq'),
('\�$UZE6��/��G��','Irlande'),
('u.\�\�\�OϠ?A\�?�\�','Islande'),
('���%D�F��k�\�?Z=�','Israël'),
('͇���O9����u��','Italie'),
('(ǫ�KͰۍ���A�','Jamahiriya Arabe Libyenne'),
('�i\���9A���3�\�o\��','Jamaïque'),
('\'HP*FBJi�6\�饸','Japon'),
('֔�\�J\�bv�\�\�\�','Jordanie'),
('\�\�\�S@�����\�b݂','Kazakhstan'),
('\�j�	oVB഻��)�R','Kenya'),
('T/x\�\�\�L��\�\�k�(\�','Kirghizistan'),
('��K\�\�IL\r�~�<��U','Kiribati'),
('\�\�\�x\�QD\Z�\�\�a\Z�:','Koweït'),
('\��D�Q�E)��+�ז\�?','L\'ex-République Yougoslave de Macédoine'),
(':`eGٕ\�\�\�1\�\0W','Lesotho'),
('��L>�I\���\�9u��','Lettonie'),
('odfpE\\Nĩ^�GF\�\�z','Liban'),
('�\�\��WJz��\�K��','Libéria'),
('M/k\�O��y\rg|[�','Liechtenstein'),
('\�U,AOL���Z/[�','Lituanie'),
('d�t�\�A��B\�H\�\�','Luxembourg'),
('�ߓ�\�3OW�o�\"����','Macao'),
('��\�`�\�F:�\�G���9','Madagascar'),
('\��\�\�;Hc�^_~�\�M','Malaisie'),
('Z�{�\��C���*�\�?','Malawi'),
('χA�\�\\BJ�\�\�]\�\�\�','Maldives'),
('\�G��NT�0c4�\�\Z{','Mali'),
('(ޣ�E\�A&��\�\�\r\�|!','Malte'),
('j�\�\�+Hj�i4�}\�\�\�','Maroc'),
('\�^\�ߘaC\��\�Sr\�L','Martinique'),
('�e�xIK۵A \�	�]','Maurice'),
('�AO�z7A�N\�Yz\�\�','Mauritanie'),
('a��=5^MܖE�ɣ�\0','Mayotte'),
('�\�t[�CEɨ7*\�.\�@n','Mexique'),
('n\�\�\�M��Z<\��	�','Monaco'),
(' �ժ\�\�Hc�\�\�\�\�\�\�','Mongolie'),
('/�\�:�CE�\n�Қ��','Montserrat'),
('$��&N��U!�z\�ܘ','Mozambique'),
('o\� \�IB��\"Õ;��','Myanmar'),
('!\�\'i\�6C�\��\�\�\�\�','Namibie'),
('\��\�\�KZ�đΌ\��','Nauru'),
('tL.e4kH�\0 \n\�v\�,','Népal'),
('\�w�\�>HϤ�_\�c߲','Nicaragua'),
('R�Kh\'C��P^\� \�\�','Niger'),
('����AB\�jEκ4','Nigéria'),
('B�\0\r\�Fk���-\�=\�','Niué'),
('	�܄��Nb�\�E\�\�e','Norvège'),
('@\��J��2\�#:i.','Nouvelle-Calédonie'),
('1zɩQ]K���1C�\�	','Nouvelle-Zélande'),
('K6A,\�mL��U��\�\�','Oman'),
('k�\Zv	WH��K|\�\naٞ','Ouganda'),
('�\�\�J\��K�� ˑ>�\�H','Ouzbékistan'),
('�pVXl�O}������','Pakistan'),
('1\�b�%�K��\�\�\�`\�\�\�','Palaos'),
('(\�<dm\�O@�����i�','Panama'),
('���j�uE8��l\�\" C','Papouasie-Nouvelle-Guinée'),
('n_�p6IG�y�P*P\�','Paraguay'),
('Ӛ?�4EȖ\�bV�c\�','Pays-Bas'),
('f���qM1�PJ�&�]','Pérou'),
('H0 ���H\��5\�\��u�A','Philippines'),
('��bA\�A�� fI\�!','Pitcairn'),
('\�p�\��<M��UJ�\�) i','Pologne'),
('���\nG^��\�Nv\�\�','Polynésie Française'),
('Tk\�Q�\�K?�\�e��l\'�','Porto Rico'),
('c�MA2\�@��\�\��Z\�-','Portugal'),
('\�E\�;�\�I���\�\�9\�8H','Qatar'),
('\�\�Aw@o�5\�$P]\0P','République Arabe Syrienne'),
('K�|�TYNY�û\�K�','République Centrafricaine'),
('ϯ��wLAO��<�T@','République de Corée'),
('\�r\�餻L\n�\�a\�:6\�','République de Moldova'),
('\'\�\��\�\�C>�\ZF²ǻ�','République Démocratique du Congo'),
('$p�㽎J࡟�h\�FH\�','République Démocratique Populaire Lao'),
('\�>\��EH��%��','République Dominicaine'),
('�\�K\�\�(GQ�\�\�\�\��z','République du Congo'),
('=㳵�1KO����h!�+','République Islamique d\'Iran'),
('�\�\�\���Ob�0\�;=3 ','République Populaire Démocratique de Corée'),
('��1�F��\�s?+=8','République Tchèque'),
('�\�̗P\�F��i�gͼ\�','République-Unie de Tanzanie'),
('�\���\�@r�)\�\�\��','Réunion'),
('��\�#\�E#��A�q\�\�','Roumanie'),
('\�\�:k�\�@�d��D�','Royaume-Uni'),
('t|�\�XmD^��Yy|���','Rwanda'),
('h��dQK�a��xer\�','Sahara Occidental'),
('ԙe\�L��퇞F�\�','Saint-Kitts-et-Nevis'),
('l\\r\�\�D�I-\�\�>k','Saint-Marin'),
('𶽙\\�DG���}ݵI','Saint-Pierre-et-Miquelon'),
('AB�j>C�?Q\�\�\Z͢','Saint-Siège (état de la Cité du Vatican)'),
('S\��7�@\�u�=\��','Saint-Vincent-et-les Grenadines'),
('j�Z�}�KW�z�#�,9^','Sainte-Hélène'),
('\�\�`HZ8N���~�\�t�','Sainte-Lucie'),
('\�\�գ\'\�BX���6��|4','Samoa'),
('P>\�*\�\�M\�\�Pz\�\�\��','Samoa Américaines'),
('\�0�\�{\'N��\'\"`�','Sao Tomé-et-Principe'),
('b+\�\�4Iń�\\�\�:1�','Sénégal'),
('\��G�cAņ\�>b,�\�+','Serbie-et-Monténégro'),
('w/m��rCO�\�S\�@��','Seychelles'),
('�9��R:G��G\�P��خ','Sierra Leone'),
('\�z\�mG��\r�A�\0Tl','Singapour'),
('��֘F7�\�\�I�','Slovaquie'),
('k�9{\�B�����\�Q>','Slovénie'),
('d\\ ��N��+L�\0�\�','Somalie'),
(')�\�5~�O���~���\�','Soudan'),
('r\rl>tL]�O[;Ur�\�','Sri Lanka'),
('\�~�z\�E��\�\�!o','Suède'),
('`\�.\�tNJ���9h�9','Suisse'),
('й��v\�MԳ\r9Tsb	','Suriname'),
('�H܂uA��\�;��|�0','Svalbard etÎle Jan Mayen'),
('��|\"\�\�N��\�\�\�1U�','Swaziland'),
('3\�Ϟ�@��\�\�P� R','Tadjikistan'),
('WQOMxF���J\�7�','Taïwan'),
('\�\�&{�\�G����Ts�','Tchad'),
(',�H\r�@��\r�ϙ\�\�','Terres Australes Françaises'),
('\�\r!�x�A����0ذ\�','Territoire Britannique de l\'Océan Indien'),
('�\�\�UB�\�\�\'\�Ω','Territoire Palestinien Occupé'),
('.jT@��Av�\�\�KRZt�','Thaïlande'),
('\�\�\'ڪ�Jٔ�ZTx,$j','Timor-Leste'),
('��\�\��MB�^�Y\�<�\�','Togo'),
('E\�ni��G\�\�m�9O\�','Tokelau'),
('��\��E��\�K`��.','Tonga'),
('��\�*\0kC���,\�[]\�c','Trinité-et-Tobago'),
('0��8\�qI\r�\�\�P`7','Tunisie'),
('\�0\�ЫM1�\�|P\�ƾ','Turkménistan'),
('�O��\�zD<�4�\�?U','Turquie'),
('�\�Z5�xK�T�9\�A\�','Tuvalu'),
('\�\'\�7\�\�I�N�\�;�PF','Ukraine'),
(' +K\�]�B��AL�t,�','Uruguay'),
('~M5k�EN���%;b�\�','Vanuatu'),
('8���,�Gͥ\�/ᢿ\�','Venezuela'),
('\�AguK����t-\�)','Viet Nam'),
('U�{LE�I\�P��\�\�','Wallis et Futuna'),
('ML<2�\�FN�\�\�1\�\�','Yémen'),
('��\�\�\�\�KG��\�~�\�ǹ','Zambie'),
('\�\�I)NJ׿n�\�\�M�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-21 20:45:32',2),
('DoctrineMigrations\\Version20240201152951','2024-11-21 20:45:32',1),
('DoctrineMigrations\\Version20240202084749','2024-11-21 20:45:32',2),
('DoctrineMigrations\\Version20240202150901','2024-11-21 20:45:32',2),
('DoctrineMigrations\\Version20240207105701','2024-11-21 20:45:32',4),
('DoctrineMigrations\\Version20240319212437','2024-11-21 20:45:32',2),
('DoctrineMigrations\\Version20240614133504','2024-11-21 20:45:32',11),
('DoctrineMigrations\\Version20240617165906','2024-11-21 20:45:32',9),
('DoctrineMigrations\\Version20240708061729','2024-11-21 20:45:32',13),
('DoctrineMigrations\\Version20240801202153','2024-11-21 20:45:32',3),
('DoctrineMigrations\\Version20240815153823','2024-11-21 20:45:32',2),
('DoctrineMigrations\\Version20240916065051','2024-11-21 20:45:32',4),
('DoctrineMigrations\\Version20240929091802','2024-11-21 20:45:32',10),
('DoctrineMigrations\\Version20241002164506','2024-11-21 20:45:32',8),
('DoctrineMigrations\\Version20241119144432','2024-11-21 20:45:32',11);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-21 20:45:32','root@gmail.com');
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

-- Dump completed on 2024-11-21 20:45:33

/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
-- ------------------------------------------------------
-- Server version	10.11.9-MariaDB-ubu2204

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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-18',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-18',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-18',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-18',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-18',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-18',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-18',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-18',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-18',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-18',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-18',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-18',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-18',NULL);
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
('{\�h}�G\�\�D\�\�\�}','Afghanistan'),
('�rI\n��K��B\�\�\�\�\�\�','Afrique du Sud'),
('�Z�L̃\�Rw\�	\�','Albanie'),
(',6]�\�<J?�\�Iۮ2�','Algérie'),
('ѧ��h\�N-�$\�\�P\�','Allemagne'),
('\�zl@4}I��\Z�j�c','Andorre'),
('�*\�\�F �\ZL\'h','Angola'),
('3܅\�\�HQ�N��2','Anguilla'),
('�D|\�M��R�{��{','Antarctique'),
('\�\�e�\�D)��e�\�&�','Antigua-et-Barbuda'),
('�\�\�\�z\�O��laN�R@-','Antilles Néerlandaises'),
('���a�Hև,\0\�ߗdU','Arabie Saoudite'),
('PA�XnC٪�|!\�\�d','Argentine'),
('辅�1G\�\�EA��\�','Arménie'),
('\��L\�ECB��@�O��\�','Aruba'),
('vM֮O腪\��\0@�','Australie'),
('\\ϻ��AA���\�7w~�N','Autriche'),
('��2�K�GH�yٚ𰨇','Azerbaïdjan'),
('|ǰ~\�E��\�w\Z\�4\�','Bahamas'),
('\"og-\��H��\"*�:\�R\�','Bahreïn'),
('\0\05\�1@��\��2HW�\�','Bangladesh'),
('\\�\�g\�*B8�|jȖE\�','Barbade'),
(':��\�fE�\�\��\�\�','Bélarus'),
('\�s\�=�dH��*�\0\�~�\�','Belgique'),
('<��BPD��\�\�\�\��h','Belize'),
('	M#\�Di��-�C�\�g','Bénin'),
('�/V&<WB��\�o\�v�0','Bermudes'),
('\r`j\�h�@L�KyYE��','Bhoutan'),
('��p�Gi��Oգ','Bolivie'),
('�c�\��E��\�\�H\"�','Bosnie-Herzégovine'),
('��?D�\�MǕ.\�m��@\�','Botswana'),
('\�M,*PEm���\��\�\�\�','Brésil'),
('�P�R|�Mm�\�HC\�$��','Brunéi Darussalam'),
('k;ر\�L\�W\����','Bulgarie'),
('Hb\� �oJ�����\�m\�\�','Burkina Faso'),
('�&h��K��GI~���	','Burundi'),
('�\�S�EIظA׾>','Cambodge'),
('�z�yO\�K��\�\�X��x','Cameroun'),
('zVo\�\�[E٢�[,!�N�','Canada'),
('�Q\�\�9�F+�s\�ծ�\�','Cap-vert'),
('B*� H\�<ߜ]8�','Chili'),
('���Z\�\�F[�\�-�S��\�','Chine'),
('�c\�ǌ@˥��G>','Chypre'),
('֗\�\�\�G\\�H�\�	~Tl','Colombie'),
('\�dw�D���\�ɖ,W\Z','Comores'),
('��JF�\�g�_�Q','Costa Rica'),
('\�\�\�`O	�#�47�\�|','Côte d\'Ivoire'),
('2m��\�Mn� !N�\�','Croatie'),
('\Z��\�:*EG�)dR�BK','Cuba'),
('ǉ\��\�D��\��T2�','Danemark'),
('��2Y\��@.��\n���','Djibouti'),
('$\��J���8\�.M','Dominique'),
('�����Fs�q�\�c\�','Égypte'),
(':�V�4ZL\Z�\�\��݁�','El Salvador'),
('���\�\�\�A���mw��Dw','Émirats Arabes Unis'),
('GՑQ	\nO3�F\Z\�\�,b�','Équateur'),
('\�n�\�\�F3�fþv','Érythrée'),
('>]/��\�M��\'\�\�X','Espagne'),
('h�\�wzK[��9S\�j\�','Estonie'),
('�ɯx�LƬ>l��΁','États Fédérés de Micronésie'),
('\��EA%�\0\r�OS�','États-Unis'),
('r	\�9\�\�O}�0\�F\\˅','Éthiopie'),
('��ę�\�G`�\��<,��','Fédération de Russie'),
('\�\"kzG�B$.)\Z','Fidji'),
('m/E\�<�G�\�}�\�3','Finlande'),
('|D\�\�CI�����g\��','France'),
('s@\�zxB��t\�ս��','Gabon'),
('\�n%���N��|T4u�','Gambie'),
('�m5��G���\�M\�Ǹ','Géorgie'),
('�\���\�B˥�-\�\�o�','Géorgie du Sud et les Îles Sandwich du Sud'),
('��KJ�|H\'�ۧ\�ROo','Ghana'),
('X	`Q�F\��qop/�\�','Gibraltar'),
('\�E\�\�eAX�u\� I\�\�','Grèce'),
('5�J˕\�h%͑','Grenade'),
('\'1l�v�O\�q*\�Tz\�5','Groenland'),
('�i�$ܶIJ�\�NӒ���','Guadeloupe'),
('V�^\�\�DO��\'\�0,ֻ]','Guam'),
('I��&\�\�Ng�\��g\�\�=','Guatemala'),
('�\�N,KyF���eఏ\\�','Guinée'),
('#\�\�\�E��&FaC!\�\�','Guinée Équatoriale'),
('���%Cܵr4\�~)\�m','Guinée-Bissau'),
('W\�\�\�ME1�\�f�	�.�','Guyana'),
('s\��uMĄ\'\��.84','Guyane Française'),
('cUHB\�B�)L��\�\�\�','Haïti'),
('\��\�}N��p�\�<\r\�','Honduras'),
('\� �\�E��o�㠦�\�','Hong-Kong'),
('\n\�nkSCw���6��B\�','Hongrie'),
('L��\�L��\�\�C��\�','Île Bouvet'),
('��令fF���?λU\�','Île Christmas'),
('!�q(uG\��J26\�','Île de Man'),
('Տ�ɔbE��X%rՈ�','Île Norfolk'),
('�+\�߼\�N\�H�jL-��','Îles (malvinas) Falkland'),
('}e�h�A\�1�0\�I�','Îles Åland'),
('z:�\�{K�?\��⋮','Îles Caïmanes'),
('{UN\�A0�e��\�\'�','Îles Cocos (Keeling)'),
('?��\�\�J����iq�','Îles Cook'),
('\�!\�\�޶H��j�)��','Îles Féroé'),
(' �+)K�OP�grȤ1�}','Îles Heard et Mcdonald'),
('_�\�5��IN�-)\�\�\�%:','Îles Mariannes du Nord'),
('������D��iL�A\�r\�','Îles Marshall'),
('\�\�$\�F�\�Q��t\�','Îles Mineures Éloignées des États-Unis'),
(',\�)؇\�H��Qm��\�@','Îles Salomon'),
('���\�B��\�+\�q\�ݣ','Îles Turks et Caïques'),
('{�\�TV.E��RBUD\��','Îles Vierges Britanniques'),
('�\�5@(�\�iiZ!\�','Îles Vierges des États-Unis'),
('\�26\�d�F����PإNu','Inde'),
('�\��\�JǷں�@��','Indonésie'),
('MI��z�C��y\�4z\�\�','Iraq'),
(' >S\�G�}�Q\\Z0y','Irlande'),
('߄Fkc	Hj���\�\���m','Islande'),
('{�cvG:��\\�3�o�','Israël'),
('K^Y�M\�I3�TEpr�7�','Italie'),
('t�\�\�aJ\�\�f\�\�PS','Jamahiriya Arabe Libyenne'),
('\�I�\Z\Z�B)��\�_�\�:','Jamaïque'),
(']�c`C�MO�O\�\�Do�}','Japon'),
('\�k[��J��m��	\�\�p','Jordanie'),
('6\�s�\�\�M��\�:Į\��_','Kazakhstan'),
('\��Ϗ�LO\�;ga*[�\�','Kenya'),
('\��n!Kܞk�:@\�','Kirghizistan'),
('��|\�GW�^�\�@W�','Kiribati'),
('4�2�J|�� ��T�','Koweït'),
('p\r%3@P�4ʴ\�\� .','L\'ex-République Yougoslave de Macédoine'),
('�Pnx�Dμ\'\�\�ۡ\�','Lesotho'),
('_G\�\�Nf�S�\\t�Q�','Lettonie'),
('\�\re�\�|E�\\/\nT�','Liban'),
('>�\�3�EA�񙶷Y�v','Libéria'),
('���)ˋL\�!��\�\�\n�','Liechtenstein'),
('*���\��O��1IW�_\�p','Lituanie'),
('\�\�A�QL=�Gcy�\Z�\�','Luxembourg'),
('$�\�aё@��\�MZ AI*','Macao'),
('/��b\�L>�\�\�B��/','Madagascar'),
('\�\�\�5B�@��v<�j\�7','Malaisie'),
('�:sC����,�\'�','Malawi'),
('\�\�ٺ�M\�k>k\"�','Maldives'),
('�֭1\�F\�\��\�:�\�','Mali'),
('\�3�N�@���\�\��|Y','Malte'),
('\�G\�T1H>����;ֵ','Maroc'),
('\�\�\�\�N<�j�\�̆0','Martinique'),
('T�\�9JoC���\�FL�M\�','Maurice'),
('\�VyD�\�LN�j\'�C(�>','Mauritanie'),
('s<+O\�\�I9���\�>~','Mayotte'),
('b�\�X�\�G\n�!\�x�.\�\�','Mexique'),
('�+,Pu`G���s��2','Monaco'),
('E��v]TJ¬!�\�\�\��','Mongolie'),
('B\�e�\�EВPi��l�','Montserrat'),
('B	F&�LE\�soG��Z','Mozambique'),
('?\���\�K	�\�\��A� ','Myanmar'),
('h�-\�Q�H\���|auh','Namibie'),
('\�\�t3a\�J��ť>\��\�','Nauru'),
('\�\�,�YH��\��\0\�','Népal'),
('Dh\�^D)�\�r��\'�?','Nicaragua'),
('\�s\�kjM\'��Xv\�N\�\�','Niger'),
('��U|\�\�H\��\�\���M\�\0','Nigéria'),
('�?��\'NѱA�i\r�=','Niué'),
('?j�?BB�r5�\�~[H','Norvège'),
('�b:�H\�O\Z��\"����','Nouvelle-Calédonie'),
('8N��CfA=�+\"Xg�\�.','Nouvelle-Zélande'),
('с\�҃2B���X\�W\�\n','Oman'),
('c��s[@@��8\�\�>\�z','Ouganda'),
('�\�7\�H��s�<�\�','Ouzbékistan'),
('�\�+h�I)�\�f\�B�F�','Pakistan'),
('\�\�OO\n>Iv�5�ԝ���','Palaos'),
('\�i\��@I�i�\�\�\�','Panama'),
('�2\�u\�vE͚:ciז(','Papouasie-Nouvelle-Guinée'),
('�8n�I��\� �%\�\�','Paraguay'),
('nP�d|\�I��\�$\��\\','Pays-Bas'),
('�A�\�\�M\0Jb��\�','Pérou'),
(' \�V\r�Nۥ�C��\�9','Philippines'),
('\0�=p!�D�\�\�&\Z�','Pitcairn'),
('E�\�CuF����\�Gk)','Pologne'),
('co\��H5��x���','Polynésie Française'),
('�=\�ZD\Z�$�=N��','Porto Rico'),
('�UA�dpLn�����\�\�','Portugal'),
('\�\"�C\�C��\�k���}','Qatar'),
('U]BΆ�BҼ^&m�FZ(','République Arabe Syrienne'),
('5@\n�\�.@ȤZ&���B\�','République Centrafricaine'),
('\rz\�>5Kv��,7\"\�\�','République de Corée'),
('��\�zB݈\�	�','République de Moldova'),
('\�hK�YJC\r��갲�Y�','République Démocratique du Congo'),
('8\��>Kē\�m;& ','République Démocratique Populaire Lao'),
('\�C,6\�\�C\�\�\�~\�C�2','République Dominicaine'),
('q\�	`N\�*Ig\�f��','République du Congo'),
('Y�Wr�OȃD&&Qk��','République Islamique d\'Iran'),
('%\�iDuKN�F��L\�\�','République Populaire Démocratique de Corée'),
('�\�W5��N2�\�\�Z��\�','République Tchèque'),
('�q\���Fi���\�rٗ','République-Unie de Tanzanie'),
('S�8���J!�cZ\�\�4','Réunion'),
('�Ĩ\�\�OBҢB\�jf\�	','Roumanie'),
('��ȏ\�k@ו�؎/�]','Royaume-Uni'),
('\0-\�&�K.��\�g~�','Rwanda'),
('Ѷ\�k�E�z47CF\�','Sahara Occidental'),
('\�\n4\�\�.G��	\�\�\�\�\�','Saint-Kitts-et-Nevis'),
('��\�8GF\��AD��/\�.','Saint-Marin'),
('דoh7\�@��\�%6V ','Saint-Pierre-et-Miquelon'),
('\�7Z�?@���)G˺\�','Saint-Siège (état de la Cité du Vatican)'),
('�\�\�\�JK������b�','Saint-Vincent-et-les Grenadines'),
('\�V2VDׇ\�Y\�\��','Sainte-Hélène'),
('j%\\\�hMl��؆�e�t','Sainte-Lucie'),
('\�\���\ZC\0�ɅEo�D�','Samoa'),
('� \�\��J\n�m\�\�\�','Samoa Américaines'),
('\�aca�D-�}!��\�\0�','Sao Tomé-et-Principe'),
('�\�\Z:/F��W\�M�S\�','Sénégal'),
('{\�\r\�\�!K �� \���D','Serbie-et-Monténégro'),
('Y\�O.�\�K\���i�d�5�','Seychelles'),
('\\��PTF*�\�\�\�g��','Sierra Leone'),
('�o~S�@����g\�','Singapour'),
('�{� o�B��W\�=x#','Slovaquie'),
('\�\�k@G���-<2\�N','Slovénie'),
('\�-w�q\�Aw��	�\�^PP','Somalie'),
('�3�q\�C��%�\�\�&\�z','Soudan'),
('.��\�t\�@m�*�\�,q','Sri Lanka'),
('�upcQC��\�\�Ł/\�','Suède'),
('ʏ�|�8Mԩ<*\�B�zI','Suisse'),
('�Z��DP�\�\�2t,\�','Suriname'),
('�n����K~�1���2h','Svalbard etÎle Jan Mayen'),
('e\�\\\�]@J�~��Tֆ','Swaziland'),
('=,9\�\�8LD�I=�\�4\�','Tadjikistan'),
('\�E\�F�\�G?�=\�:\�c','Taïwan'),
('\���D@�AɉΝ�\�c�Z','Tchad'),
('F\�\�NRG��d0�^\�\�P','Terres Australes Françaises'),
('4�U\�D�\�\�x\�e','Territoire Britannique de l\'Océan Indien'),
('�)�ع�LF��ۤ�R\�','Territoire Palestinien Occupé'),
('\�G.6e�@��\�\�:\�\�\�','Thaïlande'),
('����Q]M��*Xض��','Timor-Leste'),
('L#\�]vJ�\�\�_Px�\�','Togo'),
('u&\�BMfKѬ\�HtU�\�','Tokelau'),
('k���\��O_�4mr\�\�\�z','Tonga'),
('5\�	��SH���cQ4\�p','Trinité-et-Tobago'),
('M�\ra/CѴ�\�\�','Tunisie'),
('g�L�k�Nȹ��wg\�\�','Turkménistan'),
('\\P/��D��\�V�Ts#Y','Turquie'),
('\�@^�\�QHh�\r�z�a�L','Tuvalu'),
('�C�G��)�_p�\�','Ukraine'),
('}��\�J��\�\'K�aP','Uruguay'),
('\�Y\�\�\�ON�\�\�g^Q�','Vanuatu'),
('�>y\�\�O꒒\�U\�\��','Venezuela'),
('ebO\0&�M~�\��8D','Viet Nam'),
(',\�6\��M\�ҧ0\�?NJ','Wallis et Futuna'),
('u̌;L*�gY�\�\�','Yémen'),
('\�JO\�Y\�F!�خ�8/m0','Zambie'),
('�x>O��+��\�\�y','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-18 10:33:28',4),
('DoctrineMigrations\\Version20240201152951','2024-11-18 10:33:28',1),
('DoctrineMigrations\\Version20240202084749','2024-11-18 10:33:28',1),
('DoctrineMigrations\\Version20240202150901','2024-11-18 10:33:28',1),
('DoctrineMigrations\\Version20240207105701','2024-11-18 10:33:28',3),
('DoctrineMigrations\\Version20240319212437','2024-11-18 10:33:28',2),
('DoctrineMigrations\\Version20240614133504','2024-11-18 10:33:28',10),
('DoctrineMigrations\\Version20240617165906','2024-11-18 10:33:28',7),
('DoctrineMigrations\\Version20240708061729','2024-11-18 10:33:28',9),
('DoctrineMigrations\\Version20240801202153','2024-11-18 10:33:28',2),
('DoctrineMigrations\\Version20240815153823','2024-11-18 10:33:28',2),
('DoctrineMigrations\\Version20240916065051','2024-11-18 10:33:28',4),
('DoctrineMigrations\\Version20240929091802','2024-11-18 10:33:28',12),
('DoctrineMigrations\\Version20241002164506','2024-11-18 10:33:28',6);
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
  `target_id` binary(16) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link` longtext NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-18 10:33:29');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `id` binary(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
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
  `id` binary(16) NOT NULL,
  `owner_id` binary(16) DEFAULT NULL,
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`participants`)),
  `bottle_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
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
('.�l5��Ln�I�y\�\�7','�d\�9�F���\�\���','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]','Domaine Leflaive Montrachet Grand Cru 2016'),
('�J<�_�Fx�\�\�q���\"','�d\�9�F���\�\���','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]','Château Latour 2010');
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

-- Dump completed on 2024-11-18 10:33:30

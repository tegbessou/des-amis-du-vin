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
('��bG��\�\�C��(�','Afghanistan'),
('\��U�D\�I杚�����','Afrique du Sud'),
('Zy\��F��h7R\Z~ ','Albanie'),
('\�н*�Fa�\�\�Ω��','Algérie'),
('z\��\\�B��\n�\�|�','Allemagne'),
('6>�\\\\&EűoX�]�\�','Andorre'),
('\�a1�LI�\�\�H�g','Angola'),
('`\�j�lK��\�{�\\�\�','Anguilla'),
('U\�oCF@i�D[N��\\','Antarctique'),
('\��\�I��`�\��\�','Antigua-et-Barbuda'),
('\��\�Ʒ\�M��Y�.\�ד','Antilles Néerlandaises'),
('\�5\�sa�I(�*\�%��\�','Arabie Saoudite'),
('\�\n\�\�J}�iC\��\'\�\�','Argentine'),
('A��\\��F[�zI�\�9�','Arménie'),
('�3�NM\�C>�z\�C\n��','Aruba'),
('��f}Kƕ��\��j','Australie'),
('���z�O��R��q7','Autriche'),
('LI��\�@ʥ\�h\�Ч','Azerbaïdjan'),
('\�\�$i�F[�C{$V�\�','Bahamas'),
('m�\�\�\�Nߍ�C�<�K','Bahreïn'),
('{�-[\�B\�\�d)s�k','Bangladesh'),
('\�\��m.\�Gc�TA\��j�','Barbade'),
('z���\�F4��K�@{\��','Bélarus'),
('\"\�\�*Y\�C,��\�}\�r>','Belgique'),
('R�&t@j�P\�I��E','Belize'),
('�\�\�J\�E��\�\�M�\�\�','Bénin'),
('ʪ��C�Ea����?','Bermudes'),
('s�qEP@=�	I\�u?','Bhoutan'),
('\�J���\�K��\�\�Ŋ�#','Bolivie'),
('p\�Or�F��\��@\�#','Bosnie-Herzégovine'),
('F\��8�~M%�I�\�\�\�G','Botswana'),
('@^~	�\nI<��{��\�','Brésil'),
('-:LO5]OG�\�\�D\���\�','Brunéi Darussalam'),
('\�D�\�8$G��v�\�p\�L�','Bulgarie'),
('<\�\�\�EG��j�У �#','Burkina Faso'),
('/��Qr)H\�,fFw\�q�','Burundi'),
('\�9�	QM���g!YQ_','Cambodge'),
('�U\�\�!FC�6+�n.P�','Cameroun'),
('_j\�/��D���,_�\�Q','Canada'),
('1uU�\�?A<�UV�<t\�','Cap-vert'),
('\Z� VC�`��\�B�','Chili'),
('�\�{�E\�C}�\�}\�#Ԑ','Chine'),
('��\no;�C\�`$tKJ\�Z','Chypre'),
('�\�P?�qL\�\�\�t	\n\�','Colombie'),
('�e;pBE�̙TX\r','Comores'),
('!��DX�\�A���\�K','Costa Rica'),
('\�\�\�5O\������\�o','Côte d\'Ivoire'),
('\�MD\0\�aN�K\�\�C�r','Croatie'),
('�\�β\�D��j\�+e\�d','Cuba'),
('XK�X.O\��\�\��L\n\�','Danemark'),
('��g\�dL@�yv�Rޜ','Djibouti'),
('���#FO`��<\�כ�T','Dominique'),
('�..\�JH\����\�\�* \�','Égypte'),
('�tq7QOE��`=�\�<','El Salvador'),
('�vi B0�(\�h���','Émirats Arabes Unis'),
('.s7*T*CN�︿\�\�I\�','Équateur'),
('��T\�B���C;\�$~','Érythrée'),
('�z�M�\�\�\�5','Espagne'),
('M\�S�\'B\�2}X-u\�','Estonie'),
('L��UйJ�=\�T\�ʱ','États Fédérés de Micronésie'),
('py\�\�~J��\�vs?\�','États-Unis'),
('6o��2C��X��[\�\�0','Éthiopie'),
('|��h\\L��>C\�-�','Fédération de Russie'),
('@�6\�JK	��\\\�ZH�\�','Fidji'),
('!,$�F$�\�S�:�','Finlande'),
('�v\�\�ANG�H\�|x�','France'),
('�\�[\�@K�\'-�O\�M','Gabon'),
('����fJ��\�\�\�+','Gambie'),
('�\�YL\�FH���P�/|','Géorgie'),
('r�U\�ƪIة�I*�;\�8','Géorgie du Sud et les Îles Sandwich du Sud'),
('W\�\�ʝB5�VO\�<�','Ghana'),
('H-H�\�JV��\�<>�R\�','Gibraltar'),
('[.E�\�1I(���\�\�\�','Grèce'),
('�%5t�>GӨ1\�\�=��\�','Grenade'),
('GUn\�PVF�Y�]0E','Groenland'),
('�;j�I)�\"�v\�i','Guadeloupe'),
('\�]�$q�LH��Ґ]og\�','Guam'),
('I�γ\�M��.׊9\�','Guatemala'),
('D�%�%�M��#\�kO\�','Guinée'),
('c\"�\�OY�\�g�$~','Guinée Équatoriale'),
('ō����I箟�ʡb','Guinée-Bissau'),
('WW�MF4�\�\�!_','Guyana'),
('\�<�B�Ji����\�\�\�','Guyane Française'),
('g\Z\�zBD��\�\�&�s','Haïti'),
('\�H\�\�ĆDC�⏷L*','Honduras'),
('\�$CՓ\�OĿF�mC��\�','Hong-Kong'),
('�;:\�ٹM��\�e\�\�f9','Hongrie'),
('�U@�\�JC<����\�G','Île Bouvet'),
('{�\�nH!�^,#\�/\�','Île Christmas'),
('8\�NݯO�\"whĤ\�O','Île de Man'),
('h��T��D\n�\�q_\�\��\r','Île Norfolk'),
('\�!�\��E҅�b�^\n\�','Îles (malvinas) Falkland'),
('k\0�\�A��ӏ*솫\�','Îles Åland'),
('b�%�\�\�N:�\�sXZHO','Îles Caïmanes'),
('(30\�\0RCL��Z\�тeO','Îles Cocos (Keeling)'),
('E\"2)�M��L\�ǘ�_','Îles Cook'),
('��F6�a`xx\�q','Îles Féroé'),
('V\�rn�M��7b(��z~','Îles Heard et Mcdonald'),
('!�x\�}F7�0E�\�FL','Îles Mariannes du Nord'),
('O05D�J��\�g\��*P','Îles Marshall'),
('g�g\�yK~�;\�i\�ڴ�','Îles Mineures Éloignées des États-Unis'),
('\�{\�\�\�C\n��\�\�jJ','Îles Salomon'),
('蹙 o�C%�WX$t\�q','Îles Turks et Caïques'),
('\��\�Wk9A��/��;�]','Îles Vierges Britanniques'),
('\��FnZ�@�H\�n�X{','Îles Vierges des États-Unis'),
('\�\�\�\'\�Nɀ�CG8�Y','Inde'),
('\��1\�EEȞu�A<\�Sl','Indonésie'),
('\�L\�ۂ�H>��Y\r��','Iraq'),
('eH�YKL�\�H\�OR�','Irlande'),
('9(�B\�K	�\�Ro��\�','Islande'),
('2��E��\���\�!\�\�','Israël'),
('\�\�I�@a��\�(_3�','Italie'),
('$�ҵH]F#� �$9}\��','Jamahiriya Arabe Libyenne'),
(' \�F�a�O��#G\\n��\�','Jamaïque'),
('�\���F@����<��','Japon'),
('/��#0�A\��E�.6','Jordanie'),
('�$lP\"G��>�\�B�M','Kazakhstan'),
('\�\�\�1+O|�R��߶�','Kenya'),
('�\���@ؔZq\\�H�\�','Kirghizistan'),
('���!$�E����<��P�','Kiribati'),
('e\�2\�x3IŬ��WႠ','Koweït'),
('2�xŠ�Hя}c�\��','L\'ex-République Yougoslave de Macédoine'),
('¯�{��E̞\�c\n]�','Lesotho'),
('\�p\�EM�EI���\�Wg=','Lettonie'),
('Z|d@N��\�U�b\��','Liban'),
('yL{[<�D�IX+�h\0$','Libéria'),
('�}\\�ՐK��E\�\�xS\�','Liechtenstein'),
('tz��\�N��u�����','Lituanie'),
('�\��;�pO��\�P.\���!','Luxembourg'),
('\�+*)\�~Do�yi���','Macao'),
('do8�\�\\GK�ɶ��B\�\�','Madagascar'),
('\���6H���\�ͫ\�i','Malaisie'),
('~\�|\��L$�^�\�\��d','Malawi'),
('~C�c\n&@\�����&]�Z','Maldives'),
('8L\0�L��,q���','Mali'),
('�.}��L�G�ŲY�','Malte'),
('�q\�v�J�ɖ�ʔv�','Maroc'),
('\�z\�\�3HK�<�\�I� ','Martinique'),
('�纪\�E�iN0\�V#\�','Maurice'),
('\Z\�Foj�C��p@\�\�$\��','Mauritanie'),
('գl�~lA��x�\�W�k','Mayotte'),
('ir�`DC�i��VSգ','Mexique'),
('k@\n\�\�A�\�w\�\�V�','Monaco'),
('\�r���\�Gǿxh*�ˀ','Mongolie'),
('F��`\�A��xx\�r\�??','Montserrat'),
('��=��I\��[G\�U�','Mozambique'),
('\0,+��N׻��\�\03Av','Myanmar'),
('��P��wBԳr*��n�','Namibie'),
('�_�\�9>Aòn\�k��\Z�','Nauru'),
('�����L��\n�:�j�','Népal'),
('�\�7�\�B��\ZB�\nAI','Nicaragua'),
('�7�\�ډAȢ|�|�Z\�','Niger'),
('X��\�jA\�dc�\�ޥ�','Nigéria'),
('�\�zD!rF|��\�;A�i','Niué'),
('\���5\�@Eφ\�\�\�\�U\�I','Norvège'),
('\�FK���Jm����ץB\�','Nouvelle-Calédonie'),
('/\�\�\�\�F��?�Sc\�s�','Nouvelle-Zélande'),
('v*98G\�C\�J\�\�Pb\n\'','Oman'),
('�\�\�\�:C�\�\�\�\�\�/','Ouganda'),
('�\�\�;w�D\�N\�S','Ouzbékistan'),
('�\�ٟ\�D{�<W1\�ձ','Pakistan'),
('\�\�?Z@i�\\X\�r\Z7|','Palaos'),
('Ҭ�\r\�O\��f�/��G[','Panama'),
('�8\�\�mLщ��0�\�%)','Papouasie-Nouvelle-Guinée'),
(';K~\�O�OU�}fSFr�','Paraguay'),
('k_dtE��r?;�\�=�','Pays-Bas'),
('\�wԁ\�KC��M\�\�.m','Pérou'),
('\�㴭��B^�Z\�D�Վ ','Philippines'),
('4��*MCتt\�D*\�\n','Pitcairn'),
('��t�!C����L�A77','Pologne'),
('��\�8�O4�@�?\�E\��','Polynésie Française'),
('M\�ӐU�M퐄\�Ɲ2n2','Porto Rico'),
('A�I��D��:x\\j\�\�','Portugal'),
('\�\�\�)J䷄�h�	��','Qatar'),
('��9K\�D��\�L�\�\�\��','République Arabe Syrienne'),
('\�z��_C.��\�c�\���','République Centrafricaine'),
('\�.\�DF�q\�YK{�S','République de Corée'),
('ZE�䖦D9�s-����d','République de Moldova'),
('�\�\�?ɓC���ańo?\�','République Démocratique du Congo'),
('-%��N�@m�T�+��q','République Démocratique Populaire Lao'),
('z\�p-g�N\�P\�\�a-U','République Dominicaine'),
('\n\�B\"5�Bi�D\�K\�\��\�','République du Congo'),
('�3�Jb@\��\�]\�I','République Islamique d\'Iran'),
('���X�@K�z\�氣])','République Populaire Démocratique de Corée'),
('T\�Z\��L��k�~\�\�A','République Tchèque'),
('\�L�,\�C0��\Z\�i��x','République-Unie de Tanzanie'),
('��̛�O!�b�����','Réunion'),
('�1\�\�\�\�E��<\�߄r\�V','Roumanie'),
('\�369�\�Bɘ \Z\�\�r','Royaume-Uni'),
('\��\�L����x]�','Rwanda'),
('���ĹC	�³i5܈%','Sahara Occidental'),
('6�Ğl\�HC�;\�\rD��R','Saint-Kitts-et-Nevis'),
('Ձ\�!<\�@��e\'\�N\�\�','Saint-Marin'),
('untGAY�C�x��\�\�','Saint-Pierre-et-Miquelon'),
('�\�Jt1\�IL�ႷPZ��','Saint-Siège (état de la Cité du Vatican)'),
('����#~FN�4��\�4','Saint-Vincent-et-les Grenadines'),
('9l\�>�BN�X��\ZD\�','Sainte-Hélène'),
('�\�a��FL�B���<X�','Sainte-Lucie'),
('�y\�\�g2A(��Y��\�	','Samoa'),
('�\�uw_M��\�\�<h̝','Samoa Américaines'),
('�7D�\��Jy�\�\�T�\��','Sao Tomé-et-Principe'),
('�f�v;CA��\�\�\�|5','Sénégal'),
('c*�4\�J��袺L\�S�','Serbie-et-Monténégro'),
('V\0D��ALt��\�!�\�0','Seychelles'),
('l�9[\�K7�ADx�','Sierra Leone'),
('��o�\�\�J-�\�%ӗ�z','Singapour'),
('&,�G\�F-�[\����','Slovaquie'),
('G�t�A��\��û�\n','Slovénie'),
('SAǜ\�F늤\�I�x\�','Somalie'),
('�\�-�IH��A\�W��6�','Soudan'),
('\�S��Li��:�We','Sri Lanka'),
('(·�E�L���ү(`\�d','Suède'),
('z\��\�Kr�\�)$&\Z\�%','Suisse'),
('B=�\�j;@��m��\�(','Suriname'),
('��\\r�L6�-S�M�\�','Svalbard etÎle Jan Mayen'),
('\�~�\�\�FK=�\��\�\'�\�\�','Swaziland'),
(' S�Fb^FӍ���\�#','Tadjikistan'),
('\'\�DS\\\�O��o\�\�#\�\�\�','Taïwan'),
('��z�~QGۛ5ՁpH(','Tchad'),
('k�s*\�eBG��\Z=���\�','Terres Australes Françaises'),
('��f�׸O��-Fy�BM','Territoire Britannique de l\'Océan Indien'),
('\��\�\�BE\�B�\�pt\n','Territoire Palestinien Occupé'),
('h\�}6H��!\��ѳ','Thaïlande'),
(';i0\�:A��\�\��flJ','Timor-Leste'),
('\�Oi�РJH�\n�鮎\�','Togo'),
('V\�;G\��\��lݶ�','Tokelau'),
('|w��%�L���:r/3�','Tonga'),
('�)^;@�@\�\�&�\�[!\�','Trinité-et-Tobago'),
('e�\���B��ׇ<�f�1','Tunisie'),
('e#\0\�LD���\�\��\�\�9','Turkménistan'),
('\Z\�\�\�@��\�0)c\�E�','Turquie'),
('�\��\�G?�&\�&\�tl�','Tuvalu'),
('�\nX�v\�C\�ˮ����\�','Ukraine'),
('�@ygS\�D��¶���u','Uruguay'),
('\�/\�\�\�E��~$>���','Vanuatu'),
('ʼ��\�UL\�$�y(�! ','Venezuela'),
('�]�\�@`�&���}p','Viet Nam'),
('\�Z\����Cj�\"+W�\�\�','Wallis et Futuna'),
('\�W7���BC�\��5\n��','Yémen'),
('\�Q�V�@#�+�\�s\�C�','Zambie'),
('\�{˘^�G��jʋ\�\��','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-22 16:40:45',2),
('DoctrineMigrations\\Version20240201152951','2024-11-22 16:40:45',1),
('DoctrineMigrations\\Version20240202084749','2024-11-22 16:40:45',3),
('DoctrineMigrations\\Version20240202150901','2024-11-22 16:40:45',2),
('DoctrineMigrations\\Version20240207105701','2024-11-22 16:40:45',4),
('DoctrineMigrations\\Version20240319212437','2024-11-22 16:40:45',2),
('DoctrineMigrations\\Version20240614133504','2024-11-22 16:40:45',10),
('DoctrineMigrations\\Version20240617165906','2024-11-22 16:40:45',8),
('DoctrineMigrations\\Version20240708061729','2024-11-22 16:40:45',14),
('DoctrineMigrations\\Version20240801202153','2024-11-22 16:40:45',3),
('DoctrineMigrations\\Version20240815153823','2024-11-22 16:40:45',2),
('DoctrineMigrations\\Version20240916065051','2024-11-22 16:40:45',4),
('DoctrineMigrations\\Version20240929091802','2024-11-22 16:40:45',11),
('DoctrineMigrations\\Version20241002164506','2024-11-22 16:40:45',7),
('DoctrineMigrations\\Version20241119144432','2024-11-22 16:40:45',11);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-22 16:40:46','root@gmail.com');
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

-- Dump completed on 2024-11-22 16:40:47

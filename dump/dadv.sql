/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-17',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-17',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-17',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-17',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-17',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-17',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-17',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-17',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-17',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-17',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-17',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-17',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-17',NULL);
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
('�����@߃�6k\�L�','Afghanistan'),
('�>B���D���\�r�\�v','Afrique du Sud'),
('\�\�	\��K��uY�','Albanie'),
('f\�\�)�[LJ�PKP�u�','Algérie'),
('x�h�M/�G��\���\�','Allemagne'),
('@\�R\�@���O\�IN)\�','Andorre'),
('��\�9O\�:r��	\\','Angola'),
('\�_\�*�Mإ1\�n#~��','Anguilla'),
('E\�P���MÂ)!��!','Antarctique'),
('��vm�BO�AN�:I�\�','Antigua-et-Barbuda'),
('�\��@�lNȿ%\��nQY\�','Antilles Néerlandaises'),
('6\�a?YH��G�\�\�\r�\�','Arabie Saoudite'),
('a~!\�X�I��eJ�u[�H','Argentine'),
('%1ʘ;GZ�%�!�F','Arménie'),
('A&5\�RN��\�\�R�','Aruba'),
('˓\�\�\�\�L���9�\�\Z�','Australie'),
('\�(Y`�\�C�\��\�(��n','Autriche'),
('Q�u\�\'F\'�m\�L\�G','Azerbaïdjan'),
('y�\�I\�Db�Jr�\�\�o','Bahamas'),
('�ys�\�JN�g�\�\�','Bahreïn'),
('\�w�nJ7�/\�\\�}\�','Bangladesh'),
(' 	E Ov�\"5�^�\�`','Barbade'),
('U�+B��������\�','Bélarus'),
('�\�hH\�\0g�{\�','Belgique'),
('\���M��ƴK;\�','Belize'),
('V�]lTEH�\�Q�L\�?#','Bénin'),
('8\�<@&\'K���ה\n\�{O','Bermudes'),
('\�Xy�\�H1��\�\�wm�','Bhoutan'),
('i�oV�IN����\Z?','Bolivie'),
('��\�\�@\rKވ�� qN\�','Bosnie-Herzégovine'),
('�\�*!BwN��\��^\��L','Botswana'),
('�\�nHn�\��դm�\�','Brésil'),
(']�ߨ1\�OR�<=�d�\�','Brunéi Darussalam'),
('Qe�OD/��\���\'Dw','Bulgarie'),
('\��@�3@E4�\�`�A8','Burkina Faso'),
('4/e��K�Xbds���','Burundi'),
('��\�H�\�H��*�V�u','Cambodge'),
('\��%\�\�JЧ\Z\�\�4\�Z','Cameroun'),
('N\�77��@���^(	\�\�','Canada'),
('@��tZJc�\�\��G�\�','Cap-vert'),
('0Ԋ�\�\�G��-��Ҥ6','Chili'),
('a�k\�n@��,�\�\�<','Chine'),
('�dD\�J�� jO�\0 ','Chypre'),
('47o/O���j����O','Colombie'),
('�nj\�\��J[�u�c\�I\�','Comores'),
('J:\�@�)Dϴ3L���J','Costa Rica'),
('ѼhBB	�E \�e\�D','Côte d\'Ivoire'),
('\�\�Y��\�D=�P|Q9�\�','Croatie'),
(')�9\�g^O��\�Vk��s\�','Cuba'),
('�[դ��E޿g��#�+�','Danemark'),
('\�\�g\�\�I��P	�`�|I','Djibouti'),
('F\Z��դE��|\� ��?','Dominique'),
('�l��?D�%i\�O\�;','Égypte'),
('�$�pY�B����\�Z9�','El Salvador'),
('\�${���JO�JBI\��s','Émirats Arabes Unis'),
('Qn�\�H#NY��|i%\Zk','Équateur'),
('�Zq\ZxD��9Ĺ\�X\�y','Érythrée'),
('\��\0�Q�K���p\'�\�E','Espagne'),
('ٖYV\�\�Ns�\�;yLV.�','Estonie'),
('Sc�كO@Ι�)-\�\�:','États Fédérés de Micronésie'),
('ȹ���vD\�~2e08','États-Unis'),
('\�uNM��Fx���5���d','Éthiopie'),
('�\��S\0Nl�\�\��C��','Fédération de Russie'),
('w\�v�k2E\Z�\�#��f\nc','Fidji'),
('P6\��VJs�̨F\�K\�\�','Finlande'),
('\�\�hYC��CӉ_\�?','France'),
('\�\�\�\�D\��r\�Wx��','Gabon'),
('�\�9]H�\�м\�ą','Gambie'),
('M�\��D��iScV�\�','Géorgie'),
('\��a�,J\�qe\�I%x\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('�\�&\��F��\�V�;��j','Ghana'),
('�����C��q�6E� _','Gibraltar'),
('ǲ\�s�\Z@��N�\�[c^','Grèce'),
('\Z|�\�J\�Q���\�\�','Grenade'),
('r�J\�\�I\��\�ޢ]͂M','Groenland'),
('\��\�@3�m\�ڡ�!','Guadeloupe'),
('��DU�\�K{�\�\�\Z�*\��','Guam'),
('<۱\�\\MO���wf��*�','Guatemala'),
('�C1�\��FљK�\�\�l�4','Guinée'),
('S\�\��G�����7\�','Guinée Équatoriale'),
('��7\r�D{��E�\��\�','Guinée-Bissau'),
('\�xuCg[O¤�m�\�9\�|','Guyana'),
('����E\�J7�\�c���','Guyane Française'),
('\�>\�\�IS�\�3,�Z\�','Haïti'),
('\'���SD��1��\�\�','Honduras'),
('�\�\�\�KNO��ګ\�\�\�','Hong-Kong'),
('���H\�PC\�-$�\�\�W','Hongrie'),
('\�\�}�\�D��\�\�\�\�\�c','Île Bouvet'),
('a⾷1�Iς�����s)','Île Christmas'),
('��o�\�\�@�P�Rj!0,','Île de Man'),
('\�<)��\�I��k\�\�\\:{<','Île Norfolk'),
('ٴF\�G��Y겚��)','Îles (malvinas) Falkland'),
('|\�gI-�Kf�\�ޕ\�ʐ�','Îles Åland'),
('�DU\�o�KN�(\�$','Îles Caïmanes'),
('e.h:\�@�!\"\�\�\�L','Îles Cocos (Keeling)'),
('\�L\n{ bL2���N=\Z','Îles Cook'),
('��x\��yM\�+Q�bCk\0','Îles Féroé'),
('2`\�A!C-�7\�\\kYO','Îles Heard et Mcdonald'),
('F\�H�^F��\\B�ew�\�','Îles Mariannes du Nord'),
('h�C!TH�d�E�t�\�','Îles Marshall'),
(';9\��\�Gu�;ʄ����','Îles Mineures Éloignées des États-Unis'),
('\�R�L9L}�T�xx+','Îles Salomon'),
('Ɔ�ic\�MO��\�\r\' \�~','Îles Turks et Caïques'),
('\�\�\�P9\�M���\�j5��','Îles Vierges Britanniques'),
('\�:^�\"�J4���V��y#','Îles Vierges des États-Unis'),
('��UG�F��\�\��/�{v','Inde'),
('\�\�M4w\�O~���l0=u\�','Indonésie'),
('��?\�IHl�\�\��S�','Iraq'),
('�����I��.M/\�ș9','Irlande'),
('\�JG`\�IL�#3ތ>�U','Islande'),
('\�O�[K}�d(	[:','Israël'),
('�z��\�M��m]3�','Italie'),
('\�<\�ZO\��\�WDSDS','Jamahiriya Arabe Libyenne'),
(':�\�\�\'F���6�\�:�(','Jamaïque'),
('\�OP�u�A��\\��<�','Japon'),
('�\�+\�)C��U�@���\�','Jordanie'),
('s�\�\��H���N�b6+\�','Kazakhstan'),
('w�\���F��\�c$k','Kenya'),
('ަ\��L������\�\�','Kirghizistan'),
('B�,�TADN�\�\�\�Z6\�','Kiribati'),
('�\�N�K\�\�!���8u','Koweït'),
('Z!^x\�jD5�w\�S|f','L\'ex-République Yougoslave de Macédoine'),
(']�\�T�\�H=�8!�U$\n	','Lesotho'),
('�}F\�@\�F\�Z�Ő\�uf','Lettonie'),
('~��\\�A�\�,J�G+','Liban'),
('4(�\�\�\�N��T:bO};','Libéria'),
('}�S�\�-N=��`\��7m','Liechtenstein'),
('\�-y�\�B\r��\0�<�3E','Lituanie'),
('\�T�\rfIQ�\�;��d{\n','Luxembourg'),
('\r`��F��I��Iͮ','Macao'),
('�)	lP\r@��y\�\��L\�','Madagascar'),
('5r7l\�sK���\�W1(\�','Malaisie'),
('��7ϑ\�O��\�\�u\�9','Malawi'),
('@\�\�\�\�\�L��\�d�\Z\�R9','Maldives'),
('\�\�c}0�G��R\�2�c','Mali'),
('\�~Lh�ǷX�*','Malte'),
('�$$(�A��9D�?�\�\�','Maroc'),
('F\"\�ZBl��`\\�\�*�','Martinique'),
('�?r)\�ML�\�`?\�\"b�','Maurice'),
('u\�a8K �2�\���?','Mauritanie'),
('�qΜn\�I�=o��\�\�_','Mayotte'),
('_Y\�3�A��@B\��\Z�\\','Mexique'),
('�ؼ\�@nD��\�y\�\�\�A','Monaco'),
('\"����JD��Ǉ��\�@','Mongolie'),
('\�\��_F�\����_J','Montserrat'),
('\�,\0y#M���\�\�\�?','Mozambique'),
('\r\�Sv<\�O�\�a��8_j','Myanmar'),
('�{&rfOe�+��t-\�','Namibie'),
('\�\���C����f�\"j','Nauru'),
('F\"�\�\"\�LO�5Wl\\p��','Népal'),
('r\�\'�\rML���p\�','Nicaragua'),
('j6���D��Z\�G�p[','Niger'),
('qp2	�=A��Iq⸂�','Nigéria'),
('d\�\�p�D���\�\���','Niué'),
('��\�\�!AA5��&\�⟑','Norvège'),
('�9���\�L �!\�>#�\�','Nouvelle-Calédonie'),
('�s���3A���fjc^','Nouvelle-Zélande'),
('�\�n\'��F3�4\�\�Ң�^','Oman'),
('�̳Y,UDf�!CP��\�\�','Ouganda'),
('	en\�o(K9�[|�P\�m','Ouzbékistan'),
('	0�1�\�B��Q����','Pakistan'),
('\�\��K\�JH�ŧĐl�','Palaos'),
('�M�KI�\��\�F\�\�','Panama'),
('r`�8J���Z]+d{','Papouasie-Nouvelle-Guinée'),
('j\�\�\�\\K��]�\�\��CK','Paraguay'),
('\�GHy�G\"�\�$��R','Pays-Bas'),
('�-Mr�B ��}\�B\��6','Pérou'),
('8�\�uNT����)&��','Philippines'),
('�\�\��2�M��\r1��i�a','Pitcairn'),
('��6\��IJ1��یJ\�\�','Pologne'),
('�\�\�_�L{�\�Ma��','Polynésie Française'),
('�bU�\�H7�\�\�,\��w','Porto Rico'),
('��X\�[�A���\�!\nY�','Portugal'),
('\�\�d�|Nr���pF\�^','Qatar'),
('\���M\�\�B����>�\�','République Arabe Syrienne'),
('b\��2E\r�J	O\�\�\n','République Centrafricaine'),
('c�E\�H����G6)','République de Corée'),
('\�\��\�F��m\�e\�~��','République de Moldova'),
('�p��N�KR�9G����G','République Démocratique du Congo'),
('�\�d���@���ڰ�\�\�','République Démocratique Populaire Lao'),
('ةM^G\�K���\�','République Dominicaine'),
('ɓ\�!TB����4Q\�;k','République du Congo'),
('B�@\�0RK��\�\�e\�','République Islamique d\'Iran'),
('\�\�D$\�0O�3\��\�]}\�','République Populaire Démocratique de Corée'),
('Xg刭�M��\�\�4\�','République Tchèque'),
('\�n{<	�H1�rY\"~�K','République-Unie de Tanzanie'),
('�\�AdC�J	�1\�jH�','Réunion'),
('ċ�\��C*�&\�\�\�?_','Roumanie'),
('zY%\rM|�d*s\�̓','Royaume-Uni'),
('�\r@yB�H͙z�*N\�	c','Rwanda'),
('��M�d�CG�_y\�\��','Sahara Occidental'),
('}���d�Fl�\�|{Ua�','Saint-Kitts-et-Nevis'),
('a��W\�I\����8EaN','Saint-Marin'),
('�!ޫ\�H��b\��\�m�','Saint-Pierre-et-Miquelon'),
('�?�;\�\�B��Y�/>$�','Saint-Siège (état de la Cité du Vatican)'),
('�\�\�W��DҜ�\�\�e�\0','Saint-Vincent-et-les Grenadines'),
('�P��G�ݵg�+_f','Sainte-Hélène'),
('n�#L�#πi\"�p','Sainte-Lucie'),
(';�<��J\Z�\�<�;�\�','Samoa'),
('\r�Ҩ�#E]�\�M�[Y','Samoa Américaines'),
('��=���F��yKC8J*f','Sao Tomé-et-Principe'),
('�	A9{OM��M�\�\�Q�','Sénégal'),
('Ѐ�\�YL��\�\�\��\�','Serbie-et-Monténégro'),
('\��^؄�B�\��\��W\�5','Seychelles'),
('Н!z�qK�\�gu\�','Sierra Leone'),
('\�C\�ME�?R�G�s','Singapour'),
('U��{P�O�\�&\�4�i)','Slovaquie'),
('f\�r\�Ek�l�>���h','Slovénie'),
('3�\n!�E�w-�\�\�','Somalie'),
('g�&�\�\�D���\�\�0\�','Soudan'),
('j�|�\�J���j��','Sri Lanka'),
('�\�\�\�EB�i\�N4','Suède'),
('����BB����\��\�G','Suisse'),
('\�t\��O���$\�o�a','Suriname'),
('�E���J�?\�o��\�\�','Svalbard etÎle Jan Mayen'),
('��%\�wJ\���F\�Ntd�','Swaziland'),
(']��i�\�N��3q\��\�','Tadjikistan'),
('\�<\0\��DĢ\�ы\�\�E�','Taïwan'),
('�l\�[�?D��q4���x�','Tchad'),
('I�O7&M\�\Z֫\�n�e','Terres Australes Françaises'),
('nЉ\�H&�i\\�\�=�','Territoire Britannique de l\'Océan Indien'),
('\�,\�B\ZA��p�(*aě','Territoire Palestinien Occupé'),
('\�-��\�\�K��X�4\�믇','Thaïlande'),
('�kuW�YA���\'�g;�\�','Timor-Leste'),
('r\�`H\�-}*���\0','Togo'),
('\�\�\�ÈG����u[s�','Tokelau'),
(', ��\�N��w\�e\�Tf\�','Tonga'),
('\�\�v|\�E���\�D\�L\�','Trinité-et-Tobago'),
('�\�\�AW�k N25','Tunisie'),
('U�|]\�L��\�B�\��N$','Turkménistan'),
('\�w��ڢKː��EX�	�','Turquie'),
('\\Hj�9J{�� X�q�','Tuvalu'),
('-@�=N+IҚ,~?p_\�','Ukraine'),
('�;V�EO���G*8\�\�','Uruguay'),
('�h\�P�[Oã%^i�L�','Vanuatu'),
('\�d\�\�n�I����qKwk\�','Venezuela'),
('�@\�\�$F΢L��<�>','Viet Nam'),
('/�\�7�N5��\�Ζa��','Wallis et Futuna'),
('\����@h���Ͻ\�\�','Yémen'),
('\�\���6E����I�\��','Zambie'),
('��\\\�\�<A\�s~�5H�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-17 20:18:31',3),
('DoctrineMigrations\\Version20240201152951','2024-11-17 20:18:31',1),
('DoctrineMigrations\\Version20240202084749','2024-11-17 20:18:31',3),
('DoctrineMigrations\\Version20240202150901','2024-11-17 20:18:31',2),
('DoctrineMigrations\\Version20240207105701','2024-11-17 20:18:31',2),
('DoctrineMigrations\\Version20240319212437','2024-11-17 20:18:31',2),
('DoctrineMigrations\\Version20240614133504','2024-11-17 20:18:31',8),
('DoctrineMigrations\\Version20240617165906','2024-11-17 20:18:31',6),
('DoctrineMigrations\\Version20240708061729','2024-11-17 20:18:31',9),
('DoctrineMigrations\\Version20240801202153','2024-11-17 20:18:31',3),
('DoctrineMigrations\\Version20240815153823','2024-11-17 20:18:31',2),
('DoctrineMigrations\\Version20240916065051','2024-11-17 20:18:31',4),
('DoctrineMigrations\\Version20240929091802','2024-11-17 20:18:31',13),
('DoctrineMigrations\\Version20241002164506','2024-11-17 20:18:31',7);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-17 20:18:32');
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

-- Dump completed on 2024-11-17 20:18:33

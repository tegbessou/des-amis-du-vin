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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-07-14',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-07-14',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-07-14',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-07-14',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-07-14',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-07-14',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-07-14',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-07-14',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-07-14',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-07-14',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-07-14',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-07-14',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-07-14',NULL);
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
('s�>�\�B_�\�\�@s�','Afghanistan'),
('\r\�H\� ;Np�\�\�Ji\�3\�','Afrique du Sud'),
('C�\�\�I��%��\r)','Albanie'),
('�c���\"L���z�<0','Algérie'),
('s��	M���J�zՉ�','Allemagne'),
('ֲ��\"iD����zO\�\�','Andorre'),
('\�u��\��I\��!$2�\�','Angola'),
('	$�G����\0�\�\�(','Anguilla'),
(' %\��CҢ�+�\�\�`','Antarctique'),
('8E���IAb�\"\�P�c\�7','Antigua-et-Barbuda'),
('K\�v\�\�DQ��\�\�yN/','Antilles Néerlandaises'),
('��MS��^�V1P\�','Arabie Saoudite'),
('\�\�à\�B$�r2\�m�m','Argentine'),
('\��\\}ZJ��9]ke\0T\�','Arménie'),
('�&�z\�O��qy�2�tx','Aruba'),
('\�j�\�GCG��\�\�1s�','Australie'),
('�ۓ\�2nAɖ�ټ�E\�','Autriche'),
('�xVL�Fh�U���=5','Azerbaïdjan'),
('�b\�\�gM��jZ?\\\n','Bahamas'),
('p]�m>qDߊ�U\�����','Bahreïn'),
('f��3�yE\�\ZZG\Z��','Bangladesh'),
('v���E��/��y?\�','Barbade'),
('\�����F�_����','Bélarus'),
('\�<N@��U �̃�^','Belgique'),
('\�j��\�G���\��g��%','Belize'),
('�\��mdM(���\��W2\�','Bénin'),
('�Fͺ\�B��U?/Ժ:\�','Bermudes'),
('&\�PC\�|E\r��Z9�\�','Bhoutan'),
('lr)\�H$A��1��y�','Bolivie'),
('�\�Ju\nO\�Y+ sA\�','Bosnie-Herzégovine'),
('0\\Y��\�J�5�\�\Z��','Botswana'),
('|�\��JV�\�\�w<(','Brésil'),
('\�k\�E��.շ��','Brunéi Darussalam'),
('\�W�\�\�qEW��ȀI�\n','Bulgarie'),
('J@\�\�Mp��ʑa��','Burkina Faso'),
('yG\�\�L\"N��=��� 7E','Burundi'),
('\�\�dl�5Ea�\r�*\�\�a','Cambodge'),
('Gv\�q\�G\��\�\�S�%��','Cameroun'),
('t\�}\�N�R p�\�','Canada'),
('�\�L?�\�HЊ��\�G��','Cap-vert'),
('v�\��W\�O]�����A�8','Chili'),
('D\n\�,\�\�B���3,\�\��6','Chine'),
('Bp�\�+H$�\�\�t\'\�\�','Chypre'),
('��\�pGk�\�3\�#��','Colombie'),
('T9�~�gE��AO\�^�+\�','Comores'),
('�h\0!;IE\�\�\�e8�','Costa Rica'),
('r�\�\�ɰCc������|','Côte d\'Ivoire'),
('?Њ\�KU�@G�\n\"	','Croatie'),
('��[�mT@礼�LRp','Cuba'),
('\�\�.U�wB֝�&g{w\�','Danemark'),
('\Z\�[fMJܦ�V\�E\0Gk','Djibouti'),
('	,\�?L�N��rݜU\�oh','Dominique'),
('�\�\�FY�\�Qh9�\�','Égypte'),
('\�{Ŋ �D��Y\�=X��','El Salvador'),
('t#ЉHd�\� [\\[_\�','Émirats Arabes Unis'),
('\�k\�]�G��Ӣ�#xu','Équateur'),
('\�\�d2P\�N�� ��\�[�','Érythrée'),
('�\�`�\�\�Cʦ\�\�轣>�','Espagne'),
('&�\ng1O����V\�6\�\�','Estonie'),
('b�\�\�\�L����\�\�+\�N','États Fédérés de Micronésie'),
('��i\�`�Ir�dL� \0m�','États-Unis'),
('W\�\�IJ��I\�\�ݴ','Éthiopie'),
('3\�V�J\'�:җOAQ\�','Fédération de Russie'),
('�A]]\�B^���1\�k�','Fidji'),
('h�\�\�,F\�\'\�/\�','Finlande'),
('��-6\�Gl�K�\�}�','France'),
('T;\'U7\�K5�\"�\Z�\�12','Gabon'),
('HR`\�׷@}�7b��\�R�','Gambie'),
('4L�l\�\�M����T�,5','Géorgie'),
('lh<(JێX&B�\��\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('orI(\�H?�g��,�','Ghana'),
('2j�t�GÄu\�8ۇ�','Gibraltar'),
('\n\�L�o}I��bn�%X�8','Grèce'),
('e�x�jC��\�\�?\n','Grenade'),
(' �X?�G�!\�CJ6uq','Groenland'),
('ݸ\�K�@#�FF[�@\�t','Guadeloupe'),
('R\07��J��KC\�c|\�','Guam'),
('ޓ�ݑ�J*�w�Zh�','Guatemala'),
('jL�\�y\0Jۊ\�9~=\�l','Guinée'),
('�}\Z;OAF\'�s|\�9=5z','Guinée Équatoriale'),
('r&RF�\�O�\�:64��6','Guinée-Bissau'),
(' ǰ�\�M�|\�Ya�','Guyana'),
('5�xGB\�A��7B�$\�\�','Guyane Française'),
('\�9T�%Dd�k�#��\�','Haïti'),
(']��vI��2\�6\�n\�Q','Honduras'),
('+\\\��JA��\�ߣw\�?','Hong-Kong'),
('1H\�K\n�G2��%SWj�(','Hongrie'),
('\�\�㎨O�\�u�\�\�','Île Bouvet'),
('~e��\�E*��\�t`\�\Z','Île Christmas'),
('\�\�\�\�G\�H\�?/��2U�','Île de Man'),
('�\�a\"\�E�p\�\�f\�','Île Norfolk'),
('$O��CB��B�\'\�\�','Îles (malvinas) Falkland'),
('�x\�\�V�H-��\�]�~n\�','Îles Åland'),
('�q�\'�N��5\�(}','Îles Caïmanes'),
('\�\�\�\� I�m���\�\�','Îles Cocos (Keeling)'),
('�\�\�\�QH��6-\�\"\�','Îles Cook'),
('�\�L\�lsKʇ\�&^\�ʹ/','Îles Féroé'),
(',��oW�N�n%�\�4�c','Îles Heard et Mcdonald'),
('4d9xG��\�v=D\"u','Îles Mariannes du Nord'),
('���G\�\�svEܒ\'','Îles Marshall'),
('0�x\�HK׫\r��M?\�','Îles Mineures Éloignées des États-Unis'),
('ʥZLM��zppTel','Îles Salomon'),
('�\�0��FB�?4��\�\�','Îles Turks et Caïques'),
('?\�\���WOҔO-�x[T','Îles Vierges Britanniques'),
('�\�i-��N늰Q9�\�\�S','Îles Vierges des États-Unis'),
('U[le+\�Fo�]~\�\�A','Inde'),
('\�e\��Mg�˺�n}RM','Indonésie'),
('\�:�3�Bߪ1r�<\�\�','Iraq'),
('\r^\����G߽\�qXq�\�3','Irlande'),
('��\�iWG����\�N�','Islande'),
('�CҁK@\��\�n\�oX�8','Israël'),
('\�3��\�J���x\�\�\�','Italie'),
('\'hg,ŨL&�w���pD#','Jamahiriya Arabe Libyenne'),
('\�\�&q�@\�(\�47��+','Jamaïque'),
('I\�ꢸ,N�\��7{�','Japon'),
(']\�\�o N8�\�fD\� �d','Jordanie'),
('���$ZoB_�\�|mu*','Kazakhstan'),
('l�g���I9�$�\�p�Z','Kenya'),
('\�$�EF#��Zv�#�','Kirghizistan'),
('\�,�o\��I��M\�Ni�@','Kiribati'),
('�	\�m��F��\��(�f\�','Koweït'),
('m�nb6\'L���F\�Rx\�','L\'ex-République Yougoslave de Macédoine'),
('��\�/\�FD�;�@\�a','Lesotho'),
('r\���A��I��=','Lettonie'),
('�g#���M��\�Ғ�','Liban'),
('\����\�E��GzI˦o6','Libéria'),
('\�k�o\�B��\�\��(|�','Liechtenstein'),
('vRI>�x@\�uqI�춓','Lituanie'),
('��\�հA͠ݽ\�\�','Luxembourg'),
('�V�M=\rLl���s���','Macao'),
('\�3J��G��W\�\�`\�r','Madagascar'),
('\�Q\�\�аBƨ[��\Z��','Malaisie'),
('�p�\�\�\�NJ�Z\�nd\�m�','Malawi'),
('H���I�[\�i\�\�E\�','Maldives'),
('\�^���C��IJzԄ\'','Mali'),
('5\�o��4Lͪ\\kҼ3�','Malte'),
('\�9{�\�HՀ9\�W_�\�c','Maroc'),
('9\0QäD��o�vk\�	L','Martinique'),
('\�\nsNaD�\��J`��','Maurice'),
('�a�Jr�]U��2\�N','Mauritanie'),
('v:\�\��\�L�\�g\�?E_','Mayotte'),
('\�0?XB\�DΚ+�x����','Mexique'),
('N\�sN����,�^\�','Monaco'),
('s�X�;�L\\�ޯ\�\�at','Mongolie'),
('�\�\�&D��(:����','Montserrat'),
('��\Z�|I*��A�ϳ�\0','Mozambique'),
('\�cb��A����w�S','Myanmar'),
('\�L3<\ZC̣xw�4�N','Namibie'),
('C��\�\\�LS�5\����','Nauru'),
('\�U<�e\\F�x+�!H','Népal'),
('���P\�@�T\'�\�','Nicaragua'),
('�Z\�Q%+J\�\�\�=iZ','Niger'),
('���F1|H�0�s$\�F','Nigéria'),
('�\��f�A��@�;���','Niué'),
('?�/\�yHں\��F7\�\�','Norvège'),
('��x?rN\�\�$@?Zp','Nouvelle-Calédonie'),
('��p%Lג�a�_\r\"\�','Nouvelle-Zélande'),
('@�Z�k\�B塉Y,z�','Oman'),
('�O�#�G��D@\�\�\�\�','Ouganda'),
('��5�JEY�\�\�`�c\�','Ouzbékistan'),
('2\0�ƎO\�൴JY�x','Pakistan'),
('�F���A\�Mr1�c','Palaos'),
('�,»dHI�z\�%_��a','Panama'),
('rF�\�pN)�|�V�wp\�','Papouasie-Nouvelle-Guinée'),
('\�o��X�K(�u0n���0','Paraguay'),
('\�d}M��`�jH','Pays-Bas'),
('�o]��\�O���9\��2�T','Pérou'),
('I\�\�\"\�F��-\�o�\�B','Philippines'),
('�\���M��3d\�ʯ�','Pitcairn'),
('\��\�LJB�\�\�%\�\�\�','Pologne'),
('D\�\�KL����\�Ō+Q','Polynésie Française'),
('��[&�D˄\�\�6�\�t','Porto Rico'),
('�#���E��\�\�ҧ�9','Portugal'),
('C�I>mE\Z�C>P\�k\n\\','Qatar'),
('y\�U,>\�J޸���\n4\�','République Arabe Syrienne'),
('ew��P�H\'�\�&��!\�*','République Centrafricaine'),
('!��F\0Et�\�qF�2\�','République de Corée'),
('\�q1�MU�k:u����','République de Moldova'),
('Ϯu�\�O\��\nG\�@','République Démocratique du Congo'),
('8*�\�\�A~�Sj�\�be\�','République Démocratique Populaire Lao'),
('��\�s5@��O�\���','République Dominicaine'),
('\�0\�A\�N�E!N\\ce\�','République du Congo'),
('[t\"\0W\�BH��|�$ye','République Islamique d\'Iran'),
('w\�`<\�FH��\�\0�\�\�v\�','République Populaire Démocratique de Corée'),
('l�$�vB�[��\0R','République Tchèque'),
('�\�\�\��G3�38\rVj\�(','République-Unie de Tanzanie'),
('(�}\'e\�@��OMx$8\�','Réunion'),
('0�LeD柏\�\\W��','Roumanie'),
('9����D�4KW�\�@T','Royaume-Uni'),
('�K\�\��K�\�\�\�s��','Rwanda'),
('\�ӂ�I\ZBҐ�\�\�Y1','Sahara Occidental'),
('����1I|�\�Lta��X','Saint-Kitts-et-Nevis'),
('\��;��\�@O�:^��$V\�','Saint-Marin'),
('�9�t(Ha�(�\�\rl��','Saint-Pierre-et-Miquelon'),
('q�3/2MA����<H���','Saint-Siège (état de la Cité du Vatican)'),
('\�j\�\�\�OF\'�l2�ܒV','Saint-Vincent-et-les Grenadines'),
('�Du\��K����\�06\n','Sainte-Hélène'),
('�\�^e�$M��\�z_)*0','Sainte-Lucie'),
('\�l�	�wE_�~�\�AnX','Samoa'),
('a�A3�G\�$ĥ���','Samoa Américaines'),
('|�\"\�aFK����	a\�','Sao Tomé-et-Principe'),
('!�[��Fޘ�u\�~C','Sénégal'),
('D$PUx\�C�z\�\�H�\�h','Serbie-et-Monténégro'),
('\�\��Ł@��+\�1��\�','Seychelles'),
('0\�l�\�kA\���\'2�\�','Sierra Leone'),
('\�1?\�\�\�O�\�c/Q\��','Singapour'),
('�����M���Y\�\�5y','Slovaquie'),
('��\��jDLғ��g\�T\�\�','Slovénie'),
('\��ݢM\�݁9[�yU','Somalie'),
('^\�JQ~K���%�6\�r�','Soudan'),
('#�\�Jv�F踬%g5�\�\�','Sri Lanka'),
('��h�\'DG�c\r\�>\r|','Suède'),
('\�x�t�\�A��ן�\�m<3','Suisse'),
('\�˻�\'K@b���`)<#','Suriname'),
('r\�\�\��[Az��\�\�K6jQ','Svalbard etÎle Jan Mayen'),
('}\�rK\�@P�qD\�\�\n','Swaziland'),
('�\�JO\�D;�O!	�û','Tadjikistan'),
('C\�.�r�Hc��\�{�݌','Taïwan'),
('\�\�\�,hI��@\�\�$>','Tchad'),
('i�;�[I%�&�Wa\'C','Terres Australes Françaises'),
('\\�\�\nO\�z����','Territoire Britannique de l\'Océan Indien'),
('&�\�\�LL��$�6\�Z','Territoire Palestinien Occupé'),
('\�\�&�_N��\��ŀ\'�','Thaïlande'),
(' \\>8\�G������+','Timor-Leste'),
('\��\�\��E\�N\���r','Togo'),
('P��[N��=�;�!OA','Tokelau'),
('��\�~\"<E��|ЍIN�]','Tonga'),
('ASgn�N�o��ĔT','Trinité-et-Tobago'),
('�\�;�\��F��\�Y�sr\�','Tunisie'),
('��\��vM&�*\�ms�L�','Turkménistan'),
('�#?��}Cb�\���u�m\�','Turquie'),
('\�.uSIqF標M$���\�','Tuvalu'),
('I֮L�K�&� ��F\�','Ukraine'),
('��\�\�\�F�����c!��','Uruguay'),
('C6@�\�G��DM�Cǥ�','Vanuatu'),
('\���(\�\�K��F��p�\�','Venezuela'),
('{�t\�y\�H���Q2O�q{','Viet Nam'),
('\0\�󶰉Nؑh*oc\�!','Wallis et Futuna'),
('\�7�G���?W^\��','Yémen'),
('\�\\\�NB��tm\r�\�','Zambie'),
('κ\�\�\�\rHL���\�\�!','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-07-14 19:38:52',4),
('DoctrineMigrations\\Version20240201152951','2024-07-14 19:38:52',1),
('DoctrineMigrations\\Version20240202084749','2024-07-14 19:38:52',3),
('DoctrineMigrations\\Version20240202150901','2024-07-14 19:38:52',2),
('DoctrineMigrations\\Version20240207105701','2024-07-14 19:38:52',4),
('DoctrineMigrations\\Version20240319212437','2024-07-14 19:38:52',2),
('DoctrineMigrations\\Version20240614133504','2024-07-14 19:38:52',11),
('DoctrineMigrations\\Version20240617165906','2024-07-14 19:38:52',9),
('DoctrineMigrations\\Version20240708061729','2024-07-14 19:38:52',11);
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
('.�l5��Ln�I�y\�\�7','�d\�9�F���\�\���','^��{�F\�\�\�v�\�\�_','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]'),
('�J<�_�Fx�\�\�q���\"','�d\�9�F���\�\���',')R1��\�N��7\�P\�','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]');
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

-- Dump completed on 2024-07-14 19:38:53

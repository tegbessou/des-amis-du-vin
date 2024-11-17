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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-14',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-14',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-14',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-14',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-14',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-14',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-14',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-14',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-14',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-14',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-14',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-14',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-14',NULL);
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
(' �\�\�Aї�\�/\���,','Afghanistan'),
('no\�<̲D���r?�\�','Afrique du Sud'),
('P\':��Cע�%\�Q\�\�','Albanie'),
('QT9��\�H!�ނ�e#�\�','Algérie'),
('�1\�\�Af��3�!~','Allemagne'),
('\��>O\�m\�Y\�\�S�','Andorre'),
('\�Cq>L���<��','Angola'),
('\�5\�\��M\�:$��\�o','Anguilla'),
(']\�Ey���)4','Antarctique'),
('�V�VN�B\�\��?�G~\�','Antigua-et-Barbuda'),
('��4\�\�#NհTR\Z\�\�\�','Antilles Néerlandaises'),
('\\��y@n�\�,wYvW�','Arabie Saoudite'),
('�\��F�����@ɥ','Argentine'),
(' nE�?Ja����c�u3','Arménie'),
('�,5ŶgJ���\��\�','Aruba'),
('\���a�%M�\0�\�XR\�','Australie'),
('\�|\�r\ZHm��`�a�\\','Autriche'),
('spS?;\�O\��i\�G�','Azerbaïdjan'),
('���M��D��ŝ��','Bahamas'),
('뮊�RJG��0\��E+','Bahreïn'),
('M5!Ec\�J\�Nz5n�','Bangladesh'),
('y_���A\"�3[E���c','Barbade'),
('XK��G~���\� �v','Bélarus'),
('�9nDI\�J\�yqU���','Belgique'),
('\�x�@ݎG��҃\�q�[','Belize'),
('�\�\�sނF�����]��','Bénin'),
('�\�xL\0�L��	��\�\��','Bermudes'),
('\��J�GJ�\'jt`WQR','Bhoutan'),
('>��2I\�$#���L\�','Bolivie'),
('\�rP�$mF��$lp\�2z','Bosnie-Herzégovine'),
('�+\�\Z`�G �=	\�{�\�','Botswana'),
('eWg=YUM\�DB\�UE�)','Brésil'),
('q\�\�*6He���\�	\�','Brunéi Darussalam'),
('\�K�ksG��w�\��qj','Bulgarie'),
('kU����K��\ruсჳ','Burkina Faso'),
('\0\�3O�D��{D�HX\�','Burundi'),
('�Z�Eg�l}�*\�,','Cambodge'),
('��/��4H}�\��\�A=\�','Cameroun'),
('�\�\r*.Ii�\��\�\�\�','Canada'),
('\�\�gCd��,�߅˲','Cap-vert'),
('`;s\�aM#�^\�=�F��','Chili'),
('B��GiE�\�Z:\n\�\�','Chine'),
('����J�N$�e6b�z/u','Chypre'),
('[4Z	\�LD�;�7��\�','Colombie'),
('�xm$B0�q\�t��\�','Comores'),
('1-RT�F.�fv���:^','Costa Rica'),
('&�4\��\�M\�wː\�l\�','Côte d\'Ivoire'),
('�\�hJ&�\Z`1}��.','Croatie'),
('�Pa�\�\�N����7&~n','Cuba'),
('3g�d\�\ZJ\�ř\��$','Danemark'),
('�$30\�:Ic�뛬�\�','Djibouti'),
('�\\ݍecHҌ\�\�\�[� �','Dominique'),
('f�_��A �\�\�+\�K*2','Égypte'),
('\'�\�o\0ZAc�<9+I@�\�','El Salvador'),
('��7�>�F���z�ۜ��','Émirats Arabes Unis'),
('DM#jZ\rN���A�M�','Équateur'),
('-�A�2C��\���ǜ�','Érythrée'),
('�\�N\�5A��\�����','Espagne'),
('3���\�A�7��\�尀','Estonie'),
('\��dj\�J��J�w\�\�F]','États Fédérés de Micronésie'),
('E\��\�.�C��,\\\�\�D�','États-Unis'),
('�����\�I]�]\���ř','Éthiopie'),
('�\0�î@M6��\�\�\�~�','Fédération de Russie'),
('�>�\�W\�Jy�̑�\�','Fidji'),
('\"Ct�\�\�Lt��\�T\�\�\�','Finlande'),
('$�9�\�qK�d\�b=\Zn','France'),
('E��\�K�W+L�	','Gabon'),
('(\�N=�O����\�\�\�\�P','Gambie'),
('}㌡\�@��X�2y\�h','Géorgie'),
('\�\�ywIw�WX\�᎚�','Géorgie du Sud et les Îles Sandwich du Sud'),
('\�\�e(\�3Ld�� ����','Ghana'),
('l���}�K�Bh�T\�\�','Gibraltar'),
('\�$j\�)!K\�H��w�\�\�','Grèce'),
('�z\�muGo�@\�Nl�+','Grenade'),
('oh=\�\��Jg��\nC\\�<\�','Groenland'),
('\�\"O�aM�M\�>\�=�','Guadeloupe'),
('H#�\�\�K����0\�','Guam'),
('�oc\�J�I\�XDG+	P�','Guatemala'),
('�\�\�o\�\�ME�1*\�+��\�','Guinée'),
('��3\�DM��d\�8ehߥ','Guinée Équatoriale'),
('����HT�\��J�','Guinée-Bissau'),
('�R=��L���A\�hXHg','Guyana'),
('�\�\�x\�AA��yo\�;D','Guyane Française'),
('�dχR K�x\�\�at\�\�','Haïti'),
('�<5�>C��+�\�\�9)','Honduras'),
('L(\nK\n@Ȱ�H0�@�\�','Hong-Kong'),
('p\�r0ӆC닄�\��','Hongrie'),
('�\'\�WxI&��p�\�k^\�','Île Bouvet'),
(']�M\�\�@\�G]\���+�','Île Christmas'),
('&/�\�|D߬\�\�\�1�','Île de Man'),
('�s�S��D;�\�\�E�P','Île Norfolk'),
('\�\�\�\�\0aHc�`/G0�ݺ','Îles (malvinas) Falkland'),
('��\�σG��4X,\�\�','Îles Åland'),
(';u�\�2@e�\�\��','Îles Caïmanes'),
('\r)��C\�Iڌ3^��Ҳ','Îles Cocos (Keeling)'),
('̅>1I�Og�\�3u0\�','Îles Cook'),
('�\'�e?YA�\�ۂ9M�\�','Îles Féroé'),
('\�ු\�HMx�ᇼ�N|�','Îles Heard et Mcdonald'),
('N��Ap\�Jǧ<�9:R','Îles Mariannes du Nord'),
('\�\��4\�DH٩\�u��\n/�','Îles Marshall'),
('\�\��\�\nE��F\�\�~o\�','Îles Mineures Éloignées des États-Unis'),
('\'��D	C��\�g���\�v','Îles Salomon'),
('\�\�\�\�@0�N\��{�v','Îles Turks et Caïques'),
('\\�\"\��A���nrn�','Îles Vierges Britanniques'),
('��U\�\�LW��Q\�Yl\�|','Îles Vierges des États-Unis'),
('Z��\�\�L8�\�\����d','Inde'),
('\�Q0|RIB�\��\�v�\�','Indonésie'),
('ê�A{�Hޣ*&t�S?0','Iraq'),
('�m�Wt�J��\�\�`�h\�\�','Irlande'),
('�\�*�ʷG��~.y6�','Islande'),
('T$4�\�K)�0��]n','Israël'),
('a9��X?JT�����j�j','Italie'),
('`\�\�`�M!�4\�\�e��','Jamahiriya Arabe Libyenne'),
('\�x\�+�E/�hO\�r','Jamaïque'),
('>�<eO3������3$','Japon'),
('\n¥Y@	�7}WԆ','Jordanie'),
('𱃦�\�@}�p�\��ꂒ','Kazakhstan'),
('��\�\�/D8�\�r��y�','Kenya'),
('����DAǯ��4��Z-','Kirghizistan'),
('!b\�\�QF)���P\�\�?\�','Kiribati'),
('�\�\�;\�F\�\�돦i\�','Koweït'),
('[&\Z^r�Mv�:\�\Z\�\�','L\'ex-République Yougoslave de Macédoine'),
('��y\�ZC��|?�\�\n�','Lesotho'),
('%�)�2!K��X�/S�J','Lettonie'),
('0�R:\�O\�늮	�sl','Liban'),
('N[g\�\"\�ON�\�}�a%\�','Libéria'),
('MкSx\rC��w��ta�','Liechtenstein'),
('�9�8�GT�5\�\�o\�\�','Lituanie'),
('�\�B��0Kц��P\'l\�','Luxembourg'),
('FZ�\�2IԦZ2\�Ϊf\�','Macao'),
('�ޚ\�K�B ���\�\�n�\�','Madagascar'),
('PS`KO\�O!�������W','Malaisie'),
('�n�\�eAN��k\�j�` V','Malawi'),
('\�P+A\�VI��mx$\�E','Maldives'),
('\�]\�\�\�>Dԉ,o�\�D��','Mali'),
('8�\�%lE֔\�\��x','Malte'),
('\�_�\�V!J��8�0\�)\�','Maroc'),
('�D\�\�jI�����k2','Martinique'),
('\�Š\�\�L�� 0���\r�','Maurice'),
('&0\�WJ��!Ԩ�3?_','Mauritanie'),
('U\Z\�~�B ��:`�\�8','Mayotte'),
('\�G[��O��L#\�^�\�','Mexique'),
('\�\�\��\�Jq���\�\�d�k','Monaco'),
('�;\�t�/F���m\�\��b','Mongolie'),
('L\�vcg�A.�\�R-�','Montserrat'),
('\�!\�S3�D5�\��\�s�','Mozambique'),
('\��E��Nw�m����\�\�','Myanmar'),
('�K\�p\�xL����3\�[��','Namibie'),
('\�r:�G���G\�0�','Nauru'),
('�/��1\�B\�\��%{�\�','Népal'),
('\�\r\�	z\�A)���a\�\�s\�','Nicaragua'),
('�%\�\�N�Iw�{H���߯','Niger'),
('%\�Y6\r�KN�Lۉd\�\��','Nigéria'),
('w��yH_G_��b`��\�\�','Niué'),
('\�8I�n\�LϗZj�S�\�\�','Norvège'),
('k\�]<M\r��\�Dυ\�p','Nouvelle-Calédonie'),
('?�\�\��yC\r�\�ZE��e','Nouvelle-Zélande'),
('�)fa\�O��̤\�գ/\�','Oman'),
(')\�vlBgOئJ�O����','Ouganda'),
('1\�C!�Fɸ�\�u\Z�\�','Ouzbékistan'),
('�3G\�Y%�F�W','Pakistan'),
('Wv\�\�G��s\�h)�W','Palaos'),
('\��,\�OF��뙝D]]V','Panama'),
('\��\�G���\�0)��','Papouasie-Nouvelle-Guinée'),
('*rm�\��@¼G,��\�1','Paraguay'),
('�>>/�\�F-�\�5b^\�','Pays-Bas'),
('���:\�I>�)]�\">��','Pérou'),
('\�^U\�-B�0\�p\�\�u','Philippines'),
('@Y\�\�uIp�Z I%\�E\�','Pitcairn'),
('\�B�%_N6�d����','Pologne'),
('Թ-u�Nh��w\�*h�!','Polynésie Française'),
('$Ia�\�L���Ue{k','Porto Rico'),
('7^W�VI\�*\��#','Portugal'),
('0�* Fֈ2�&�Xy','Qatar'),
('\�ɜKq\�N\��N��\�\�Ӥ','République Arabe Syrienne'),
('\�\�\�AA֍N\�\�\�\�','République Centrafricaine'),
('\��\�C�F��\�\n\�\�\�v','République de Corée'),
('!\��\�+#H���\���A{�','République de Moldova'),
('��I\�\"B���\��ޖ�e','République Démocratique du Congo'),
('\�=��@�GӻQ�j5�','République Démocratique Populaire Lao'),
('\�\�ze��HV�\�\�\�N�','République Dominicaine'),
('<W\�;\�KG�\�\\&�\�','République du Congo'),
('\�\�OĤI_����\�pQ\�','République Islamique d\'Iran'),
('\�o\"PS,L�`\��P��','République Populaire Démocratique de Corée'),
('�!��3{N��\��dz','République Tchèque'),
('�\�I8�PH��\�iU\��>\\','République-Unie de Tanzanie'),
('\�fs��G�S$G\�Mu','Réunion'),
('\�\n����O0�֔�?E\�0','Roumanie'),
('we`��A#�\r(\�\�\�','Royaume-Uni'),
('\�#7�ɶMփ�0��','Rwanda'),
('5NÙ\nK7�Rx����g','Sahara Occidental'),
('V\\{��5A&�ho��I��','Saint-Kitts-et-Nevis'),
('�t+{*�Im�8\�\�j@','Saint-Marin'),
('\�\�\",OMN�A]�ê�','Saint-Pierre-et-Miquelon'),
('&B&�x,N�\�Bs��\�#','Saint-Siège (état de la Cité du Vatican)'),
('V\�\�k\�Iɜe�\rMS*�','Saint-Vincent-et-les Grenadines'),
('4]\�\�[�C���T=��','Sainte-Hélène'),
('L�\�\�ϿH\\�z\�I�\�','Sainte-Lucie'),
('\�{�t\�G���p(�e�y','Samoa'),
('\�,�b\�D��\�yC\�\�U','Samoa Américaines'),
('\�x�\��YB��[Y��[r','Sao Tomé-et-Principe'),
('��m�c\�HV�`\�\�U�','Sénégal'),
('d�\�雐D\��C\�`(v','Serbie-et-Monténégro'),
('�/\�Q\�G\�(\��䮽','Seychelles'),
('�B\��Gd��\�+c\�d�','Sierra Leone'),
('k\�\�\�@\�L���\�m�`�','Singapour'),
('g��~�\�K��>�ol\�','Slovaquie'),
('&M�\�>Eu��g�Ȉw','Slovénie'),
('^��b_hH䓤�T*l�\�','Somalie'),
('\�P�\�\�DX�A\��i�\�\�','Soudan'),
('\�\��	y�Km�\�e>�\�{�','Sri Lanka'),
('�ծK\�	G�y�\�ɷ�[','Suède'),
('�(f\�\�G��\�E��\���','Suisse'),
('\�6\�CM5��\�T\��*','Suriname'),
('\�FSv��@_��K\�Am�\�','Svalbard etÎle Jan Mayen'),
('\�\�\�\�TLq�\�\�\�%l<L','Swaziland'),
('9A��\�\�EA�9\�eY�_�','Tadjikistan'),
('�v��GXAF�\���\\f','Taïwan'),
('9��mL��\�\�\�:�R','Tchad'),
('c��\�FM���h#gY�','Terres Australes Françaises'),
('�\�[>�O{��ų;\�3P','Territoire Britannique de l\'Océan Indien'),
('\�v�(\��Ot�Ed�z�\"','Territoire Palestinien Occupé'),
('�8\�\�H\�Jc���f<\�U�','Thaïlande'),
('{���\�vO��QbW \�\02','Timor-Leste'),
('*�`\���A�܀ET6\�4','Togo'),
('\���\�\�L�c���XI','Tokelau'),
('�\�\�[\rA��]�\�.���','Tonga'),
('��])\�J2�\�?h\�~�','Trinité-et-Tobago'),
('�>@_\�H��@�J6\�\�p','Tunisie'),
('z\�\�yX\�O-�ձ�0/','Turkménistan'),
('��k\�Dj��a�#\�0','Turquie'),
('#\�5!/OU�\�_b\�p�','Tuvalu'),
('%q��\�B\����\�\0�\�','Ukraine'),
('\�߁ỴKx�@/��HE\�','Uruguay'),
('�V��Q\�A@��X\"ؙ�','Vanuatu'),
('�7\�%Jٯ�M<Qϑ','Venezuela'),
('�I\�\�/O\��\0�&�Q0','Viet Nam'),
('\�\���SF�$	���`','Wallis et Futuna'),
('���؝�F��)b\0HG�E','Yémen'),
('>\���B煟C�:5q\�','Zambie'),
('m�\�\�H\'AТ6\Z\�r��%','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-14 19:50:39',3),
('DoctrineMigrations\\Version20240201152951','2024-11-14 19:50:39',2),
('DoctrineMigrations\\Version20240202084749','2024-11-14 19:50:39',2),
('DoctrineMigrations\\Version20240202150901','2024-11-14 19:50:39',1),
('DoctrineMigrations\\Version20240207105701','2024-11-14 19:50:39',4),
('DoctrineMigrations\\Version20240319212437','2024-11-14 19:50:39',2),
('DoctrineMigrations\\Version20240614133504','2024-11-14 19:50:39',10),
('DoctrineMigrations\\Version20240617165906','2024-11-14 19:50:39',9),
('DoctrineMigrations\\Version20240708061729','2024-11-14 19:50:39',13),
('DoctrineMigrations\\Version20240801202153','2024-11-14 19:50:39',2),
('DoctrineMigrations\\Version20240815153823','2024-11-14 19:50:39',2),
('DoctrineMigrations\\Version20240916065051','2024-11-14 19:50:39',3),
('DoctrineMigrations\\Version20240929091802','2024-11-14 19:50:39',12),
('DoctrineMigrations\\Version20241002164506','2024-11-14 19:50:39',7);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-14 19:50:39');
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

-- Dump completed on 2024-11-14 19:50:40

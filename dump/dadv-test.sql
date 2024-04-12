-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99,'2024-04-12',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99,'2024-04-12',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99,'2024-04-12',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99,'2024-04-12',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','\�o;ԈC����\�\nl','France',1599.99,'2024-04-12',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'\�o;ԈC����\�\nl','France',358.99,'2024-04-12',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99,'2024-04-12',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99,'2024-04-12',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','\�NE\�DԍB\�\�\�a�','United States',199.99,'2024-04-12',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99,'2024-04-12',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99,'2024-04-12',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99,'2024-04-12',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99,'2024-04-12',NULL);
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
('\��\�\�\�I{�6h+N�K�','Afghanistan'),
('�\�l\�H	�\�\����\�','Afrique du Sud'),
('�5\�DK\�KI��\�Z\"VF','Albanie'),
('\�\"~%�M��U�nk �\�','Algérie'),
('/\0Z!p�Fp�+�2�\�>�','Allemagne'),
(';vڋ-�H���\�o\�\�','Andorre'),
('\���@{���X/\�\�d','Angola'),
('\n\�\�omB2�o����\�','Anguilla'),
('Jzcu�@˜R�55\�\n\�','Antarctique'),
('��#z\Z�O���z\�\�\�n','Antigua-et-Barbuda'),
('{|\�p(Eŉ�{*\�\��','Antilles Néerlandaises'),
(',�\�;/@��F:`:�j','Arabie Saoudite'),
('gJ\Z\�F_��&\�\�','Argentine'),
('Y��b�F��\�_Z\�\�E','Arménie'),
('\�uA\�BK�\�%\�6\�','Aruba'),
('��yV+FY�屗+��I','Australie'),
('$א\\�C4�\�\�B%SV','Autriche'),
('m\�v�\�)A��W\�sI��1','Azerbaïdjan'),
('\�\�N�7\�CX�ES�','Bahamas'),
('J���\�tF7�\�\�Yd��\"','Bahreïn'),
('�Y,�I��\�q�w\�\�','Bangladesh'),
('�\"\�?\�Lܡ(`C\\b0{','Barbade'),
(',��\�>fA#��\�\ZX','Bélarus'),
('�Y]\��\�D��wKk]\�Z','Belgique'),
('\�C\n�?2HQ��^Ch��','Belize'),
('��$q\�A��_�#q���','Bénin'),
('N}l�c�OB���´�\�\\','Bermudes'),
('\�rz0�\nG���$L\��;�','Bhoutan'),
('�\�Q@F��:�\�.o�','Bolivie'),
('7\�\�VNF�!.\�I�','Bosnie-Herzégovine'),
('b�\�{\�C4�$\�@��\�A','Botswana'),
('���q�Dۋ\�2�I��+','Brésil'),
('ÄDL���\�#\�\�\�','Brunéi Darussalam'),
('�\�̊?Kq�+l�^(\�Y','Bulgarie'),
('=��ʢ\�F{��BD�^\�','Burkina Faso'),
('\0\�5\�G+J��\�f\�L2:l','Burundi'),
('�\�qJ�C\�\�9#�g','Cambodge'),
(';�̊M��1q��\0�|','Cameroun'),
('c��]�@���\�&��S','Canada'),
('�&\�B\��]7�\"�','Cap-vert'),
('鶏=�\�Nk�:{\�\�2��','Chili'),
('B$�\�Lĭݟ����','Chine'),
('*�Q�Jʨ\�\�Y�\�','Chypre'),
('o��\�߅G\�{�9�!','Colombie'),
('9�5\�LN����\�~\\\"','Comores'),
('nZ\�jq4KE���9�y�','Costa Rica'),
('��!\�AM�2GC\�\�\Z','Côte d\'Ivoire'),
('%�4\�\�qJ\��\�/O�7ˣ','Croatie'),
('Y�\�1M���X\�U�`','Cuba'),
('�\�I+�H��͔x1��','Danemark'),
('���RwUG3�\0\�L\�_U','Djibouti'),
('\��\�\�B:��}J�h\�y','Dominique'),
('�\�\�z\�7Lૐsr\�H�','Égypte'),
('f~\�\�\�NѵpL\0]bh&','El Salvador'),
('��L	\�$J��\��lL��','Émirats Arabes Unis'),
('\�-\�;ͯ@�ѴWgF','Équateur'),
('ޖ��\�\�B\�/�\�`O0','Érythrée'),
('��\�\�IN���0���Q','Espagne'),
('\�b����Dư�w%��{\�','Estonie'),
('��r�Eښ|O(*�','États Fédérés de Micronésie'),
('�vޜ�Du�j\�an:�','États-Unis'),
('��^�t�D���f^{\�fd','Éthiopie'),
('�*�d�8@/��F#Y`�','Fédération de Russie'),
(',\���\�\�M\\�\���{Tt\�','Fidji'),
('\���/N\�״i����','Finlande'),
('\�j\�%YJ�\�\�:���','France'),
('�M�Nӏ\�\��\�\�\�','Gabon'),
('1=ʎ\�N���o�3�p\�','Gambie'),
('<$�u\�O�����-y�','Géorgie'),
('\�]\�\rHG���Ƿ�i9','Géorgie du Sud et les Îles Sandwich du Sud'),
('�T�\�@�L\�\�X\�A!H','Ghana'),
('�P�t@\�?%Q2�%�','Gibraltar'),
('ja=�CK\�	\�j�GS','Grèce'),
('4���LL����\�)�\n9','Grenade'),
('0�N\�0\�E��\�\�˧R','Groenland'),
('���\�z�K������%M1','Guadeloupe'),
('�<�\�\�N��Rl��qn','Guam'),
('��\��\�K��YO\�UD\�<','Guatemala'),
('�\�I�?\nH�Ϩ\���\�','Guinée'),
('\�\r\�f\�Lۥ\�z9��$','Guinée Équatoriale'),
('}�v.W�A\r���_','Guinée-Bissau'),
('3\�JM�\�m�/\�L','Guyana'),
('�d��\�\�I]�\�w\�\�m]�','Guyane Française'),
('5�`w[HӲL\�3\�.\�','Haïti'),
('\��\�J�#\�x8=','Honduras'),
('xZ\�\�h+M��*\�\�ꄽH','Hong-Kong'),
('\�.\�\��Oԏ\�\�/�\�\�','Hongrie'),
('�����H֞\r��e\�<�','Île Bouvet'),
('K>\�o�GK��}\��\�','Île Christmas'),
('�\�\�q,\�@ߣ��K\�\�>�','Île de Man'),
('W����GǠ�&\�D{WS','Île Norfolk'),
('\�\�.gp�A\�\\̹Y\�u','Îles (malvinas) Falkland'),
('�\�\�\�BJȸ\��Fn\�','Îles Åland'),
('���\�H\��7\�1<~$�','Îles Caïmanes'),
(';�_p\�Ep�_��\�l\�','Îles Cocos (Keeling)'),
('\r͗���K7�#τ\���','Îles Cook'),
('Ŕy\�ʃJߧĐX��#P','Îles Féroé'),
('\',{P\�K���wgP��)','Îles Heard et Mcdonald'),
('\�Q\�9F��Ln\�E','Îles Mariannes du Nord'),
('�\��\�H�W�\�9B~\�','Îles Marshall'),
('�\����\�K��%\�96�','Îles Mineures Éloignées des États-Unis'),
('w\�\�tӒF\�^~<N�\�','Îles Salomon'),
('�*�\nG�A��\�v\�� �','Îles Turks et Caïques'),
('7�8N\�4L��\�\�1�K','Îles Vierges Britanniques'),
('�=\�r�G>��\�\�	\�','Îles Vierges des États-Unis'),
('\�.�&BY�ĺl�\��','Inde'),
('�U3W\�jL��]�\�(5\�','Indonésie'),
('SCvM\�L���^�\�sK�','Iraq'),
('y��D��K~���0>\�\�','Irlande'),
('\�4y\ra^D\�ʼ��\��~','Islande'),
('࢕\�\��O��\0�/�(z','Israël'),
('�b \Z�BΖ\�>4�\�A','Italie'),
('\��n\�\n\�I(�UwN����','Jamahiriya Arabe Libyenne'),
('�K$\"�RA5��`�}\�-�','Jamaïque'),
('l}\�XDY�cVc\�\�}A','Japon'),
('z��,NM�\��cＪ','Jordanie'),
('[�\\�T�@h��j��p','Kazakhstan'),
('\�\�W�E#I\�O���\�','Kenya'),
('���B\�B`�\�R�MV','Kirghizistan'),
('QQ\r�F��v\�]��','Kiribati'),
('�\�qn�Ms�\\B��\�n!','Koweït'),
('�\�As\rN�x4[RR>J','L\'ex-République Yougoslave de Macédoine'),
('�ၤx\�C^�y\��F\n','Lesotho'),
('TL�˜\�D���)\�\�ve','Lettonie'),
('D!49\\�K-�\�Źaf','Liban'),
('�5\r�+N���\�}�\�~3','Libéria'),
('[\�ý8L#�N,\�\�\�5','Liechtenstein'),
('D+s\�\�hA}�����-','Lituanie'),
('\';l\��B\\����]/B�','Luxembourg'),
('\�QnZ\�L��0��C�','Macao'),
('F�b\ny C��\�\�Pt�','Madagascar'),
(':�U{�]M����B���[','Malaisie'),
('*L��qO���/Vfr�','Malawi'),
('��k մA:�e�\�Sv','Maldives'),
('\�ed�K�I���Y \�','Mali'),
('�\�\��\�\�N��5\\�\�t�3','Malte'),
('%�v=HNۙN�ȳo\�`','Maroc'),
('����&E\�y�վ\�','Martinique'),
('���\�aK�$�(\�\�VF','Maurice'),
('!\�S���N�l���u�-','Mauritanie'),
('\�\�\�;�A\��\�C�\�lx&','Mayotte'),
('\\(C6��zf�v2','Mexique'),
('��dpBO0�\����)','Monaco'),
('5Ɍ$^L\\�\�l�+;\�','Mongolie'),
('�x�\�(4DшS\r줈�\�','Montserrat'),
('F\�9�\�zF���F�\�S\�','Mozambique'),
('��&�H��\�\�\�\�b','Myanmar'),
('~-\�u,I\�/ɹ*�UZ','Namibie'),
('\�}��ƏE\�f?��6�w','Nauru'),
('\��\�`EĨ~Τq۰F','Népal'),
('E\�T�lN��_��W3��','Nicaragua'),
('2M�\�P�B\"�[y\�U\�L','Niger'),
('�l\Z#�xE\���Ѹ}\��','Nigéria'),
('y�4 O\�F\��\���','Niué'),
('\�RX�\�!CؗXMy\�\�\�','Norvège'),
('��\�.nCu��X�-','Nouvelle-Calédonie'),
(',�εO}K]��W3��\�y','Nouvelle-Zélande'),
('m\�\�`	Jĭ\�U�YN\�','Oman'),
('�?\�2||H=�\�GU\���','Ouganda'),
('گ7\�\"H���w�\�\�\"','Ouzbékistan'),
('\�$\�|GK��|�hA\�L','Pakistan'),
('�9�e|\�F��ŬcM\�\�\�','Palaos'),
('\�\�\�Si@��\ZX$�\�','Panama'),
('�f\�2\�C��1\"�~a=','Papouasie-Nouvelle-Guinée'),
('OeZ�\�\ZIh�\�\�,\�\�C','Paraguay'),
('\�\�\����E2�ǲ\�\��$','Pays-Bas'),
('\�\r1ؔ�J��AI\��\�','Pérou'),
('�a�8�,OF�|�G�t�','Philippines'),
('1��q��M��C\��\�\�J�','Pitcairn'),
('ँ��\nK&��Lm�͗','Pologne'),
('7�]�\�NR�\�\�w�|','Polynésie Française'),
('�\�O\�MO,�H��:\�\�','Porto Rico'),
('\�+\�k��Oc��r\�\�;','Portugal'),
('\�	M�ӆAC�\�\�z^','Qatar'),
('��\�\�]K��}nH\���\�','République Arabe Syrienne'),
('\�W\�\��H)�)����7Y','République Centrafricaine'),
('(�ɳ\n�Aq�\�rH0y\�[','République de Corée'),
('{���n\�O��)�pa|e','République de Moldova'),
(';��$M^�?\\�Au$','République Démocratique du Congo'),
('��em�fAޞ�\�! \�\�','République Démocratique Populaire Lao'),
(',�dfY�E\�\�[×:\�','République Dominicaine'),
('4�D���O��/k�','République du Congo'),
('?\����K�1<98\\\"','République Islamique d\'Iran'),
('\�85g�E�*�O\�Q','République Populaire Démocratique de Corée'),
('6P\�@\�{Κx�','République Tchèque'),
('\�ޜ\�MK$��\�B*so','République-Unie de Tanzanie'),
('\�\�Ij�G��b$�UK\�','Réunion'),
('9}�\�A\�Aޱc��','Roumanie'),
('5ap�Mc�r�<\�H��','Royaume-Uni'),
('9�٠\�[L\�\�\�Cn\Z[','Rwanda'),
(']\��R\��B���2�>{\�\�','Sahara Occidental'),
('\�r\�=\�\0NJ�\�\�8/�\�','Saint-Kitts-et-Nevis'),
('*Y\�UB��\0�\�\�7\\','Saint-Marin'),
('	��|IH��\\\�z탾','Saint-Pierre-et-Miquelon'),
('x߯k�O~�\�E\��c�','Saint-Siège (état de la Cité du Vatican)'),
('��4\�\�Fͬ��\�\�+�','Saint-Vincent-et-les Grenadines'),
('\�JdpIő\�X\�\r','Sainte-Hélène'),
('NC�\��HE�>\�\�\\\�\'','Sainte-Lucie'),
('{|{Y\�G��\Z��G\0\�','Samoa'),
('D.W7�\'L\r��|��\�A_','Samoa Américaines'),
('s�[�IϦ�\�CAt�','Sao Tomé-et-Principe'),
('3t�x\�Eϫ\�\"X3�U�','Sénégal'),
('�/5�BX��g�\�\�93','Serbie-et-Monténégro'),
('��ZOS�\�?\���','Seychelles'),
('i�B�N\�Gx�?�3:\0p�','Sierra Leone'),
('�\�\�s{�K[�8�|O�v�','Singapour'),
('��(\��N1�\�n-�\�J\r','Slovaquie'),
('�\r\�\�s@��\�\"Y)K\n\�','Slovénie'),
('\\\�j\�f\�B �6\�\'\'Y','Somalie'),
('�\�:�\0G-�s~�\�*K�','Soudan'),
('�&P/w?L�\�\n���[','Sri Lanka'),
('`�\�-\��E�ԁ�׃=\�','Suède'),
('3vsZ\�G��,Ɍ�\�u','Suisse'),
('rC*GȏԠ�\\}','Suriname'),
('\�v\�\�J@��m\�\��','Svalbard etÎle Jan Mayen'),
('I\�\r\�g�B߂OxL77�\n','Swaziland'),
('Z%�3s�G?�p\�a�\�n','Tadjikistan'),
('\�<\�]�\�B��l��E�','Taïwan'),
('=��l�BQ��3�\0;','Tchad'),
('\��\�tM󾳷\��E��','Terres Australes Françaises'),
('�\n��tF��\�\�p\�\�','Territoire Britannique de l\'Océan Indien'),
('�A0�\�\�GΈ\�\�\�a\n','Territoire Palestinien Occupé'),
('��\��A\0��Ö6��2','Thaïlande'),
('N�?\�\�kG[�\�\0�s','Timor-Leste'),
(';���R\�B\�\���59\��','Togo'),
('���]6@l�l���','Tokelau'),
('\�\�R\�%NQ�%�C/\�ݧ','Tonga'),
('FZ��G�Aŀ=�Ou\�;','Trinité-et-Tobago'),
('xwMU\�G\��Us!Y','Tunisie'),
('�i���\�C���8�u\�','Turkménistan'),
('\�\�\�C�H0�\��\�V�H','Turquie'),
('}\�c�JE囹L2�\�D?','Tuvalu'),
('p\�ͮ\�G\�U�Lp�m+','Ukraine'),
('\�\�\�L��ٷ\Z\�B�4','Uruguay'),
('uV\�u�O䘤�a�\�/e','Vanuatu'),
('2�>X��M��N\���-','Venezuela'),
('P\��o�@L���\�\��W\�~','Viet Nam'),
('\�\�X�\�Ev�k\�(\n�w','Wallis et Futuna'),
('(~U\�\�M�c\�(lL�','Yémen'),
('3ay\�DIA�Y\�\�Gt\�','Zambie'),
('���\�\�\�F���?\�\�\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-04-12 19:52:00',5),
('DoctrineMigrations\\Version20240201152951','2024-04-12 19:52:00',1),
('DoctrineMigrations\\Version20240202084749','2024-04-12 19:52:00',2),
('DoctrineMigrations\\Version20240202150901','2024-04-12 19:52:00',3),
('DoctrineMigrations\\Version20240207105701','2024-04-12 19:52:00',2),
('DoctrineMigrations\\Version20240319212437','2024-04-12 19:52:00',3);
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

-- Dump completed on 2024-04-12 19:52:02

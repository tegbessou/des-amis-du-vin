-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-1:10.11.6+maria~ubu2204

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
  `picture` varchar(255) NOT NULL,
  `owner_id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','/images/bottle/caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','/images/bottle/chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','/images/bottle/romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','/images/bottle/tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','/images/bottle/montrachet.png','\�o;ԈC����\�\nl','France',1599.99),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','/images/bottle/penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','/images/bottle/chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','/images/bottle/ridge-vineyards.png','\�o;ԈC����\�\nl','United States',199.99),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','/images/bottle/cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','/images/bottle/gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','/images/bottle/vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','/images/bottle/opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99);
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
('\��\�\�L���̓\�b�\�','Afghanistan'),
('Ԃ�\�DFI�V�P�^j�','Afrique du Sud'),
('�{�4~G��\��\�\�x-�','Albanie'),
('\rk��\�B�=\"�8�\\','Algérie'),
('&8%D\�AX�ڧ$�\�\�','Allemagne'),
('~�l\�\�F\�[���\�','Andorre'),
('��\�~�`E���$�8�\�','Angola'),
('���	�vOR�3M\�]C','Anguilla'),
('\�ӱg�E\��j\�鶶�','Antarctique'),
('�V_��\�G�X^��\'F','Antigua-et-Barbuda'),
('��W\�r�M�hrP3�\�\�','Antilles Néerlandaises'),
('\�U\�pu�O�C\�HS6_�','Arabie Saoudite'),
('\\\�\�?\�!DU����\rҳ','Argentine'),
('w_Hj��J�V\�	VBL','Arménie'),
('r�|]C0�\�L�z\�/','Aruba'),
('8Ծ\�Q!M����Jmr','Australie'),
('\�̧\"\�\�G��\�Ǻ��','Autriche'),
('?�0\�H��ZC�\��','Azerbaïdjan'),
('~ScX\�Fϕ\�\�@\��[','Bahamas'),
('��\� Oǥ\�\�0z\�q\�','Bahreïn'),
('��Y\�\�GQ��lΥ\�','Bangladesh'),
('��\�2J��ߝ,\�*#','Barbade'),
('��\��\�A��B7\�d��','Bélarus'),
('�\�XxHυ\�\nڇ\�C�','Belgique'),
('\�\�\�\�sB|��!�&\�s','Belize'),
('	\�%��B|�\�0Q�^g\�','Bénin'),
('\�Su\�Z>J9�Ü\�^%`�','Bermudes'),
('�rUHZA\'�\�>�w+_T','Bhoutan'),
('ߡ\�<[�E��|\nCכ�','Bolivie'),
('\�¹0�\�IF��\�[w��','Bosnie-Herzégovine'),
('x:Z�\�E��\�T\�;','Botswana'),
('\�6\��-\�H#�#�\\\��O','Brésil'),
('`e�{ hB��\��IL\��\�','Brunéi Darussalam'),
('o�\�\�oO��z�|�=CP','Bulgarie'),
('�}�:�.A��	\�\"uO�','Burkina Faso'),
('�E%�J:���-<�,\�','Burundi'),
('N\��Cl�_�p�cl�','Cambodge'),
('�<�\�z�A���\�\�!�','Cameroun'),
('�n���\�O��\�v\�C�\�A','Canada'),
('\�t\0/\�I��Ȟ�d\�۶','Cap-vert'),
('�w3lG\�A$��\�W>R\�\�','Chili'),
('\�s\����G)��IM�Ԥ�','Chine'),
('�\"u�\�\�@Ǆ�Vՠ�\�w','Chypre'),
('^\�\�b\�@\�&\Z\�e��','Colombie'),
('\Z{+g�@є/lJ](4\�','Comores'),
('\�\�r�G\�~O��-','Costa Rica'),
('Tì\�>H�� [.��T','Côte d\'Ivoire'),
('\�EY\�vM�����2�*','Croatie'),
('1�l��JЬ�\�,\�܇','Cuba'),
('$���մK٩�m%Ѧ1\�','Danemark'),
('%Q��G_�\�|U��4','Djibouti'),
('�� G�H���L+\�','Dominique'),
('w\�Q���By��W�0)X<','Égypte'),
('\�L\���jD���c��i�','El Salvador'),
('�b [RII�1�\�\�J\�','Émirats Arabes Unis'),
('\�@<w�B���\r�uшe','Équateur'),
('�\�`��G\�̛	GrY\�','Érythrée'),
('\r	>�3HH��9�}\���','Espagne'),
('΁a\�^�F�����x�,�','Estonie'),
('���E\�D���s�an�<','États Fédérés de Micronésie'),
('�A˚�VC��1\�C','États-Unis'),
('�p\�~\�\�HI�y�\�\�6�','Éthiopie'),
('P\�K���J����\�G��\�','Fédération de Russie'),
('*�\�\\UvE��i\���','Fidji'),
('bN� 9�L��\�MY\�A','Finlande'),
('�\�x6O����\�B˔','France'),
('`\�!y\ZcO\����A�\�\�','Gabon'),
('\�\�\�֛UN+���\�4\Z[','Gambie'),
('@DTc�M@�D|��\Zp=','Géorgie'),
('��J���AK������ٛ','Géorgie du Sud et les Îles Sandwich du Sud'),
('��_]�$A���ӓ\��(\�','Ghana'),
('�U@�bD\�d\�\�\�\�l','Gibraltar'),
(',N\�ߟfA?�\�{į\�8J','Grèce'),
('+7�\�l\�A2��\�!\�B','Grenade'),
('{예zA��n�q�D','Groenland'),
('H:���YH�ae�aZq','Guadeloupe'),
('0\�#�ޒGZ�sa\�B\�W','Guam'),
('`���prD\n�7���\Z\�Z','Guatemala'),
('��\0��WEB��\�\�\�\�','Guinée'),
('�~=)�J��ɺ\�\�\�v','Guinée Équatoriale'),
('l�6�aK��ro\�RW�','Guinée-Bissau'),
('�\�\�K\�JΝ�p߸:�_','Guyana'),
('H�QU��BE�`�y�9\�','Guyane Française'),
('qw�j$L��$�:�_~','Haïti'),
('\��m��B,�k�#~G\�','Honduras'),
('1�׼(5F\0�s�.\�I��','Hong-Kong'),
('�\�O=\�fER�����~R','Hongrie'),
('F�WM\�B���\�\�d��,','Île Bouvet'),
('lԆ�1\�F�� ��\�c','Île Christmas'),
('m\�:�M��J\�ݕ��9','Île de Man'),
('\��F��\�\�g\�a��','Île Norfolk'),
('\�\��T0N_�\'�\�Kc\�','Îles (malvinas) Falkland'),
('rş�zOOa����O��W','Îles Åland'),
('�2�V$?L��сA`��','Îles Caïmanes'),
('Ӌe\�.K��\"�T\�R\�i','Îles Cocos (Keeling)'),
('�\�uJ_I\r��H\n[�7','Îles Cook'),
('3R�\���Kǯo�\�:M�','Îles Féroé'),
('�\�}�-\�Ee��hXU[�','Îles Heard et Mcdonald'),
('78j�S\�H<��qY\�?\�\\','Îles Mariannes du Nord'),
('��n(�D���+\�\�','Îles Marshall'),
('+H�\�+Ht��v����\�','Îles Mineures Éloignées des États-Unis'),
('A�\�A���o\�;1S�','Îles Salomon'),
('�\'\��2�Gl�s�\"���\�','Îles Turks et Caïques'),
('\�S�\r\�D{�$�?y-','Îles Vierges Britanniques'),
('T�7\���Hk�\���\�\�','Îles Vierges des États-Unis'),
('\�CD9AE�\�\�QD@�\�','Inde'),
('m\�\'\��\�MJ�\�\�4j\r4','Indonésie'),
('x�ґ�>E.�\�M�H2�S','Iraq'),
('\��7\�6$F��\�\�;Gr:\�','Irlande'),
('�y]�sRF�\�DA�ؿ\�','Islande'),
('fF�\�\�@k�\�O>x\��','Israël'),
('sƷ��F槷�\�0ˇ�','Italie'),
('V$u\"1\�L\Z�{�\�躟','Jamahiriya Arabe Libyenne'),
('|\�\�?AW�\�o�ׄ','Jamaïque'),
('\�\�\�LG��\�Y\� �0','Japon'),
('\�\�u�\"N������\�\�','Jordanie'),
('�\�%\�SO��\����e\�','Kazakhstan'),
('`	���\�B����͟�','Kenya'),
('��9V\nFT��NKɜ:\�','Kirghizistan'),
('�AV\�uGE@�\��E\�\��','Kiribati'),
('O/�\�J�J�����\'���','Koweït'),
('��U\�v�CX�\�\�\�AC�w','L\'ex-République Yougoslave de Macédoine'),
('_�����Hǚ^�\�8*Oc','Lesotho'),
('� T�R�G��\�+T���','Lettonie'),
('�\�ڑJPEw�O	$e��b','Liban'),
('b�ʿ.AL�z<\�u\�','Libéria'),
('x\�x\'�\�O7�Fs#�s�8','Liechtenstein'),
('%\�Y4H򚔷\�i{��','Lituanie'),
('\�*�f�\�HB���þ�6','Luxembourg'),
('\�:O7VI\���j玂�','Macao'),
('�Ot\�3F��\�4\��M\��','Madagascar'),
('8߃T\�I(�#�\�\�q9\�','Malaisie'),
('\�,`���O���K�禇','Malawi'),
('�{��9\�A_�j�C~�N','Maldives'),
('Z�ӝ*@�\�\'mܛ','Mali'),
('H\��F\�SIĀߧv���y','Malte'),
('�\�O4$�H��\�٤�z�','Maroc'),
('%\�MM\�N\�zO\�\r��e','Martinique'),
('N�̜� B_��U\�{�@\�','Maurice'),
('\�\�IT|]L\���\�O\�\�q','Mauritanie'),
('f[�\�*J{����ʍ>\�','Mayotte'),
('C��\�\rE��\�v��\�\�','Mexique'),
('Wz\��T�N��\�oٔ�\�','Monaco'),
('^A\�\�LF�;�﫭','Mongolie'),
('��dZI����ma\�\�\�','Montserrat'),
('�Tt�:�A���\�1\�o','Mozambique'),
('��ւH}O��\�\'\�y�','Myanmar'),
('�>X\0\�9CΚ �4np','Namibie'),
('�̯OJ�F���X��\�','Nauru'),
('#�6j\�Hn��!%\��\0','Népal'),
('\0!\Z�J�]6_�','Nicaragua'),
('���A,�B��\�O!XFة','Niger'),
('2\"\�ѲF��\�P�cp','Nigéria'),
('\�#HéB~��\�.	߉','Niué'),
('	D\�}LG��}�\��\�','Norvège'),
('\�\�r�\�J��h3*\�>�','Nouvelle-Calédonie'),
('Gh�¸�AĆ���0 F','Nouvelle-Zélande'),
('\�E�M3�|���Ą','Oman'),
('�f��	A�:�DO�Lz','Ouganda'),
('\�3(-4|C®��\npt�','Ouzbékistan'),
('`#�1\�\�@Ū�d�\�]o','Pakistan'),
('�0��8Aռ\�3u/HV!','Palaos'),
('�¹dYmKG�DE� 2d','Panama'),
('5�@oFF����\�L','Papouasie-Nouvelle-Guinée'),
('�ǵ_E\nEƘ�\�!\�ɺk','Paraguay'),
('V� ٓF\�\Zg��-Zx','Pays-Bas'),
('���%Hi�D�\�\\b\�\�','Pérou'),
('��\�Q�\�E%���5\�Fk','Philippines'),
('\�Wh�\�&B���<R~\�!&','Pitcairn'),
('\"A\� \�2N��^\nɺ','Pologne'),
('�5ʨ	NO\��P\�F\��','Polynésie Française'),
('\�ˇ���J��\�b\�ܼ�\�','Porto Rico'),
('i\���\�K��\���2','Portugal'),
('\�\�|�eI����q *','Qatar'),
('!{�f�H	��ag��','République Arabe Syrienne'),
('\�\�9:\�F�5��\�\�]','République Centrafricaine'),
('H����BR�9;�D\�CD','République de Corée'),
('R\�i��G����3�ۓy','République de Moldova'),
('NF\��A��ÅVPW','République Démocratique du Congo'),
('ܽ�SX\�G��E-z\�\�\��','République Démocratique Populaire Lao'),
('��>	6F/�bj̳��','République Dominicaine'),
('\\\�x\��YCķ\'��\�K�','République du Congo'),
('NeE2\�oGN��1�\�o\�,','République Islamique d\'Iran'),
('\�\�3�Hs�j���\�t','République Populaire Démocratique de Corée'),
('�\�\�A\�D��j\���\�$','République Tchèque'),
('�J\0\�K��\n�)YB�','République-Unie de Tanzanie'),
('\�4C6)D֬0cE��\�1','Réunion'),
('Ɣ\�2�%O�}w\�&�z','Roumanie'),
('.�x\0sGڃ-�]�\�R�','Royaume-Uni'),
('q����WF�\r�}.x\�','Rwanda'),
('Q\�R7GԽ.V�Cv','Sahara Occidental'),
('q5\nT\�\�@��r�XV�','Saint-Kitts-et-Nevis'),
('~\\�英F��ļ\�/�\�','Saint-Marin'),
('$v9\�\�GP�QY�gd�','Saint-Pierre-et-Miquelon'),
('kp%GB\�xv\�\�W','Saint-Siège (état de la Cité du Vatican)'),
('�y,j�LF�R\�\�\��','Saint-Vincent-et-les Grenadines'),
('!\�ǥK^�\�P��\�Q','Sainte-Hélène'),
('B��\�v\�J�P\�\�\�\�','Sainte-Lucie'),
('}��<O`D@�\�q\�\�X\�','Samoa'),
('�#�\�Gu�R\�\�\�8\��','Samoa Américaines'),
('9\�S�\n�C\�z\�A�	','Sao Tomé-et-Principe'),
('�k4\�NǺ\�Ȧ{�-','Sénégal'),
('����\�M\�M\"t�^','Serbie-et-Monténégro'),
('\"\�\Z\"�G�x\�\�۸�x','Seychelles'),
('s�\��\�o@��\�)!w	�','Sierra Leone'),
('P�\�p(BJ9�\�~�\�B^�','Singapour'),
('�R�\�UEȖ\�gm\�s','Slovaquie'),
('��4\�T�D��0\��','Slovénie'),
('�L�ޱA�`�\�WO�\�','Somalie'),
('\rY?\�\�L���h�#]�R','Soudan'),
(',\�L��\n�S\�\�','Sri Lanka'),
('�nqwHB�/\�K�0{','Suède'),
('�u\���CF�\r\�\�3=F','Suisse'),
('2\�Iq\�\�H\��W\��w0+\�','Suriname'),
('v�7\�C�?=��t�\�','Svalbard etÎle Jan Mayen'),
('1o\�s\�Gۗ\�\���2\�','Swaziland'),
('T�r�gL!�b�O%:','Tadjikistan'),
('\���\�\�FU�j\'UZ��','Taïwan'),
('t�v�O��u�Ť�','Tchad'),
('�\�\nRD��!�̎�R','Terres Australes Françaises'),
('q���\�I9�||�\�Zf\�','Territoire Britannique de l\'Océan Indien'),
('�&\�\'pOݤ\�[`hD\�','Territoire Palestinien Occupé'),
('\�/w��C��؎C�hv','Thaïlande'),
('�;Z\�J�\�c61z','Timor-Leste'),
('I>��lE��/B\�\�D��','Togo'),
('\�\�A�\�I����0S�g[','Tokelau'),
('�X8ZJ<�4�\�4��','Tonga'),
('\�\r\�\r\�=F\�6�+��\�','Trinité-et-Tobago'),
('�Z\�\�B\�k8m܏�`','Tunisie'),
('�>Y\�\�OG?�Ǖ�R\�-','Turkménistan'),
('��+L\'H��cy49�1','Turquie'),
('�\�!N�JK�O\n��\�\�\�','Tuvalu'),
('`&��~bG.�P�\"�4\�\�','Ukraine'),
('\�<K\�bBꁏ s�Y�U','Uruguay'),
('Xԥ\�;B��;\�\��\�\�:','Vanuatu'),
('В<�\�=A5��P�;�j$','Venezuela'),
('o\�}o\��E\��[b��','Viet Nam'),
('%\�>�V\�D��}��\��\�\�','Wallis et Futuna'),
('u��K\Z�@���`K]Ս�','Yémen'),
('\�|��\�E��:�|�i\"\�','Zambie'),
('�a\�/�E��H\�\�\�BM','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-08 13:42:32',33),
('DoctrineMigrations\\Version20240201152951','2024-02-08 13:42:32',3),
('DoctrineMigrations\\Version20240202084749','2024-02-08 13:42:32',3),
('DoctrineMigrations\\Version20240202150901','2024-02-08 13:42:32',3),
('DoctrineMigrations\\Version20240207105701','2024-02-08 13:42:32',5);
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
('Or?`��H\��\�+`\n','Grenache'),
('��Ȩr@ܢ�[�,C�','Merlot'),
('w3\��qO\r�\�\�\�A','Nebbiolo'),
('�chi�C�� Z�\�\r�','Petit Verdot'),
('��\�\�\�F��h\�DN׋','Pinot Noir'),
('���7QD��93�\�=','Sauvignon Blanc'),
('ݸ\Z\�\�DQ�\�\��Ҽj�','Shiraz'),
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
('\�o;ԈC����\�\nl','hugues.gobet@gmail.com');
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

-- Dump completed on 2024-02-08 13:42:36

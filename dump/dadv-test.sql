/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
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
('f[��\�M �N�Ov�\�\�','Afghanistan'),
('\�U�fC\�@�2F7GFe`','Afrique du Sud'),
('=�\�tL`C}��\�H\'','Albanie'),
('�\�\���O\�t��^2X\�','Algérie'),
('\�9\�7\nAU�Xꬰ��','Allemagne'),
('f=\�\"�\�Ia��\�@S�\�','Andorre'),
('z[��YN��3{\�\�*}�','Angola'),
('�yfO�K`�\�B_9\"m!','Anguilla'),
('5�\�*{=F,�\�\�\Z\�\�','Antarctique'),
('\�\"Q�\'\�D���\�wnz','Antigua-et-Barbuda'),
('��\"\�ƬLV����R`�','Antilles Néerlandaises'),
('�Ku�jDz���','Arabie Saoudite'),
('i�XTjI��w���K\�','Argentine'),
('.\�Ǜ\�TJq�Y\��bc\"','Arménie'),
('s��2��C��<��\'\�/�','Aruba'),
('�4\��4@��x_s\��\�','Australie'),
('\��\�D\�!3��dzF','Autriche'),
('��.�lCh�(A.\�>\�','Azerbaïdjan'),
('%k��\Z\�G��C��\�!','Bahamas'),
('5}w�)H�6��zA>�','Bahreïn'),
('��\�\�JV��\�\"�k��','Bangladesh'),
('1\��n��Nۊ7\�g��\�','Barbade'),
('q\�7\��\�Lƕ%��\�\�\�','Bélarus'),
('�\nEiG��\�2�T\�p�','Belgique'),
('��Y\rȕL]�S\�1���@','Belize'),
('�\�\�\�\�Mz��\ZK\�|T�','Bénin'),
(';\�\�\�\�RAÈ\�\�Y\0#\�\�','Bermudes'),
('�\�L*\�C]�\���黽�','Bhoutan'),
('�:A\�\�\�4Q$z','Bolivie'),
('@\�\�u��I���\0r','Bosnie-Herzégovine'),
('\Zg�\Z�Nラ�\\Y\�\Z�','Botswana'),
('\�\�\�+\�E*�\�<\�\�\�','Brésil'),
('��\�2\rN��\��Zz$','Brunéi Darussalam'),
('o���jG=���}\�\�K','Bulgarie'),
('P\�<xM*�\�heZ','Burkina Faso'),
('\�z�CnH؛���`s','Burundi'),
('�L(!!Lɋ\�)H�#�G','Cambodge'),
('Q�p?\"Cf�/#a�\�','Cameroun'),
('HH�\�\�CˉQ�N\�','Canada'),
('*@�\�\�F���\�\�\�\n�','Cap-vert'),
('\�bH\�+\�Bɩ f\\�\�','Chili'),
('Rb\0BM�3l�Iϰ|','Chine'),
('\�\�jm \�B�\�i�%\"\�\�','Chypre'),
('4���8_O\�.�Ui5','Colombie'),
('\�\�`ƌ�@V��6S\�\�','Comores'),
('�;p?�E\��fq\\�5\�','Costa Rica'),
('\�\�k�ۡD��Q\�\�1���','Côte d\'Ivoire'),
('�>�\�W\�D-��q�hmcT','Croatie'),
('�h\�\�\�^A���0\r�\�\�T','Cuba'),
('�a.\�fBL��K\��?AO�','Danemark'),
('\�&�\�\�J���5݀\�J�','Djibouti'),
('\�&�ф[DԽ\n\�@7�\�','Dominique'),
('\'���5kG��\�==�\�9*','Égypte'),
('\���\�nJƵGK\�	','El Salvador'),
('�Cȟ\�It�\�ke\�\�{�','Émirats Arabes Unis'),
('#Y�H= IÄY\�-�9��','Équateur'),
('\�Z�,�\�G���§�O\�0','Érythrée'),
('\�,XL\�@d�\r%�a\�Z','Espagne'),
('oב?Kڍl���m','Estonie'),
('Ғ��ښOj�x4е��','États Fédérés de Micronésie'),
('\�;\�\�\�E	�sS�\�A','États-Unis'),
('_@\��pB��pE\�ԏ\�','Éthiopie'),
('\�\�\�D;Hה\����','Fédération de Russie'),
('�����aHؖ���%\�\0','Fidji'),
('\�	�#Ko�.\'\�Y2B','Finlande'),
(',��\�A@��Z\�\�\Z�_','France'),
('h�RLG�|kFQ�o','Gabon'),
('d(W~}Fb��q�\��','Gambie'),
('\�tR��LMX�\�_�Ľa�','Géorgie'),
('v.$\�D3�\�ӎ~c�\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('�\�g<�L\�b�Mۑ','Ghana'),
('�p\���L{��mWZ�','Gibraltar'),
('�ōkv-@����^R\�\r','Grèce'),
('\�\�\Z��CM��`\�C\ZW','Grenade'),
('{YL�a�N߹\�tv[���','Groenland'),
('kwP7�H��zx\�\��\�','Guadeloupe'),
('!��[�RB/�Cj�\�v\�;','Guam'),
('\�}�/*vMP��i[T\�\�','Guatemala'),
('�3b�gM׉3�o\�','Guinée'),
('=�L\�ELh�\�@@�^\�i','Guinée Équatoriale'),
('\"�%\�\�\�J���\���{\�\�','Guinée-Bissau'),
('\nL�۳HÜ/\�Tn@\�\�','Guyana'),
('qY�16J-�$�r\�J��','Guyane Française'),
('\�Kp+�LS�\�*ٴ�5\�','Haïti'),
('\�!`\�gE(����t�,E','Honduras'),
('\��\���N��;TH\�ű%','Hong-Kong'),
('�/\�$>#F׼�s�0\�:','Hongrie'),
('�\"n\n�2G���/c�=\�','Île Bouvet'),
('A�,�&J�\�W�)��','Île Christmas'),
('\�|c\�#A�[QwE�\0\"','Île de Man'),
('y�B�<Bܩ\�\�\�\�*Ə','Île Norfolk'),
(':d�!�GU��Cː�PO','Îles (malvinas) Falkland'),
('�<ΊY�CP��B�vf.','Îles Åland'),
(' ���Kܒr+��Ej','Îles Caïmanes'),
('?g6\�	G��\�\�P�j��','Îles Cocos (Keeling)'),
('qXt�cEͭ\�V�<�k','Îles Cook'),
('m\��\0uK���G$��~','Îles Féroé'),
('���D��@����\�ݘY','Îles Heard et Mcdonald'),
('2\�\�{\�K؞~|0D/\�','Îles Mariannes du Nord'),
('�\�\�V��N��$$�\�x\�z','Îles Marshall'),
('��=zW@�O]�\��\Z','Îles Mineures Éloignées des États-Unis'),
('|\�ٳSK����}@$^b','Îles Salomon'),
('�\�@V\��E�(\�\��a','Îles Turks et Caïques'),
('f�\0l�N㒁��(�u','Îles Vierges Britanniques'),
('͛e\�8M����\�','Îles Vierges des États-Unis'),
('\�C�+.A��p\�z��\�_','Inde'),
('icІP�DʺR\�3��%\�','Indonésie'),
('{5{\�N ��\�ܜ��\�','Iraq'),
('I\�\�XKD�\�\�v�û\�','Irlande'),
('�hx\�r\ZDH�\�wf\�\�,�','Islande'),
('ae+\�\�A)�_-aK\� \�','Israël'),
('��\�+�L*���d�\�\�','Italie'),
('Q\�\�Z\�K�20��\�Ǉ','Jamahiriya Arabe Libyenne'),
('F�:�\�wL���-mZ�','Jamaïque'),
('m�9�\�EF�\n2�$��','Japon'),
('\\�B�\�XGq��n\�J*~','Jordanie'),
('����{G\0�	c�\�JR','Kazakhstan'),
('�\�\��L��+ \�~:%�','Kenya'),
('����\�F=�M!2���','Kirghizistan'),
('��\ZʯH\�ˍ���\�A','Kiribati'),
(']���\"\�LP�7\�\�1�\�z','Koweït'),
('5��9�I7�t;n�\'��','L\'ex-République Yougoslave de Macédoine'),
('N�O�YE\�xR�\r\�z!','Lesotho'),
(';\0A��BI��B\�\�F��','Lettonie'),
('?�\�|\�H\���e	(IƁ','Liban'),
('�\�Q\�$K��\���\�\Z�','Libéria'),
('\� �\'+\�Lq�& Jf\�','Liechtenstein'),
('b\�ͤF4�\�\�\�\�','Lituanie'),
('\�+O�\�\�K�����\�\��b','Luxembourg'),
('B�\n�P�A\�F�3\�x\�-','Macao'),
('\�\�	\�3�Bq�~�����','Madagascar'),
('*}I�e!Gs��\�g;�\0','Malaisie'),
('!�m\�2K̕ێw���','Malawi'),
('���p\�GA�I����<','Maldives'),
('���u\�)OH��g\��n�','Mali'),
('e\��L�\�(��}B','Malte'),
('����\r�@��\�]k\'\�[\�','Maroc'),
(' X\�7V�@ڳ�*\�p:�','Martinique'),
('T\�z�G쳴\�\�\n�{�','Maurice'),
('	�\'b\�jAH�%�\�\�D','Mauritanie'),
('\�O\�wH8Ln�ύ\�{��	','Mayotte'),
('M�p\Z\�J����M�-R','Mexique'),
('�Y\\`S�M���5	\�;�?','Monaco'),
('k\�ڇ\rOX�6��C\�\�','Mongolie'),
('�C�D�\n@P�M�[�f�\\','Montserrat'),
('\�\�=�\'C��#<\�\�\�\�t','Mozambique'),
('8zZ1\�C��]�mz\�M','Myanmar'),
('\�\�P8a�L^�3�\� \�~','Namibie'),
('\��P\�\�JI�\�3۪J�>','Nauru'),
('3,�\��(Nr�\�\�\�\'�!','Népal'),
('���وHB�Or&�m\�v','Nicaragua'),
('�x$\�EƊ��f�}','Niger'),
('O�\Z�Z	FD�\�o����','Nigéria'),
('I3yeLJ�\�T{�S','Niué'),
('+\�I�J!�!��.','Norvège'),
('�\'@z��H��Ea','Nouvelle-Calédonie'),
('\�B_�|O\�?��ئ��','Nouvelle-Zélande'),
('*\�V݅�Eǯ�& ܎��','Oman'),
('+�?\�\�@�Vh�g�\�','Ouganda'),
('���88�I��\\|����','Ouzbékistan'),
('`\�WQ�|Bŵ4\�YD\�','Pakistan'),
('C\�<���O4�\�\�=','Palaos'),
('�p�6�Cč��q>y','Panama'),
('$1\�\�K3�VT����','Papouasie-Nouvelle-Guinée'),
('`�\�*|FFb��	c�^�\�','Paraguay'),
('q܎s\�ZF5�\�\�,\�c�','Pays-Bas'),
('L�\�\Z\�M	w$��/','Pérou'),
('�.<�|�@�C}0�y\�','Philippines'),
('գ�`\�eA���\�\0ޞū','Pitcairn'),
('\��B�vEB�\�r�H��	','Pologne'),
('��\�ݬrHۇ|C\�D,M^','Polynésie Française'),
('\�-B���N)��\�\�\�=�','Porto Rico'),
('�\�\�\0;I��+�\�\n�)','Portugal'),
('U\�\��Dי!$GԽ\�','Qatar'),
('�lig)M׺vֵ\�G^j','République Arabe Syrienne'),
('�\�\�1fN�\�\�\�شF','République Centrafricaine'),
('\�:\�\�\�A�H3\��\�5','République de Corée'),
('�>ӻyO��E�\�G�','République de Moldova'),
('BYX\���Eg���s\�.=','République Démocratique du Congo'),
('�J\Z\�\�E\�G�^\�B�','République Démocratique Populaire Lao'),
(',q�y<\�I������','République Dominicaine'),
('\�0{�\�J͐��\�S\�\�k','République du Congo'),
('kK�\�=H��p\Zzk	ֆ','République Islamique d\'Iran'),
('C]fV9D\�\�\�Bm�\�','République Populaire Démocratique de Corée'),
('Ą7�EI��{v\�\�|~D','République Tchèque'),
('��[��oII�󶛦\�','République-Unie de Tanzanie'),
('�̩�K�H%�d2��V','Réunion'),
('\�;aNH\�\�g;\�\"\�','Roumanie'),
('?\'\�\�0K���4\�hmS\�','Royaume-Uni'),
('�k�<3Fۤ3��\�@V','Rwanda'),
('NA\���_Bf�j#\�1<,','Sahara Occidental'),
('Ѧ\�\'qMZ����?��\�','Saint-Kitts-et-Nevis'),
('+�	T4F\��\�>�^kZ','Saint-Marin'),
('\n\�{M\�!I���\�\'���A','Saint-Pierre-et-Miquelon'),
('w N\�:�CJ��J�[�','Saint-Siège (état de la Cité du Vatican)'),
('\�6Z*jCמn\n~xS�','Saint-Vincent-et-les Grenadines'),
('\�\�\�KhB\�/ ��\�G','Sainte-Hélène'),
('�\�)��@ߌǤLR�_�','Sainte-Lucie'),
('l}��,\�@��\�5�i-QH','Samoa'),
('-\�\�ҷ�Cb�\�_�C�','Samoa Américaines'),
('\�?�Md�L��VA\�M��=','Sao Tomé-et-Principe'),
('Su}�@ǮQ���','Sénégal'),
('E�2\�N\�t�_\�\��','Serbie-et-Monténégro'),
('\�YB� �J\r��qS;`�\�','Seychelles'),
('�h\�WWFɏ�)*S\"\�','Sierra Leone'),
('��l�\�L��\��:�|\�','Singapour'),
('��\�Gy�4\�\�+\�','Slovaquie'),
('��\�?}�A΢\�\�SR$�','Slovénie'),
('\�\�|�B!��aF\r�\�u','Somalie'),
('�\�(#\�\�I���\�\�+��d','Soudan'),
('2y\ZHlKH+�\�x\�\�	','Sri Lanka'),
('�h�\�E\�*\�h\�,�K','Suède'),
('\�6\���rN\�U5�\�\�c','Suisse'),
('n.\�QJ믃�\�$\�','Suriname'),
('\�%�v\�%B��\�C\�9B','Svalbard etÎle Jan Mayen'),
('���adqE%�ȝfK#�','Swaziland'),
('I�;޳KI��޸K4�P','Tadjikistan'),
('.G���VL�����|?\�\�','Taïwan'),
('%&3�N��%\�\�=y�','Tchad'),
('�*�\�bE~����[','Terres Australes Françaises'),
('\��#\�ȝG�H\�oI\�\�','Territoire Britannique de l\'Océan Indien'),
('\�BNʃ�Z�F�\�','Territoire Palestinien Occupé'),
('�ۜ\n�F$�M�\�:�[�','Thaïlande'),
('�\'�� MF�rq��\�c','Timor-Leste'),
('��,!\�K����}^�','Togo'),
('�޻�Oi�?z�G\r�H','Tokelau'),
(']<\n\r.KLQ�ч���o','Tonga'),
('��H�\ruL֙T���J.','Trinité-et-Tobago'),
('o�\"�WVOГ*�Q�\�k�','Tunisie'),
('�_�C��Dm���b\�}�\�','Turkménistan'),
('�5�t�\�Eb�+Ș�8\�\�','Turquie'),
('�8W��I����\\_Bdn','Tuvalu'),
('[2Jn�5C���SUbR�','Ukraine'),
(']\�\�X@J�Mq\�M���','Uruguay'),
('G\�;z<A\�\Z��%\�6','Vanuatu'),
('��XM�?H��7��(Ϙ\�','Venezuela'),
(')�o\�\�G\����{�/','Viet Nam'),
('�\�3eQM��\�B��#','Wallis et Futuna'),
('\�\�\'A��\�+\r\�Dc','Yémen'),
('T�#&B����\��\�','Zambie'),
(')��k\�HU�#\�6��s\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-06-23 19:14:19',3),
('DoctrineMigrations\\Version20240201152951','2024-06-23 19:14:19',2),
('DoctrineMigrations\\Version20240202084749','2024-06-23 19:14:19',3),
('DoctrineMigrations\\Version20240202150901','2024-06-23 19:14:19',3),
('DoctrineMigrations\\Version20240207105701','2024-06-23 19:14:19',3),
('DoctrineMigrations\\Version20240319212437','2024-06-23 19:14:19',3),
('DoctrineMigrations\\Version20240614133504','2024-06-23 19:14:19',11),
('DoctrineMigrations\\Version20240617165906','2024-06-23 19:14:19',8);
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

-- Dump completed on 2024-06-23 19:14:20

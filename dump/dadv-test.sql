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
('⻅n��Eɞ>��>x\\�','Afghanistan'),
('�\�E\��Mr�<�g�r','Afrique du Sud'),
('d��.H ��6\�\�','Albanie'),
('�I\�\�\�MC�;��Uc�','Algérie'),
('��\�C��+��u\\a\�','Allemagne'),
('rcc\�\�mH	�\� ��,\�','Andorre'),
('|>�\�NqHـ\�\�;\�','Angola'),
('�a��\�D;�!����','Anguilla'),
('#S\'\�UI׫\�\�B�,�','Antarctique'),
('j\�,\\_M��]\�+>�6','Antigua-et-Barbuda'),
('b���)A�����F','Antilles Néerlandaises'),
('W�=�)�O*�\n\�\��]','Arabie Saoudite'),
('\�l\�jucAB�\�>{&@\�','Argentine'),
('}�\�C�H��@\��3�+','Arménie'),
('��\�\�\"B��@1j�\�(@','Aruba'),
('Ch�]Jv�\��\�%�','Australie'),
('\�\�\��\�L����DSi','Autriche'),
('S\�\�\�(aHeȀ��;','Azerbaïdjan'),
('J\�x�˧G��\n�c\�','Bahamas'),
('G\�|>L�\��\�\�h','Bahreïn'),
('t\�\�UJS�UYw�\�^u','Bangladesh'),
('4进\�NF�ؤ\"\�H{a','Barbade'),
('�\n+U\�F:���\n�','Bélarus'),
('\�Q�\�AA��Po]PLn�','Belgique'),
('FCj�+\�Cř<h��\�·','Belize'),
('��\�\Z�$N��\��w�\�=','Bénin'),
('\\h1@7HNG��\�:T\�\�\�','Bermudes'),
('G�z\�A࿞��\�','Bhoutan'),
('5�\�dW}Av�sj\��*�','Bolivie'),
('�oVs\Z\�K��*�L�\�$','Bosnie-Herzégovine'),
('�\�k\�ɞF]�\��\�#�\Z','Botswana'),
('\�m�\�Y\�JK�_\"\�{\Z','Brésil'),
('�$M�\�Hj��2h�k','Brunéi Darussalam'),
('/+\�\�qgI�7\�:8��','Bulgarie'),
('X\�(�Z�E��9�J�\�\0','Burkina Faso'),
('\�\�*$I��b\�jp�\�','Burundi'),
('�[ȏ\�\�K��~ߜ�vb','Cambodge'),
('f\�\�@b�OO���\��GF','Cameroun'),
('^\�Ŏ\�+A\��)��A','Canada'),
('Fd�\�\�\�F��ݟ\'k\�\�','Cap-vert'),
('���e]�F���޳VPo','Chili'),
('n�sBTK�\�\�-?','Chine'),
('�\�Y\�@t�o�\�X�S\�','Chypre'),
('���\�M��eD�y�S','Colombie'),
('\���oM���B�>\�\�U','Comores'),
('aem�jH��SWW\��m','Costa Rica'),
('�\�\��OCo�\�)i^��','Côte d\'Ivoire'),
('Q�Z��/H��L�>�\�\�B','Croatie'),
('\�PiAA%�\�\�f~\�Y','Cuba'),
('��%Wt�GK�\���{�˧','Danemark'),
(',t-JSJ���\0��7��','Djibouti'),
('�\�\n�\�\�A�\�VCT�b','Dominique'),
('\���\�J)Lf�\�6\�_T�','Égypte'),
('?8�cB҄\��xY','El Salvador'),
('�)\�\�pH8��\�/\�n','Émirats Arabes Unis'),
(' j�\�ǯM5��\�k=','Équateur'),
('zC�UB�\�H\�\�\�gO','Érythrée'),
('\��iGV�Fx�ho�\�;\n\�','Espagne'),
('<\�\�Z\�C���\�S_\�B','Estonie'),
('��\�\�\�LI^�\�Z\�\�냤','États Fédérés de Micronésie'),
('x#\�߭eI��\\#���&\�','États-Unis'),
('~�\�X�\�H�\r>\�8�\�','Éthiopie'),
('\�\0g�IM��E\�ӃE�','Fédération de Russie'),
('\\��Y\�)N��\�\�W\�\�\�*','Fidji'),
('0��\�\�B��:�WZġ','Finlande'),
('^\�\�U�~Bv�\�td\�','France'),
('�\�\��F��\�Qh@��','Gabon'),
('��l\�M\��=%,]�O\�','Gambie'),
('��٪�\nO\�G>.�B��','Géorgie'),
('��x�H��i\�n\�%','Géorgie du Sud et les Îles Sandwich du Sud'),
('\��@Me�8��\�\�\�\�','Ghana'),
('<5r\'qT@���\���p\�','Gibraltar'),
('\01\�J\���V����','Grèce'),
('\��B FP��J\�tR�','Grenade'),
('��L0I+�\�,��g�','Groenland'),
('_6TQdF����G�\�\�','Guadeloupe'),
('7�U�\�M��4�\�W3','Guam'),
('��2�f\�H*�\�\Z����','Guatemala'),
('�\�T�AH�\\HD�V','Guinée'),
('\��X\�zO��\0�S\�\�X','Guinée Équatoriale'),
('n2\��\�K̂��<��\�','Guinée-Bissau'),
('�\�\�&\�M�����9�','Guyana'),
('\\2�\�̍Aj�\�\0&��\�','Guyane Française'),
('\�M\�lEԅ\�/�\�\�','Haïti'),
('	!�ùI.�~\n�Y\��\�','Honduras'),
('j�>�O\�%�V\�','Hong-Kong'),
('�\�}W\�>I\��\�A$','Hongrie'),
('\�m8W�I.��v\�M\�\�o','Île Bouvet'),
('\�(�\�G\�C\�b�`��*�','Île Christmas'),
(')�vw�Lc��\�\�2�','Île de Man'),
('0�8��CŦq�;GZ\�','Île Norfolk'),
('��},�G�CK\�s��Z','Îles (malvinas) Falkland'),
('\n\�*\�3\�E ��I����','Îles Åland'),
('��λ�N#�y�#g.�','Îles Caïmanes'),
('jDabD\��|zg1-#','Îles Cocos (Keeling)'),
('xh\�\�NP���\�0�}','Îles Cook'),
('\��5k�M��I\�9\�\�','Îles Féroé'),
('b�`p��I���\�/\�\�t\�','Îles Heard et Mcdonald'),
('.\�K\�AA@��Z9�m�\�','Îles Mariannes du Nord'),
('�@��\�\�F���s���_O','Îles Marshall'),
('\\S#�Mp��Dn*i�','Îles Mineures Éloignées des États-Unis'),
('ӃHa�D��\���1','Îles Salomon'),
('ӛ\'��-B?�\�U�)�\�','Îles Turks et Caïques'),
('\��U�\�H��3�CE<+0','Îles Vierges Britanniques'),
('\�,��\�E\�\��\�\0\�+�','Îles Vierges des États-Unis'),
('Q�\�\' �K˥\�>\��-1�','Inde'),
('e�\�9\�JHΩ�\�i�iv3','Indonésie'),
('h�j?-@6��\�)�\�','Iraq'),
('n\Zt��ES�!�/\�\�\�','Irlande'),
('��%a�\�M��\�g�Y�t','Islande'),
('XK>;�C��\r<~\�','Israël'),
('�!\�\�H,��\�\0�\�}','Italie'),
('\�\�K\r��N��\�|\�v��','Jamahiriya Arabe Libyenne'),
('0td\�_E̮�-��','Jamaïque'),
('dM�ĈJ��U�ۅ\�\�','Japon'),
('\�֛\�KE���)\�\�n�s','Jordanie'),
('x&4u\0�EƼn�s�o�','Kazakhstan'),
('@p\ZڳK���\�\�G��','Kenya'),
('�\�J%7G��\"\�^�j~','Kirghizistan'),
('�^\�\�F��TN\�\�S�','Kiribati'),
('r\�JL�M���[\'��_','Koweït'),
('o�}G6�N��\�\�U\��\"!','L\'ex-République Yougoslave de Macédoine'),
(' ��b�JO2�\�\�6�ɶ�','Lesotho'),
('�4K\0F)��\�܅f\'','Lettonie'),
('P?�}�K�%Ł�OH\Z','Liban'),
('�9�l�\�H˫\�wX8-\n�','Libéria'),
('0\�{��I0�`\�mq�','Liechtenstein'),
('�3b�\�!L֦Q��G*�','Lituanie'),
('�\"��\r1El�>��#Wʩ','Luxembourg'),
('ōV���B��\Z,ۿ\�\�','Macao'),
('LQ\�r\�K\�\�\�g\��\�','Madagascar'),
('>�\�\�X\�IϽE\�\�&S','Malaisie'),
('\�\�\�\�N�6Jp�\�4','Malawi'),
('OQ\�*�|M?�\�\�\�ljl','Maldives'),
('F\�%|v�N��\�\�Ջ�fM','Mali'),
('�i`n\�QAǭ\�\�gKZ3','Malte'),
('h�\��G�4\�F�u��','Maroc'),
('>�\�Y�Ck�\�;��Y','Martinique'),
('M\�Ή\�LԦc�K\"Z','Maurice'),
('\�\�\�GM��wޤ�s�','Mauritanie'),
('[�.�GC\��\�\�\�͎,','Mayotte'),
('W\�W�N릴�ݮ\�\�\�','Mexique'),
('h�)\�2I\��<\�ll�\�l','Monaco'),
('��̜O����e&0\�Q','Mongolie'),
('<�_G{��\rG�4r','Montserrat'),
('\�	��4\�Gȳ���\�0\�\\','Mozambique'),
('��0�3�LC��ٸ�#9','Myanmar'),
('-\�\�\�e/N�_\�\�wf�','Namibie'),
('�TDR�A���\�\�Yf3','Nauru'),
('͆���\�AX�\��IKw�O','Népal'),
('\�!\�\�XSC9�9K`ʏ��','Nicaragua'),
('\�\�\���H��k\�\��\�G\�','Niger'),
('\�e\�XCj��\��\�3','Nigéria'),
('��&=3\�BX�H�O*y','Niué'),
('se��tWE\\���\�q0q','Norvège'),
('\�ZDj-O��#���G','Nouvelle-Calédonie'),
('8/�n.\�B��FB\�s���','Nouvelle-Zélande'),
('\�Jd\�<H���\�ݓ�\�','Oman'),
('��ߧm0Ob��}�!vY','Ouganda'),
('`NcR��H럶�\�r\�\�','Ouzbékistan'),
('Ӵ\�\�\\�B\"��\�\0=�h','Pakistan'),
('�K\�wA3��\�Ūl�','Palaos'),
('���\�\�FQ�\�Ǩ�W\�\�','Panama'),
('�\�\'�\�K��\�\�\�0vb\�','Papouasie-Nouvelle-Guinée'),
('u#`vlI�G-�\�8','Paraguay'),
('T�\�/ZoF��E[^\�\�','Pays-Bas'),
('x�\�ja\�J>�\r�9\�$','Pérou'),
('\�;��:�D8�,K\�Y\�','Philippines'),
('/:\�K\rG��\�\�θ�6','Pitcairn'),
('m\�A�N����WS�P','Pologne'),
('\��\�Z\�N೙Z�\�\�f�','Polynésie Française'),
('����\�Cx�\�ӻIdX','Porto Rico'),
('\� �ޛuI��b9I|\�','Portugal'),
('=\"Ɂ�\�CW�s\�P]h�!','Qatar'),
('�\�\�m\�Ie�0b��^','République Arabe Syrienne'),
('\�\�\�\�9\�Iѧ\���uV\�','République Centrafricaine'),
('\�H�%Y;N��z\�\�F�\�c','République de Corée'),
('\'1\�Hf/EЄ\�\0���E','République de Moldova'),
('�ԫ3\n\�Cu�Ah\�W%�O','République Démocratique du Congo'),
('�A���\rIk�\�\�m[\�x','République Démocratique Populaire Lao'),
('�FG6�M\�	v�\�M;[','République Dominicaine'),
('\�횪cCػ,�on}��','République du Congo'),
('m�\�x�@݉.�f�7#\'','République Islamique d\'Iran'),
('���\�\�H�\���mh\�P','République Populaire Démocratique de Corée'),
('\��\�TK@��2v=�R��','République Tchèque'),
('\"+<\rgaO\����w\�\�','République-Unie de Tanzanie'),
('\�\�\�C8N߇w8��j�','Réunion'),
('!��3\�]D���\�5�N�','Roumanie'),
('����\�aA ��`;A(%','Royaume-Uni'),
('\01\�\�I@�,?]�\Z_','Rwanda'),
('E,��c\�G���?�P\�-','Sahara Occidental'),
('f\�\"eg�C��\�\�U��\�\�','Saint-Kitts-et-Nevis'),
('GïHq�a0\0���\Z','Saint-Marin'),
('�xJ�\�NL7��o:;�','Saint-Pierre-et-Miquelon'),
('㢳Z8�I��8SϾ\rF','Saint-Siège (état de la Cité du Vatican)'),
('�1!\0�sBΣD!�y�6','Saint-Vincent-et-les Grenadines'),
('8k(G\�D\�Ѽ�\�V�z','Sainte-Hélène'),
('&�\rr�G;�H\�=\�\\','Sainte-Lucie'),
('\�\�\�{@犜U\�yK','Samoa'),
('W0°�J��;hh_��','Samoa Américaines'),
('}�ӞD\�A{氼mq','Sao Tomé-et-Principe'),
(':�/�L���)\�L�\�','Sénégal'),
('ݖ�ʦ OC�]Wv\�ڀ','Serbie-et-Monténégro'),
('oV\��@ˠ\�6ߑ\0','Seychelles'),
('\�y��TD\��mF�d\�2D','Sierra Leone'),
('n�F\�NHDZ�%�\�Ip\�\�','Singapour'),
('\����/\nH��>ѿsHQ','Slovaquie'),
('.��\�\�I㊥$�\��i','Slovénie'),
('J<o�\"CD\�\�u�/��','Somalie'),
('^\�\�B%@ݳ3=���\�','Soudan'),
('B^,\�WiE\�����f���','Sri Lanka'),
('\�Sr\r�\�E�\'T�f���','Suède'),
('\�O\�@\��W+e��','Suisse'),
('�FARkGN;�\����S','Suriname'),
('\���\�BĨ�7u�@��','Svalbard etÎle Jan Mayen'),
('\\���2aE\�\�n=�\�yt','Swaziland'),
('��#�E\�N⯥~\�y\�','Tadjikistan'),
('\�ߝ�	HF\�zX\�J','Taïwan'),
('�`k+]\�E˙\r/+��s3','Tchad'),
('S.i.\�DR��\'���\�','Terres Australes Françaises'),
('\��KLJNx�¹�\�^\�x','Territoire Britannique de l\'Océan Indien'),
('r\�.kF\�E\�\r\�{<\�','Territoire Palestinien Occupé'),
('\�R$)<E�9\��1�\�\�','Thaïlande'),
('Tg=|�\'J�-\�\�5��\�','Timor-Leste'),
('�j&�I3�o.\Z��	\�','Togo'),
('yf{�!A���f\r�F�','Tokelau'),
('\�\�z�orO柍�U,\�pT','Tonga'),
('��⻾�@��	��\���','Trinité-et-Tobago'),
(']��v�D��TS#�}','Tunisie'),
('\�Fh]I��bk2No\r�','Turkménistan'),
('�vZ\�E��\"�B\�)Q','Turquie'),
('T�`�E.D6��OW6h�','Tuvalu'),
('��!H\�vAt�$#y7<','Ukraine'),
('k<\�\�Lz�N�\�۩\�e','Uruguay'),
('\�\�%rO]�s�\���\��','Vanuatu'),
('1\�j���Ei��\r����','Venezuela'),
('x\'�Q�-Kͅ\�\�J\�D1G','Viet Nam'),
('�ܬJ�GV�%�Q{��`','Wallis et Futuna'),
('\��>��\"Iɺ�{X\�\�.�','Yémen'),
(']��>\�MK��onOgLs','Zambie'),
('\�:v�smF��g1\�\�+\n\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-07-14 19:38:57',3),
('DoctrineMigrations\\Version20240201152951','2024-07-14 19:38:57',4),
('DoctrineMigrations\\Version20240202084749','2024-07-14 19:38:57',2),
('DoctrineMigrations\\Version20240202150901','2024-07-14 19:38:57',1),
('DoctrineMigrations\\Version20240207105701','2024-07-14 19:38:57',4),
('DoctrineMigrations\\Version20240319212437','2024-07-14 19:38:57',2),
('DoctrineMigrations\\Version20240614133504','2024-07-14 19:38:57',11),
('DoctrineMigrations\\Version20240617165906','2024-07-14 19:38:58',8),
('DoctrineMigrations\\Version20240708061729','2024-07-14 19:38:58',12);
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

-- Dump completed on 2024-07-14 19:38:59

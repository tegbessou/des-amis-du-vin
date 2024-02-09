-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
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
('DDo�o�B�<����ͤ','Afghanistan'),
('D�\��CӫO!>�}','Afrique du Sud'),
('+�+�S\�@̥\�jc1QV','Albanie'),
('$\�Y�F��\�+/�\�\�','Algérie'),
('\�\�p\�tN�}|\�4j\"','Allemagne'),
('i|��M�\�B��}\�4','Andorre'),
('V����3L��ǩ�\�ЌZ','Angola'),
('\�\�=:F\��\�*�\�bٷ','Anguilla'),
('g\�\�\'7E�9�R��,\�','Antarctique'),
('\�Iw\��@늉?�(���','Antigua-et-Barbuda'),
('\�U��\�M����ʤ�\��','Antilles Néerlandaises'),
('�@\����M~\�y\�wi','Arabie Saoudite'),
('������A�ᡯ�','Argentine'),
('4\�?4D�J��8�R3K\�','Arménie'),
('\\�ԩW\�Ni��L�eg','Aruba'),
('���	�L��)\��\�(,','Australie'),
('\0\�\��&�F앧u\�\r�2v','Autriche'),
('�GyO>�E��\�놘�Q','Azerbaïdjan'),
('\�<�\�\�@݇�-\�U\0Nv','Bahamas'),
('L\�Yv\�\�F�8���\�\Z\�','Bahreïn'),
('A!S\�@�D�H�9z\�','Bangladesh'),
('�noW\ZF\�\�\�Vjy;�','Barbade'),
('\�[\\��O��- \�yXtJ','Bélarus'),
('\�L\�jc�@ �཮�','Belgique'),
('e(2\��?C���Fg�E�%','Belize'),
('2\��Q�\�L�\�\�\�\'\�','Bénin'),
('�hu\�\�H�\�[.?\�\�\�','Bermudes'),
('����\�De�\�(n̣\Z','Bhoutan'),
('�\�W\�h\�GM�a��/\�B','Bolivie'),
('\�x\�1�^L�\�8�f\�ؠ','Bosnie-Herzégovine'),
('K��PO\�9vn\��V\�','Botswana'),
('\"E\��ݿL\r�oR6@,','Brésil'),
('I�|zF3�\�\�¨-n','Brunéi Darussalam'),
('+�\�\r��Jz��MES��','Bulgarie'),
('�\�\�\�ȲAᾕ-�V\�t�','Burkina Faso'),
('\�9�\�\�@��~�΂�','Burundi'),
('/AA&L_�\�j\�%g]\�','Cambodge'),
('cwn�ʿM��K��\�{','Cameroun'),
('A4�ڙ�E��\�A϶��','Canada'),
('� \�\�@5�,y�j','Cap-vert'),
('6�,7\�B����\�H\�K','Chili'),
('�\�\�$QER�\\\�Y\�e','Chine'),
('\�\�\�R��E\��Am�\�D\�','Chypre'),
('Q{i\�y�I��s�\�\�\nm\�','Colombie'),
('=,K��;D$�\�f&\�.','Comores'),
('`?\�.XLH�\�\�\\^\�','Costa Rica'),
('�Ǣ}8Ka�\�n����','Côte d\'Ivoire'),
(';~N\�\�\�I0��R�P�\� ','Croatie'),
('\�~��*_J�\�\�\�D1V','Cuba'),
('{��p\�E;�?�b\�\�)J','Danemark'),
('\�\�&HؐOה�}(�\�C','Djibouti'),
('��)\�N@��!U�','Dominique'),
('�\0��TN�?\�m�\�E�','Égypte'),
('1\�Od,1I֘�\�2|�a','El Salvador'),
('�}u\���IU�!�\�\�\�\�','Émirats Arabes Unis'),
(' ��:E��h*f\��\�E','Équateur'),
('\�y\�r�m@��\n3Q\�&Q�','Érythrée'),
('(�u\�\�5C��\�nc!@u','Espagne'),
('P���I�AP��G��\�wV','Estonie'),
('�׆f�H����d��','États Fédérés de Micronésie'),
('\�w_9�!@�����)3','États-Unis'),
('F\�7	\�By�F?&\�\"<','Éthiopie'),
('�\\Q��NN��Ođ� \�','Fédération de Russie'),
('��>�^G��U��/@k','Fidji'),
('c�\�9\�ED��\�\�D\�\��','Finlande'),
('�\�To\�TFy�)p\�m��V','France'),
('W�\�@�J˫j~�|w\�','Gabon'),
('\�r=\�\�G��7�\\\�4\�','Gambie'),
('\�	NB�\�O�\�C7�\�~','Géorgie'),
('\�\�p?T@k���R\�\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('\�\�`H�мnv��\�','Ghana'),
('��\0Ʒ\�N��c�\�\�v]','Gibraltar'),
('�;jf)J ���B��\�','Grèce'),
('���^rFC;��M\�T�z','Grenade'),
('k�&\�|lO#�R)��ml$','Groenland'),
('�\�O��G\�\'\�\�Ci','Guadeloupe'),
('>\���L\�NL��\�4\�L\�','Guam'),
('ci���9F	�gm�\�\�\�','Guatemala'),
('�\�\Z���K��#�~I?S�','Guinée'),
('-�<U\�H��\�_\��','Guinée Équatoriale'),
('�4yo�Mz�\�\�R��\'','Guinée-Bissau'),
('%��E\�\\M��<ڇe\�g','Guyana'),
('�\�y/\�\�Oɻ]\�\�\���','Guyane Française'),
('\��\Z\r��L���=�P\�U�','Haïti'),
('�ҋ�\�\�N�����Ul\�\�','Honduras'),
('\�K�c�|D\��\"/3\�\�','Hong-Kong'),
('%I�\�\�qA٘x|\�1','Hongrie'),
('\�#\�1�\�N��}�\�L�\�','Île Bouvet'),
('yw]�vB\�^�;��\�','Île Christmas'),
('Y�\�\"7�M��\�Z@f��','Île de Man'),
('6��@4]C�\�gA�<_�','Île Norfolk'),
('\�(�ǥ@ʦ�z;i�\�','Îles (malvinas) Falkland'),
('6\�%\�HJ���@�R\�','Îles Åland'),
('J\��\�G��(gD-�&�','Îles Caïmanes'),
('\�.\�[\�C��v�\�	��','Îles Cocos (Keeling)'),
('I�H�nC��\�yȝ��','Îles Cook'),
('���|��L:�On]\n\�\�','Îles Féroé'),
('���\��MF吕OG\�W\�','Îles Heard et Mcdonald'),
('����[H\�$\�i\�2%�','Îles Mariannes du Nord'),
('�i0�\�gH�\�\�\"6 \'','Îles Marshall'),
('\�#\Z=O?��)-\���','Îles Mineures Éloignées des États-Unis'),
('\���ۚC\���|�N&ͧ','Îles Salomon'),
('H�6;�K+�(l�Ҽ','Îles Turks et Caïques'),
('��\���G콒m0)!H','Îles Vierges Britanniques'),
('\�n^�ӑ@ޭ��\�7��','Îles Vierges des États-Unis'),
('8\�H�\"\�@ѡ�$���','Inde'),
('`?t�pK\�2|��0\�','Indonésie'),
('\�߻\�\�@$�	\��\�¶�','Iraq'),
('�1t\��DЌ�\�\n�\��\�','Irlande'),
('\�o{\�$�Du�W\�\�A[7','Islande'),
('I\�\�;oH|�Y��<��.','Israël'),
(':)\�D\'�_�\�\�\�;','Italie'),
('��P\�^�H�Qz@ex)r','Jamahiriya Arabe Libyenne'),
('�\�\�\�TRF%�\�e�\���\�','Jamaïque'),
('\�q�ENE�\r\��/R\�','Japon'),
('\�\�p�CN:�������\�','Jordanie'),
('\�d\�\�\�\�M�Y��','Kazakhstan'),
('ST\\k\�/@2�6:a�\�!','Kenya'),
('\�q��\�Fe�j�NE?\�\"','Kirghizistan'),
('�\r\�[-XC䖒���r{)','Kiribati'),
('\�P	�-On��\�3��\�.','Koweït'),
('~M��tN\\��{ܗJ;','L\'ex-République Yougoslave de Macédoine'),
('�v\�*M\��L��\\v?','Lesotho'),
('[/\�7ZIի�\�њ���','Lettonie'),
('�m\�CM\"EЦ�;8�R\�','Liban'),
('�O{�BM�l��^,�1','Libéria'),
('\'\�\�\� \�D���<�\�i\�','Liechtenstein'),
('\�	\�pOb�*\\t\�v+�','Lituanie'),
('}{Z\�J��^	f*s\\','Luxembourg'),
('VWaҸK\��%��~\�,','Macao'),
('Ѡv\�TKV�&F5\��','Madagascar'),
('�\��R�\�M[�W�XV�\�','Malaisie'),
('�+��\�\�M\�>ݍ�\�/','Malawi'),
('\�\"LM\�Al��57�=\��','Maldives'),
('Q\���\�IC���@t\�\�','Mali'),
('\��\�}D����;��\�','Malte'),
('\n�`\�c�LZ��d��_c\�','Maroc'),
('�q\�\�\�D��3�ژ','Martinique'),
('V�\�\�o�M�\�)��\r��','Maurice'),
('��}�:3IA����&Ҭ�','Mauritanie'),
('\r\�\���N(��\�O\�','Mayotte'),
('�8�\�M<��\�\�Z܂','Mexique'),
('�0�HXH�.\Z�\�4','Monaco'),
('��&\�Bf�\���b\��','Mongolie'),
('#{�H\"AJ`�7e\�\�l�','Montserrat'),
('-\�8\�]�G��d]�','Mozambique'),
('\�s\���Mљ\�N\�\�X�','Myanmar'),
('b=\�\0�M\��w\�b\�t�a','Namibie'),
('�AaMIؤ��\�+	F&','Nauru'),
(')M�\�^cL�j��-','Népal'),
('��\�\�^[Ce�K~\�h���','Nicaragua'),
('D�M` #O��i�\��\�','Niger'),
('\�k\�H\�+I*�v��<\�s\�','Nigéria'),
('/\��;��H[��xJv�,','Niué'),
('�3`@��Mk��Ǹ\��','Norvège'),
('\�sAS\�\�Oe�; \�\���Q','Nouvelle-Calédonie'),
('e\�AҝIȠ0o&p(\�','Nouvelle-Zélande'),
('���sEzC���>\�D�H?','Oman'),
('\�\�$�J!��ҥ;��','Ouganda'),
('x�\0zCǫܱ���','Ouzbékistan'),
('�f\�C�N���3%\�nÛ','Pakistan'),
('�nm\�\�@<��*_(Qط','Palaos'),
('dr�	�B}�!D�$��\�','Panama'),
('�\��\��F��\�^��^��','Papouasie-Nouvelle-Guinée'),
('i�N&Y\�J\��-F���','Paraguay'),
('\�\�\�\n�FĳJ\�w?z�','Pays-Bas'),
('��kc\��I��\�h\�J�','Pérou'),
('�)I�yH�F\�/\��','Philippines'),
('d�g\�bO��5f\�`E�','Pitcairn'),
('���<Kz�Zzb\Z\��p','Pologne'),
('j+�jAM��f\'\�v8\�','Polynésie Française'),
('�\�\�*yL��5\�>��R-','Porto Rico'),
('\�>�C��G���\n\�\Z��','Portugal'),
('�PCW2!@���\Z`sBU[','Qatar'),
('��\"�nDF��)!m�','République Arabe Syrienne'),
('ҟ����N�~cx9\�m\�','République Centrafricaine'),
('%\�Í�\�N:���|�=�','République de Corée'),
('\�\r?\Z�@\���B\�\�\�h','République de Moldova'),
('�S�e\�h@\�@��2�\�b','République Démocratique du Congo'),
('������H8�\�˳\�\n\�','République Démocratique Populaire Lao'),
('��l��C2��\�\�ɂM','République Dominicaine'),
('�i�/F�\�\��\�bЛ','République du Congo'),
('�6\0�\�O��A��JB','République Islamique d\'Iran'),
('�\�\�\�D���3yA\�9p','République Populaire Démocratique de Corée'),
('�@�G\�$J`�1~BX�\�','République Tchèque'),
('ԫp\�\��EP�ܷz\�P\�Z','République-Unie de Tanzanie'),
('\"h\�\�WA��ڙo\�\�\�&','Réunion'),
('u�<B]�K��Վ{�Y\�','Roumanie'),
('�)�`҇F\r��Qyʜ7','Royaume-Uni'),
('hxJ�mEةѵ=6�9','Rwanda'),
('̘P�S�D}�4�fL\�OK','Sahara Occidental'),
('3!û��Cܢ\�[����\�','Saint-Kitts-et-Nevis'),
('h\�3�B\�V\�s9e�','Saint-Marin'),
('�O�[�HZ�5��_�D','Saint-Pierre-et-Miquelon'),
('�\�ڱjF�� �]%','Saint-Siège (état de la Cité du Vatican)'),
('HE/5\�\�I0��*�n1�','Saint-Vincent-et-les Grenadines'),
('>s�5WFl�\�\�8���','Sainte-Hélène'),
('hz��>�MM�vOI�\"H','Sainte-Lucie'),
('�NA}T^H��\�3C\�͚i','Samoa'),
(',���}EM��C\�\��9','Samoa Américaines'),
('N\�1HW��a#=:','Sao Tomé-et-Principe'),
('�He��J���\�T�lA','Sénégal'),
('l�YF\rEC�\���','Serbie-et-Monténégro'),
('�	c�nKGV��蟲�1','Seychelles'),
('di��5\�Oy�\ZeHF�\�y','Sierra Leone'),
('!\�H���B*�$g6)�\�7','Singapour'),
('Q��XD����(E\�','Slovaquie'),
('�\��UfK\�\�\�\�0|','Slovénie'),
('\�>H\�2M�eVXSg�','Somalie'),
('\Z\�%�D6��=#�;','Soudan'),
('\�-\��\�\'G�\�\�׿�-{','Sri Lanka'),
('VwB+O�O\�\���WG','Suède'),
('�D�1M�C/K͏h','Suisse'),
('\r\��ykNJ�\�%\�\�\�+\n','Suriname'),
('\'b\��O ��SXބ\�','Svalbard etÎle Jan Mayen'),
('�\�{\Zu\�O���d\�\"�4\�','Swaziland'),
('\Z�:\�\�l@ڭ\n��&o�\�','Tadjikistan'),
('T01 eyL��;w2![�','Taïwan'),
('\0\�Q�]\�B��T\�\�w','Tchad'),
('��j��B\�6�HK','Terres Australes Françaises'),
('b�B��J���\�5 �\rH','Territoire Britannique de l\'Océan Indien'),
('\"(\�\�ùJ��}>5]�\�','Territoire Palestinien Occupé'),
('\�K\�咬D��G\�L\�\�0�','Thaïlande'),
('�MQ�\�Lg��0\�\�\�d','Timor-Leste'),
(' \�G���\��b�','Togo'),
('5\�\�\�\�\�L\"�V0}�Z\�','Tokelau'),
('�`\��p\�C`�㚁\�\�\�\�','Tonga'),
('wE)\�__Co�<>#���','Trinité-et-Tobago'),
('�E�ԭG\�����UZ\�','Tunisie'),
('y�2��O���8�9Ԃ','Turkménistan'),
('!@\��\�B���:e�\�','Turquie'),
('�\�i\�7MH���\�\�\�&','Tuvalu'),
('#�D\Z\�;NҦ\�ܫ�G2�','Ukraine'),
(',j�kkqLV�i\�^2','Uruguay'),
('N��n\r�@���^\�Y\�G\�','Vanuatu'),
('a�I�U\"DW��\�F\�\�','Venezuela'),
('6�E\�\�G��]�kn�','Viet Nam'),
('9�j��8O\�S�Lr�σ','Wallis et Futuna'),
('�\�\�\�	H<�4��s\�;N','Yémen'),
('VD\�\�jN���\��\�\Z~x','Zambie'),
('�C.�C��$\�N_v','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-09 13:33:03',8),
('DoctrineMigrations\\Version20240201152951','2024-02-09 13:33:03',4),
('DoctrineMigrations\\Version20240202084749','2024-02-09 13:33:04',5),
('DoctrineMigrations\\Version20240202150901','2024-02-09 13:33:04',3),
('DoctrineMigrations\\Version20240207105701','2024-02-09 13:33:04',4);
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

-- Dump completed on 2024-02-09 13:33:06

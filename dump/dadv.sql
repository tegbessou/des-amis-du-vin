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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-09-16',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-09-16',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-09-16',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-09-16',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-09-16',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-09-16',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-09-16',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-09-16',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-09-16',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-09-16',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-09-16',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-09-16',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-09-16',NULL);
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
('e\��c��LC�^:%s\rs','Afghanistan'),
(')~0\��I9�\�[�\�tH�','Afrique du Sud'),
('�\"��yK�����\��','Albanie'),
('Xh���B\�`�oš�\�','Algérie'),
('J���F6�Q\�rR\�ˢ','Allemagne'),
('\�\��)\r�O��F�\�\�&(�','Andorre'),
('{C.�\\@���`�Id\�','Angola'),
('$3\�\�Jk������\�','Anguilla'),
('-Wv�\�)O�7�n��G�','Antarctique'),
('.D)0ŻM	��15 (8*','Antigua-et-Barbuda'),
('\�0PTaO��;j�\�\'x','Antilles Néerlandaises'),
('�(�\�\�F�hTkh�8','Arabie Saoudite'),
('�gD>I�N<��k� \�\�','Argentine'),
('z\�\�\�MMX�&�?\�C+�','Arménie'),
('\�_�o\�>L{�O����W','Aruba'),
('\�2vT�L��\�\�\r&�','Australie'),
('�}�`�@Ç�\�勅 ','Autriche'),
('�R>5L�p�\�7�\�1','Azerbaïdjan'),
('᥅�\rA?�Q)\�\Z9','Bahamas'),
('\�\�\�hD���\�2��\\','Bahreïn'),
('�/d\�dL\���2w\Z\�)','Bangladesh'),
('�i|_<B\�\�ء��\�','Barbade'),
('I`t-�CC���PJ/','Bélarus'),
('|\�3G\�F��nmF���','Belgique'),
('\���*CF\����\�l�\�','Belize'),
('M^��\�@B�֣o\nr�)','Bénin'),
('e�`�gMf�\�7��\�	','Bermudes'),
('G��\��B\�9q�r�4','Bhoutan'),
('\�Hs>V�J-�n[�\�&�\�','Bolivie'),
('+\�\�Jɉ�x{\�Gb','Bosnie-Herzégovine'),
('\�p\n*�\�AʠJ?��vt','Botswana'),
('\�\��2��Bv�а\�\�>5{','Brésil'),
('w�\�\���FŇK+�\�o�\�','Brunéi Darussalam'),
('q\�@�NL댽#��jG','Bulgarie'),
('\�#?^q�O��[�\�\�^�\�','Burkina Faso'),
('\�#$�!Dݷ\�a\r�8)','Burundi'),
('�{9���E0��b_���','Cambodge'),
('q�@Z3F;��閭e\�','Cameroun'),
('A�\�\�Fb�D%�H��','Canada'),
('��:CǶM�^a��B','Cap-vert'),
('w\��A ��?/^me\�','Chili'),
('�\�7K���\�\�AN','Chine'),
('Q�>�-rI��*�?���\�','Chypre'),
('�gA��\�I��\�\�]�\�3 ','Colombie'),
('�\�\0FOM�k��\�\�\�','Comores'),
('\�)q��]H��j#\�3�W','Costa Rica'),
('\���~.�J�P/�~A\�','Côte d\'Ivoire'),
('2�P\ZN1O��_Le;\�4\�','Croatie'),
('�\��бG>���[�\Z�\\','Cuba'),
('&B�a{\nBp�\��\�\�|�K','Danemark'),
('�V(�K\��\rĹ{6R5','Djibouti'),
('([8\�\�Lj�؎\r/Vi','Dominique'),
('o#VRN?�@\�Z��','Égypte'),
('�}uP\�\�Bv�\�\0\��`!d','El Salvador'),
('�&1[�\�G\�Ձ\�\�\��','Émirats Arabes Unis'),
('q�g\�\�>@i�m�H!�׊','Équateur'),
(')\�|<MEI���=\�8+W','Érythrée'),
('*Ɇ��.D��ɢ\�iZ\�','Espagne'),
('V\�ԧj�K$�G\ZO7\�/\�','Estonie'),
('	�~\�Ib�������','États Fédérés de Micronésie'),
('+�RT{�Ja��Z>+\�<','États-Unis'),
('\n#e\� Nl���\�\�e\�','Éthiopie'),
('�5\�\n\�dG��&\�+���)','Fédération de Russie'),
('�R\0n�F�4\�ȭv\��','Fidji'),
('۲��JD��|��)<','Finlande'),
('��\�LKh�Қ��o\�','France'),
('�U�;d\�Oް1\�!\�88','Gabon'),
('D��Z�K_��=�ɡ\"','Gambie'),
('h/�\�OC\r�k�x\�2\0','Géorgie'),
('\�e4*}F��\�ɻ:','Géorgie du Sud et les Îles Sandwich du Sud'),
('�?��� DS�9+�h','Ghana'),
('m��\�ϗI��i\�6\��\�','Gibraltar'),
('�\�RG�\�\�8}fW<','Grèce'),
('\�\�e�N��ȏ\�g._','Grenade'),
(':\�a\�TM�!(\�P:.','Groenland'),
('Ö\0IZgC\�k7�\�@','Guadeloupe'),
('�ES�\�\�Bk��x�dp�','Guam'),
('�\��E\�G&�wԪgYZ','Guatemala'),
('b��\��O달ʟ�g\�','Guinée'),
('yY\�\�p�J���.�;','Guinée Équatoriale'),
('e��CX��P�\�E�','Guinée-Bissau'),
('�l-d�\�Bܓ�\�\r3Z\�','Guyana'),
('i�{\�\�(H̶��G��\�K','Guyane Française'),
('\�o\�N�\�Lo�=\"�\�\�4\�','Haïti'),
('mvħkEݣ�q\�\nOR�','Honduras'),
('O�{�\�RN��o�kҘ','Hong-Kong'),
('7K�H�����\�\�w�','Hongrie'),
('g/\�\�K\��\�j��#�','Île Bouvet'),
('ncQũL޾\rg����','Île Christmas'),
('�߉ܸ+Dc��\��cuQ�','Île de Man'),
('M/̂\\GR���N\�\�','Île Norfolk'),
('\�\n\�\�~Hz�\�lL��\�','Îles (malvinas) Falkland'),
('�a��IL�c`%����','Îles Åland'),
(',#�\�$Ē[W��\�','Îles Caïmanes'),
('\�1\�8�&NS�\�\'\�\�[x\�','Îles Cocos (Keeling)'),
(',L���\�I�\Z�\�6O%','Îles Cook'),
('y�6BtI�]�޾�zG','Îles Féroé'),
('	9�\�w�M��\Z�\��c','Îles Heard et Mcdonald'),
('@QB\'[E\�sV �\�*?','Îles Mariannes du Nord'),
('�d\�\�0B]�oD�\�\��','Îles Marshall'),
('�\�,\�,�F:�q�\�DE\�','Îles Mineures Éloignées des États-Unis'),
('�\�j\�BN���\�\�6�.','Îles Salomon'),
('��fG:�6F��\�S�','Îles Turks et Caïques'),
('��@\�\�Nw��sv:\�`\�','Îles Vierges Britanniques'),
('XW��M5��)\�3Ҕ�','Îles Vierges des États-Unis'),
('C.\�\�\�%I3��T�c\��c','Inde'),
('B.\�A�\�E���#�\��','Indonésie'),
('�n�v�MפW�Kh�\0','Iraq'),
('<�\�0_B\�S��H�E','Irlande'),
('w8apsD\�־y�rF*','Islande'),
('\�o�y�@�����,�','Israël'),
('�\�>��eC���\�S\�2�v','Italie'),
('*8\�2#AER�*\'[\�\�Z�','Jamahiriya Arabe Libyenne'),
('\�Q\�\�{~L݇�I3H','Jamaïque'),
('��氥,E��X&ǃ�/','Japon'),
('���a�\�Mf�y���7\�','Jordanie'),
('��s\�A_J\n�]\'#H�s','Kazakhstan'),
('�\�q\�>�B��xV�wŞ','Kenya'),
('-0�$oE՞ab�=\�Lx','Kirghizistan'),
('i�\�\0\�\�J\Z��l�w�\"','Kiribati'),
('\�{m\�xB����F�n','Koweït'),
('�W`plN6�w���\�&','L\'ex-République Yougoslave de Macédoine'),
('�T�F\��FmI\�,#G','Lesotho'),
('Oh��xA����/���','Lettonie'),
('#�I���FݬCz/i\�Tw','Liban'),
('�GմyC\�=x��\\l�','Libéria'),
('�2)\�hJ۷T^|8rp�','Liechtenstein'),
('\Z\"Q\�LA����ھ�\�2','Lituanie'),
('\�5�Nm�G^�9\�\�rf\�','Luxembourg'),
('\� �\�\�K��A;bR\�\�','Macao'),
('Vo�\�V�F򟗬\Z\�/e','Madagascar'),
('eL��B\��Z��ԇ��','Malaisie'),
('C���|L���\�:7\�M','Malawi'),
('rH�\�4\�K��FP�wM�','Maldives'),
('6ɔ�XnDB�\�\�Ms\�!','Mali'),
('�Lv�h�Ht�\�\�\�\�<Q','Malte'),
('\�(8\�I���lW~yd','Maroc'),
('{\���U�Eܪ\�6�cE','Martinique'),
(':�?H���&\�5�m','Maurice'),
('���!\�Of�H�\�K\n~\�','Mauritanie'),
('	f\�<\�NFȮ\�_t!�^','Mayotte'),
('vP\�>��D��p\'\rT7�o','Mexique'),
('`\�\Z\�\�FF��4\�\�Iq','Monaco'),
('I\�\��\�L@�����@f)U','Mongolie'),
('\�G\�C �K�������','Montserrat'),
('b�v&$Nٌ��Q\�7�','Mozambique'),
('�r\�Yu\�N5���F\�h�','Myanmar'),
('�w\�\�\�L��\�\����\�','Namibie'),
('�\n\�\�CE8��\�%$C','Nauru'),
('G%l\�TM��\�vd�P:N','Népal'),
('Y\�\�\�J\0K@�\�<\�nU!','Nicaragua'),
('\�3\\\�AC��\�\�\�\�G/','Niger'),
('�\�\�|�UE¡\�\�Y\�CC','Nigéria'),
('j)D�P�He�g��\�3!','Niué'),
('\�)\�e7^L.�\�\�*�ۦ}','Norvège'),
('����l�D|��lOF�i�','Nouvelle-Calédonie'),
('\���pO;�\�\�\�@\�\�','Nouvelle-Zélande'),
('�#\�]qCOK����a�\�','Oman'),
('2�?\�\�.O9�FI�yT\�','Ouganda'),
('D����^E.�\�\����','Ouzbékistan'),
('Wa\�0B\�\�\�-��','Pakistan'),
('o@3\"�SK���Fʦ\��','Palaos'),
('R\�\�\'/\�A��`��\�B','Panama'),
('C�My\�*N@��/\��j�\�','Papouasie-Nouvelle-Guinée'),
('��\�#pHD�\�\�={�v','Paraguay'),
(':�3@\�D��,�%�\n','Pays-Bas'),
('\��\�1M��#�\�\�oo','Pérou'),
('-�_\�ԻHɨ\�K#�3H','Philippines'),
('+B�܊M��mԓ@�','Pitcairn'),
('z\�aؔBR��\�\�\�\�a','Pologne'),
('\��\�MۦL��8{\�./;�','Polynésie Française'),
('r\�]!�K�:ա\0\�\�','Porto Rico'),
('�(\�\�75MW�~H\�D��','Portugal'),
('w%�`Bo���K\r%\�','Qatar'),
('J��\�k@�B/\�','République Arabe Syrienne'),
('�\�Y|;�F���@�����','République Centrafricaine'),
('\�\�k�\�CB��n�\022\�','République de Corée'),
('\n�\0x�@��B�:�w�\�','République de Moldova'),
('y�*\�L���\�1NlX','République Démocratique du Congo'),
('U\r\rFR�\0�#\�ջH','République Démocratique Populaire Lao'),
('	�l\�*�Iy���\�آ�\�','République Dominicaine'),
('\�]_�^�Fa�\�\��\�\�I','République du Congo'),
('\��IU-H��d\�\�q���','République Islamique d\'Iran'),
('���DfJIq�!\�o\�D��','République Populaire Démocratique de Corée'),
('\�%���M��\�h�}��j','République Tchèque'),
('o�W\�B׍*\�vcb\r','République-Unie de Tanzanie'),
('�\��\"�K��Z�O�0','Réunion'),
('㕓\�\�F���f��\�}\�','Roumanie'),
('��nH�\�F��<#\�\�\�@','Royaume-Uni'),
('a@�v\�Aڕ5+\�\0T\�\�','Rwanda'),
('��EZ~~C_�\�2\�\�i|','Sahara Occidental'),
('vQY�\�B9�\�z\�\�\�','Saint-Kitts-et-Nevis'),
('\�gmz�[@�����\�1Ke','Saint-Marin'),
('\�5p2\��C�����Xb','Saint-Pierre-et-Miquelon'),
('\�\�\�\� M����,�\�i�','Saint-Siège (état de la Cité du Vatican)'),
('�#9��	J���X�\�N·','Saint-Vincent-et-les Grenadines'),
('\�\�\�xpgC�L�<B�','Sainte-Hélène'),
('>�\�HD��\�}�T�\�','Sainte-Lucie'),
('�\�-\�\�\\G��\'/3�\�{','Samoa'),
('��rJ�@C�\06p','Samoa Américaines'),
('|�d��MM�(��:\�L','Sao Tomé-et-Principe'),
('\�\�z}\�LHꬳ�E\�iDV','Sénégal'),
('aW\�uKj�}Z��q','Serbie-et-Monténégro'),
('Us�X)C\�\�@Hi\�C','Seychelles'),
('a�og\��H�\�e�,��	','Sierra Leone'),
('\�ɇ\�L_�Cڮ�','Singapour'),
('ZTzahqI\�[\�	\Z02','Slovaquie'),
('�A<��Bфa\��?<\�\�','Slovénie'),
('\�\�\�BM�ZE\�\�f\�\�','Somalie'),
('M(YH��Cs�G~,�{\�B','Soudan'),
('(V\�;33O���[\�6\�D','Sri Lanka'),
('�p�QhI���U\\\�M','Suède'),
('i>\�\"?D���W2sM!i','Suisse'),
('\�#e���JA�\�\�b��\n','Suriname'),
('\0I:\�O�������\�','Svalbard etÎle Jan Mayen'),
('R��Ͳ�C���\�\�O\�/\"','Swaziland'),
('�yA�\�H\�v�$E�T`','Tadjikistan'),
('�\�`�\�\�Iݧ`�Ov[0','Taïwan'),
('�6~\�\�E˅ؖ��$��','Tchad'),
('ر��\�rG\�\�W.b�JK','Terres Australes Françaises'),
('+j7.�IV�\�2\�\�\�7','Territoire Britannique de l\'Océan Indien'),
('V軩J<�\�b��;\�','Territoire Palestinien Occupé'),
('\�J|\"��L�*Ĕy','Thaïlande'),
('�uc�\�J;�	nR|m','Timor-Leste'),
('\�Q��gM@���\�R�Ͷ','Togo'),
('P\�	�\�\�@\�]E�W�0]','Tokelau'),
('\�\�\�kKϲ�\�\��c\�','Tonga'),
('\�.��IS�?\�\"\�','Trinité-et-Tobago'),
('���\n\�\�E&���\0\�E\�','Tunisie'),
('\0��U	�C��P�v���f','Turkménistan'),
('9�\�@\�/I��w\'[�M��','Turquie'),
('��1(7/H2�a���\�&','Tuvalu'),
('�H�\�`\�A��1���2\�=','Ukraine'),
('\�~m�y%J\"�q\�D�eZ','Uruguay'),
('m\�&@N��h��\�f\�','Vanuatu'),
('K^��\�@v�����\�Ћ','Venezuela'),
('\�<\�\��`I��V;�	\�NY','Viet Nam'),
('=�\���HI����s�','Wallis et Futuna'),
('����5\�@T�׌��z','Yémen'),
('�ݻ\�\�G�qď\���','Zambie'),
('[n0 \�K��\��lC/','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-09-16 06:59:47',3),
('DoctrineMigrations\\Version20240201152951','2024-09-16 06:59:47',3),
('DoctrineMigrations\\Version20240202084749','2024-09-16 06:59:47',2),
('DoctrineMigrations\\Version20240202150901','2024-09-16 06:59:47',2),
('DoctrineMigrations\\Version20240207105701','2024-09-16 06:59:47',4),
('DoctrineMigrations\\Version20240319212437','2024-09-16 06:59:47',2),
('DoctrineMigrations\\Version20240614133504','2024-09-16 06:59:47',11),
('DoctrineMigrations\\Version20240617165906','2024-09-16 06:59:47',8),
('DoctrineMigrations\\Version20240708061729','2024-09-16 06:59:47',12),
('DoctrineMigrations\\Version20240801202153','2024-09-16 06:59:47',2),
('DoctrineMigrations\\Version20240815153823','2024-09-16 06:59:47',2),
('DoctrineMigrations\\Version20240916065051','2024-09-16 06:59:47',4);
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
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-09-16 06:59:48');
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
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `owner_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`participants`)),
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

-- Dump completed on 2024-09-16  6:59:48

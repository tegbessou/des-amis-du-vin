/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-12-15',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-12-15',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-12-15',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-12-15',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-12-15',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-12-15',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-12-15',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-12-15',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-12-15',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-12-15',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-12-15',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-12-15',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-12-15',NULL);
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
('��b[\�M\�\�\��\�\�','Afghanistan'),
('d\�L�_>I\�}�\�\'�\�','Afrique du Sud'),
('ڑ$�g�OκRG4,\�\�X','Albanie'),
('�KM\"�\�F}�Z�\�\���\�','Algérie'),
('Łu�tD=���\�\��l�','Allemagne'),
('��&B�jH��������','Andorre'),
('@��) WD���w?\��','Angola'),
('v�\�A��NS��R��','Anguilla'),
('9\�w�/A響��\�i�','Antarctique'),
('U\�k\�E\�L���$i�\�\�','Antigua-et-Barbuda'),
('K\�#\�\nK��wZ�\��','Antilles Néerlandaises'),
('o�\�\�d\�Eտ��7#��\�','Arabie Saoudite'),
('�\�\���NA�\�LJ\��4\�','Argentine'),
('��\�\��Ds�\�Kk�|a@','Arménie'),
('x��F\�Dt�\�\�<-\�\�','Aruba'),
('\�Gύ K���Z\��I','Australie'),
('�\�,kdC��ޟ��\�9','Autriche'),
('�3\�$y@��\�ٴ\�>^','Azerbaïdjan'),
('y\�7\�	jJԆU\\զ\��T','Bahamas'),
('Wҵ$\��F\�7�\�\n%\�','Bahreïn'),
('zb�\�XpA¼\�\�\�\�<V','Bangladesh'),
('��V\�\�GG�\nӰ@','Barbade'),
('�\�\�]�9A��\�ʢ\\5','Bélarus'),
('m\�\r\��\�N����h\�\�m\'','Belgique'),
('�1�\�\�\�F��Ԥ��.;�','Belize'),
('�\�\�nz�K=�ŗ�\���b','Bénin'),
('xa\�{PD\�\�ob*U','Bermudes'),
('\�\� >@���1\�s\�\�\�','Bhoutan'),
('�@~\�L@M�\�ҟǊL�','Bolivie'),
('\�\�\�b�K���gz�\Z','Bosnie-Herzégovine'),
('x\� �oZK;�\�aN�n!','Botswana'),
('�\�\n?�KF�I]\�l\�\�\�','Brésil'),
('\�\��b�KU�Z!_��R�','Brunéi Darussalam'),
('@��0\�K9���t\"\�7\�','Bulgarie'),
('��b�\�OT���\�5\�','Burkina Faso'),
('!u�M�\�I|�~g�e	S�','Burundi'),
('�?\�,�N��u��p{','Cambodge'),
('\�(2O\�C����GgV 0','Cameroun'),
('I\�%�i@����2{�\�','Canada'),
(':0�9\�\�B\��P�鄆�\\','Cap-vert'),
('[}*��Dp�6Ṁ�a','Chili'),
('\�N\�\�>E\�#�\�	,\�','Chine'),
('|4\�0\��B����_+�#5','Chypre'),
('ܮ!�AJ���S�S�','Colombie'),
('	\rRr�N\��\\C4	��','Comores'),
('\�o�Qe@_���\\\�30','Costa Rica'),
('�o3�I���\�\'H\�:','Côte d\'Ivoire'),
('\�,=��~AU�6-�\�\�Y','Croatie'),
('��H�MJ�k������','Cuba'),
('����\�hF\�\�=i��HK','Danemark'),
('�K\�6��Fɿ�|\�u�fq','Djibouti'),
('\r?\�\�\�DI��ڱw���','Dominique'),
('c���/�@��Ia�ij\�\�','Égypte'),
('=q�U�bM��\�9\�T\n','El Salvador'),
('�\�ྲྀ[GO��!����','Émirats Arabes Unis'),
('\��g?\0\�AE�n_\�y\�','Équateur'),
('\�k���\�K\�\� \Zv','Érythrée'),
('Z:���gGə{W0\n׃�','Espagne'),
('�\�fπNr����5�3\�','Estonie'),
('\�9�k�JN��\�7�\�Szw','États Fédérés de Micronésie'),
('�SN�gE��2\�\']\�','États-Unis'),
('/��Y\�\�Fs�~��ν?','Éthiopie'),
('�\�\�SAN��=L4�','Fédération de Russie'),
('?yw\�\�F�8E>��ի','Fidji'),
('����T2O\0�Sȼrd\�','Finlande'),
('�%\�5\�B��}I\��\�\�\�','France'),
('�\�J�Oǃ1�dR��','Gabon'),
('��@+�	I/��ި\� �','Gambie'),
('��R\�\'�C��(\�$K�Ih','Géorgie'),
('м<\�\�I1�;�)l�\�\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('\�<`\�sN�\�f��\\\0�','Ghana'),
('I�n\�\�\\C�0��`�ps','Gibraltar'),
('�$�\�I�5�\�:\��','Grèce'),
('d\�84�@������\���','Grenade'),
('�X\��!N��\�T��h��','Groenland'),
('C\�/��|N��VeET[|#','Guadeloupe'),
('hۻ\�SC��Or-ۘW','Guam'),
('�9\�\�C\�L\�r�Zs,','Guatemala'),
('�0�n�C묇���7\�','Guinée'),
('\�ڍ.	L��B���u>/','Guinée Équatoriale'),
('Ǵ\�Z�N��N��\�x','Guinée-Bissau'),
('Y�A(Mԇ�\�U\�&R','Guyana'),
('�6\�a��F��I(\�@�^','Guyane Française'),
('�L\�0\�zJ���4p\�\�\�/','Haïti'),
(';\�R\�J�J\�\�{','Honduras'),
('\�wJ�˭O��xr\�H\�;','Hong-Kong'),
('\��c0\�H/�U�\�t}#\�','Hongrie'),
('5j�Ix�\�\�9��uU','Île Bouvet'),
('�L[�\�XAj�\�w�(�A]','Île Christmas'),
('R\�SU/�C	�\'5\�ϗ�','Île de Man'),
('\�>\�U�BB��\�%\�{�','Île Norfolk'),
('�n\�`<G@Ƨ\�\�\r\�3�','Îles (malvinas) Falkland'),
('B���t5CX�\���H�','Îles Åland'),
('N<p\�QH#�\��� ','Îles Caïmanes'),
('N�H*�TLь�{','Îles Cocos (Keeling)'),
('�:�\�1\�D��`�$�\�V','Îles Cook'),
('\0�\�\�)G=�c�f\�<A�','Îles Féroé'),
('�\�s�0G!�\�R�\�\��','Îles Heard et Mcdonald'),
('a1��\�^N��]m�\�\�','Îles Mariannes du Nord'),
('\�F�D`�GڌRQ.\�\�bx','Îles Marshall'),
(' �d�BbH\n��x\'p\�\�','Îles Mineures Éloignées des États-Unis'),
('v}�\�.H��\�JY۷','Îles Salomon'),
('NY\�U\�dH��Q�\�F\�Q','Îles Turks et Caïques'),
('G�(lYiL���~�o\�7','Îles Vierges Britanniques'),
('\"pv���N\\�)0Gw�T�','Îles Vierges des États-Unis'),
('_-Y\�BL��;�\��л{','Inde'),
('�,�w��G.��\�\�`\�','Indonésie'),
('�Ф\�(M6�\n=�k','Iraq'),
('��v\�M��	N�\�!\�','Irlande'),
('CW��\�J4��\��G��','Islande'),
('hk�PE\�MI��\Z\�\��Y`','Israël'),
('�\�\�\�K��fѮ��\�','Italie'),
('	�MeE_C0��\�j\�[','Jamahiriya Arabe Libyenne'),
('د�&\�O����\Z���\�','Jamaïque'),
('�)�cL\��\�\"��','Japon'),
('�\�\ZqH/�0>P\�\�\�','Jordanie'),
('\�\�C��@˭*��vh\�@','Kazakhstan'),
('\�\�{\�JF���\nFZ��M','Kenya'),
('\���z�\�A\0�;�	��','Kirghizistan'),
('w\�\�bMD�\�4_mȆ','Kiribati'),
(',`\Z0\�Eɢ\�C���F�','Koweït'),
('�\�\�Q(D^�d�\�G�\�','L\'ex-République Yougoslave de Macédoine'),
('{�\��Cj�\�[��\'\�','Lesotho'),
('\�\�:@�-Hm�q����\�(','Lettonie'),
('�\�@\�4�D9�MnX(�J','Liban'),
('\�\� \�e�G��ߧ��\�d','Libéria'),
('�\�ج\��M��\'\�Q\�\�/','Liechtenstein'),
('\�*Kf�A��O\r\�\�p9A','Lituanie'),
('�bڭSG��\�>3��','Luxembourg'),
('p\0\�\�\"\�J~�5d΍\�l�','Macao'),
('!�Iw�\�N��5HZj\�~�','Madagascar'),
('��N\�QONA��\�\�!RK','Malaisie'),
('\�\�qm�L\n�\�aA\�5-','Malawi'),
('\�肮ѿKߛ\Z��x	\��','Maldives'),
('G�\�s\�.GV�\�\�)\��(�','Mali'),
('�\�\�\�k\�B��ˀ�\�\�','Malte'),
('y�s\�C���\�ݚ�s','Maroc'),
('wsT4�VN��d\�5�\�\�','Martinique'),
('D��\�bAMi�����\�&�','Maurice'),
('\�!\�\�\�D��d9C�\�R','Mauritanie'),
('%61\���Bc�e�;��Y','Mayotte'),
('{%Ө1�O\�\r��_\�x|','Mexique'),
('i\�?C\�EC�\ni�{�{�','Monaco'),
('\�\�\�Oa�%���k8E','Mongolie'),
('i�.7U\�I��Ma`��X','Montserrat'),
('�����B?�\�\�\�','Mozambique'),
('k�|�\�H\Z��c+F)�','Myanmar'),
('΁�B�4�h���\�','Namibie'),
('�uU?#~F���\�Em�#6','Nauru'),
('�J�;\�-Bנ�ԛ�\�','Népal'),
('\�\��\�@��F�:\�\0\0','Nicaragua'),
('0\���fIޮ*e&��R�','Niger'),
('�%\�\�=AͤCU��3:','Nigéria'),
('u{�î\�An�q�([*\�','Niué'),
(',5l��2J�mp��~�','Norvège'),
('\�7`K1jMĠ	N|�\�&','Nouvelle-Calédonie'),
('�W6�\�IO��\�r�r}�','Nouvelle-Zélande'),
('6a\�o4\�B�\0��}�\�p','Oman'),
('\�0ۖ\r�K����\�{�$','Ouganda'),
('\�\n��\�\�Fػ�#\�\�\�\�','Ouzbékistan'),
('溵�O��\��\�F\�','Pakistan'),
('�\"\�wZAƳ~\�g�ޗ','Palaos'),
('p\�Ѳ�N{�<\�\�\�\�\�`','Panama'),
(')m�\�\�\�M�5�E�h8\�','Papouasie-Nouvelle-Guinée'),
('\�\�\�h�E��ę�t��9','Paraguay'),
('\�ٷ\�\0E�ŏ\�fF�','Pays-Bas'),
('�n�w8gF@�p\�(9�MS','Pérou'),
('�oS\r\�HC�\"�5�A*O','Philippines'),
('!W\�\�\�WA����\�A\"\�','Pitcairn'),
('�˸�\�\'K����y���','Pologne'),
('\�:H�\�ECl�\���R','Polynésie Française'),
('��V\�b�C��[�\�\r\�\�z','Porto Rico'),
('&\��BX���R\��~','Portugal'),
('\� s�\0Aɂ�lV�g\n','Qatar'),
('�ƨ[i�Lދʦ��N\�G','République Arabe Syrienne'),
('�	�NGsK=�1{vx�\�o','République Centrafricaine'),
('~�)nR�O��\�T�K�','République de Corée'),
('RX!\n\�C��\�V�\�L,1','République de Moldova'),
('�`u�LD�,K�\�4','République Démocratique du Congo'),
('��>eO�G=�A�L�b\0�','République Démocratique Populaire Lao'),
('�\��B���6�6Ė�','République Dominicaine'),
('h\�t��zJX��qf�\�','République du Congo'),
('L�d\�CHN��ü\�\�k!','République Islamique d\'Iran'),
('�#�n��F/�z¹�','République Populaire Démocratique de Corée'),
('\r\�$\�2�E%�TZ�X�\�w','République Tchèque'),
('\�9�SD��0�݋%i','République-Unie de Tanzanie'),
('��M�O9L����0��','Réunion'),
('\�\�`k\�\�F醰�D����','Roumanie'),
('<[ѳuwF��\�m\�.�','Royaume-Uni'),
('0�,ɉ/F\�ʄ�o@��','Rwanda'),
('��\�X�&KϞ<Tk�<','Sahara Occidental'),
('1!S&V\"K�\�}\�\�]','Saint-Kitts-et-Nevis'),
('��}�NL�\�nw\�e�','Saint-Marin'),
('��\�k�G{�\�lOy\n׆','Saint-Pierre-et-Miquelon'),
('ࡶQE��\�-\�\�','Saint-Siège (état de la Cité du Vatican)'),
('^\��\�RJ\'�V�\�x/�','Saint-Vincent-et-les Grenadines'),
('z���A߁\�x\��','Sainte-Hélène'),
('�k>�\�\�D�\�\��\�U','Sainte-Lucie'),
('��o%K���,�(�D','Samoa'),
('�~5�pEȡ���\�_\�','Samoa Américaines'),
('�c�&\rE:�\�g*\'D�','Sao Tomé-et-Principe'),
('��%�LNU�D��2��','Sénégal'),
('�.KQGEe�\� ��k~�','Serbie-et-Monténégro'),
('�\r7��\�F��e\�\�tF4','Seychelles'),
('4c\�\�;E��\�\�.\�غ','Sierra Leone'),
('z\�+��Ls���O\�\��\�','Singapour'),
('�Ctg%-E�>s�\�؝\�','Slovaquie'),
('�YpJkKn�\�\�\�[�n','Slovénie'),
('\�4U\�?BВo=w\��\�\�','Somalie'),
('#���<BY��Di2ֵ','Soudan'),
('`�=��C6��\ZGD)\�i','Sri Lanka'),
('�\�\�\\pK�\�	N�s	','Suède'),
('�\�l7\�A��d3s�\�\�','Suisse'),
('{<�\r9vKܺҚ\�\�\�͔','Suriname'),
('@\�\�x��B*��\�r�a\�.','Svalbard etÎle Jan Mayen'),
('�\�\09��L;�)h�\0Q�','Swaziland'),
('�\��\�\�E��5\�Խs\�','Tadjikistan'),
('�G\�\�a\�OǱV�1\��','Taïwan'),
('�ş6rJ���82�\�\�\�','Tchad'),
('Z\�&�HI����$�m\�','Terres Australes Françaises'),
('x�+�N��\�7\���','Territoire Britannique de l\'Océan Indien'),
('��,|	\�I�pTD\��','Territoire Palestinien Occupé'),
('\�\�\�u\�AB���\�\\EEP','Thaïlande'),
('�m1<\�E��\�\0�\�es0','Timor-Leste'),
('ϑ\�\nB\n�[��_�4\�','Togo'),
('\�ƃU\�L��\n\�i\�\�!','Tokelau'),
('%ޑ��\�GQ��Q���-','Tonga'),
('d�S���@�\�,\�','Trinité-et-Tobago'),
('\���MO�L	\�e���','Tunisie'),
('�狡�\�H��\rs\�\�3*T','Turkménistan'),
('n\�E�\�!MG�l\�{��','Turquie'),
('\�\Z\��@\�[0~-p�\�','Tuvalu'),
('R^�o�M��O�\�._','Ukraine'),
('��\r\�1Z@��no��)','Uruguay'),
('\�\�YFc�L��ɄK\\��','Vanuatu'),
('?�X\�\�\�J��\�\�>�\�','Venezuela'),
('~\�ULhH݂\�\�P\�?','Viet Nam'),
('\�MqO\�@B\"�\�7L�\�\�','Wallis et Futuna'),
('D�\�O�F�cC<-��.','Yémen'),
('c����\�Kڌ>.K��','Zambie'),
('\���\r\\IX�\�\�\�6�q�','Zimbabwe');
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
('DoctrineMigrations\\Version20240201152951','2024-12-15 20:32:31',5),
('DoctrineMigrations\\Version20240202084749','2024-12-15 20:32:31',2),
('DoctrineMigrations\\Version20240202150901','2024-12-15 20:32:31',2),
('DoctrineMigrations\\Version20240207105701','2024-12-15 20:32:31',4),
('DoctrineMigrations\\Version20240319212437','2024-12-15 20:32:31',2),
('DoctrineMigrations\\Version20240614133504','2024-12-15 20:32:31',11),
('DoctrineMigrations\\Version20240617165906','2024-12-15 20:32:31',10),
('DoctrineMigrations\\Version20240708061729','2024-12-15 20:32:31',12),
('DoctrineMigrations\\Version20240801202153','2024-12-15 20:32:31',4),
('DoctrineMigrations\\Version20240815153823','2024-12-15 20:32:31',2),
('DoctrineMigrations\\Version20240916065051','2024-12-15 20:32:31',5),
('DoctrineMigrations\\Version20240929091802','2024-12-15 20:32:31',10),
('DoctrineMigrations\\Version20241002164506','2024-12-15 20:32:31',9),
('DoctrineMigrations\\Version20241119144432','2024-12-15 20:32:31',12);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-12-15 20:32:32','root@gmail.com');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 20:32:33

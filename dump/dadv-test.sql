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
('�\�}�hMǇˠS\�Cن','Afghanistan'),
('���E�\�O��*��^\�','Afrique du Sud'),
('Y��\�ȑF��;\�0I�V\�','Albanie'),
('^\�eh�E��\�(f\��','Algérie'),
('��Y\�J�q_L�7\�','Allemagne'),
('\�.�J\�JхY�^=\�','Andorre'),
('Lp���O��\0�)Z\�','Angola'),
('\Zt\�+\�@LM�nqT�\Z','Anguilla'),
('�%\�\�gJH��\�\�0Z','Antarctique'),
('QL�\�\ZHk���:p�^','Antigua-et-Barbuda'),
('�V\�_IB�\��\�\�','Antilles Néerlandaises'),
('��S\�5\�@��Ζ�t9\�@','Arabie Saoudite'),
('\�fOnL��\ne*��\�~','Argentine'),
('ŷ\� }D���\�\'\�;�','Arménie'),
('\�y\n<^\�J��w\�\�1��','Aruba'),
('Ҥ=�uM\���\�P\�|�','Australie'),
('mdV�AJ��\05\�d','Autriche'),
('\�\0�B:LL�\�j\�۱`%','Azerbaïdjan'),
('�ɩ�\�VH̅��\�\�\�[','Bahamas'),
('/a<\��JI��\�Dӄ��','Bahreïn'),
('\�\�\��nLŇ\��\�p�','Bangladesh'),
('AvJV\0�NΧ-�SG�U\�','Barbade'),
('\�4I�\�I��~2IgX\�','Bélarus'),
('�A�vJ�M{�R��\�)\�?','Belgique'),
('[`Z\�A\�.��W*','Belize'),
('9��&H�D��e_0\�','Bénin'),
('<�\�\�EA�;�#\�a\�','Bermudes'),
('{ɀ��\�Cߦ�5ͦa','Bhoutan'),
('&ݍ�\�xF<�%�KUt��','Bolivie'),
('1�L\�\�sI��6��\�i�','Bosnie-Herzégovine'),
('\��\�0x\�Eۚ�L��\0','Botswana'),
('��\�\�z�Oh�����{\�','Brésil'),
('0(\�LK�2`\���','Brunéi Darussalam'),
('\�9�#pI�7�F�','Bulgarie'),
('_\�Nu�\�K3��4\�G\�\��','Burkina Faso'),
('\�&1��K��mCֆV\�','Burundi'),
('څu�=!Gǘ&��]%ѡ','Cambodge'),
('��Rد8D��\��Y�z','Cameroun'),
('\�\� Q\�C5��\�yǑK�','Canada'),
('�y_��A��L�r�!f�','Cap-vert'),
('{\�#A᫦̎�U\�\�','Chili'),
('-\�\�{�K��ۅ6��pg','Chine'),
('l�r�P@��\r@i�n�','Chypre'),
(']�\�R\�Nj�R�2�TX\�','Colombie'),
('*OE\'HC^�)���>8U','Comores'),
('sy�k}@܄\07\����','Costa Rica'),
('L3�ƇI\�x�D��\�S','Côte d\'Ivoire'),
('�\�\�5gC�+\�r�\r\\','Croatie'),
('&]�±WD��\�;�\�nQ','Cuba'),
('P�%\�\�M��E\�!�\��','Danemark'),
('Z\�\���L捝\��%�}','Djibouti'),
('\�p�3��O�F\\\�>�k','Dominique'),
('S/\��A�\�F�\n�\�','Égypte'),
('\'%ҭ��HJ�CEA\�m�','El Salvador'),
('UK\��I����\�','Émirats Arabes Unis'),
('���\���J���z��q;','Équateur'),
('*t8sBGߥ�\�\�$\�\r','Érythrée'),
(';���O?�|`;G\�\�','Espagne'),
('�iY\�VC_��\�\��A.','Estonie'),
('<6��o�@\�1q{��\�f','États Fédérés de Micronésie'),
(';\�\r\�XHҟP\�U\�\��','États-Unis'),
('�Fׅ=�@E�DT�\��\�','Éthiopie'),
('�t\�\�Ji�Ll��\r\�','Fédération de Russie'),
('��\���XIc�MHK\�\Z3','Fidji'),
('�eFO\�CC�w���S�F','Finlande'),
('j@�E}L��0\�\�ޠ\�','France'),
('\�_ʀG\�xt���\��','Gabon'),
('\�+��!K����l{�\�','Gambie'),
('v�n�	kAj����!�~�','Géorgie'),
('�\��Mt�xŦ)|=�','Géorgie du Sud et les Îles Sandwich du Sud'),
(';\�D��xM̶{\n\�$�','Ghana'),
('����1K\�W\�\�/X1','Gibraltar'),
('\�.+OD���*\�\��','Grèce'),
('2\�\�r�E��BMM\�','Grenade'),
('��pf\�A��:\�B�\�','Groenland'),
('YS߰C��{\� [w�','Guadeloupe'),
('\�w&\�EH=�@�\�g/F�','Guam'),
('{\0\"/\�E	��5�m��&','Guatemala'),
('eTa��_O��5x\rx\�','Guinée'),
('�8ze9@ӓ\"c��K0�','Guinée Équatoriale'),
('�\r�cO$�3�2H6n','Guinée-Bissau'),
('d��T\�!@=���zJ\�h�','Guyana'),
('\�=8D}�1�=b\�c�','Guyane Française'),
('6�\�ȨL���ֲ�E\"','Haïti'),
('O�q�\�MU�\�O��o?','Honduras'),
('\�?n/9�Ib�\�:�\�e\�\�','Hong-Kong'),
('f|\0\�ԔE+�\��6\�\�','Hongrie'),
('\�.g���H5�Vі�\�8�','Île Bouvet'),
('y�>\�:eLA�hAXk.�','Île Christmas'),
('\�\�B+\�CO���g\��\�\�','Île de Man'),
('�d�j6�JښKv��\�','Île Norfolk'),
('��D\�uAF��\�K!����','Îles (malvinas) Falkland'),
('��\�s\�GH�Y�\�3\0�','Îles Åland'),
('`��\�O��k~�$\�*/','Îles Caïmanes'),
('\�1!~D�ᰄ\�n\�','Îles Cocos (Keeling)'),
('u�`\�{�Lu�E�\�\�\�Y','Îles Cook'),
('\rR�jZL\�6�[�ť]','Îles Féroé'),
('Gg�xژ@��J\�\"�\�44','Îles Heard et Mcdonald'),
('�\�\Z�q@��|N��L�','Îles Mariannes du Nord'),
('�g�\�\�K䧜-�0��','Îles Marshall'),
('��\�\��u@\�N\�_>Z�\�','Îles Mineures Éloignées des États-Unis'),
('\��~\�\�D\��\Z|�-�+','Îles Salomon'),
('~^\��V(Cr��b\�L-T','Îles Turks et Caïques'),
('�\��RE5�3INZ��','Îles Vierges Britanniques'),
('U�B�B6���h\'\�>\�','Îles Vierges des États-Unis'),
('�5\�Q\�\�D�\�H����','Inde'),
('�\0@�\�\�M��B{r\�ʋY','Indonésie'),
('F\�\'�*sG��\n\�\"��','Iraq'),
('�\Z��\�GCحګ�9','Irlande'),
('^�\�\�LDۓ��&\�\�\�\�','Islande'),
('?^s\�ȒM����R\��.�','Israël'),
('W�>�VN��\���\�&','Italie'),
('!� @,�B����\�\��','Jamahiriya Arabe Libyenne'),
('(�:\�S�C�yb���\�','Jamaïque'),
('\�\�\�\\vL_��64Vh�i','Japon'),
('\�Qt�L\�H��cIH��ć','Jordanie'),
('�\�$�fDΔ/�\\3wK','Kazakhstan'),
('=�E{\�LT�z��\�*\�f','Kenya'),
('!(\�hIKz�Z�\\�\�\�c','Kirghizistan'),
('JJ�t}�D�ޕ��O��','Kiribati'),
('9\�׫�\�OĔ\�!y�','Koweït'),
('\�F�K�D/�s	\�I\�\�\�','L\'ex-République Yougoslave de Macédoine'),
('��\����D��\0}\�\��)','Lesotho'),
('{nꪖHV��ϴ�\�HZ','Lettonie'),
('gFgk�\�J��_�vO?�\�','Liban'),
('�7�U\rK7������\�\�','Libéria'),
('2ݒ�\�Fp�\�\�)�\�٭','Liechtenstein'),
('\ro\�UJ\�LO��\�e8�A','Lituanie'),
('8\�h,6FD�\��\no�k','Luxembourg'),
('��|�\�QK��\�_5��O\�','Macao'),
('\�n]�ncAp�\��s�UM','Madagascar'),
('�\�:F��;\�O`B�','Malaisie'),
('�$\�p4CS�\����','Malawi'),
('��\�df�G\'�|�\�m\Z','Maldives'),
('`\�\�mBV�\�ǡ\����','Mali'),
('\�\�ͽjN��!6F\�[?O','Malte'),
('7zZ|\�IT�;\�\�E9\�','Maroc'),
('3�]�H����GY\�','Martinique'),
('�����\�Bk���\�\�\��\�','Maurice'),
('\�\�+�\�NMq�43r@\�\�','Mauritanie'),
('�L�	I����D\���','Mayotte'),
('\�b\�gF&�GW\�\�;p\'','Mexique'),
('MA3mA�D�����6\�I','Monaco'),
('iߗ.\�G+�i����}F','Mongolie'),
('R�DGK��mO���8','Montserrat'),
('\�B�\�sH\�!.1�\�\�','Mozambique'),
('�9���8@\�\raFK\�\�','Myanmar'),
('3+�\�E_�8���/','Namibie'),
('[�>y�L\�\����%\�}','Nauru'),
('x ���M\�\�\�*\r�%\r','Népal'),
('6\n\�W�\�A&�\�䋦q�\�','Nicaragua'),
('�\�\�_\�D+���\��ˎ','Niger'),
('<\�`A%�o\0\�4��','Nigéria'),
('��xY\��Dg�\�?\�W�','Niué'),
('�\��ڼ\'IR��Jpf\�\��','Norvège'),
('#��l7C�i\�>kj','Nouvelle-Calédonie'),
('q���\�7J��\�=��','Nouvelle-Zélande'),
('\�`ƓXCܴ�\�A%�','Oman'),
('�R�\�\�O��F��m\�\�S','Ouganda'),
('��*�?\�D��3�N<�V','Ouzbékistan'),
('���D\�J\0�J�\�E%\�\�','Pakistan'),
('�-kL�\\\�/j�w','Palaos'),
('Zz\�S+G��^=�����','Panama'),
('6lVE<\�K�	Ԍݔ\�','Papouasie-Nouvelle-Guinée'),
('�`:gkcJ\r�{�\�T�','Paraguay'),
('@�*�VC3��S�\�n�','Pays-Bas'),
('�wq���GU���-\�\�|L','Pérou'),
('��(�\�XN �\��	��','Philippines'),
('\n\�J\�0\�J�`\nP��','Pitcairn'),
('�Ym�A�d\�\�_�','Pologne'),
('b�e�\�;M麍i�-\�˲','Polynésie Française'),
('PǪ��oB.��c\�-��\�','Porto Rico'),
('o\�xBs��>D\�j�\�','Portugal'),
('cC��@f�N�m�\�\"','Qatar'),
('\�\�=\��B��\�:%�_','République Arabe Syrienne'),
('s\�d{�Bԏ�����4','République Centrafricaine'),
('js�\��A�nk#\�\�','République de Corée'),
('מ&c�H��\�\���	�','République de Moldova'),
('\�茅FF��\�\�\�\��Sx','République Démocratique du Congo'),
('�-�1\�J-�s��\�:t','République Démocratique Populaire Lao'),
('���-vM���\�\�\�f','République Dominicaine'),
('!P�_��E9�;|�\�;S\�','République du Congo'),
('0E\��K��8�U��ւ','République Islamique d\'Iran'),
('i)\�J)FH��h�8�ŧ','République Populaire Démocratique de Corée'),
('h\�΋\�\nI��✭�\�:�','République Tchèque'),
('/y<\�WF��\�y6W�j','République-Unie de Tanzanie'),
('�Di�9J喕Q3ݻ�','Réunion'),
('Bz~=�eJÈ�\�1�\�Ð','Roumanie'),
('�b<�~@&�v�%�7ȼ','Royaume-Uni'),
('�M�ΐJ��1l�\�(�','Rwanda'),
('T�EipO%���\��\�\�','Sahara Occidental'),
('\�+6\�@��qCu\�\�{;','Saint-Kitts-et-Nevis'),
('\�\�P\�p+L2�\�\�\��7','Saint-Marin'),
('H\�\�\�~J%�HiS\�\��','Saint-Pierre-et-Miquelon'),
('/�r\�\�+I)�W$q�B\�d','Saint-Siège (état de la Cité du Vatican)'),
('Ҧ?�[\�D*�}�\�\�A7\�','Saint-Vincent-et-les Grenadines'),
('\�x�#@�\�.ғ�z','Sainte-Hélène'),
('�\�\�z J��i,�e�m\�','Sainte-Lucie'),
('\�af\�qE��H)&��\�Q','Samoa'),
('&r`�A}��H\�_\�\�','Samoa Américaines'),
(' �!�\�BAp�\�9�mψ\�','Sao Tomé-et-Principe'),
('ku)��H��\�IM_�l\�','Sénégal'),
('g�U�]I���_>Kl�','Serbie-et-Monténégro'),
('\��\�^Ag����','Seychelles'),
('\���eBH��\\�q��YI','Sierra Leone'),
('\�\�7�^O­D\�a�q�z','Singapour'),
('�\�\�\�\��C@�\�k�\�D','Slovaquie'),
('�\�j7�\�L��6Q|\�(K�','Slovénie'),
('�\�@�{\�Az�۰6z� \�','Somalie'),
('G�\��Y@>�hY�?\�_','Soudan'),
('o\�0�K���\�\�Vzf','Sri Lanka'),
('�`ʨttJրc�<�@q','Suède'),
('\0\�\�X)2Mȣ\�\��/��\r','Suisse'),
('����KJ���f\���u|','Suriname'),
('�\��\�ÙG��Y>�\�!�','Svalbard etÎle Jan Mayen'),
('lP�6q�G�ag�:\�','Swaziland'),
('�C��\�&F�3\�\�\��\�','Tadjikistan'),
('9�\�\�	�G��ף\�?]','Taïwan'),
('�Rh\��A݉\�Ƅ�S�','Tchad'),
('=\�=,26Iq�ȭ�֍','Terres Australes Françaises'),
('{��d�C\��\��G��','Territoire Britannique de l\'Océan Indien'),
('E��A@Eӹk\�\�\�Zvm','Territoire Palestinien Occupé'),
('J`\�N�\�K4cٟջ�','Thaïlande'),
('�\��ל@\�[N\�[q�R','Timor-Leste'),
('G;��\�D\\�$mXbؕ0','Togo'),
('ƜVIH�R\�qYΫ�','Tokelau'),
('5\�z�1K���%�{}�','Tonga'),
('�M\0aA/�ztuM\�\�','Trinité-et-Tobago'),
('2��u�\�B��B\�\�d���','Tunisie'),
('��\�P?JD��\�\��M�o','Turkménistan'),
('Q��,D9��\�A\�BHF','Turquie'),
('Ur\�|��E\�Ű�\�=ژ','Tuvalu'),
('�Է\r��I5��\�\��\'l','Ukraine'),
('V\�L\�\�IW�\�<�\\�\�#','Uruguay'),
('\"��#(MT�\�\�&�g� ','Vanuatu'),
('\��NK�\�\'�\�!','Venezuela'),
('\���\�@$I��\�\�ޥ]\�v','Viet Nam'),
('0�lJN�G��6`��','Wallis et Futuna'),
('�f\�\�^�L��\�0�Ĥ','Yémen'),
('\�*\�!EA��T2�\�','Zambie'),
('��\�h8	IJ�\�Z��x\�s','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-08 13:43:18',9),
('DoctrineMigrations\\Version20240201152951','2024-02-08 13:43:18',2),
('DoctrineMigrations\\Version20240202084749','2024-02-08 13:43:18',4),
('DoctrineMigrations\\Version20240202150901','2024-02-08 13:43:18',2),
('DoctrineMigrations\\Version20240207105701','2024-02-08 13:43:18',6);
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

-- Dump completed on 2024-02-08 13:43:21

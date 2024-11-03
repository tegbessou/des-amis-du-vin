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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-10-21',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-10-21',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-10-21',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-10-21',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-10-21',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-10-21',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-10-21',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-10-21',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-10-21',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-10-21',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-10-21',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-10-21',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-10-21',NULL);
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
('Q=S+\�L|��M\�b�W','Afghanistan'),
('H\�<\�7wC��\�K�T\�','Afrique du Sud'),
('	a�f�L=�O�VɝC�','Albanie'),
('J\0\ZȺC��\�\"x�QH','Algérie'),
('w\n���pLw�\��\�cV','Allemagne'),
('�@Շ.pFB�7N\�','Andorre'),
('ő�#�\�Kw�4�هt#�','Angola'),
('	i\�\�vI��\�n�6\�','Anguilla'),
('\�\�~ #�Gz�J�X9U\�','Antarctique'),
('�VJ\��HT�(�e\�Y\0�','Antigua-et-Barbuda'),
('\�7\��F7M��;-\�H�\�]','Antilles Néerlandaises'),
('\Z��]K\�I\��\��\���V','Arabie Saoudite'),
('��s%�yD�Ճ��\�D�','Argentine'),
('\�sݟ\�M\n��H\���\�\�','Arménie'),
('ͭ�\�J\�O\�\�Hv\"���','Aruba'),
('.I;\�A���\n�p2�','Australie'),
('\�\�\�W\�A��\ZT\�2}\�','Autriche'),
('n\�p\�^N\�\��\�7@','Azerbaïdjan'),
('��vF�I���\�\��t','Bahamas'),
('0H�ab@b�*��V%\\','Bahreïn'),
('�><ޒMŃ�<nJ','Bangladesh'),
('o�ą�ZF\�;S���','Barbade'),
('\�봊@���p\�\�','Bélarus'),
('�\�\�\�\�\�O+�(\�/X�T)','Belgique'),
('i���\�4D{�$窳s\�\�','Belize'),
('\��\��\�AΥ�\��\��\�G','Bénin'),
('9<\�\�\�GE\�W�F٦�','Bermudes'),
('\�51���Bx�̯ix �I','Bhoutan'),
('1*�*G���\�@9�!','Bolivie'),
('|b\0�\�F���6��','Bosnie-Herzégovine'),
('��j��dB@�g��\�C�','Botswana'),
('&\�g\�U@L�\n���\�','Brésil'),
('\�\�S�M���H���]u','Brunéi Darussalam'),
('\�D��5&K;�C��\nq4','Bulgarie'),
(')��s�Fȃ<|9A','Burkina Faso'),
('\Z\�\�\�\�Oʍa�����','Burundi'),
(';\�\�̃G��m߰�','Cambodge'),
('o׋\�ޟ@��	\�%���/','Cameroun'),
('\��0Y4DX��2�ȇ�','Canada'),
('��\�\�{\�DВ\0����','Cap-vert'),
('\�\�{�.Jj�hW\"<\Z��','Chili'),
('\�\�,U\�\\Kr�\�\�Qg#G','Chine'),
('�\�H\�L]��0Q�U�','Chypre'),
('\�\�6�KG���<	3�','Colombie'),
('�\�OfL\�J\n���\�$\�O\�','Comores'),
('�#q��C�\�\�\�³B','Costa Rica'),
(')\\r\�)De�V\��@#r','Côte d\'Ivoire'),
('�i}\�Fܽы�!怦','Croatie'),
('�%\�\�\�dB��\�G\�vTN','Cuba'),
('9�ݾ�NNҿ4cN\�\�tS','Danemark'),
('/\�`}E��\�+�L%�\�','Djibouti'),
('\�2A�F��\�9z:�g','Dominique'),
('\�\�\��`D�A\�\���R\�','Égypte'),
('v\�v��N�� �O\�9\�S','El Salvador'),
('�Չ%�\�G��d%\�m\�3','Émirats Arabes Unis'),
('ُE��\�@Q��F�fbT','Équateur'),
('Iy\"M2��\nq��','Érythrée'),
('�S\�3;@S�*G�l}','Espagne'),
('\�[\�\�ǯH$�\�03�#M','Estonie'),
('�}/U5\�G�b�ktaW/','États Fédérés de Micronésie'),
('EA\�Y@̏���$[�','États-Unis'),
('n\�0=�B�\�\�\�\��\�','Éthiopie'),
('\�xq\�\�\�E��`\�gU��','Fédération de Russie'),
('\�46ZO��{|f�\�\�\�','Fidji'),
(',�кj�Mʸ��	�&\�','Finlande'),
('�j�� �D8�����I�','France'),
('\�<��K�%�`�\�]/','Gabon'),
('���Қ@x�\�\r\�G�\�x','Gambie'),
('������HS���a�x^v','Géorgie'),
('\�5���uB��0&\\�X7','Géorgie du Sud et les Îles Sandwich du Sud'),
('@NwˬrO�\�dg\�\�2\�','Ghana'),
(')�\�A�R\��bȇ7','Gibraltar'),
('+w\�0N���\�p\�H\�','Grèce'),
('B�/J�N���\�)(�RP','Grenade'),
('�\�ɒ_�G�\�ʉ8U\�','Groenland'),
('\0�TnHϺ�0?5\�\�','Guadeloupe'),
('�\��\�I���\��]V�','Guam'),
('\�bN\�n�F��V�\��','Guatemala'),
('j\���\"C� c\�\��','Guinée'),
('\�P�\�IY�P���c','Guinée Équatoriale'),
('�MH@D\Z��$\�Y�','Guinée-Bissau'),
('&���\�L\n�3\\���i','Guyana'),
('{�J\'\�C��U\�\�@\�\�','Guyane Française'),
('xv�\�l\�M��\'��\�\�','Haïti'),
('Nj\'B\�8MK�Чr\�X�','Honduras'),
('t��\�N��zZl�Y#','Hong-Kong'),
('�P��yA\�n\�\�6���','Hongrie'),
('\�u�\�\�\0L��\�Gk�S\�','Île Bouvet'),
('x]r<u(A-�?�\�~�','Île Christmas'),
('�k1zcD���j~�L','Île de Man'),
('\���\�M��8Z\�R�\0','Île Norfolk'),
('ff\�]��K\�TR\\���','Îles (malvinas) Falkland'),
('����I-J#�|�\�j��','Îles Åland'),
('V�͍�IJ�x\�\�bI�','Îles Caïmanes'),
('�\n��	�F1���kt\�G ','Îles Cocos (Keeling)'),
('M?dI�uC��\�\�n^\0K','Îles Cook'),
('\��8M��5\r����)','Îles Féroé'),
('��K|�{Fw�ie��','Îles Heard et Mcdonald'),
('���Te&GΌLȷ=�\\\�','Îles Mariannes du Nord'),
('\�D\�A�ԨJS�<','Îles Marshall'),
('#���9+Gٯ��~�\�\�','Îles Mineures Éloignées des États-Unis'),
('\�_�\�\�E\����g\�','Îles Salomon'),
('q\�A�\�K��;v��,��','Îles Turks et Caïques'),
('�\�\�1\�NN�[�v\�5�\�','Îles Vierges Britanniques'),
('@�ҫ\�\�H=�ݨ\�>{Z2','Îles Vierges des États-Unis'),
('��F71H��\�ֆ\0!CG','Inde'),
('��Β\�F8�\�\���7','Indonésie'),
('\��3]�H\�\�~��i[','Iraq'),
('b�(�\�D��>�\�>�','Irlande'),
('n\�u}EF��i\��','Islande'),
('$9�v��F5��3��\�>-','Israël'),
('\��k�I0�\��X�h_','Italie'),
('\�g��)K����\�ـX','Jamahiriya Arabe Libyenne'),
('����\�IȪ\�c�gP','Jamaïque'),
('\�\�X���Kۊ#mg�BFI','Japon'),
('D,h\Z\�D��<\�8�\�\�G','Jordanie'),
('J\'V�\�1CG�\�$h�\�@~','Kazakhstan'),
('tʗ\�K�]*\�\�2we','Kenya'),
('�Vb���H��7\�\�8xkc','Kirghizistan'),
('u��}�M��Э\�\�]+','Kiribati'),
('oT\�b\�L���(E�6\\','Koweït'),
('��8o/O\�LV\rj\�\�\�','L\'ex-République Yougoslave de Macédoine'),
('\�w�\�\�B����Q�1\�\�','Lesotho'),
('\Z��9 O��|�[s�\�','Lettonie'),
('?�Z\�~ L��/\�\n0�e','Liban'),
('�-�9�\�Na���\�\�c�','Libéria'),
(',��}�CL��9\�ɡ\�','Liechtenstein'),
('\�\�\�e[Dӡ\�qWU\�y-','Lituanie'),
('���\Z��A��\Z\�J�\�7d','Luxembourg'),
('T\�n\�0H餣�\'-t=\�','Macao'),
('\0�\�mBdKī\�.	��D/','Madagascar'),
(']�\�\�{�N��?]�A\�9p','Malaisie'),
('LB�LmK��#\�=��5','Malawi'),
('��yP	�A��\�+\�G��(','Maldives'),
('\�\��NC\�E���P\�zdDM','Mali'),
('\�v\�\�\�F\��u�o\�\'�\�','Malte'),
('�\�G�\�@w�,]�;D\n','Maroc'),
('�Lp\0Eމ\r\0�gtE','Martinique'),
('�\�z\�N\'�\�0fV(9','Maurice'),
('\�+\���Fݥ�\�\�ERN','Mauritanie'),
('�Ӛ��WOZ�M��\�\�\�','Mayotte'),
('έ�4\ZDLk�\�\�\�\���','Mexique'),
('��W�.hO��z��0�\�','Monaco'),
('W\�A��A���\�^\��\�','Mongolie'),
('K3gc��A@�\0���7','Montserrat'),
('\�\�[\0x~Ng�hW�\�[\�','Mozambique'),
('J��\�\�\�Mf���E0\�','Myanmar'),
('X{7\�Le��7,�\�','Namibie'),
('=�\�Z�Kw�U�绘i','Nauru'),
('T,\�ɮE��*\�^�(\�','Népal'),
('\��ږ@J�OR��\�\�;','Nicaragua'),
('ps~\�]H��P�+\"o\�','Niger'),
('�^tV\�yN6���h>d,\�','Nigéria'),
('Nm�8w�G��t\Z','Niué'),
('��q\'\�SB\��4��_�\�','Norvège'),
('�\�Z\r�M%�N\Z@Qs\'c','Nouvelle-Calédonie'),
(',\�j��\�@�\�z�\"g%','Nouvelle-Zélande'),
('(\�\�\�wJ\��XҮ:�x','Oman'),
('[\�y\�eH\�a\�\�C~�\�','Ouganda'),
('[$�\�\�]HN��\0��\�iH','Ouzbékistan'),
('\�\�\�$�Jc�\�����\�','Pakistan'),
('\�߰DȭW_<�&�','Palaos'),
('��i\�0�A���\�_\�\�xj','Panama'),
('��*�_�@����3���','Papouasie-Nouvelle-Guinée'),
('\�c�\�&F/�F\�\�w!\�','Paraguay'),
('\�o4R\�-F\�?p\�Wt','Pays-Bas'),
('\�*��\�Lj�ö(�\�l�','Pérou'),
('\�GR\�NK/��\�V?Rk\�','Philippines'),
('�x�K�\�M:�x\�\��\0','Pitcairn'),
('ix��`�L��\�Y\"jxg','Pologne'),
('\�Z���O8�9Ǳ�\�3�','Polynésie Française'),
('&\�Ƕ>KOe�\�\�׻\�V�','Porto Rico'),
('�\�5< \nN��O\�3w��2','Portugal'),
('�E�Q�\�JE�ӏ�\�w\�','Qatar'),
('b`\0��Dôkc��$','République Arabe Syrienne'),
('q\�\�$-HGJ��\n�\�P�S','République Centrafricaine'),
('\� Z\�\�Mʺ3ƐG�C;','République de Corée'),
('C\�ڽ@�O��\�\�##U\�k','République de Moldova'),
('\�\�8\Z�\�Gj�菃\�\�\�\�','République Démocratique du Congo'),
('\�\��]�FU�!�\�~\��J','République Démocratique Populaire Lao'),
('\��R�_J\�\�\�#?d��','République Dominicaine'),
('gRn\�y*I\��<�\�w\n/','République du Congo'),
('VE��O\��_vA�\�','République Islamique d\'Iran'),
('i݆�\�C��D\�5Yߠ','République Populaire Démocratique de Corée'),
('S��r\�@ñH\�9�\�','République Tchèque'),
('@2\�W�O�³�\�r@�','République-Unie de Tanzanie'),
('��ۿ\�\�A���}ŉi�','Réunion'),
('��D��Mb�G\�^','Roumanie'),
('Jv�\�WLf��.Ŷ�A','Royaume-Uni'),
('JÂ��MOI���<ݒQ6','Rwanda'),
('2�I��\�K��\�@ \�@n(','Sahara Occidental'),
('\�B)\�\�D\n�	\�ۻ1=\�','Saint-Kitts-et-Nevis'),
('�.��VE�����\�H��','Saint-Marin'),
('H4\0$:K��Tܹ����','Saint-Pierre-et-Miquelon'),
('\�ml\�JP��\�3/G','Saint-Siège (état de la Cité du Vatican)'),
('�C7�]�E��(-���','Saint-Vincent-et-les Grenadines'),
('�\�S��O���\�\�k��\�','Sainte-Hélène'),
('��V8}A֥\�\�\�r\0�','Sainte-Lucie'),
('\�\�%�A@ѝ�Q\Z\�\�o','Samoa'),
('\n��=�N[��2\�ǰщ','Samoa Américaines'),
('\�\\���\�H\"�]11��J�','Sao Tomé-et-Principe'),
('\�ƿ0��G*���N�\��V','Sénégal'),
('��f�(CۄZ���H\\','Serbie-et-Monténégro'),
('Fb\0%OQ��\��N7\�','Seychelles'),
('g\�\���kIU���k\�>\�7','Sierra Leone'),
('\�[�ԏAd���_�\�','Singapour'),
('\�MEC\��EٔK\Z��_;-','Slovaquie'),
('X���GΒ�\�w\�H\�L','Slovénie'),
('�s���@Ĉ~@�\�\�\�I','Somalie'),
('�\n�\�\�Lv�\�GϾ+V�','Soudan'),
('\�mt\�\r�@ɩR��\�\�','Sri Lanka'),
('��\�Að��,l\�','Suède'),
('\r�E\�g�@[���Ț��C','Suisse'),
('�\Z\�&ɣEʥL�W\�g0\�','Suriname'),
('\�\���C��T�m\�\�s','Svalbard etÎle Jan Mayen'),
('���)\n\�M��<|z�J.','Swaziland'),
('\�G�lFԠ�%\�b��\�','Tadjikistan'),
('�+\�\�Jg@\�ᑁ5v|\�','Taïwan'),
('p�0ZHmH\'�0\'\��F\�J','Tchad'),
('?\��\�\�A��\�)\�˝6','Terres Australes Françaises'),
('���O�\�6\�\�g','Territoire Britannique de l\'Océan Indien'),
('\�ʦ��3Eb��Ǡ�\�œ','Territoire Palestinien Occupé'),
('�u�7\'H\�\���r#','Thaïlande'),
('\�86Vh�Bґ��A���\�','Timor-Leste'),
('��<^\�\ZJ1���\�\�Pmd','Togo'),
('y �NK�\�h\�\�볒','Tokelau'),
('�չ���B\��ܘw\�\'\�','Tonga'),
('\�W\�nMܙY\�\�\�U��','Trinité-et-Tobago'),
('a}xm��K����K\�J\��','Tunisie'),
('\�b�\�H��r\�xF0','Turkménistan'),
('�\�S�G��t&P��@-','Turquie'),
('s	}n�\�EV���*\�;�','Tuvalu'),
('�K�7\�\�E��|J�kq','Ukraine'),
('0\�\r�%S@���lR�f\�\�','Uruguay'),
('=\�>-�D\�ߖ}\�\�L8','Vanuatu'),
('іn��\�Kl�,NS\� �+','Venezuela'),
('4W�^\�\�I\������','Viet Nam'),
('\�X\�\�K�  ��i�\n','Wallis et Futuna'),
('ǻ\�>\�aF��!#y\�\�\�','Yémen'),
('ɶ4\�MC���9\�y�','Zambie'),
('\�{VtknL��)L�d�\�\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-10-21 16:01:53',3),
('DoctrineMigrations\\Version20240201152951','2024-10-21 16:01:53',2),
('DoctrineMigrations\\Version20240202084749','2024-10-21 16:01:53',2),
('DoctrineMigrations\\Version20240202150901','2024-10-21 16:01:53',2),
('DoctrineMigrations\\Version20240207105701','2024-10-21 16:01:53',3),
('DoctrineMigrations\\Version20240319212437','2024-10-21 16:01:53',3),
('DoctrineMigrations\\Version20240614133504','2024-10-21 16:01:53',12),
('DoctrineMigrations\\Version20240617165906','2024-10-21 16:01:53',10),
('DoctrineMigrations\\Version20240708061729','2024-10-21 16:01:53',11),
('DoctrineMigrations\\Version20240801202153','2024-10-21 16:01:53',2),
('DoctrineMigrations\\Version20240815153823','2024-10-21 16:01:53',3),
('DoctrineMigrations\\Version20240916065051','2024-10-21 16:01:53',4),
('DoctrineMigrations\\Version20240929091802','2024-10-21 16:01:53',11),
('DoctrineMigrations\\Version20241002164506','2024-10-21 16:01:53',7);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-10-21 16:01:53');
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

-- Dump completed on 2024-10-21 16:01:54

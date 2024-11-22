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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-22',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-22',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-22',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-22',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-22',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-22',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-22',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-22',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-22',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-22',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-22',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-22',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-22',NULL);
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
('Hr�p��Ht�JH�sCqG','Afghanistan'),
('nv���D��f\�\�V�','Afrique du Sud'),
(',.7?~�K.�f�^\�C\�','Albanie'),
('��y-D��2�\�_A\�P','Algérie'),
('���M\�1DۢU\ZU�','Allemagne'),
('\�D� MO�l4)\�Ŵ�','Andorre'),
('L2MƋbH��J2','Angola'),
('\'fұ}�J?�`�^xQ','Anguilla'),
('2]\��JÂ\�\�3\�1c','Antarctique'),
('{^@\�K\�6�\��(�0','Antigua-et-Barbuda'),
('\�M\�TAD�I�F����','Antilles Néerlandaises'),
('+�\��Nt�\�Xi\�','Arabie Saoudite'),
('\����\�Aғw�\�\'�U6','Argentine'),
('\�=�/#Eܩ�zVl\\�','Arménie'),
('\Z��\�K=�\�^`�\�\�','Aruba'),
('ʋ\�w\�qA�U\�^cRI','Australie'),
('w7�qvH��	\�4V��','Autriche'),
('�\ZlB\�J��2\�\�\nh','Azerbaïdjan'),
('\�\�d�RJ��r��[-�\�','Bahamas'),
('�P�dP1G؀afz>�\�\�','Bahreïn'),
('���D��\�Y�ص2�','Bangladesh'),
('s�\0e�\�LI�ޤB���','Barbade'),
('\�\�R�{TM%�\�J�*\Z�(','Bélarus'),
('0~\�\�\�BN��ToR��','Belgique'),
('\�\�Dv.-B:�J,7�I','Belize'),
('bB>��\�Fj��\\�\�hM','Bénin'),
('\�d@7XF��>\'zqVVq','Bermudes'),
('9>\�\�H��\�&4�?y','Bhoutan'),
('�`\�;F�I6�1\�	\�\�	�','Bolivie'),
('v\�ҫ\�I\�0j㮩�\�','Bosnie-Herzégovine'),
(';�;l��M��s.\�,\�\n','Botswana'),
('9�\�DX\�F%��ތ\�??','Brésil'),
('P`�i\�O���s0�%n','Brunéi Darussalam'),
('B׉wΥOi�I2�\�5~','Bulgarie'),
('���\�\�C6�dG~,/|t','Burkina Faso'),
('f� ?�@ܠ�\�Ț!�\�','Burundi'),
('��\�$�F)�\�\�[��\�\�','Cambodge'),
('o��\�\�E\��[\�.yH','Cameroun'),
('\�Q\�\��cE���\�ix��','Canada'),
('��8\�=�D�zE}^+�?','Cap-vert'),
('5��\�9J���\�\�_�k','Chili'),
('��pN\�X����','Chine'),
('\�E\�^�L\�4p\�\�b\�','Chypre'),
('F\�\\r\�Gq���K�n\�@','Colombie'),
('��Ǭ\�G{�\�IG\"�\�','Comores'),
('E�K�\�@嫔.\�\�\�A�','Costa Rica'),
('N����Gϔ+6m�!��','Côte d\'Ivoire'),
('K\�-:\�F4����\�3\�a','Croatie'),
('(�zA]iI��,�\�\Zv','Cuba'),
('}���!\�O��zۆ','Danemark'),
('�&\�\�\��L\"�1ϕ�&\�','Djibouti'),
('�\�$)G�Dʒ7�!i\�','Dominique'),
('J\���\�M��S�y-�˴','Égypte'),
('}\0_\�:�C\�\��\�M4�','El Salvador'),
('2\'͝D\�MÚj�d׀|','Émirats Arabes Unis'),
('M\�\��M\�\�\�\�\'\�z�','Équateur'),
('\Z\�\�p�\�DY��\�\�Ò5','Érythrée'),
('i�\rFđL�\���C�','Espagne'),
('Imk\�^G��-\�ޟ�̺','Estonie'),
('�:\�\�\�N\�\�f��bS\�','États Fédérés de Micronésie'),
('\�Gu\�>I�\�\�-V��','États-Unis'),
('�\nL�\�D ��1��\�O\�','Éthiopie'),
('3@[UgJ��%æ\�ww�','Fédération de Russie'),
('`^:L0AJ�\�`\�U','Fidji'),
('P�F!��C<�>^\�N���','Finlande'),
('\��\�\\\�E\r�\�R�\�\Z�\r','France'),
('�����Cׅ��ua�*','Gabon'),
('Fuu|AQ�8�\�P\\��','Gambie'),
('\�\�ɺ�\�Hڿw%\�\n�','Géorgie'),
('_����G��Q\�b\��','Géorgie du Sud et les Îles Sandwich du Sud'),
('�rY\�OP�d��\�','Ghana'),
('���ZYpI1���jX�c�','Gibraltar'),
('A&����I���\"RA \�!','Grèce'),
('Ӆ`z\�\�A|�����{�','Grenade'),
('8(�\�\�;Ox���\�EJ�','Groenland'),
('M�!��\�C��X�?C�#z','Guadeloupe'),
('͜�� �O�\r��)?\'^','Guam'),
('�}*\�ȺAՐ\'�bh��','Guatemala'),
('z��X�eCo�6{\�\���','Guinée'),
('\�誃�\�K\�\�\�{�\��3','Guinée Équatoriale'),
('�\�\�o1\�CҰ��{һeU','Guinée-Bissau'),
('L\����THB�OB�y~�;','Guyana'),
('�\�\��A\"�\�Ea�\'Ы','Guyane Française'),
('����\�)L���j\�\�}p�','Haïti'),
('p�q8\0YKz��9Y�','Honduras'),
('��\�(F\'��/�\�-�\�','Hong-Kong'),
('\�\�\�#8IY��E�\�ً�','Hongrie'),
('Fj�\�ʞGe�G:GL�#','Île Bouvet'),
('�1U��\�H5��;b�W�W','Île Christmas'),
('�\�m\�mI�a\�O4N\n','Île de Man'),
('?�X��@�����}ݭ','Île Norfolk'),
('d�;\��\0K�P�{���','Îles (malvinas) Falkland'),
('\�cr��B��Ooee�d','Îles Åland'),
('\n\�Ь�E궕\\��\�\�\\','Îles Caïmanes'),
('�q��I��Ϗ�S�','Îles Cocos (Keeling)'),
('\�\�\�޿N#�\�\�)x��o','Îles Cook'),
('\�pV�8F���_4','Îles Féroé'),
('XE�\�\�J:�q�X��_','Îles Heard et Mcdonald'),
('ႈ�\�I\�\Z�\�pY\�\�','Îles Mariannes du Nord'),
('S����D��I�U:��$','Îles Marshall'),
('HS8\�\�Fϯ�NX��V','Îles Mineures Éloignées des États-Unis'),
('\0�ڛ\�eC��\�\�\�I�\�','Îles Salomon'),
('*KM\�N��k/b�\�\�','Îles Turks et Caïques'),
('$W7\�\�C΋�\�g�\�','Îles Vierges Britanniques'),
('%غ��C\��ﶘ��\�\�','Îles Vierges des États-Unis'),
('e�\�\�J-��\0�\�m��','Inde'),
('��r��\�Ab��\��\�','Indonésie'),
('�,\�E{DP�ҳm\�DS)','Iraq'),
(',\�\�}��Ob�G/��A','Irlande'),
(',\�6\��VEܲ��-N��\�','Islande'),
('�7~�+\�C �+��c�','Israël'),
('�����QC���\���+�','Italie'),
('!\rd�<=F�օ�8�<','Jamahiriya Arabe Libyenne'),
('��gO��\�\�I\�1�','Jamaïque'),
('t{pk\��@\'��\�}\Z^�','Japon'),
('\�@\�&\"HH]��;צ\��','Jordanie'),
('?`߉,zE��_7\�z�{b','Kazakhstan'),
('\�\�\�|s\�A��\�x���T','Kenya'),
('J�6C��H�\�pm7\�','Kirghizistan'),
('}��k�D��(\�\�\�\�','Kiribati'),
('p\\�\�\'kIɱiX�\�\�','Koweït'),
('\�\r�\nK:�t����','L\'ex-République Yougoslave de Macédoine'),
('�\Z\�\�bEI��.\�=]O�','Lesotho'),
('�&�.@�IҶ�ɺ\�\�L�','Lettonie'),
('\�t8�G�<\"\�A�8\Z','Liban'),
('\�ߘ\�\�J��td���f','Libéria'),
('u3X@EV�߿���q7','Liechtenstein'),
('\�\�1��\�A�\r\0Fv\��','Lituanie'),
('R;�\�\�HI��ln\r\�^\�d','Luxembourg'),
('u&<��VK	�	Ȣ^\�z','Macao'),
('sy�\r�BG֙}R�1v\�\�','Madagascar'),
('\�I�fK����`�\�[','Malaisie'),
('6\�\�\�gE7�����4%','Malawi'),
('�\��f�\�KR�pKo]N�','Maldives'),
('.�L��\nD�S#��H','Mali'),
('\�MaF\�D\��U\�Qt\�','Malte'),
('\����\�J���w��','Maroc'),
('\�Dw[P\�E\�\�s_\�D\�','Martinique'),
('n׊nM\�A�\�Ot�\"m)','Maurice'),
('\�8H�NF�\�\�y','Mauritanie'),
('e\���3G\0�\�(\\�','Mayotte'),
('\�\�\�\�\�M��&b\�f�','Mexique'),
('\r�\r`n�B+�\�\ZTam��','Monaco'),
('\'1	T\�F�ೕ\�E�c','Mongolie'),
('y\�5\�yBC�.x\�ª\�X','Montserrat'),
('\�wF��D{���\�j��','Mozambique'),
('D\�Dւ�LI�\�G_\�w','Myanmar'),
('��dB�F:�Xax\�:','Namibie'),
('\�\�޲Y\�@���\\\Z�V�I','Nauru'),
('I\�\�;�Ce��G�My','Népal'),
('P\�4��M	�Ԭ\0��','Nicaragua'),
('��\\\�@D}��)��r\�H','Niger'),
('F\�.�p+C��?�\�Jt4�','Nigéria'),
('�Oo�A[�)\�%^2�k','Niué'),
('|�xZ1�I㗲O\�m,e)','Norvège'),
('c\�pV(/E��\��\n]\�<\�','Nouvelle-Calédonie'),
('Pg \�ZLD�\�ܵC`m','Nouvelle-Zélande'),
('\�ӣ�N��o\�1\���','Oman'),
('\�\�È\�\�AL�2��\'$','Ouganda'),
('K\"Z��\�Hi�ʆ��qU ','Ouzbékistan'),
('�5\"��\�K�����<A','Pakistan'),
('������L}�c��\�/Q\�','Palaos'),
('�;A;��EJ��\�\�$-�k','Panama'),
('�3�\�\0PE��mj/�)�','Papouasie-Nouvelle-Guinée'),
('�ƻ-�B�ovc�O�0','Paraguay'),
('\�\�_ь\�H1�\�\��d\�[','Pays-Bas'),
('}QjyJ�\�7�\��#','Pérou'),
('_y�\�r�M\"�\�\�`�\�','Philippines'),
('\�Q]\nM��\�\�w��','Pitcairn'),
('\�\�D��K`�鳀\0(~','Pologne'),
('����N��\"\��D\�I�','Polynésie Française'),
('��1l\�I�����\��','Porto Rico'),
('0\r:\���Ax�\�\�g\�D','Portugal'),
('���s�D��kjo�IY','Qatar'),
('�23\�B\�D��\�\�G%	','République Arabe Syrienne'),
('\�\�ѱs0E\��k\r�*\�\�','République Centrafricaine'),
('��q\r\�\�H��\��A��','République de Corée'),
('��g�\�MQ�6Q�1�\�\�','République de Moldova'),
('Z6\�\���J1�6?ʩ�^a','République Démocratique du Congo'),
('\�zm\n7Hc�C\'k��X','République Démocratique Populaire Lao'),
('�W\�FB\�K �U�!��*','République Dominicaine'),
('qd\Zs\r8@�����v5�9','République du Congo'),
('~gk\\�GY�O`\�薆E','République Islamique d\'Iran'),
('B\�u\�-�@��u�\�M\�x�','République Populaire Démocratique de Corée'),
('\"\�\�k��H��\\�>� /','République Tchèque'),
('Q\�`�{K��(\�μ��v','République-Unie de Tanzanie'),
('\�\�\�A*�[�����\�','Réunion'),
('���-�G��+\�\�*\�','Roumanie'),
('\� �\�.EQ��&\�Ik!3','Royaume-Uni'),
('<6�=QM��T�\�2�]\n','Rwanda'),
('�,\�F4\�I.�V]ܠ=�','Sahara Occidental'),
('\�8�\�UMF�㋰\�\r�\�','Saint-Kitts-et-Nevis'),
('��滴�I��4�\�~�R','Saint-Marin'),
('�=ܥF>�\��\�s\�','Saint-Pierre-et-Miquelon'),
('��]e�O��o���k�\�','Saint-Siège (état de la Cité du Vatican)'),
('�\�\�/�\�K͋r_e��\�G','Saint-Vincent-et-les Grenadines'),
('\�J[\�J���ϕ\�\"\�','Sainte-Hélène'),
('�\�\�Q�J������\�v','Sainte-Lucie'),
(')�\�H��\�0@w\�\Z','Samoa'),
('Wz\�\�\�lO��,�J@|D','Samoa Américaines'),
('�M27\�\�E.�<\� \�\�','Sao Tomé-et-Principe'),
('\�:\�\�\�Bv�Z-�\�@#','Sénégal'),
('E\�ȅ�B\�G*\n�Jd','Serbie-et-Monténégro'),
('\�\nfV\�LÇ�\�Ig','Seychelles'),
('��OAiEӜ�\�R)\��\�','Sierra Leone'),
('��舆E��\��b\�\�\�','Singapour'),
('\�c�g��O\n�v��I�K�','Slovaquie'),
('\� ��\�\�K��\�:cϕ','Slovénie'),
('E�=R?A�V�*\�2q','Somalie'),
('e�oRvuL��\�5�o»','Soudan'),
('���?%BB��\�䊁\�\�','Sri Lanka'),
('_��\"}Bñ�V6\�Ʀ','Suède'),
('\�\��gJG�vrڨ��R','Suisse'),
('�OW��K��\�D~\���','Suriname'),
('\�\�]g�Nn��c[$g|B','Svalbard etÎle Jan Mayen'),
('�\�\�\�]�I徟��j\�+','Swaziland'),
('��I\��9@��ך?\�\��\�','Tadjikistan'),
('t�T\�\��Lz�uk\�9t�','Taïwan'),
('w�]smCb�-�U\��8z','Tchad'),
('ˈns\�ONq�#xO\�','Terres Australes Françaises'),
('��\�\�^�Gj��\rU�\0\�0','Territoire Britannique de l\'Océan Indien'),
('�ĩ\�\�DO��\�\�\�n6<y','Territoire Palestinien Occupé'),
('1\�,@pG��\��]K;��','Thaïlande'),
('�$�y|�Iv�\�jwlI\�','Timor-Leste'),
('\�$�n�\�Mɬ�g�\'��','Togo'),
('�ϳ��\�N%�ε�\�','Tokelau'),
('\�\� \'�\�H-�v]\�1��r','Tonga'),
(',xڎ58J�{\�)\�\�>S','Trinité-et-Tobago'),
('\�\�VĳC촞\�\�\�$G�','Tunisie'),
('rex\�HY�\\��v\�\�','Turkménistan'),
('��d�\�Nܙ%\�~\�f','Turquie'),
('�\Z\��\�Fe��\�JQ\�\�','Tuvalu'),
('4r\r�N�IϨ\�m`���','Ukraine'),
('-c\�\�B\�L��\�6ê$','Uruguay'),
('\�\0Et\Z\�E9�\��V��\�','Vanuatu'),
('U�H�nB����\�\n��l','Venezuela'),
('5\�\�\��J,�Wx��\�\�','Viet Nam'),
('ãBQ&�G���Q\�\�K[','Wallis et Futuna'),
('���\�P<J\"�[gq��','Yémen'),
('p9\�\�B��\�D���+\�','Zambie'),
('\�K� I�+\�>\�k�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-22 16:40:33',3),
('DoctrineMigrations\\Version20240201152951','2024-11-22 16:40:33',2),
('DoctrineMigrations\\Version20240202084749','2024-11-22 16:40:33',2),
('DoctrineMigrations\\Version20240202150901','2024-11-22 16:40:33',2),
('DoctrineMigrations\\Version20240207105701','2024-11-22 16:40:33',2),
('DoctrineMigrations\\Version20240319212437','2024-11-22 16:40:33',2),
('DoctrineMigrations\\Version20240614133504','2024-11-22 16:40:33',10),
('DoctrineMigrations\\Version20240617165906','2024-11-22 16:40:33',8),
('DoctrineMigrations\\Version20240708061729','2024-11-22 16:40:33',11),
('DoctrineMigrations\\Version20240801202153','2024-11-22 16:40:33',2),
('DoctrineMigrations\\Version20240815153823','2024-11-22 16:40:33',2),
('DoctrineMigrations\\Version20240916065051','2024-11-22 16:40:33',4),
('DoctrineMigrations\\Version20240929091802','2024-11-22 16:40:33',11),
('DoctrineMigrations\\Version20241002164506','2024-11-22 16:40:33',6),
('DoctrineMigrations\\Version20241119144432','2024-11-22 16:40:33',11);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-22 16:40:33','root@gmail.com');
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

-- Dump completed on 2024-11-22 16:40:34

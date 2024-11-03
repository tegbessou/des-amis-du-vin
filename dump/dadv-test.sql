/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
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
('\�{�f\�O\��f �q�\�','Afghanistan'),
('\0y\�ƸMLN�&cB8Z\Z\�','Afrique du Sud'),
('0\�TDj�\�\��i\�','Albanie'),
('8w\�2GTF��D\�IyH�#','Algérie'),
('��\�9Y�C��Fy��\�=)','Allemagne'),
('\�1\�I\�Ok�\�\�\�J=�','Andorre'),
('$nK)WBH�\�e\�HM','Angola'),
('�;\� H��8�\�&YY\Z','Anguilla'),
('aG�\�FϪq|��l','Antarctique'),
('\"j_<M�Jدb��69\�','Antigua-et-Barbuda'),
('���\�/Mʎr\�R�\�,t','Antilles Néerlandaises'),
('\�:k�#Ms�u0\"\�+M','Arabie Saoudite'),
('\�\��\�_N%�!8�|\�MV','Argentine'),
('ُ\�ezJ\��K]x�}P','Arménie'),
('bOC{OE��0�{\�\\Q','Aruba'),
('��\�\0ZJI£`�KJ .\�','Australie'),
('�\�9gK@I�R\�Eb۔','Autriche'),
('?3$jd�OG�\���{','Azerbaïdjan'),
('X\�\��l@\'�èѷ\�\�','Bahamas'),
('H��\�\�K��\�\�	�]','Bahreïn'),
('�=��jsG\0����8*.','Bangladesh'),
('��\�U4^M\�\�\�I7','Barbade'),
('��ǉ\�A5��\�U>�\�)','Bélarus'),
('h{�	\�J��cE�Gy~\�','Belgique'),
('\�.�W,�A0�m\�y\�W%r','Belize'),
('�\�\��l5O� (�N��','Bénin'),
('�ܩ:\�\�NG�t\�\�GY\�','Bermudes'),
('-	h���Jq�N�&%\n�','Bhoutan'),
('U�#\r\�C-�\�Vn�\0_Q','Bolivie'),
('Gj\�G��H9��+c\�1�','Bosnie-Herzégovine'),
('\�\�}�JS���\����','Botswana'),
('\����y�G2�Rd�z6�','Brésil'),
('\�f��Io��r�\�CI','Brunéi Darussalam'),
('g1*\�lOJ(��%�\0=','Bulgarie'),
('\��=��hNl��\�A\�\�Tk','Burkina Faso'),
('ԗVMd@\�UC\�\�\�','Burundi'),
('�o�[rA�:6��}�','Cambodge'),
('U\��Fӈz�\�\�L1','Cameroun'),
('\�\�ޅ@|�q�\�e.�i','Canada'),
('\���wK�\�\�:\Z�6Z','Cap-vert'),
('n\�\"TGZ���O�\�','Chili'),
('8K�t�}B\�12��\nt:','Chine'),
('=\���seIY�\�b\�@','Chypre'),
('pE�d�G���~,\�:�u','Colombie'),
('�:�0\�\�BЦk\r���\�','Comores'),
('̯\���@Mb�2�\�\�J\�@','Costa Rica'),
('\���w�;I��k���f*@','Côte d\'Ivoire'),
('YE�\�<Ig�\�V\�*	','Croatie'),
('\�&i�A��\r](�\�V','Cuba'),
('\r@��T\�BQ����\�O	','Danemark'),
('P�٤D,�izA���','Djibouti'),
('�EqE#\�N)�9?K','Dominique'),
('�&5�ԨE��&�U\�{l','Égypte'),
('�S7kA$�r�I�\�','El Salvador'),
('\�\�\�JGℜ\���\�(','Émirats Arabes Unis'),
('s��W�\�CX�hH<\��o\�','Équateur'),
('�\\��I���qЍC\�','Érythrée'),
('��I8\�E\Z����:�','Espagne'),
('�k~���Er�\�F\��\�q\�','Estonie'),
('`\�q\�6�NZ�f��U���','États Fédérés de Micronésie'),
('\�k@/\�B����\�\0��','États-Unis'),
('A�VK�E��\�\�ʐ\�','Éthiopie'),
('��5_L���\�tұv�','Fédération de Russie'),
('�S\�xM#���m\�\�\�}','Fidji'),
('%	\�*\�H�\�A�ԍ=','Finlande'),
('�@�\�\�/I>�LH\"�6�\�','France'),
('R\0ĜݓL��{I\�)\�k','Gabon'),
('��r\�B\�\����\�h','Gambie'),
('E��\�iN��\�a\�Q�W','Géorgie'),
('?\�n�NI\��|\�\��v','Géorgie du Sud et les Îles Sandwich du Sud'),
('�\�NR�Fp��\\�\\\�n','Ghana'),
('5��4m9Jq�-H\�\�\�Y','Gibraltar'),
('�ѢG\�CE��sƫz','Grèce'),
('�>\�D��G^��\0E��w+','Grenade'),
('bc���LȒ\��A0��\n','Groenland'),
('\�\�\n0�-E��dO\�ki�j','Guadeloupe'),
('��4\�w&NT�a\�@\�\�\�','Guam'),
('�\\\�4aM��ro\"���e','Guatemala'),
('U��\Z@�M��U�ؓM�f','Guinée'),
('C����Oε�v���h','Guinée Équatoriale'),
('�\��\�K9�)�Ʀ\\\�}','Guinée-Bissau'),
('!\�V2\�@m�d.\�[�x','Guyana'),
('�`��5Eٌ^f0c��\�','Guyane Française'),
('ژɛ�nL���\�s\�Ի�','Haïti'),
('>�\�7,Fb�\�4���','Honduras'),
('\�v��h�Mϛ\��J�\�J','Hong-Kong'),
('F�ۯ\�mD\�\�CX#$�{','Hongrie'),
('�\�\�\�Ot��&K�\�','Île Bouvet'),
('\�K\�\�AuG��\�X\�$Щ','Île Christmas'),
('��\�\�TA\��W�\�\�4','Île de Man'),
('X,ɯ\�A��E\'1/','Île Norfolk'),
('\�E\�l��C\�C@޽��\�','Îles (malvinas) Falkland'),
('��f�S\�M(�A�\�]\�\�','Îles Åland'),
('\�\�a�\�Hޠ*�ժ��j','Îles Caïmanes'),
('e��H\�nGH�\�BK�\�\�\�','Îles Cocos (Keeling)'),
('�q\r\�.TK����$J�r','Îles Cook'),
('���M<pL��\�5\�s\� ','Îles Féroé'),
('\� \�\�kJɑ��]`3\\w','Îles Heard et Mcdonald'),
('�6\�:DaH��V\�\r>�','Îles Mariannes du Nord'),
('{\�J\�r\�H��\�eĸdJ','Îles Marshall'),
('\�Ή\�5^M��\�\�hDr5�','Îles Mineures Éloignées des États-Unis'),
(']܈�\"�@��\�tRr�','Îles Salomon'),
('@�qs%�K�y����','Îles Turks et Caïques'),
('\�\"E\�\�@��0~�\�','Îles Vierges Britanniques'),
('O��<GC��:�\r�\�','Îles Vierges des États-Unis'),
('T\�5�eJM���O+�\�','Inde'),
('-&��&:@��1f\�\ns9>','Indonésie'),
('\n��S�\�A\�i��Ao','Iraq'),
('�\�\���oI.�_\�\��Z`','Irlande'),
('[_.mAKX�\"\�\�\�rO','Islande'),
('\r*\�O�Ey��\�R#U','Israël'),
('^�\�T�\�BW����W','Italie'),
('B2��dG��hD�T6_','Jamahiriya Arabe Libyenne'),
('\�j+\�\�ZN\��\�}l\�x��','Jamaïque'),
('ӵ>\�(M���9W/�2�','Japon'),
('@\�]iD�\�_\�\�9��','Jordanie'),
('\�a�pCOj��N�s�)\�','Kazakhstan'),
('\Zw�vI\�J%�9��\"','Kenya'),
('8+m�\�K��q��\�M�','Kirghizistan'),
('\�P��Li�H�\�E\�\�','Kiribati'),
('w�\�QaN��/\�lu','Koweït'),
('̄�g^�F��hn���ޱ','L\'ex-République Yougoslave de Macédoine'),
('��|(\�Ij�O\�.$�','Lesotho'),
('\�\��\�\�\�M�F\�c\�\�y','Lettonie'),
('Թ\n�$G��Òk\"���','Liban'),
('\0\�sVI\���IEt.\�','Libéria'),
('%�~!\�LɰZW�p\�\\','Liechtenstein'),
('VH��d@�a\��kn','Lituanie'),
('�\�ԥ\'�M\�;\�Q���','Luxembourg'),
('{�m�|\�D�䫔�Be','Macao'),
('\�\�o��IѷQ;�{<','Madagascar'),
('/��Sm�MM���٫\Z�','Malaisie'),
('�z&lN��\�؋\�*\�','Malawi'),
('�\�\�)`@	���^�&˙','Maldives'),
('\�w2�\�\�L��y�!��','Mali'),
('���/Y\ZO����\�c�}�','Malte'),
('=��9\�Lé!<�\�+\�%','Maroc'),
('\�c�tBϾ<�C\�k\�\�','Martinique'),
('	�\�\�7\nA��\�\�_�\�','Maurice'),
('z�K�žE��\����\�\�','Mauritanie'),
('}X��b@(�\�\�*\�\�>q','Mayotte'),
('kl6\�-\�D`�k\�m�','Mexique'),
('��\'�V�M��\�%_\�_\�','Monaco'),
('\�\�ݿ�I-��\n\�W`\"c','Mongolie'),
('v�I	L6Aq��� �qt�','Montserrat'),
('O^g�ѷB�s^VAb�)','Mozambique'),
('�(o���F�k	4�\�#','Myanmar'),
('~��v�F�G���ú:','Namibie'),
('��\�oU�Aa�`���``5','Nauru'),
('\�r~\���Lf�\�8|\�8','Népal'),
('�	�s\�G�\�T\�Օ�\�','Nicaragua'),
('D\�D\�\��@����iMw�','Niger'),
('\�+QIJ�`\\7�I','Nigéria'),
('\�\�1��MV��u:�{','Niué'),
('�\�9wNS�\�\�ϖ\�','Norvège'),
('[Ͻ~��Oe�e�\�lϲ\"','Nouvelle-Calédonie'),
(' �	�qI\��K��','Nouvelle-Zélande'),
('��|�Fn�,�F\�܆','Oman'),
('؉|\�Fz���\�y���','Ouganda'),
('T�]K%�N���\'\�Yg�','Ouzbékistan'),
('��Zd�J��d\�\�-�','Pakistan'),
('�(��I�K\�߰�Ȁn','Palaos'),
('j�\�jhG\�<1>\�{G','Panama'),
('Ι�\�Y\�Jt��\��\�\\\�','Papouasie-Nouvelle-Guinée'),
('�3\�G:B��ҐZ\�n4','Paraguay'),
(';	K\�E���\�U�n�+','Pays-Bas'),
('usJ;��B���G�=��','Pérou'),
('�\�\�D8�7�;���','Philippines'),
('Pn�%\�My�D���i��','Pitcairn'),
('*g\"\�E��\��\�\�\�!','Pologne'),
('\�\�\�\'\�\�O8�m\�Q\�U','Polynésie Française'),
('_�\�9�Ĥ\�\�\�Cs�','Porto Rico'),
('�$%��D���|\��n\�','Portugal'),
('�v�ffK��rF��<*','Qatar'),
('N�ɽ\�\�D��8\�\�p�\�','République Arabe Syrienne'),
('d\�SI�E\�������\��','République Centrafricaine'),
('�2��Q�Gǔ\�o�u��t','République de Corée'),
('�g\Z�iHU�B\�r�\�\�	','République de Moldova'),
('��ιB\��x��K�t','République Démocratique du Congo'),
('}X��[L��9\�г\�r','République Démocratique Populaire Lao'),
('-\�Y�r�I\���\�7�1\�','République Dominicaine'),
('�\�汈LI�^��\�','République du Congo'),
('�a���I\�Iz=�\�¹','République Islamique d\'Iran'),
('~�1�\�ON��ӽ\�^\�d','République Populaire Démocratique de Corée'),
('�\�E�1O���\�\�H��','République Tchèque'),
('L���O~�\�\�cS��\�','République-Unie de Tanzanie'),
('��6.�}EӮ���p\�%','Réunion'),
('Uhϖ\�/Mش�\�\�\��','Roumanie'),
('?#\�ުNF��f�]7�8\�','Royaume-Uni'),
('.�\�q�C���gb\�\�','Rwanda'),
('�\�\�$vD]��\���\�?','Sahara Occidental'),
('�\�\�-vFF��\�F\�\�\�','Saint-Kitts-et-Nevis'),
('O�||�DK-�\�\�$\�ku','Saint-Marin'),
('�\�f\�LOY�R�ˏ\�','Saint-Pierre-et-Miquelon'),
(' &W�KV�\�w&��9','Saint-Siège (état de la Cité du Vatican)'),
('�\Z<�wIs�e�\�qg�\�','Saint-Vincent-et-les Grenadines'),
('�\���^rB~�\�\�\�+#5�','Sainte-Hélène'),
('��n\��Lc��&�Pu\�','Sainte-Lucie'),
('\�\n\����Ay��[#�� ','Samoa'),
('b/\�\�q]E��7N\�/$2','Samoa Américaines'),
('�.�K\�lN����\�\��\�','Sao Tomé-et-Principe'),
('b\�/hIB�-\�N�\��','Sénégal'),
('�ďkmmN��\�i�n','Serbie-et-Monténégro'),
('Le\�H\�\�J����o\�\��(','Seychelles'),
('���\\ܻH圇:zY]�','Sierra Leone'),
('Y��(�wF¤1j�)��8','Singapour'),
('�\n��\"\�Oއ\�ۓ\�+9','Slovaquie'),
('j��(!�Oè8;~\�g�','Slovénie'),
('dg2\�@Á�\�ȔzB\n','Somalie'),
('C99��L#�T%\�|j','Soudan'),
('��疰G�\���s�U','Sri Lanka'),
('���\�.wF<�F\�]�aw�','Suède'),
('�\r`�\�wI�����o�','Suisse'),
('\�!Y�\\L��\�KVV','Suriname'),
('\�HuJʾX\�J��(�','Svalbard etÎle Jan Mayen'),
('1�\�E*,@?��LG��sO','Swaziland'),
('w7��\��C=�m&�\�y�X','Tadjikistan'),
('\�=;y�<D�\�ο\�L\�','Taïwan'),
('@�_j�B��20\��8?v','Tchad'),
('\�\ZS!\�C\�iz�g	��','Terres Australes Françaises'),
('X	\�tO���؋�m','Territoire Britannique de l\'Océan Indien'),
('�h�\��bI�ޘ\�r>','Territoire Palestinien Occupé'),
('D-���K���f���\�\�','Thaïlande'),
('\�\��~ҿA\0�:s\\t\�\�','Timor-Leste'),
('�>�1\�H#�\�\�*\�\�B�','Togo'),
('\�8o\�\�L���+\�R\�k','Tokelau'),
('2\"C.��E��6�6��','Tonga'),
('	ɂ%OΥ�y\�\�\�','Trinité-et-Tobago'),
('��?%@H��\�����/','Tunisie'),
('��w�ΈL+;Y�\r','Turkménistan'),
('\�u\�Q��M\"�8(�	v','Turquie'),
('�˦0\�bE��\�΢��','Tuvalu'),
('���!!\�N\��<���k','Ukraine'),
('\�	��R�Nװc\�Ƅ)z','Uruguay'),
('oL.�\�=I$�]V\�\�c7}','Vanuatu'),
(';��\�\�GX�#g\�@��','Venezuela'),
('������E��\�1\�\n','Viet Nam'),
('ʐ�\�~\�K\���H7\n(0','Wallis et Futuna'),
('\�S�\�\�NOn�\�(�\�\�\�','Yémen'),
('׶%�\�N��Y����\\','Zambie'),
('�\�\0n��C\r��WEo)t','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-10-21 19:37:15',3),
('DoctrineMigrations\\Version20240201152951','2024-10-21 19:37:15',3),
('DoctrineMigrations\\Version20240202084749','2024-10-21 19:37:15',2),
('DoctrineMigrations\\Version20240202150901','2024-10-21 19:37:15',2),
('DoctrineMigrations\\Version20240207105701','2024-10-21 19:37:15',3),
('DoctrineMigrations\\Version20240319212437','2024-10-21 19:37:15',2),
('DoctrineMigrations\\Version20240614133504','2024-10-21 19:37:15',10),
('DoctrineMigrations\\Version20240617165906','2024-10-21 19:37:15',8),
('DoctrineMigrations\\Version20240708061729','2024-10-21 19:37:15',12),
('DoctrineMigrations\\Version20240801202153','2024-10-21 19:37:15',2),
('DoctrineMigrations\\Version20240815153823','2024-10-21 19:37:15',3),
('DoctrineMigrations\\Version20240916065051','2024-10-21 19:37:15',3),
('DoctrineMigrations\\Version20240929091802','2024-10-21 19:37:15',11),
('DoctrineMigrations\\Version20241002164506','2024-10-21 19:37:15',7);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-10-21 19:37:16');
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

-- Dump completed on 2024-10-21 19:37:17

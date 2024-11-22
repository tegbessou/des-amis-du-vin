/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
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
('�\�h$\�A_�G\�i�\�x','Afghanistan'),
('\�9\�A|THΚ4/X3�\�\�','Afrique du Sud'),
('�7@\�s\�C���am�{lU','Albanie'),
('\��r\�\�A���Jȭf��','Algérie'),
('A;����J\"�.\�>\r0A','Allemagne'),
('/\�0��I���U�sZ`!','Andorre'),
('��ǋ[E%�\�\�\�\0�\�','Angola'),
('�3G�FvB��Ē �\�\�G','Anguilla'),
('\�o�\�Z+M\�{\�2\�\�','Antarctique'),
('r\�\0d2�LC���\Z7>�','Antigua-et-Barbuda'),
('4��]>(K\r�\�Q�T\�\�\�','Antilles Néerlandaises'),
('qz�AKƉ\�g\�\r6\�','Arabie Saoudite'),
('��t�\�Cӆ\�\�\���','Argentine'),
('Ϩp��>K��\�ן�U@','Arménie'),
('G�dIA˅f�?�	t','Aruba'),
('d�f\�GG�Fl��JH!','Australie'),
('��\�l�WK�\�\�\�\�O�','Autriche'),
('\�b:>�O��\�c�\�','Azerbaïdjan'),
('�e*�\�gHE�������','Bahamas'),
('\�\�\�>-@n�|��\�)\�\�','Bahreïn'),
('�IN\�XOF\Z�\�>up{','Bangladesh'),
('|~0�L)�H�63\�)','Barbade'),
('X��\�\�D=�FIG�\\�P','Bélarus'),
('T��\�C��2*zۆ�\�','Belgique'),
('OPC�\�J��+l���\�','Belize'),
('\�\�ȟ\�M��s�+\�Hʥ','Bénin'),
('5\�\�_N\�\�\�\'3\n��','Bermudes'),
('\�t\�]LvG´�.\�\�~','Bhoutan'),
('��xR\�Aա�\�[aL�\�','Bolivie'),
('���ͮNQ�>\'\�\\\�e','Bosnie-Herzégovine'),
('l�\�\n؝GV�B���ȢB','Botswana'),
('I\��jb�B$�c\�\��t\�','Brésil'),
('�t�\�¤M}�=%�\�?�,','Brunéi Darussalam'),
('zm~M��r&X3Θ','Bulgarie'),
('�U\�\�T\�G�pW\ZN|?','Burkina Faso'),
('��v�W�IӹG\n�g\Z-','Burundi'),
('q\�Xc\�K7���#09<','Cambodge'),
('�|	K\r@7��>\�%\�','Cameroun'),
('�\��sN8�1\�1\�m;','Canada'),
('[`:^\�\�I6�\�@Ό\�\0','Cap-vert'),
('����\�H\��qE� ++�','Chili'),
('����\��C،\�9�J��','Chine'),
('\�pη�\'E\"��lǯ\��1','Chypre'),
('\�Z�zV\nL��6�PտS|','Colombie'),
('��u�r@���͹Ǖ','Comores'),
('\�av�b<H����\���','Costa Rica'),
('9	6\�C,�+��Y�\�\�','Côte d\'Ivoire'),
('\�?\�i,HĿB\�&��;S','Croatie'),
('�\�{\�G ��v~{1','Cuba'),
('��DHԫ�7IC�\�','Danemark'),
('^�=\�3F��YW�\�c\�','Djibouti'),
('H�\0\�\r�Ly�E0bI\r','Dominique'),
('�\�@�hYAĤ\�\�C��\�','Égypte'),
('�\�u��Kծ\�UsT\�Af','El Salvador'),
('dV欚\�B=��\�\�.ƃ','Émirats Arabes Unis'),
('=z \�Eԅ��sğ\"\�','Équateur'),
(',ɍJ�Ns���;\�\"\�E','Érythrée'),
('�\�Sg�PLʬe蜫X\\�','Espagne'),
('J�u[\�Iť�E_\�g\"','Estonie'),
('\�\�\�\�Ol�y݇RT\�','États Fédérés de Micronésie'),
('#r\�\�9D����pk�','États-Unis'),
('%\�e$�-B0�>O_���)','Éthiopie'),
('\��|�7I7�\��T\�)','Fédération de Russie'),
('ά�\�t�Bu�\�tfr�H','Fidji'),
('��g/�OC���\�-p	\�','Finlande'),
('}q��bGE�î�-@�','France'),
(']!\�\�!>EW�)E{y\�S','Gabon'),
('�1Z?�L��\�����\"','Gambie'),
('\�!o�3D.��l\�:\�	\�','Géorgie'),
('��E\�L�DT�V�z=�\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('HHȊD߂)U¥6}','Ghana'),
('\�\��3�Bˉ\�b�\�\�\�B','Gibraltar'),
('��\�+A?��\���\�','Grèce'),
('d}1\�bH��*\�\�c?\�','Grenade'),
('.Wi�\�J&�\�`�\�\Z \�','Groenland'),
('�\�\�<J\'@L�b�L\�z\�	','Guadeloupe'),
('\�hn-��K��<��O%�@','Guam'),
('k\�?\���I޵�V�\��\�','Guatemala'),
('\�(�\�D\���Z�\�','Guinée'),
('(o\0x\nB獮a$��','Guinée Équatoriale'),
('\�e��0I/�%�R\�ng�','Guinée-Bissau'),
('���@-fN\�yz>M\�\�X','Guyana'),
('\0�|S3�Kˀ(D�\\��;','Guyane Française'),
('\�M�Gڕ�����4�','Haïti'),
('FLɖ�J��O��F|+^','Honduras'),
('�?\�H\�ZLs�\�i�n�`�','Hong-Kong'),
('IG��FC\�IJQ��','Hongrie'),
('\Z�+\�_XEu�\�DY=4','Île Bouvet'),
('�	�\�\�\rDf�\�����e','Île Christmas'),
('��F\�\�:Kէ^z#mK\�','Île de Man'),
('kN���uLa�H	\�\��iW','Île Norfolk'),
('\�L���Di�\��n7ap�','Îles (malvinas) Falkland'),
('Κ�\�sG��VJ�&;�\�','Îles Åland'),
('z{2�G��^*a�2O','Îles Caïmanes'),
('LM\�.\�fFr�fi\\��9','Îles Cocos (Keeling)'),
('�2\�k8\�M�������P','Îles Cook'),
('k	)�eJ��S�R�7 ','Îles Féroé'),
('+~gZ�oC��bt\'}�֛','Îles Heard et Mcdonald'),
('�X�<\�\�F��c�\�#\�v','Îles Mariannes du Nord'),
('�\�\"��$@q��-37:�(','Îles Marshall'),
('^\�\�\r\�CҘu�E��\�,','Îles Mineures Éloignées des États-Unis'),
('Jf�\�m8A\�\\\�R\�\�<Y','Îles Salomon'),
('W^J[YIJ��\�q\�~p�\�','Îles Turks et Caïques'),
('F�k\�\�B�����l��8','Îles Vierges Britanniques'),
('��ݧ\�\�Bʀ#�Gp�\�','Îles Vierges des États-Unis'),
('�\�\�\"\0C���2\�\�\�\0','Inde'),
('ڨ\�ޡ[N\'��ciR','Indonésie'),
('�^d�B}�\�)\r\�0<\�','Iraq'),
('d!_\�~N��$���y�','Irlande'),
('\�R1;Dص\�>C\���','Islande'),
('��V�M��$9�vD1�','Israël'),
('ÂuKKI^��\�@\�\�t','Italie'),
('\�4��\�G0��_\�\�\�\�\�','Jamahiriya Arabe Libyenne'),
('q�\���\�BW�\��\���-','Jamaïque'),
('ݼ\�\�\\J��.|U\�l\�','Japon'),
('�˳�\�\�MF�fܘ�\\/','Jordanie'),
('jH �F��ʹcJ^}','Kazakhstan'),
('�b� 0\\FX��\�~�\�Q','Kenya'),
('�3�KD���\��+�$','Kirghizistan'),
('9?\�I�\�G���]f��','Kiribati'),
('\�\�\�\�U�A��k�3c�','Koweït'),
('.vV\�\�\�D�����;o\�','L\'ex-République Yougoslave de Macédoine'),
('dc\�\�\�M���\�+6��)','Lesotho'),
('mXiHpC�A@X�R�','Lettonie'),
('\�\'a��\�L���*i�\� ','Liban'),
('�:\��H&�Ŧ�^\"i#','Libéria'),
('�fy[\�F�\�A\'�#}\�','Liechtenstein'),
('(/6f+>H��~��5�E|','Lituanie'),
('D\\����NG�!9�\�\�QW','Luxembourg'),
('\���ͰzN���>Sk�xj','Macao'),
('uJ�\�C���\�\�\�\�\�t','Madagascar'),
('\�\�ĸG��7\�\�=�\�\�','Malaisie'),
('1�\�KB�H;��M�o','Malawi'),
('�yC\�PfBĨ\�$\�r��','Maldives'),
('a�\�1�\�G��u�?��=','Mali'),
('{��5�\�I��ʪ�foe�','Malte'),
('�MX�N뮪;/�\�P~','Maroc'),
('tR�?�\�NE�\'f�\�s�','Martinique'),
('?\�:^I��	s�\�\�\�','Maurice'),
('\�g\n\�V�L���\�ɐ�\�\�','Mauritanie'),
('LE;<GBL���\�\nE\�','Mayotte'),
('©\�;b\�F��\�?�\��t','Mexique'),
('���5=G��ghV�;\�U','Monaco'),
('>��D�Hɞ�\�/\�\�','Mongolie'),
('��A.֎D��i�\�\��8e','Montserrat'),
('���6\�A�\��1','Mozambique'),
('acO\�\nK\�H�b��JA','Myanmar'),
('\n\�Q\�Y�La�\�\0\�L*I','Namibie'),
('��\�H6�p�\"<Өl','Nauru'),
(':q�z�\�O�\�\���|ĳ','Népal'),
('\Z��\n `C��\�c\�+2eI','Nicaragua'),
('7\�\�N\�\�Iֆ\�W�Z1','Niger'),
('Qaj\�{\'E��a\�\�i/V\�','Nigéria'),
('��+G�N�8��?-��','Niué'),
('$-�8\�\�N��׌\'g��\�','Norvège'),
('\�m��\ZDТL�\�/\��Y','Nouvelle-Calédonie'),
('�\�o\�Cο�\�\nG�\�','Nouvelle-Zélande'),
('\���\�Jƞi\�bb','Oman'),
('\Z(\�s\�N���֏\�ƌ','Ouganda'),
('��E^�J���mFa:\�','Ouzbékistan'),
('8 l\�K���ώsY','Pakistan'),
('\�\�&�A�\�<�\�\�ɔ','Palaos'),
('�\��\�WL3��7u�Jt','Panama'),
('�1�\�4F֖Z/칳��','Papouasie-Nouvelle-Guinée'),
('�_DȦ@K��\�p\�?؊','Paraguay'),
('�\�$LxB��\�T\�[jme','Pays-Bas'),
('�q\Z��D땿\�\�\�','Pérou'),
('\�8\�\�C�di��)\�','Philippines'),
('k�j!C̽GnB\�bo�','Pitcairn'),
('箌O�D��K�͙�','Pologne'),
('+�-Q�Ig�+AJ\�}','Polynésie Française'),
('�ҹ�	�O��g�\�\�mW�','Porto Rico'),
('7a\�t�\�EߠK�$YOYm','Portugal'),
('N\�9\�\�O@�[��G�#n','Qatar'),
('W\Zi�\�A��8p���%','République Arabe Syrienne'),
('��\�\�\�N�\�ӦJ\0��','République Centrafricaine'),
('��d\�WB.�Mm4�s','République de Corée'),
('aԒ\�\�B��A?!\�,Y`','République de Moldova'),
('��j\�N�Dt�\�%�)�','République Démocratique du Congo'),
('��fOB=�ۡ-�\�','République Démocratique Populaire Lao'),
('#	�\�\�@\��\�,��R\�','République Dominicaine'),
('99\��_@Z��2\�?\�','République du Congo'),
('\��\�\�\�\�O\�\�\�\�\�\�e2','République Islamique d\'Iran'),
('�p�Qn�GN�\�\�\�~�','République Populaire Démocratique de Corée'),
('ͣ\"w\�)KJ�W\"�)��E','République Tchèque'),
('a�iI\'�L��\�ni�\�\�','République-Unie de Tanzanie'),
('l\�W\�N|F����\�!~','Réunion'),
('e�\�A�B��6\�#�\�q','Roumanie'),
('D�\�\�QLY�\�o?X\��','Royaume-Uni'),
('���\�HK�I���ְu','Rwanda'),
('\�\�qĜI�ȷ\�Izkw','Sahara Occidental'),
('��*݃�E}����8�\�','Saint-Kitts-et-Nevis'),
('\"��ʧ�Dޓ�N�\�y','Saint-Marin'),
('\0A��D�M��\�\�\�\��','Saint-Pierre-et-Miquelon'),
('\Z2V��DD�1\��V\"v','Saint-Siège (état de la Cité du Vatican)'),
('\�]\�^1\�C\����́\�\�','Saint-Vincent-et-les Grenadines'),
(',\�~C\�hB���X�V��','Sainte-Hélène'),
('�\���\�H8�(��ҷ\�','Sainte-Lucie'),
('T�]V%�JV�Ef@�Mi�','Samoa'),
('JZm\�\�>IW�Q�D_<\�','Samoa Américaines'),
('\n�SU�K��\0\�㑰4�','Sao Tomé-et-Principe'),
('�\�C\r���\�K�\�','Sénégal'),
('H�{>pFd��\�6\�:V.','Serbie-et-Monténégro'),
('F&\�mgwFa����\�i�\�','Seychelles'),
('w³pLȌУm$*�\�','Sierra Leone'),
(':έ�CHK���\ny[\�O�','Singapour'),
('J���\�mO���}\�@\�','Slovaquie'),
('>��D\�M���1j','Slovénie'),
('��H�\�N��>K�\�E�k','Somalie'),
('\�F�ީ�Eb�\Z\�\�d�\�\�','Soudan'),
('@j\�@ط\�#\�a\�D','Sri Lanka'),
('��1D>�]s4\0g��','Suède'),
('Qa܀Q2G:�\r�\�9d','Suisse'),
('\��\�K��G��(�N��\�','Suriname'),
('\�#�3BS�?�ՠzb\n','Svalbard etÎle Jan Mayen'),
('H�\��\�JZ�r\��Q\�e�','Swaziland'),
('4\n�\�hB\�(o\�\�\�','Tadjikistan'),
('\�+�)$�N��8�\�N�=','Taïwan'),
('�w\�6�Cw�\��K\�\�\�','Tchad'),
('���)�F&�3ô�\�\Z','Terres Australes Françaises'),
('���m~I@�8eW\�','Territoire Britannique de l\'Océan Indien'),
('�\�Ƶ�sC�&ǧ�\��','Territoire Palestinien Occupé'),
('!d�o:\�H����i\�>\�','Thaïlande'),
('\�\��-\�EG��\�\�\�k','Timor-Leste'),
('!�\�ZYCA��U\0�S1\�\�','Togo'),
('H��d��Ci����=\'','Tokelau'),
('�bC	@L���tV\�0_','Tonga'),
('\�XdƷ�CȀ\�\"R?O','Trinité-et-Tobago'),
('�-\���F �(��ym\�:','Tunisie'),
('�\� JBpA�찙p\�h}','Turkménistan'),
(':f\r��tHD�\�-(�t','Turquie'),
('�����H�_\�f\��7','Tuvalu'),
('�Y���O��\�\�8��\�{','Ukraine'),
('U(iRE\���ZF}','Uruguay'),
('��\���K���y\�A\�\�b','Vanuatu'),
('��\�\\{H#�8\�K\�w\�','Venezuela'),
('�˱H`!A��\�ƨA\��','Viet Nam'),
('cu,�Cl��V�\�伹','Wallis et Futuna'),
('\n) \�\�EO]�\�\�	�\�	','Yémen'),
('����O���u\�\�i7','Zambie'),
('80\�g\�L\'��\�yt�\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-22 20:33:20',2),
('DoctrineMigrations\\Version20240201152951','2024-11-22 20:33:20',1),
('DoctrineMigrations\\Version20240202084749','2024-11-22 20:33:20',1),
('DoctrineMigrations\\Version20240202150901','2024-11-22 20:33:20',1),
('DoctrineMigrations\\Version20240207105701','2024-11-22 20:33:20',2),
('DoctrineMigrations\\Version20240319212437','2024-11-22 20:33:20',1),
('DoctrineMigrations\\Version20240614133504','2024-11-22 20:33:20',7),
('DoctrineMigrations\\Version20240617165906','2024-11-22 20:33:20',6),
('DoctrineMigrations\\Version20240708061729','2024-11-22 20:33:20',7),
('DoctrineMigrations\\Version20240801202153','2024-11-22 20:33:20',2),
('DoctrineMigrations\\Version20240815153823','2024-11-22 20:33:20',1),
('DoctrineMigrations\\Version20240916065051','2024-11-22 20:33:20',3),
('DoctrineMigrations\\Version20240929091802','2024-11-22 20:33:20',9),
('DoctrineMigrations\\Version20241002164506','2024-11-22 20:33:20',5),
('DoctrineMigrations\\Version20241119144432','2024-11-22 20:33:20',9);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-22 20:33:21','root@gmail.com');
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

-- Dump completed on 2024-11-22 20:33:22

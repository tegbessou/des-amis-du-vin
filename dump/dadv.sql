-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
('���� KN��\�\�{b���','Afghanistan'),
('\�\�\�\�\�CŅ	Y\\�=|2','Afrique du Sud'),
('==��\�8H��\�]1\�\�u�','Albanie'),
('��\��@NԐ(\�~Rc','Algérie'),
('Q���ЂI;�\�O\�\��','Allemagne'),
('2��\�\�G�cOK\�c�_','Andorre'),
('�\�L�R@�\�\�b���','Angola'),
('$4�\�\�I���2,��\�','Anguilla'),
('\�J\�\�\�\�AՊ5�G~ƿ7','Antarctique'),
('i#\n:�B����pЍ�K','Antigua-et-Barbuda'),
('\'�W\�\�Gm�\�\�\� \��','Antilles Néerlandaises'),
('m$\� \�F��\�:��\'\�\�','Arabie Saoudite'),
('�Ç\�I��w��\���','Argentine'),
('�l\��i�Oq�\�G��','Arménie'),
('\�\�X-P�N7�\�n\�I','Aruba'),
('�\�:R�D�\��n��','Australie'),
('KG�:\�`K6����\�6o','Autriche'),
(';\�F���Fŕ�\�`\��\�','Azerbaïdjan'),
('�-AA�G��>�M\nEC�','Bahamas'),
('\�$+\�[HɂX�Q\r\�\�\Z','Bahreïn'),
('\�[�\�.\�B4�\�\�,ۭJ','Bangladesh'),
('8\�r�eP@��\�~�P\�','Barbade'),
('\�\�\�vs@Ұ\�-q�(�','Bélarus'),
('\�\�\��\�?N-��Q�\�XZ\�','Belgique'),
('b[��OIV�.�\��W�','Belize'),
('\�\Z\�6�\�Mߦ��\�Mp\\','Bénin'),
('?m��\"A���kW(\�XU','Bermudes'),
('\"x3\�7\�CҴc�c�S','Bhoutan'),
('43�\�JW�[\��7\�s','Bolivie'),
('�5�\��&I���*!\�\�3','Bosnie-Herzégovine'),
('\�\\\�6�B���%�a.o','Botswana'),
('u\�A�@^��\�\�Jt\�','Brésil'),
('ke�+c0O�\�\�9\��\�','Brunéi Darussalam'),
('@n�:<@B���\�\�,:X\�','Bulgarie'),
('.M/�$G���ޮ4\�}','Burkina Faso'),
('\�x�ޑ!M&��+\�ʆ\�','Burundi'),
('\�V�/(\�H<��\ZZ6d\�v','Cambodge'),
('cC�\�%J��\�\'\rIE�','Cameroun'),
('��\�̬�J�������t�','Canada'),
('H\�״�C��m܁�ǐ\n','Cap-vert'),
('\�Q��\�\�JM�nX\�?H�\�','Chili'),
('�\�_�\�L��|\�!q\0�\�','Chine'),
('����OJO�\�b0W���','Chypre'),
('\�V\�o��F��\�]��\��','Colombie'),
('\�\�\��9D/�\�\0�t�O','Comores'),
('�PQ�\n�Dz��\r�U�','Costa Rica'),
('\�p�\0i\�Ne�!�R\�8a&','Côte d\'Ivoire'),
('ZzSo�KE�n��LvX�','Croatie'),
('�u�\�b�NG�\�2\�\r��','Cuba'),
('\�\�\�s�\�Ia�\�nO�\�\�','Danemark'),
('L\"\Zq�K��{����#','Djibouti'),
('*Ī�;F��\�\�@?�\�\�','Dominique'),
('S�\�.�:J��vU*\�d{\�','Égypte'),
('�k�];F��o�w\"y','El Salvador'),
('��OT߳J��ݯ���','Émirats Arabes Unis'),
('Y�A\�Lg���H�Z��','Équateur'),
('�Z[C�F��%\�\�E','Érythrée'),
('���\�_MM��jH�\�\�','Espagne'),
('\��&\�>Iݛ:\�\�O)\�','Estonie'),
('\�\�\��~\�E��Ү!�G�','États Fédérés de Micronésie'),
('@X���(E��\�\�^\�Q�\�','États-Unis'),
('�\�k\��@=�\�\�xjZ�','Éthiopie'),
('¦A\"�F\Z�\�Is�ثp','Fédération de Russie'),
('\�l��YLF��G�n�.�[','Fidji'),
('L�E\�\�F��Ӄ_S\0\�','Finlande'),
('U\�K\�,LF�t\�	RJ4�','France'),
('kN:\�\�+L��\�[\��Z\�','Gabon'),
('4 �)��D��d��5sD','Gambie'),
('*;�y��D��[\r��+Xn','Géorgie'),
('\�\��\�%C��(7Lc\�ݩ','Géorgie du Sud et les Îles Sandwich du Sud'),
('�8�\�)J���Hv\�\�','Ghana'),
('�r\�\�EgI��0\�	\�\0%�','Gibraltar'),
('|\".�L\�@(�9W{\�\"','Grèce'),
('\�\�y\��\�@��\�!940','Grenade'),
('\��g|�N½\�ȝ�\�4','Groenland'),
('\�.��\�NF✨y�Q�EX','Guadeloupe'),
('�/�=��On�ust�\�1','Guam'),
('�A\�)\�[Et�]Lɦ\�oW','Guatemala'),
('�VK\'E��|�5�匪','Guinée'),
('���,�\n@��̸ᰅ!','Guinée Équatoriale'),
('�;Q�[_A������','Guinée-Bissau'),
('���\�<�C��\�=\��','Guyana'),
('�\�)EL����D?�','Guyane Française'),
('�XT0�\�@\'�j\�����\�','Haïti'),
('W��\�J4�O\�\�2\�\�','Honduras'),
('\�K�\0\�Oe�QN\�B�#','Hong-Kong'),
('ų�9��H� 4i��j','Hongrie'),
('�>vI\�Lǳ\�h�\�\�J','Île Bouvet'),
('K�LG�,M\�V\�e\�\�\"','Île Christmas'),
('�ղ\�W;OL��\Z�\�&\�','Île de Man'),
('YG,\�gA��i\�G8	#�','Île Norfolk'),
('�\�\�\�V\�F)�=f\�\�\�','Îles (malvinas) Falkland'),
('O\��\\�F��cc{{�!','Îles Åland'),
('\�VS�RyIܸ�t�)}\n\�','Îles Caïmanes'),
('�\�\'\�I��I�\�I�','Îles Cocos (Keeling)'),
('P\�~e/K���p\�5\�O','Îles Cook'),
('rQ\�\�\�tNh�\��ݍ','Îles Féroé'),
('F��\�nBOڶ\�Ƈ\�\�ƻ','Îles Heard et Mcdonald'),
('x%�o\�I}��\�[�ߥR','Îles Mariannes du Nord'),
('�J�\�m\�D\���e&�@\�\�','Îles Marshall'),
('OB\�\�z0Mۢ\�Es���','Îles Mineures Éloignées des États-Unis'),
('�_9��\�D+�\�\�\�\�Hx','Îles Salomon'),
(')v�\�GV�\�yK2k,','Îles Turks et Caïques'),
('X�\0NTCJm�\�N�ax�','Îles Vierges Britanniques'),
('����qG��e\�G(`\�','Îles Vierges des États-Unis'),
('h�Db�eOǉ\�=*�a��','Inde'),
('�\�kEe�J+�g�}Z\�t-','Indonésie'),
('/QI\0\�I\���2\��\�\�','Iraq'),
('4\�	-f�Dc�\�e�\�o','Irlande'),
('��]�L|K@�1h2�S�Z','Islande'),
('�a���\�Oɸ��~\�','Israël'),
('���\�h�F\��n\"sc\�','Italie'),
('\��D\�F5�c�.��','Jamahiriya Arabe Libyenne'),
('\�\��B�\�K���p\��\�','Jamaïque'),
('$�7\�\�MK�/ԗ\�C\�','Japon'),
('�\��	�\�M���e�psP','Jordanie'),
('\�\�NN1�\�Z�a.w}','Kazakhstan'),
('Q\�Y\�_I#��(���\�','Kenya'),
('\�n����B\�=�zi�K','Kirghizistan'),
('\�\�\�;@B��u�+->','Kiribati'),
('{\�dϩH\Z�\�?�','Koweït'),
('=�o\�\�E����\'\�OV','L\'ex-République Yougoslave de Macédoine'),
('Қ���\�I�\�\�ݗg.%','Lesotho'),
('!\�~\�eYM>�p���u�>','Lettonie'),
('x~\�/L	�ٛ穸�S','Liban'),
('\�a\�	@m��8���','Libéria'),
('\�{Ip�L�0��[d\\!','Liechtenstein'),
('=\�T\�-B\Z�Վ���\'�','Lituanie'),
('��\�\�\�K��P1����\�','Luxembourg'),
('JH�xO��ҏid\�UN','Macao'),
('\�(>&N���\�\��','Madagascar'),
('����hMϜ����\�\�','Malaisie'),
('�$U,�G��o\�ޟD�\�','Malawi'),
('��V-\'�Iϒ�\�L�ud�','Maldives'),
('C A	�O��\�݃\�Ob','Mali'),
('9R)\"gH����}��\�','Malte'),
('M$\��H\��L��\�\�$�','Maroc'),
('\��(\�\0E���xq\�\�','Martinique'),
('�)�\�HY�\�\�4\�\r\�','Maurice'),
('�q(\�d�@������,�','Mauritanie'),
('}I\02+HD�-�|�\�|','Mayotte'),
('76��\�$Ct�χ\�~\\�6','Mexique'),
('ڣ�6\Z\�L:� @�\�q�','Monaco'),
('��l\�!A��\�\�T\��w','Mongolie'),
('3ӹj\�Ce�;v�V�\�','Montserrat'),
('n��VG\�/�qa\�\�','Mozambique'),
('�3\�&dO��\��\"�4p','Myanmar'),
('�\�F:h!J��V\���8','Namibie'),
('�\�\���@���J�\��7','Nauru'),
('\�o`\�\�E\�\�\����%','Népal'),
('\�G��<\�Ku�b\\\�\�A','Nicaragua'),
('\�:n�m\�Lk��\�\�푔','Niger'),
('�Ț���MۚL��H�','Nigéria'),
('1Ġ\"��Hc�=Ue���+','Niué'),
('\�L\0\�\�^KL�>���g\�','Norvège'),
('\�\�bn�J��$�C�\�V','Nouvelle-Calédonie'),
('\�U\�NIs�#E]zk','Nouvelle-Zélande'),
('\���\�N\�F��*�2\�$�8','Oman'),
('�^]%EL�R�@n','Ouganda'),
('\�^�f$Ly�\�x%ɔ','Ouzbékistan'),
('q�\��N����=!�k\�','Pakistan'),
('C���\�B��!��AW\�','Palaos'),
('����sH���b]���f','Panama'),
('�uvTOƳF<�\�\�Ji','Papouasie-Nouvelle-Guinée'),
('��]�PB	�|��\�	1','Paraguay'),
('\\4Nc��(\�\�>\�\�','Pays-Bas'),
('5e\�\�F;�KbE�QJ ','Pérou'),
('�\�\�(gAEA�� hg\�','Philippines'),
('�ϭ\�QJ���\�DI�\�V','Pitcairn'),
('qsU;g\�Gڋ\�8\�ڞ(\�','Pologne'),
('�(\ZGJ�I�><�n��','Polynésie Française'),
('\�TK\�cK7�w\�7�9','Porto Rico'),
('j�GR94Br�P\��ٱ��','Portugal'),
('4g\')A<L��<\Z�z\"�','Qatar'),
('�uc��Dp�<g\Z\�R','République Arabe Syrienne'),
('�!\�HFϬN�;\�\�t\�','République Centrafricaine'),
('\�*\�Jj#Lj��o�\�DB�','République de Corée'),
('b����\�E~�!�gN�X3','République de Moldova'),
('�����F��\� \�\�)�','République Démocratique du Congo'),
('\�\n\nC��G�s@sJ3F','République Démocratique Populaire Lao'),
('\��\�]O�yV\�#w�H','République Dominicaine'),
('|\�\��D��\�1&�S','République du Congo'),
('�_��\�GJS�M\��3�','République Islamique d\'Iran'),
('�\�U\\E~���\�T ','République Populaire Démocratique de Corée'),
('t%��\�+F��\�\�.qX�','République Tchèque'),
('�T\�\�H�@%�C\�[\�\�\�','République-Unie de Tanzanie'),
('L^�HF�����@��','Réunion'),
('}��\n�A\�\�\�o�Ў�','Roumanie'),
('�.�fP�NЬ�y��\�\�','Royaume-Uni'),
('�j3�έCӭ7	�0\�\�k','Rwanda'),
(',�Ë8\ZF2�\�I¡XjL','Sahara Occidental'),
('�\�\�\�.CC\��\�#\�\�tH\�','Saint-Kitts-et-Nevis'),
('\�Jg\0@��mA%\�\�J','Saint-Marin'),
('��YU#C\�\�\�\�\�ws*','Saint-Pierre-et-Miquelon'),
('�\�\�\�ML�\�^\�7\�\�','Saint-Siège (état de la Cité du Vatican)'),
('\�YKf�B���0xr�\�\�','Saint-Vincent-et-les Grenadines'),
('=ާ4�FM��kQ>9_^�','Sainte-Hélène'),
('���\��G$��[o�','Sainte-Lucie'),
('w�B\�\��Eƻ�)*=\�\�','Samoa'),
('�\�0�� F��\�A','Samoa Américaines'),
('�mj�-�H��pRby=\�','Sao Tomé-et-Principe'),
('T-��\�MدR罶S\Z�','Sénégal'),
('\�}�\�SKǰ\�\�m\�w*x','Serbie-et-Monténégro'),
('���7\�\�@��r��\�T','Seychelles'),
('�\�p\�5Gs�����	��','Sierra Leone'),
('X�-\�Hq�o\�S��n(','Singapour'),
('i_i%9\�L�O>\�;�o�','Slovaquie'),
('��G�\�C��\�.B\�\�','Slovénie'),
('B�\�O�Y;ل\�ŀ','Somalie'),
('\�,�m\�BH��\�b2qC','Soudan'),
('��4�\'AC�\�(:�c','Sri Lanka'),
('�\�d\�SF߈\�#\�\�U\�','Suède'),
('D]4\��E��\ZxVO','Suisse'),
('/s���HM\�g�ނ┎','Suriname'),
('�󠀉�B㐕\�_~�u','Svalbard etÎle Jan Mayen'),
('H\�U��D�&q\�\�e\�\�','Swaziland'),
('\�Wo�_�Cv�l��ƶ�','Tadjikistan'),
('�/\�>�\�J�\"nI�TJ\�','Taïwan'),
('\�\�\�υ�B\��MK� ��m','Tchad'),
('[�E�\�bE��\�\�o\���','Terres Australes Françaises'),
('\'h�-��BV�&<��\�','Territoire Britannique de l\'Océan Indien'),
('$�\�:H\�O_�BL\�4\�I�','Territoire Palestinien Occupé'),
('��̷�G@ј��ʏ�n','Thaïlande'),
('H\�\�Z�N���fOL �','Timor-Leste'),
('��)޼B���b=�','Togo'),
(',\��cR@Aت�|\�|�','Tokelau'),
('ع��E��m\�k�-','Tonga'),
('�\�W\�|K���+�\�\�\��','Trinité-et-Tobago'),
('\�p�l\�\�Nq��~7.Ǆj','Tunisie'),
('s\� ��F�\�,�\�A','Turkménistan'),
('�K\�\�,EE�?0�R�\�','Turquie'),
('\�\�团I̩RD]�a\�','Tuvalu'),
('�\��oO���r�\��','Ukraine'),
('\�z\��H{�NM�\�9m�','Uruguay'),
('&T\�F|��P�m34�','Vanuatu'),
('^(�\�Mԁ!ϻ��)\�','Venezuela'),
('\0\��JٍF\�C+6��\�','Viet Nam'),
('�n�~�@ȸ\\p\Zd�`','Wallis et Futuna'),
('C\nޗWDe�t=f�\�I','Yémen'),
('ٌ�H\0PC\�V\�~���','Zambie'),
('#\�(\�V�@}�fZĚС^','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-09 13:30:48',19),
('DoctrineMigrations\\Version20240201152951','2024-02-09 13:30:48',4),
('DoctrineMigrations\\Version20240202084749','2024-02-09 13:30:48',5),
('DoctrineMigrations\\Version20240202150901','2024-02-09 13:30:48',5),
('DoctrineMigrations\\Version20240207105701','2024-02-09 13:30:48',6);
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

-- Dump completed on 2024-02-09 13:30:52

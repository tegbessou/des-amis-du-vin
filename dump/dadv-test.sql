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
  `owner_id` binary(16) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL,
  `tasted_at` date DEFAULT NULL,
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-09-29',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-09-29',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-09-29',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-09-29',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-09-29',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-09-29',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-09-29',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-09-29',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-09-29',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-09-29',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-09-29',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-09-29',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-09-29',NULL);
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
('�t\n�%Mb�Z\��O_\�','Afghanistan'),
('\��\�\Z]G@�+\�9��,�','Afrique du Sud'),
('\�P�Df�@��x�\�\�0\�','Albanie'),
('\�FI�O8�Ze\�_�','Algérie'),
('p�V\�\�Cj�D\�w\� {','Allemagne'),
('ǇMV	E{�\�\�Ny[CX','Andorre'),
('ǿ�\0Z\�N��a(\�m\Z\�','Angola'),
('�\��/M*��!7i�','Anguilla'),
('\Z\�Hx\�aCj�UQ��^b�','Antarctique'),
('W��M~�L(�d3��Ǌ','Antigua-et-Barbuda'),
('`�{r��EB��Jb�<:','Antilles Néerlandaises'),
('�\��O��mc\"\�U\�','Arabie Saoudite'),
('�uj\�FNp�ȋ�\�(F\�','Argentine'),
('}~�=�FK��5d�Ӟ\�','Arménie'),
('�\�}\�\n�Gؽ@\�\�\�\�\Z','Aruba'),
('�[\�P?wE?��!\�;��T','Australie'),
('}.�ҟ&D܋�\�\�\�l�','Autriche'),
('!��?\nJE8�b��TQ','Azerbaïdjan'),
('v@�KfL\r�u�\�*\�^�','Bahamas'),
('G��?\�I��vs�M�','Bahreïn'),
('�jα\�\'MN��\�9�\�\�\�','Bangladesh'),
('V\�;\�\�N-�\�\�u\��\r�','Barbade'),
(':\�\�N�AH��\�v�','Bélarus'),
('6fz\"B1�|$\�L�Y�','Belgique'),
('\�?M\�SB�!�i�p\�','Belize'),
('��٨�\�D\�\�H�Ą ','Bénin'),
('\�\� \�\�\�EJ��[$�\�|','Bermudes'),
('>Fh\�l\�F\�����a��q','Bhoutan'),
('\�\��\�\��LY�m�\0!+\�\\','Bolivie'),
('\0\�\�o>�I��\�_��5\�','Bosnie-Herzégovine'),
('䋪�QLOH����_v','Botswana'),
('�_SD��Iۆ\�^u\�f\"i','Brésil'),
('Yd\�1yFEΖ\�:�\�\r','Brunéi Darussalam'),
('�\�:Z\\�L.�\�έ��\�','Bulgarie'),
('�\����\�O���ǾT̈','Burkina Faso'),
('���\�9FشC,�Y','Burundi'),
(',�\"��?E�P�\�\�6\�','Cambodge'),
('�L�\�&\�H9�w�=\�\�','Cameroun'),
(')\���AsD!����|Av�','Canada'),
('\�Lx`N@M���7�8��','Cap-vert'),
('	9{A,!Ou��\�uts+','Chili'),
('aL	6rH��T\�\�4\��K','Chine'),
('�ʤ\�\�\�E��Ւ\���','Chypre'),
('L\"m\\\�\�K\Z�\�t\�)�\�U','Colombie'),
('ɬVE\Z\�CЪ�g\�V�','Comores'),
('8�m�!\�I���\�\�A��','Costa Rica'),
('�*�c\�A\��S��ڟ','Côte d\'Ivoire'),
('ܙ\n�\�G��\�T�n\�','Croatie'),
('@\��\�O��o\� �\�C','Cuba'),
('Au\0\�|eC��tRD~l�','Danemark'),
('\�)tGs\�Gu����\�\�2','Djibouti'),
('\\6~O �<\�\�\��\�','Dominique'),
('|^sݳ\�M��\�أݗl','Égypte'),
('\r4*ҁpA\��Ge\���','El Salvador'),
('Y�l���J��c��&�V','Émirats Arabes Unis'),
('\�)�4�@��k�D�&��','Équateur'),
('[\Z��Op��\�\��9','Érythrée'),
('�\�\Zm�nEQ���K,��\�','Espagne'),
('�\�E�O\�K~�/8\�?a�@','Estonie'),
('\�4�\�*Ek��\��&LE','États Fédérés de Micronésie'),
('?۰WC�u�~�<?{','États-Unis'),
('݀\�\��G���TJ)JL','Éthiopie'),
('\�jןuC��M\�_Ch\�','Fédération de Russie'),
('�(z�� NZ��\�\0n\'','Fidji'),
('pptDO���!�_�','Finlande'),
('X�\�e\�A��FnQ�+�','France'),
('\r!;U\�E��\�DK\r�1','Gabon'),
('\�\Z\�0\�\�@Z��EB\�\�','Gambie'),
('\�\�hh��G��K��_q�\�','Géorgie'),
('`n#Y�kD͜@?e6;\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('7�\��L͸\�G@��e','Ghana'),
('}W\�Uv@��(鱐1\r','Gibraltar'),
('\�P\�a��M;�J\�͟�\�\�','Grèce'),
('�\�I<Eo��\���2\�','Grenade'),
('�y��\�L\�l��\�{\�\�','Groenland'),
('\�N���E��cA�A4\�','Guadeloupe'),
('G\�B\��zE���\�c}Id','Guam'),
('�\�\�\�M���:(3�','Guatemala'),
('���al~@Y�m�f!\�\�\�','Guinée'),
('\'�\Zs\�O(�\�H�m�O','Guinée Équatoriale'),
('\�!\�I�M\�&kt6�L`','Guinée-Bissau'),
('\�6�{_KX�l:\�ra6C','Guyana'),
('��4:O��\�\�\�J','Guyane Française'),
('\�f�\�N\�I���q����','Haïti'),
('��\�^~H��Fg�\��','Honduras'),
('\�$�G>tL5�7X���k','Hong-Kong'),
('���\�z}J}�[�\�p��','Hongrie'),
('=]l�J\�*\��Zn�','Île Bouvet'),
('s{J�N\�F҂6�u\��','Île Christmas'),
('&*\�\�P�F\"���#9}P','Île de Man'),
('1C\'�\�hOp��u�w\�','Île Norfolk'),
(')�N��L��\�\Z\�\�@�k','Îles (malvinas) Falkland'),
('^�6\�}K��T\�/ݴ�\�','Îles Åland'),
('\��KO�\�\�\�\�i','Îles Caïmanes'),
(';d7TM_�#\�S]�/','Îles Cocos (Keeling)'),
('\�\���\�\�N��Fy�%���','Îles Cook'),
('\�_5L7�[\�\�(橗','Îles Féroé'),
('\�2\rKc��g\���\�','Îles Heard et Mcdonald'),
('Jɜ�M�Az�&��B��\�','Îles Mariannes du Nord'),
('K$\�0MJ�\�8׽.�	','Îles Marshall'),
('m��F\�OŽ\\(�\�%�;','Îles Mineures Éloignées des États-Unis'),
('�P\�4\�mGΥNݼ\�\�6|','Îles Salomon'),
('��i^F�w�Ļ.\�','Îles Turks et Caïques'),
('�z|�9�Lӓ]ٚG\��','Îles Vierges Britanniques'),
('\n����Cͬ_�\�\�_�j','Îles Vierges des États-Unis'),
('\�s\�u?L�j��+\�\�','Inde'),
('�rU�A�E#��}q\�v�','Indonésie'),
('\�\�G�TuL{�q\�g�eɈ','Iraq'),
('WVDDi@��\�o˥\�','Irlande'),
('w\�\�\�|\"Fǧ\Z.<�ӋJ','Islande'),
('\rn̤DEz��[e%H:U','Israël'),
('��\�\0�\�G9�\�gT\�P','Italie'),
('(\Z\\�fM(�-IC-���','Jamahiriya Arabe Libyenne'),
('\\�N\'\ZCF�EH\�à#(','Jamaïque'),
('\����Iڅ\�,z���?','Japon'),
('\�\�Ĥ}�LX���\�c,\�','Jordanie'),
('��R�N\�O��qH0o\�M\�','Kazakhstan'),
('gu\�$�@��o~�Q�','Kenya'),
('\�y9\�Z�Gy�\�\�Ld\�','Kirghizistan'),
('\�\�\�pG��\�\��Q[','Kiribati'),
('\��sSB\n�\�괨��','Koweït'),
('R\�rF:O¥\�\�T\\_�','L\'ex-République Yougoslave de Macédoine'),
('X�%ryfL킇D����\�','Lesotho'),
('B?j2bM��aΡwb;','Lettonie'),
('^1\�я*EՎs\�X\�x�','Liban'),
('\��\�C\�C���Ik��)�','Libéria'),
('�F��\�uAӍ\�Q\�O\r','Liechtenstein'),
('\�h9��\�N2�����y\�\�','Lituanie'),
('\�\�\rQ\�,H\0�߭\�>E��','Luxembourg'),
('fޘ\0�wBQ�)6>̢m\�','Macao'),
('\�X�\�F��l��\�2','Madagascar'),
('\'\�i*FkH���.P�e&','Malaisie'),
('?ZO�\�\�G2�ڏY���\�','Malawi'),
('׾.=\�I��K\�m��','Maldives'),
('Ҥ!g�D=�	+\"\�\��','Mali'),
('K\�\�uH\�Hԫ��_�+\�','Malte'),
('��vW�AϘ\�4�:x\�G','Maroc'),
('�\�\�\�\�L��b\�','Martinique'),
('�c\Z\�\�TF��_H\�B\�:\�','Maurice'),
('�6c\�\�kB]�b\��\�\r\�d','Mauritanie'),
('��\�[\�7A��;�0|\�\�U','Mayotte'),
('R �AY�����m��','Mexique'),
('/Η\rD��!���\0�','Monaco'),
('\�c�1mH��\�+c2\�\�','Mongolie'),
('g\�(%G8����Dh','Montserrat'),
('(C��\�Kͩ$�i\�R�','Mozambique'),
('vᚸCHDеu�;�w\�\�','Myanmar'),
('����\";GS�A_\'\���F','Namibie'),
('J�A$�9G��c��/ˌ','Nauru'),
('�\0[�FK�¨\�%�݈','Népal'),
('�e�0�Aި�B�@�}','Nicaragua'),
('\�B�\�\��C�����L\���','Niger'),
('I�Љ�@��ڨK\��˧','Nigéria'),
('_/X\�\0G���0P�\�\Z�','Niué'),
('C2(��LG��D��=\�\�','Norvège'),
('nw�a#\�B�����}\�','Nouvelle-Calédonie'),
('�9���F4���,r\�','Nouvelle-Zélande'),
('14G\�\nPAU�2�n�2~','Oman'),
('\�c�N\n�Ea�\'�_Nґ','Ouganda'),
('�\�O�fD��\��>�3','Ouzbékistan'),
('bE�\�U$J�\�sk�d(','Pakistan'),
('\�\�~a#F�R��;Gk\�','Palaos'),
('ٽ�o�F;�\�\re5x\�','Panama'),
('��\\u�vI��\�8=5\�\�','Papouasie-Nouvelle-Guinée'),
('B�\�F��b�\�R�','Paraguay'),
('˛�\�\�/AU�<�.Z�\�%','Pays-Bas'),
('!|\�&9EN��\�0�5iƬ','Pérou'),
('\�-tC\�E���\n��P','Philippines'),
('���C4�K\Z�����H��','Pitcairn'),
('2���/\0L�����\�','Pologne'),
(' �\�њO��Z~/\�','Polynésie Française'),
('�Z$\��H\n�kxR\�\�y','Porto Rico'),
('b\����Eb�\n�,�V','Portugal'),
('\�\�egM³�(�\'�F','Qatar'),
('�\�\�C�L7�[n�Lw�','République Arabe Syrienne'),
('��g�Ff�Y\r�H\�E`','République Centrafricaine'),
('L*[�&-M4��Vqs�\Zc','République de Corée'),
('\�\�_?r@!�_P��)�\�','République de Moldova'),
('I�\�᰿C��So?�','République Démocratique du Congo'),
('\0�\�vu�@\�}B��!','République Démocratique Populaire Lao'),
('\�i@d\�@��\�C��>\�','République Dominicaine'),
('���[�\�F\�\ZI\�+��','République du Congo'),
('\�,5z96I���PUc�\��','République Islamique d\'Iran'),
('@d��\�F=�׹Ib\�','République Populaire Démocratique de Corée'),
('3B�O���Uz\�$�s','République Tchèque'),
('u\��iI�Ă�2>R','République-Unie de Tanzanie'),
('aSs\�\�\�D��\�\���*�','Réunion'),
('[ٟ5i\�G��\�\�\�\�.`','Roumanie'),
('0���BC/���\�)R\�','Royaume-Uni'),
('\�\�\�2}�Ih�U\\\�X<} ','Rwanda'),
('���>ajF��A9W<�','Sahara Occidental'),
('\�\�hq�KP��Dd�c�','Saint-Kitts-et-Nevis'),
('\�c�z�F��\�\�\�E]��','Saint-Marin'),
('\�\�Ǵ�\0@Ș\�8�t \�','Saint-Pierre-et-Miquelon'),
('	��\"K��o�\�X�&�','Saint-Siège (état de la Cité du Vatican)'),
('4��\'B���Ai�u�','Saint-Vincent-et-les Grenadines'),
('!YuH\�G��4\�3/O�>','Sainte-Hélène'),
('�\��xJ�����68','Sainte-Lucie'),
('(p�\�AJ��WA�\�D�\�','Samoa'),
(']s\���G\r�\�\0\�{�r\0','Samoa Américaines'),
('\�fy�\�<O��\�\�5h�\\\0','Sao Tomé-et-Principe'),
('�\�\�>%�L3��_:\�\�N\�','Sénégal'),
('ݠ�7�\�I\�b3O\Z8u','Serbie-et-Monténégro'),
('ڏ�\�}Ac�\�A(I	-�','Seychelles'),
('\�\�x��@؎\�\"1R8','Sierra Leone'),
('1��\��G��\�>ɘG�H','Singapour'),
('�g8�GA��#9\r;\�\�','Slovaquie'),
('\��\�\�@I{�E����	�','Slovénie'),
('�q+��D߽\�ͷ�-','Somalie'),
(' p\r6�cM��\�2�_W\�\�','Soudan'),
('�#�n֏LГs\�\��e','Sri Lanka'),
('}�;�GK�\"�����','Suède'),
('\�q��W�A\0�\r\�\�rySi','Suisse'),
('\�\�\�JH�y\�b\���','Suriname'),
('\��F�h\�FA�ʾR��-','Svalbard etÎle Jan Mayen'),
('o@1\�\�Bk�\�,\�j��','Swaziland'),
('\�\�5DYDz�m9\�\'i\n','Tadjikistan'),
('%�3���OC��C\��[=','Taïwan'),
('y�\�|�dI��N��ћ,�','Tchad'),
('\�\�zǁF\�\��\0\�\�W','Terres Australes Françaises'),
('T\�\�f EA:���A	��\�','Territoire Britannique de l\'Océan Indien'),
('\�R��awF�uGXQIԂ','Territoire Palestinien Occupé'),
(' \����JZ�LY�\�\Z','Thaïlande'),
('E]\�^N���M5\���9','Timor-Leste'),
('�D��\\1N��\���tD','Togo'),
('ކ�Z>Aߙ:�}�k\�','Tokelau'),
('\�e�j�YIL�	��jH�','Tonga'),
('<\'��$F�Ψ\��|_ ','Trinité-et-Tobago'),
('S\���Gu��[�&3','Tunisie'),
('%�;BuDn��\�/\�#','Turkménistan'),
('#\�O	9H]���ر\0C','Turquie'),
('?5��\�qKz�e�y�H�8','Tuvalu'),
('b�U\�\�3M��\�\���\�	','Ukraine'),
('M&\�g�vBz��\�Y)��m','Uruguay'),
('R\�m��\�K-�>QSq','Vanuatu'),
('-4�>�D޸\��}�','Venezuela'),
('P\�3HKж\�ڏ3\�$','Viet Nam'),
('	\��ޮtEH��\�q���B','Wallis et Futuna'),
('e�c#�tC\�%gjq\��=','Yémen'),
('{���\�Nʗ�\�\0aŊ','Zambie'),
('\�)�\�oDM���\�W�+J','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-09-29 09:23:13',3),
('DoctrineMigrations\\Version20240201152951','2024-09-29 09:23:13',1),
('DoctrineMigrations\\Version20240202084749','2024-09-29 09:23:13',2),
('DoctrineMigrations\\Version20240202150901','2024-09-29 09:23:13',3),
('DoctrineMigrations\\Version20240207105701','2024-09-29 09:23:13',2),
('DoctrineMigrations\\Version20240319212437','2024-09-29 09:23:13',2),
('DoctrineMigrations\\Version20240614133504','2024-09-29 09:23:13',9),
('DoctrineMigrations\\Version20240617165906','2024-09-29 09:23:13',8),
('DoctrineMigrations\\Version20240708061729','2024-09-29 09:23:13',12),
('DoctrineMigrations\\Version20240801202153','2024-09-29 09:23:13',4),
('DoctrineMigrations\\Version20240815153823','2024-09-29 09:23:13',2),
('DoctrineMigrations\\Version20240916065051','2024-09-29 09:23:13',4),
('DoctrineMigrations\\Version20240929091802','2024-09-29 09:23:13',9);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-09-29 09:23:13');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` binary(16) NOT NULL,
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

-- Dump completed on 2024-09-29  9:23:14

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
('���k@E�D���9I','Afghanistan'),
('m�ɮ�oLS��:��\�','Afrique du Sud'),
('l\�ǜ\�J0�$^\�\�04','Albanie'),
('eqZ\�CĿ\�\�Y\�\�','Algérie'),
('\��S|�<I7�(\\˵7','Allemagne'),
('\�г� \\D��T�7�\�\�','Andorre'),
('\���\�\�L���\�z�\�\�V','Angola'),
('��\�\�\�O�\�\�=�(h�','Anguilla'),
('2z�S�M�����\�','Antarctique'),
('\�b\�\n	�HC��\�\Z[�|L','Antigua-et-Barbuda'),
('*?Ü�MJ��l\�Sk','Antilles Néerlandaises'),
('��ܡ�\�N+�.0\�O�0','Arabie Saoudite'),
('-M&\�\�N圅e2�kv^','Argentine'),
('�\�9MOFd�h\�\�2��a','Arménie'),
('u��\�]:@��\�	\�\�ͣ�','Aruba'),
('���}\�!@ˇ�2��\�\�1','Australie'),
('?�9ߩAM��x\�!̷_','Autriche'),
('9�E���H\��\�h]�','Azerbaïdjan'),
('\�[\�Vf\�IE�q�\�0\�Ni','Bahamas'),
('��(0\�WEфq鲶\�E','Bahreïn'),
('�\���$FK�]�0�I?','Bangladesh'),
('6�ٲ$LϷv�\�I�@','Barbade'),
('n�\�\�\�C\\�q<�*=&','Bélarus'),
('V�E!�5]	\��','Belgique'),
('\'W0L��HC�wb�\�\�','Belize'),
('�59���Bd��&\�sQ{\�','Bénin'),
('����\�HM�����.��','Bermudes'),
('\�Dqt\�I1�&e���','Bhoutan'),
('IA\�\�M_�\�\rˎ6','Bolivie'),
('E���A\�m\����)','Bosnie-Herzégovine'),
('��\�\0\�E%�4b:��','Botswana'),
('͹�/EO��\�)�t<�','Brésil'),
('x�/ƓEM\n�W��\0h','Brunéi Darussalam'),
('\�(\�eFJf��\\5\�M�u','Bulgarie'),
(':]ؔ\�N\�\�\�\�~³','Burkina Faso'),
('C19mM&E��\�np\�̔','Burundi'),
('MN\�`^I\��W�/=�\rI','Cambodge'),
('�,{�N�Cǆ\��|>�\�','Cameroun'),
('��\�AP\�K���\�\�\�\�','Canada'),
('O6�f�J��}�Tr\�K\�','Cap-vert'),
('\�\�\�\�oE����(\�\�K','Chili'),
('l\�;\�DF��`\��f','Chine'),
('!�\r�A��~�\�\�r-e','Chypre'),
('���()@�����Ǿ-','Colombie'),
('\�\�ũ\�Gm��\�\�l\\\�','Comores'),
('\0��\�K1��.\�\�:�','Costa Rica'),
('�*	�O/��ˀ(m�','Côte d\'Ivoire'),
('�䞢�4D~���S\�&_*','Croatie'),
('%�\�\�G\�M1�ԫ\�\��\�','Cuba'),
('\��K\�@\�J\�\� �\�','Danemark'),
('\��[7i�L\n�I�EM+�\�','Djibouti'),
('��\�F�\�L�F\�~	?��','Dominique'),
('^\�L�@a�\Z:�0��','Égypte'),
('��L\�ߵH��(\Z\�\�=j\�','El Salvador'),
(']{�\�B���\0W�Ί','Émirats Arabes Unis'),
('7i\Z�A7Cv�U�O����','Équateur'),
('Cp��#G�\�\�\�\�E�','Érythrée'),
('\�\��38\�O��8�%E�+m','Espagne'),
('\�\�\�`aM֜�\�3�*\��','Estonie'),
('\��p\�I�����#B\�','États Fédérés de Micronésie'),
(' �7\�N���\�<�T�','États-Unis'),
('�IQ�V�JU�\���!\�|U','Éthiopie'),
('-4�\�dOM�\"�����\�','Fédération de Russie'),
('2T�\�?A\�>Z�\\��5','Fidji'),
('O�\r)\�\�A��\'جS\�^�','Finlande'),
('s=Ζ\\A��w�Q^T','France'),
('�\�n@z0JȘ͹�nr¹','Gabon'),
('�|\�\�a@-�x\�_l�A^','Gambie'),
('\�~G\0!H蠯�k���','Géorgie'),
('��\�\�4El�O��A\�7','Géorgie du Sud et les Îles Sandwich du Sud'),
('.y��?�@>�(ӵ�O\�','Ghana'),
(')@F�ǪC\�IZ��oJ','Gibraltar'),
('�}\��Fɽ���\"\�o','Grèce'),
('�CN��=A��\�}5?�S\�','Grenade'),
('�&\�hk,I��\Z�<Evf','Groenland'),
('\n\�\��EJQ�\�\�쯪','Guadeloupe'),
('\�\�U<L��\�-{�\�q','Guam'),
('�;AX\'�H��ø].\�','Guatemala'),
('�A�}9(E�\�\�a\�@','Guinée'),
('\�5Idw\�Ku�smF��)W','Guinée Équatoriale'),
('\�k\�\�\�\�@8�i��Y\�','Guinée-Bissau'),
('H\�{\�\�B)�A\�`� 1�','Guyana'),
('Ga��L�G7�\�i�\��pY','Guyane Française'),
('p�\�\� \�N���{k\�oM','Haïti'),
('��\�\�AG�֕8/�)','Honduras'),
('��9F\�[@<�\�wp2\��','Hong-Kong'),
('��$�Ba�^ �\�\�\�\�','Hongrie'),
('���7\�\�Iq�Ҫ�t\�','Île Bouvet'),
('�ȓ��eC�\�`{#\�','Île Christmas'),
('8�L��C��6?qO�9','Île de Man'),
('wG\�@ڜn\�r\�C��','Île Norfolk'),
('��Zcd�A���FQ��֭','Îles (malvinas) Falkland'),
('>�#��\�D��\���\�\�3k','Îles Åland'),
('\�zl{\�AP�YXd:g\�_','Îles Caïmanes'),
('\�MF���Ew�R\'\0�_��','Îles Cocos (Keeling)'),
('ߩnȝ\�@�9f\"(q[','Îles Cook'),
('\�d�][�@��ڐ\�;Ф','Îles Féroé'),
('(�?�1mFǯC\��\�\�','Îles Heard et Mcdonald'),
('\�#\�0\�L��?`b\�4_�','Îles Mariannes du Nord'),
('Zn/\�w�M���\n;/MD','Îles Marshall'),
('��|�\�DN�����2\�z','Îles Mineures Éloignées des États-Unis'),
('N����cI@�AJX\�\�~�','Îles Salomon'),
('G\�<�CDEb�@K���','Îles Turks et Caïques'),
('�\n�J\�E+�\�Y@h9^','Îles Vierges Britanniques'),
('\"\"��\�JK��@��\�\�','Îles Vierges des États-Unis'),
('N�N\\\�\�K���\�e^�\�','Inde'),
('�Y?i\�\�G$�Ջ7L\�)','Indonésie'),
('3F\�\�L��\�0g5�','Iraq'),
('(��{��Mc�iǵ�>(\�','Irlande'),
('\�y��\�J^�ѷ\�p�x�','Islande'),
('X�߫�Jǐ�\�h\�\r','Israël'),
('\�G�\n\�D��E�<','Italie'),
('#4}~\�H��\�n\�Y(%','Jamahiriya Arabe Libyenne'),
('\�8�g&HʸK���\�','Jamaïque'),
('��Kt]�B��5\0�\�\\\�9','Japon'),
('\�гx�\�M����\�G�','Jordanie'),
('##q凓J\�\�!yń\�\�','Kazakhstan'),
('gءlrAh��i��\�','Kenya'),
('�\�ч�N�\�\�� F��','Kirghizistan'),
('<6F{VK\�vQ����','Kiribati'),
('4\�\�@i\�I���c.:�','Koweït'),
('��8�_\�Ih�\�\�\�h�\�','L\'ex-République Yougoslave de Macédoine'),
('\0+f\r��A6����K�6','Lesotho'),
('���3�G��5TVz�','Lettonie'),
(';U�\�D�B��z�Y%W�','Liban'),
('gy�J�\�KI�e{�%X��','Libéria'),
('�	\0�PCIj�\��\\MT','Liechtenstein'),
('���dmMJ�9�\0?)%b','Lituanie'),
('{\��l@���\�#<\�','Luxembourg'),
('}|%-\�Oi�ʷ�-�\�\�','Macao'),
('��R)L(A���\�Â��','Madagascar'),
('�hu%�;D}�\�\�\�B(2V','Malaisie'),
('�d\�?-\�DB��\���F\�','Malawi'),
('1&[�\�^M{��ҍ}V\�L','Maldives'),
('fr\��UF���r��','Mali'),
('\�\��$\��I�\��B\�\�','Malte'),
('�W#6�\r@����\��%\�\�','Maroc'),
('�]�$�jNʶ�}�^PC2','Martinique'),
('<�F�\�E�m \�0fg\r','Maurice'),
('b�`9E4���t�ԉ�','Mauritanie'),
('.*\�\�{6Ol�g\�vQ\�x','Mayotte'),
('�T[��\�CZ�	�\�\�l��','Mexique'),
('\�w�s6N\�&\�\rd�\�\�','Monaco'),
('\�J\�u�C���\�\�K�\n','Mongolie'),
('�ݺ�E��n�\�CxI�','Montserrat'),
('o��Ĭ\�L��ŷ.�,з','Mozambique'),
('J�Y�\�Dh��\�\��','Myanmar'),
('Wv\�LR�\�q\�Ѹ�','Namibie'),
('\�\�7XC\n��\�ND\�_','Nauru'),
('5\"R�I\�Cܦ]�kD�0','Népal'),
('3\���A8�Oc��Y6W','Nicaragua'),
('\�x\�\�IFx�rU�C�k','Niger'),
('�)\'�\��BƮm�\�.n�','Nigéria'),
('\�\�\�\�\�L�\0W��\�','Niué'),
('J�`~|\�B���\�\�/7\�}','Norvège'),
('L(\�\�aB���\�s\�ͩU','Nouvelle-Calédonie'),
('\�m\�\�×N9�\�h�\�Y','Nouvelle-Zélande'),
('�.�\�\�D��\�d��2','Oman'),
('�\��Ag�X\Zvړ/','Ouganda'),
('	b5P0I��G`<&�H','Ouzbékistan'),
('1�F+\�L��\�f���lY','Pakistan'),
('܁>`\�cF��z�\�\�\nz^','Palaos'),
('���\�aF=�\�mj֚�','Panama'),
('i�� #�AK�j��\�<','Papouasie-Nouvelle-Guinée'),
(':��a\'J\�$Kڴ\�F\�','Paraguay'),
('\��Fo�B��)\ZWC$�4','Pays-Bas'),
('؏\�m�XI��|�\'\�\�d','Pérou'),
('& A[�\0I[�0,J\�B1','Philippines'),
('D\�\�\�#\ZNM�.\�\�\�\n\�\�','Pitcairn'),
('{�H�p\�LЖ*�\�_�`\�','Pologne'),
('\�2t\�6\�I���#�f6t','Polynésie Française'),
('m�\�\�4Fɞ�\�	U�,\\','Porto Rico'),
('v>�\�\�DEf�\�=BNG','Portugal'),
('?*\�\���J��\�ɡ��j','Qatar'),
('õ	�+B��\�O%\0FQ','République Arabe Syrienne'),
('6�\�!B¯J�H�^B','République Centrafricaine'),
('�iŌ\�Dġe$qo��','République de Corée'),
('�*��unJ��\�\rr�շ�','République de Moldova'),
('mMXF�\�EW��}���5�','République Démocratique du Congo'),
('Cc�nk0JX��j��`�\Z','République Démocratique Populaire Lao'),
('�H�\rFX�jY{P\�Ze','République Dominicaine'),
(']\��\�X\�M[�2i�@Nˋ','République du Congo'),
('&�\�\�8�F��~q`vg8','République Islamique d\'Iran'),
('h��\�\�I���l0\�','République Populaire Démocratique de Corée'),
('r\�\�sNV�f\09&F�l','République Tchèque'),
('SCO���@7�F�uM\�4\\','République-Unie de Tanzanie'),
('\��de�C��*n{n[Z\�','Réunion'),
('�l\�ZJ���ڋ\�','Roumanie'),
('A��VT\�Ki����KO�','Royaume-Uni'),
('\�e^�rNe��\�_áY','Rwanda'),
('�Č\�p\�G\�w�[\�\�\�','Sahara Occidental'),
('�v����Mߠ\�\�x\��\�','Saint-Kitts-et-Nevis'),
('	�ND�\�I̡��y2��','Saint-Marin'),
('\�\�Br��NT�;\�\�_','Saint-Pierre-et-Miquelon'),
('�\�-��K��B�\�gH\�','Saint-Siège (état de la Cité du Vatican)'),
('*\�w�UJz�C/d|Jw','Saint-Vincent-et-les Grenadines'),
('\�#M\�@\\�\\\�o*�\"�','Sainte-Hélène'),
('���\�RwIZ�)~\��w�','Sainte-Lucie'),
('����nM��=\�(-э','Samoa'),
('rp\\U3\�Lȃ*H\�L\\m','Samoa Américaines'),
('\�l\�eaA��R�[�F\�','Sao Tomé-et-Principe'),
('ӳ\�\�AO[�\�m��\�\�','Sénégal'),
('\�գ\�JA�\'�\�\�Xc','Serbie-et-Monténégro'),
('0�zXI_�1$�\��\�\�','Seychelles'),
('*=,<a�C5�y���?�P','Sierra Leone'),
('�˄z� KѦI5�X�n','Singapour'),
('A\�\�rR�@P��\�*��\�','Slovaquie'),
('\��.tO��lgSx\�/L','Slovénie'),
('\�\�V`��Fy��q}>e\�','Somalie'),
('+�h	6]D����@���','Soudan'),
('��\�\�\�CԻ��\�t\�','Sri Lanka'),
('U~�\�`\�Lz�</�Q\�Q','Suède'),
('\�\�h\�!B\����\�S|\�','Suisse'),
('\��( G�x��q\�','Suriname'),
('6�\��K\�Oc�\�d�+','Svalbard etÎle Jan Mayen'),
('<_��BO��\�#J�\� ','Swaziland'),
('�MT*\��IN�\�\��t�$\�','Tadjikistan'),
('\�mbQ�N:�g�bğ�l','Taïwan'),
('\�\�\�\�Q\�Nنaa\�EM','Tchad'),
('y`Z\�ހBƺj���/B4','Terres Australes Françaises'),
('��\�&.Ma�\�rb���*','Territoire Britannique de l\'Océan Indien'),
(']Ч�Ko�X��`�\�','Territoire Palestinien Occupé'),
(')L~�LR��]����','Thaïlande'),
('`�\�\�\�Iy�)�\�\��','Timor-Leste'),
('�}�\�%E6�`ט\�C\�','Togo'),
('��\"*d\�Bz�gl\�c\�\�','Tokelau'),
('�L}\�\�<DY�����.','Tonga'),
('n�u��NǏ\�$\�jU','Trinité-et-Tobago'),
('с\�\�^D ��9\�Q�)','Tunisie'),
('Q\�	�ndF\�\r�+\�ڲ\'','Turkménistan'),
('4O�^׌@��wM� E�\�','Turquie'),
('\�C�{ՑMV�����\�\�.','Tuvalu'),
('��a\�L\���� ��\�','Ukraine'),
('\���Iy�>\�[\�p!D','Uruguay'),
('>\"\���EٶR3�\�@o','Vanuatu'),
('�\����J���\�\�\�@D','Venezuela'),
('d\�ZD\�Iq�n|Q\�\�=�','Viet Nam'),
('3ǲIZxAJ�˶^C��\�','Wallis et Futuna'),
('ƑĲx\�@ݹ\r���\�','Yémen'),
('45\�HѵG0�rr|\�\�bb','Zambie'),
('\�\�\Zn\�Bņ@i\�!O','Zimbabwe');
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
('DoctrineMigrations\\Version20240201152951','2024-12-15 20:34:46',2),
('DoctrineMigrations\\Version20240202084749','2024-12-15 20:34:46',2),
('DoctrineMigrations\\Version20240202150901','2024-12-15 20:34:46',3),
('DoctrineMigrations\\Version20240207105701','2024-12-15 20:34:46',2),
('DoctrineMigrations\\Version20240319212437','2024-12-15 20:34:46',2),
('DoctrineMigrations\\Version20240614133504','2024-12-15 20:34:46',11),
('DoctrineMigrations\\Version20240617165906','2024-12-15 20:34:46',9),
('DoctrineMigrations\\Version20240708061729','2024-12-15 20:34:46',13),
('DoctrineMigrations\\Version20240801202153','2024-12-15 20:34:46',3),
('DoctrineMigrations\\Version20240815153823','2024-12-15 20:34:46',2),
('DoctrineMigrations\\Version20240916065051','2024-12-15 20:34:46',4),
('DoctrineMigrations\\Version20240929091802','2024-12-15 20:34:46',10),
('DoctrineMigrations\\Version20241002164506','2024-12-15 20:34:46',7),
('DoctrineMigrations\\Version20241119144432','2024-12-15 20:34:46',12);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-12-15 20:34:46','root@gmail.com');
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

-- Dump completed on 2024-12-15 20:34:47

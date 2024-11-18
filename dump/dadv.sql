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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-18',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-18',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-18',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-18',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-18',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-18',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-18',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-18',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-18',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-18',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-18',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-18',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-18',NULL);
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
('X\�?�A����\�\�1�','Afghanistan'),
('\�1�	,@1�*�\�6G�>','Afrique du Sud'),
('�w��պCڤ\�+2\��^9','Albanie'),
('�?�\�C�D�1�ԭ\n\�','Algérie'),
('��k-H\r�\�\n{\�\�\�','Allemagne'),
('\�\��+\��JD���\�\�!�\�','Andorre'),
('	\\։�\�N�`ᨩv&�','Angola'),
('P̍@��%�\r)TCz','Anguilla'),
('-\�5�ѢC��\�b�/݌','Antarctique'),
('\�N\�xdTJ��w\'�\�\���','Antigua-et-Barbuda'),
('$\�\�\��A行Y�\�(Ch','Antilles Néerlandaises'),
('G�\�\�էN��69	z�23','Arabie Saoudite'),
('\�2�\�JD�\�\'�͜H','Argentine'),
('n�k<.)N\�\"\�cD!�J','Arménie'),
('3K	�\�@��樬\��','Aruba'),
('��\�\�TOЙV\�Wq\�','Australie'),
('P��mõC+���-כA�','Autriche'),
('H͒�C.�VvKu,\�','Azerbaïdjan'),
('X\�Ǟ�K/���0R\�v�','Bahamas'),
('�9L>x/DF��\�Y�\�`','Bahreïn'),
('_>\�\'�H�`Y4���','Bangladesh'),
('�\0W\�sL��wsq���D','Barbade'),
('L-j�0�DU�FB\�>K\�','Bélarus'),
('\��<D\�MBa�\�p��\�\�','Belgique'),
('j\�\�|\rjN~�\�_�\�F+','Belize'),
('\�)\�I5IN[�]\�{Ubeq','Bénin'),
('f\�D��WEی\�\�ԫ\�]','Bermudes'),
('�^���@\'���\nx�','Bhoutan'),
('Jc\�A�=C��F~M\�`�','Bolivie'),
('\��\n\�7[C��fоe\n','Bosnie-Herzégovine'),
('l\�\r�(�Lt��\�T\�hk�','Botswana'),
('J��\�ڼG�SA\�g�','Brésil'),
(':\��ڞKE�4j�5�!','Brunéi Darussalam'),
('\0!-�\�FY�Vҕ�h�','Bulgarie'),
('K�*H\�M�`��#\�p<','Burkina Faso'),
('�7ZPKB�r\�#Bk','Burundi'),
('��� (H\�xHfF�','Cambodge'),
('\�\�\�Y\�B~�7\�\"\�\�e','Cameroun'),
('=��\�\�L\�Ӟôޣ','Canada'),
('\0B5x�A`�\��\��\�\�','Cap-vert'),
('�s0N\�K��٘��g+','Chili'),
('�}�\Zl\�Ao����=|�f','Chine'),
('Ó�{\�E��\�b>\�','Chypre'),
('\����\�\ZA���\n0$i\�','Colombie'),
('�K\�G��	\�3k@��','Comores'),
(',N\�}I0��*�WMX�','Costa Rica'),
('uS=��F̺\'\r\�x\�x�','Côte d\'Ivoire'),
('�� �GMw��_\�\ru,U','Croatie'),
('m\rp\��D\'�1�3}p�','Cuba'),
(' �\�ݤ�Jx��\�ǽ\�','Danemark'),
('��D:`fN7�W�aÓ�','Djibouti'),
('��i��@ӡ�\�\�','Dominique'),
('q�\�4B��ɥgT��\�','Égypte'),
('�M\�ݙN��\�\r\�\�3�','El Salvador'),
('&\�[w)E��y�-�q','Émirats Arabes Unis'),
('\�FG\Z\�N��~\"n*�Ra','Équateur'),
('\�&\�6��B營%��Œ-','Érythrée'),
('83)M��EЍ`\��\�\�\�\�','Espagne'),
('(j\�T\\pE2����ࢢ\�','Estonie'),
('0���\�\�Jd�\�!\r�\�','États Fédérés de Micronésie'),
('�\�\�3LDh��\�\�,}','États-Unis'),
('�{��\�Gn��\'��]1\�','Éthiopie'),
('K���\�C�1\�\��\�\�','Fédération de Russie'),
('e1\�ҚMN��+��\�E','Fidji'),
('��$�N6E����.sv�','Finlande'),
('�d\�f!\�C��\�\�6Q�','France'),
('�\�5H\�J����\�\�b\�Y','Gabon'),
('#��֊�MJ�\�븗e','Gambie'),
('Kq%�C��q\�\0\\�<�','Géorgie'),
('�\�\�\�iK?�c2uU�','Géorgie du Sud et les Îles Sandwich du Sud'),
(' �\�\�\�O\�\'��$z�','Ghana'),
('>y[�T4@ؒqG\�\�QP','Gibraltar'),
('�\�\��Dý�X{~T','Grèce'),
('	���\\�M���\�t\�vZ�','Grenade'),
('$LL@\nlL���\�>\�jp�','Groenland'),
('?mC1CY�\�[(L�','Guadeloupe'),
('\�z\�xHz���\�7�HN','Guam'),
('Zf!�\�J����QM+','Guatemala'),
('̀s\�[�K���X','Guinée'),
('w�\�9\0H��:Y\�ɬ�','Guinée Équatoriale'),
('=\�&s��AN���}D�','Guinée-Bissau'),
('�w\�\�M\��\��C2W;','Guyana'),
('«b\�\�B[�����K�','Guyane Française'),
('\�G��7�J�j\�I��U','Haïti'),
('v��Gۨ�Py����','Honduras'),
('㥎�\�;Aɽ�R\� }�b','Hong-Kong'),
('\��\�VZ@?��Yܤ��','Hongrie'),
('�\�^l\�F*�~\�	pJ\�','Île Bouvet'),
('\��\�^\�H��U�a\�q�F','Île Christmas'),
('�[Jew\�H\�\�\�η$B�','Île de Man'),
('L\�\�1QM?�#�7l2o','Île Norfolk'),
('itÄ�F���O\�MG\�','Îles (malvinas) Falkland'),
('��!\�y�H��?�\�\�\�','Îles Åland'),
('<\'\�>U@ڰ\\\�i\�yT�','Îles Caïmanes'),
('3�\�\�\�H8�i(С�Y','Îles Cocos (Keeling)'),
('F\00%��Oǖ<d\�\�\��','Îles Cook'),
('\�f\�ZD	����\0','Îles Féroé'),
('�ۚ\�Iǚ\�\Z�u\�\0:','Îles Heard et Mcdonald'),
('���;�B��9u)%v	','Îles Mariannes du Nord'),
('\�9`\�K0�\�\�C\�^\�','Îles Marshall'),
('DU�wXM|�\���}�\�','Îles Mineures Éloignées des États-Unis'),
('�C\�^r\'L��\�{\�`Q\�','Îles Salomon'),
('\�Wh��N\���(\�','Îles Turks et Caïques'),
('����t�M��켃wM\\','Îles Vierges Britanniques'),
('\�|ddUL\'�\�qfoB\�','Îles Vierges des États-Unis'),
('<L\�\�\��Jǅ�\��\�$','Inde'),
('u\�3>{M�9��>\�\�{','Indonésie'),
('h�yLA-��P\�\�','Iraq'),
('\�#�\�J�5l�Pώ�','Irlande'),
('`�~�\�D��Yu;����','Islande'),
('\�\�D�b�D4����7_^','Israël'),
('\'J\�\�;\�J��\��B	�m','Italie'),
('\�#\�\0C[�\�K\�(�','Jamahiriya Arabe Libyenne'),
('$:\�a�Cu�F.ؿB','Jamaïque'),
('��!\'gAזg�\�\��','Japon'),
('=\�PR\�E]��8t+=�c','Jordanie'),
('�tx~�\�Kܓ�\�\�\0+\�','Kazakhstan'),
('�\"@\�\�\ZH��Φ(>\"','Kenya'),
('\�\�y]DN���K=3�','Kirghizistan'),
('�D���\�D���\��d-MC','Kiribati'),
('iv�\n�K�w�\�d�v','Koweït'),
('�{�Z��L6�bs\�\�?','L\'ex-République Yougoslave de Macédoine'),
('��\�\�\�L��\'N��82\�','Lesotho'),
('\�\�\�\�~M*�\�3{E�q2','Lettonie'),
('\�\�u�\�8B���0�S:%','Liban'),
('� �\��YGh�?��o\��','Libéria'),
('jݏ\� NAĽ�\��\��','Liechtenstein'),
('�G\�m\�A���Y�W7\�','Lituanie'),
('vz�@\�	��-\�','Luxembourg'),
('�:�\�?4E��X\�\�W$\"','Macao'),
('u\�=��\�Eg��<\�CQv\�','Madagascar'),
('9e\�\�<JӐ���\�E�','Malaisie'),
('\Z\',\�L�\�l#]<','Malawi'),
('�4���I3�/<��}gL','Maldives'),
('�<Ad\�J��<\rL�P��','Mali'),
('U,8�|Ig����\�։?','Malte'),
('\�㹻��KB�\�\�ñgY','Maroc'),
('�̄��\�K��\����)\�','Martinique'),
('+\�t�T\�L����`�\�d�','Maurice'),
('�׭LޡD��|�69N','Mauritanie'),
('h�\na�\�Ng�\�l��0/','Mayotte'),
('�\�\\}n<I8���\�hA�','Mexique'),
('�\�]��\�A����ni׹\�','Monaco'),
('�\�q��)J\�\�U0�o4','Mongolie'),
('\��*wRC;�\�\�A\�-','Montserrat'),
('\�\�2˗\�G��s�\�Z','Mozambique'),
('U2� /�@}��y6><�','Myanmar'),
('b����\�Mݘ�\�Y\\�\�','Namibie'),
('�6UO��~]�\��L','Nauru'),
('q�/�nDs�\ZE�S�3','Népal'),
(',�\�)B\�O��\���y/','Nicaragua'),
('\"e���$L��f_\�\�','Niger'),
('\�\'\�B\�I\�\�L%*�T�','Nigéria'),
('\�,\�6N^�\rփȫ��','Niué'),
('E�>�K\'�\� ̖�D','Norvège'),
('e򏟆�A��\�z^kk\�','Nouvelle-Calédonie'),
('U\r�d\�C��\�%.T\�','Nouvelle-Zélande'),
('�+~4\�\�N���H��\\0','Oman'),
('.�N-C�K晻\ZF3�','Ouganda'),
('�\�So{I��H\�W\�','Ouzbékistan'),
('�\�s\�$jCG���ݻ�^','Pakistan'),
('\�&\�*\�@� G\�iQ�','Palaos'),
('���ֻ�FJ��\��\�\�','Panama'),
('@�\�&�D\n�e,Erӎ�','Papouasie-Nouvelle-Guinée'),
('�\�U.ڀK\n��\�w�<','Paraguay'),
('�\�\�B(YA\�\�u\�FU�>','Pays-Bas'),
('\�Z�m\�\�B��#\�\�@_��','Pérou'),
('۬s$�TJ_�GPv��\�G','Philippines'),
('�\�b\�\�{G��\�@�Dn�D','Pitcairn'),
('\��[�f@��@�����','Pologne'),
('%�{�m\�Gb�\�\�d�\�\�c','Polynésie Française'),
('\n�Ԛ\�K�\�\�ޱ�4�','Porto Rico'),
('&Y�\�.\�Oų�\�<\�rE�','Portugal'),
('�MI� @?�5�BQy\�A','Qatar'),
('\�Ҳ`=Lř���x','République Arabe Syrienne'),
('�\�uD������\�\�','République Centrafricaine'),
('q\�`�EF��\�Ժ�e8','République de Corée'),
('\�8D7:N�\�\"�64?=','République de Moldova'),
('�^4@�F��\�x\�6�4R','République Démocratique du Congo'),
('��1�\�\\@��r~���H','République Démocratique Populaire Lao'),
('/�&�7F`�u)��A','République Dominicaine'),
('�\�F��@��کG\�\Z%�','République du Congo'),
('59+<v�H,�<ئ\�狋','République Islamique d\'Iran'),
('oĿ;\�}I��\�jx1��','République Populaire Démocratique de Corée'),
('\'\�z�,\�HÚ\�\�\�`Br','République Tchèque'),
('n*���Ew�z,.���]','République-Unie de Tanzanie'),
('�\�SѯG�p�L\��','Réunion'),
('κ2�ˀN��%��J\�\�_','Roumanie'),
('�\n\�6]C\�\'wW���?','Royaume-Uni'),
('A\�k��K��\�\�\�\�\�\�','Rwanda'),
('ϻ\�\�F��t+\���A','Sahara Occidental'),
('�;\�e\�C2�nE�','Saint-Kitts-et-Nevis'),
('\�/\0\n�\�M��b!\�s5(\�','Saint-Marin'),
('It\�!��EÄ�\��d�\�','Saint-Pierre-et-Miquelon'),
('�\�\�K-B��:o}��X','Saint-Siège (état de la Cité du Vatican)'),
('J}\�R0\�HG�\�V\�ڽ\�','Saint-Vincent-et-les Grenadines'),
('�F\�c�\�M\'�\�@�N�)\�','Sainte-Hélène'),
('�\�\�nJg�-\� �2��','Sainte-Lucie'),
('b�34\r@����J��','Samoa'),
('pK�RE��|�V\�\�','Samoa Américaines'),
('~PT\��rC��\Z\�\r�Z;','Sao Tomé-et-Principe'),
('i\�\�%��@��\�\�&���L','Sénégal'),
('Ǆ�\�O۪��\�PY\�X','Serbie-et-Monténégro'),
('�c�\��B~��P^���','Seychelles'),
('�{\�J�\�B���\��-\�','Sierra Leone'),
('ɨ\�:�E؛\�{\'\���','Singapour'),
('#`\��\�I癜FT�5','Slovaquie'),
('�\��\�<�Li�;\�C\'�\�','Slovénie'),
('{s���\�B��\���R�','Somalie'),
('�M�w�@X�\��!��\�','Soudan'),
('غi\�8KO�?0�Ot','Sri Lanka'),
('P���\�E\�\�5�SZ�','Suède'),
('n<f.;\�I��q\�\�I�\�','Suisse'),
('\�.ǔ\�SL���\�O\�z+�','Suriname'),
('TX�$�N�1�oI','Svalbard etÎle Jan Mayen'),
('�\�6W�~E���\�\�\�ƇH','Swaziland'),
('�\�8\��_Lz��#���','Tadjikistan'),
('d���\�E��?�h`\\\�','Taïwan'),
('d�\�\�lCs����%���','Tchad'),
('\�E\'+%A0�Ep�\�`\�6','Terres Australes Françaises'),
('7C��^XO��+`��\�q|','Territoire Britannique de l\'Océan Indien'),
('F\\���\�GY�)<\�\�t','Territoire Palestinien Occupé'),
('!\�@-JKd�ǃ\'�M�@','Thaïlande'),
('�\�Fw�l�^\�\�9\�','Timor-Leste'),
('���#\�G��~)W..j\�','Togo'),
('Ͻ\�\�>F��\�\��.�','Tokelau'),
('�c�	\�\�M������\'�','Tonga'),
('^�w�}4CO���\�~\�\�\�','Trinité-et-Tobago'),
('�[U5�,H��a\Z\Zd','Tunisie'),
('�\�M\��Gɣq�\�=��','Turkménistan'),
('t�w\r\�C�?�Y8S,\�','Turquie'),
('M\�/o*_LʔJ/\�\�y5V','Tuvalu'),
('\�F�g�D\���\�\�K�\0�','Ukraine'),
('�\\�\n�(G\��Rm��U\0','Uruguay'),
('�s��t@֋r�\0��','Vanuatu'),
('$\�\n�\�\�I>��\�\�B\n\�','Venezuela'),
('\�\'�\�O\�\�\�c=^6','Viet Nam'),
('a|A���M\'�_+d1���','Wallis et Futuna'),
('\�S�INW�E�`]��\�','Yémen'),
('�\�;\�\�\�Np��0\�\��\�','Zambie'),
('*�\���O����I_]�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-18 10:32:49',3),
('DoctrineMigrations\\Version20240201152951','2024-11-18 10:32:49',2),
('DoctrineMigrations\\Version20240202084749','2024-11-18 10:32:49',2),
('DoctrineMigrations\\Version20240202150901','2024-11-18 10:32:49',2),
('DoctrineMigrations\\Version20240207105701','2024-11-18 10:32:49',3),
('DoctrineMigrations\\Version20240319212437','2024-11-18 10:32:49',2),
('DoctrineMigrations\\Version20240614133504','2024-11-18 10:32:49',13),
('DoctrineMigrations\\Version20240617165906','2024-11-18 10:32:49',7),
('DoctrineMigrations\\Version20240708061729','2024-11-18 10:32:49',8),
('DoctrineMigrations\\Version20240801202153','2024-11-18 10:32:49',2),
('DoctrineMigrations\\Version20240815153823','2024-11-18 10:32:49',2),
('DoctrineMigrations\\Version20240916065051','2024-11-18 10:32:49',5),
('DoctrineMigrations\\Version20240929091802','2024-11-18 10:32:49',14),
('DoctrineMigrations\\Version20241002164506','2024-11-18 10:32:49',8);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-18 10:32:50');
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

-- Dump completed on 2024-11-18 10:32:51

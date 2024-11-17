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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-14',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-14',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-14',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-14',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-14',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-14',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-14',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-14',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-14',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-14',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-14',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-14',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-14',NULL);
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
('1Z=\�\�lM���	�&��M','Afghanistan'),
('W�OM�L\���G�ۋ','Afrique du Sud'),
('���^�I��\�_}�9B','Albanie'),
('hZ\�q�vO��[AO\���','Algérie'),
('�\��i\�M���8�\0\�(�','Allemagne'),
('A�ȃ\�A\�r4�\�j\�','Andorre'),
('Uez\ZA��\�%{*�9','Angola'),
('f�%\�|JE�+F&~7d','Anguilla'),
('N\��Ћ;NV�\"���\rC','Antarctique'),
('�;k�{Au�|�mI�/\�','Antigua-et-Barbuda'),
('�M�d�E��|:��.�9','Antilles Néerlandaises'),
('\�\�i\�Mߩ	\�KduJ','Arabie Saoudite'),
('\�6nq�@(�@�>�zf','Argentine'),
('02\�x�I���\�\�\�^','Arménie'),
('\"k�%�\�N!�\��M�\�3','Aruba'),
('�T\�\�ҥI7��;\�m\�\�l','Australie'),
('\�x�D\�&�\�c\�t','Autriche'),
('\�>\\\�]*A ��E��R<','Azerbaïdjan'),
('�Zj֟AI�\�RlB�x�','Bahamas'),
('��\�Ia�F}�\�\�\�\�W�','Bahreïn'),
('��*\�\�~O�5\�(a-\�\�','Bangladesh'),
('M�8J�\\C����G�\�\�','Barbade'),
('Jє?iOE��KǏ5X�','Bélarus'),
('\�\�W�m@R� #��\�','Belgique'),
('9n7�A��\�Z�\�w�U','Belize'),
('|�!�jJ��X>;ŷ','Bénin'),
('*Jz�rM<���a\��','Bermudes'),
('\Z\�Ȯ�wE��L��.�','Bhoutan'),
('\Z\�\�ʋ�A�/JH\�','Bolivie'),
('\�iN9�\�D��\�]\Z��','Bosnie-Herzégovine'),
('\n��.)Kx�d�]���e','Botswana'),
('>	�Ɵ@�\�e�7�,','Brésil'),
('Nd ���C��yI\���','Brunéi Darussalam'),
('G�\�|�Lȡ�g��U�+','Bulgarie'),
('\r_s�Mj�L\���\'\�','Burkina Faso'),
('}��7\�\�E����\�w�\�\�','Burundi'),
('�/\�	Cٳ�g�\�Gw/','Cambodge'),
('���]�C���;3��\�1','Cameroun'),
('L\�\�\�Q\�C��M\�qwk�\�','Canada'),
('\�\�n&jH��\�N\�i�w2','Cap-vert'),
('\�e/J>�GB�0�mʎ|','Chili'),
('1>\�aKK��g1c���','Chine'),
('y�)�e,L���LBv\�','Chypre'),
('p�i\'\�D���\�c\�\�\r','Colombie'),
('�EPoUD��?A\�\�ݸ','Comores'),
('�\�\�\�`?JՑ%\�*|\�','Costa Rica'),
('s{5���C	�\�X5\�<\�','Côte d\'Ivoire'),
('\n\�(\��vE��7\\�dh\�\�','Croatie'),
('Cn���E��\�\r\�x�','Cuba'),
(')��\�9@�0f)�\�rH','Danemark'),
('\�N�\�9Bĕw\"\��$\�','Djibouti'),
('k��!\�\�A\��<Hyc�w�','Dominique'),
('C19\�WvDu�&�8\�','Égypte'),
('���(�:@�� ��\�\�}','El Salvador'),
('(\"��\�D2�\�NBo�b','Émirats Arabes Unis'),
('�}E�޿M[�\�\�KzJ\�\�','Équateur'),
('l\�K�*\�G˨\�\��C�M\�','Érythrée'),
('\�u�)�\�Mؘ&\"K\�޿','Espagne'),
('c=j)�B���vr;J2','Estonie'),
('���X}B���\�T\�?','États Fédérés de Micronésie'),
('�g�\�\�\�C��ua:Q�W','États-Unis'),
('�\��\�Q�E?�(J7��\�','Éthiopie'),
('�?�\�D���\���\�','Fédération de Russie'),
('\�d\nn\�+G�\�dFni�3','Fidji'),
('\�8�ũNԆu\0�:}�','Finlande'),
('�J���C\��x���\�UN','France'),
('�r\��YO�� \�z\�<�~','Gabon'),
('jl\���L��c�A��','Gambie'),
('���qc�JC�\�aE\�>�','Géorgie'),
('�A-\�\�G��\�ƾ��','Géorgie du Sud et les Îles Sandwich du Sud'),
('�\�\�\�4E��\�o�D\�','Ghana'),
('��<8�Me���\�UB\�','Gibraltar'),
('d\�A4\�\�CX��O\��\�\�&','Grèce'),
('\�dmeΌK��1Xr�a�','Grenade'),
('\�.h\�D���\�!\�\��','Groenland'),
('\�]�#H�����>�','Guadeloupe'),
('\�Y\�\�\"I��4�>�\"/','Guam'),
('���\�\�D�Y,?���z','Guatemala'),
('�h2�\�@d�4\�]s�E','Guinée'),
('Vi��HKS�lN\�x\�','Guinée Équatoriale'),
('�w\�T\�uB��\'/�|�\�J','Guinée-Bissau'),
('Bli6�D$�N@��>�\�','Guyana'),
('	�\�\�DE]��v̳\�\�\�','Guyane Française'),
('҃\�\�\�%G\�\�Op��I','Haïti'),
('D�\��\��Lǿ�kxmX�','Honduras'),
('yIɹ4xBs�g2\Z\�\\��','Hong-Kong'),
('R�t\�H��@�;%\�b)','Hongrie'),
('z%�~!�IO���\�T?�','Île Bouvet'),
('l\�yUIۆ�C�\�Gp','Île Christmas'),
('#(��}�Bc�\�\n�\nU�b','Île de Man'),
('\�\�NJbGT�\�.�\�','Île Norfolk'),
('w\�\"�\�G�5�i\�\�J�','Îles (malvinas) Falkland'),
('\"3�e\�N�\��\"x','Îles Åland'),
('\�?\�\�\�6F�\�*n$t\�3','Îles Caïmanes'),
('�x�w�\�E�g�\��3','Îles Cocos (Keeling)'),
('ꌚŝLF��\�jc��','Îles Cook'),
('Tt�RԘOa��s\0A%','Îles Féroé'),
('\�t`;<8Fںi^we]z','Îles Heard et Mcdonald'),
('�ph\nrJՍ|�dr�','Îles Mariannes du Nord'),
('n2�q3�@-�8\�:\�*','Îles Marshall'),
('r�c���EԜ\�\�7\��v','Îles Mineures Éloignées des États-Unis'),
('W}-*J��6�p���','Îles Salomon'),
('4X\�\'\�GZ���ڍ��\�','Îles Turks et Caïques'),
('�e.Y.@\��([\����\�','Îles Vierges Britanniques'),
('%�g\�?�DQ���eB\��','Îles Vierges des États-Unis'),
('^\����O��T.\��t�','Inde'),
('��INZ�L\�˷ı�i\�','Indonésie'),
('��\"�\Z;N(���ucT�','Iraq'),
('� \�L˔I��R\�V��\rd','Irlande'),
('7Q\�xuF%��\�\�0�\�\�','Islande'),
('d�|d��D\0�7�\�Cf\��','Israël'),
('}�\��N\�h�\�AO/m','Italie'),
('FCX#6A:�S\��4n\�','Jamahiriya Arabe Libyenne'),
('��l\�$ N\������o,','Jamaïque'),
('5�\�y[/K���=P���','Japon'),
('`IS\��VK�l\�,\�','Jordanie'),
('.�\�G/cHj�f\��>��','Kazakhstan'),
('p;\�o�B����]2�','Kenya'),
('�BydkvD\"����˻l�','Kirghizistan'),
('�\�7�@-�y]r�c','Kiribati'),
('��|]\Z�B{�\�6�1;�','Koweït'),
('ֈ\0�лFd��Z\�jU+','L\'ex-République Yougoslave de Macédoine'),
('L���#�Jf�Q>fx<','Lesotho'),
('ܗ!� H�\�Q�w�D','Lettonie'),
('b%\�\�4E����nu7\�','Liban'),
('\�}ܝ�qH\�籽����','Libéria'),
('��I �\�M׿\�*:j�\�#','Liechtenstein'),
('\�V\�z��Hk�^픤\� ','Lituanie'),
('zk,��A�7b�\�`J','Luxembourg'),
('Z�K��A��{\�w��','Macao'),
('8���\ZD\���\\n��','Madagascar'),
('�\0B\'N\�\\z\�ܙ�','Malaisie'),
('1#�q\�7L��\�\�_/\�','Malawi'),
('\�!\�\�yD\��\�\��A�','Maldives'),
('\�QD1��m�\�W�','Mali'),
('\�q�� SD��Jr�v\�^','Malte'),
('�vE�*DÝ7��\�\�ï','Maroc'),
('\��\���@L��d�GCyd','Martinique'),
('\�Ӷ�\�<E\��\Z��Ij','Maurice'),
('v�\�\'~GS�2.ֲ�B','Mauritanie'),
('\�\��޹�K\�\�\r\���\�Z','Mayotte'),
('��$IyO���[�Y�@\�','Mexique'),
('���\�^\�Jz�\�4`','Monaco'),
(':d1�\�Cݏҙ\�;�|�','Mongolie'),
('9}\�\n<LB��	q�:�V>','Montserrat'),
('j\��DLͦ^\�\�,\�r','Mozambique'),
('\�\�e$S�BԠ_�\�#\�;�','Myanmar'),
('\�t\���L~�خi���','Namibie'),
('\�\��h��J�<\�\��n�','Nauru'),
('�Ӷ!�\0J6��\0Jɰ��','Népal'),
('��3�\�KK��aTz��','Nicaragua'),
('��\�}�D7���\�)\��','Niger'),
('ӗ&bJ��\��k���','Nigéria'),
('�\nl\�\�L���p\�*B\�','Niué'),
('s��5QE��g�䊖','Norvège'),
('��\�TM�E\�-nB\�]:|','Nouvelle-Calédonie'),
('y���\�E\�\�R��G�a','Nouvelle-Zélande'),
('�\�\�AqFԓ���%T','Oman'),
('\�IԢ\�]Ey�\�޺�v\�','Ouganda'),
('\�1�!O[���KZJ��','Ouzbékistan'),
('5\�\�\�K\r�q�ޭP\�p','Pakistan'),
('�F�\�L��^\�\�UU','Palaos'),
('�9\�J=�\�\�\�\�A','Panama'),
('nn-\�U@P�uγ\0{�;','Papouasie-Nouvelle-Guinée'),
('��\�l7:NT�%\�}2]�','Paraguay'),
('�m\�\�@�C��\�d�lq�','Pays-Bas'),
('T\�$�\�\�B㌁�9��7','Pérou'),
('LG<��R@\�\�oV�\�','Philippines'),
('o؅�AG��#��F\�8:','Pitcairn'),
('@q���K���\n\�\�4D','Pologne'),
('\�Ӌ\�\�2KY���qL�l','Polynésie Française'),
('������M(��,.\�L','Porto Rico'),
('x\�̅��M;\�\�\�\�','Portugal'),
('c\�m&\�J�\�ûL:>','Qatar'),
('\�\�\�\'Q\�I:�b�h��\��','République Arabe Syrienne'),
('U�S��F\��\�rh\��','République Centrafricaine'),
('9\�mv�@X�����\�\�i','République de Corée'),
('t\��\�SB(��(\���H','République de Moldova'),
('�-E`whMO�eS�,�\�','République Démocratique du Congo'),
('~�\���\�OA�z�8\�w','République Démocratique Populaire Lao'),
('\����/F��\�(��','République Dominicaine'),
('�\�׋�\�LL�#\"\�\�|\�^','République du Congo'),
('�*�� I}�(\�\�\�\�','République Islamique d\'Iran'),
('\�\�;�\�MY�H�\�A/4F','République Populaire Démocratique de Corée'),
('\�[}�qJ�\�%\�\�|\�E','République Tchèque'),
('\�M3\�3\�L~�\�-��\�u\�','République-Unie de Tanzanie'),
('\�=�w�Hg��\��\�!�\�','Réunion'),
('\��K\�\�D����\�\��m','Roumanie'),
('o�n\�H��p��5&\�','Royaume-Uni'),
('�\�xM\\Ac�xՈD�)','Rwanda'),
(']֢>�2JN�\�\n!�)\�','Sahara Occidental'),
('\��\�uJa�\�\r�b\�\��','Saint-Kitts-et-Nevis'),
('��\�Ο\�Ha�\�O\\��i','Saint-Marin'),
('\�\�#ƛ�B޳\�a\�Q$�K','Saint-Pierre-et-Miquelon'),
('\��\Z+%uI����\�\�J','Saint-Siège (état de la Cité du Vatican)'),
('xN��Jꁡ�!#O \�','Saint-Vincent-et-les Grenadines'),
('\�\��UF��\�;�\�\�','Sainte-Hélène'),
('\�X\�@	SL{�2�Tf\�$\�','Sainte-Lucie'),
('0\�w\�CO��\�u�=�O','Samoa'),
('\�i#71B��\�0\�\�F','Samoa Américaines'),
('\�c|\�\��C#��\�\�+�\�','Sao Tomé-et-Principe'),
('H1\�Rm3K(��6�;\�l�','Sénégal'),
('\�)�jAc�6�q�fw5','Serbie-et-Monténégro'),
('x5�\�F��\n�BYB�','Seychelles'),
('��ȴ�Aˀ\�B=�\�','Sierra Leone'),
('�\�ŬF��X��ʰA�','Singapour'),
(']�\�6A6�pB\�D[\�n','Slovaquie'),
('\"\�\�RREi�-\�A��\�\�','Slovénie'),
('9��*Q�D\���<ܘR�','Somalie'),
('��\�S�IۮVs�\0Q�\�','Soudan'),
('�9�E�E԰_��ϡ��','Sri Lanka'),
('n\�E�d@A˝\�2�E,�','Suède'),
('\�\�c6`De��l<\"�','Suisse'),
('n���\�@L��-�\�\�\\','Suriname'),
('9�Y=\�\�M$�\��		L�','Svalbard etÎle Jan Mayen'),
('y\�\�I�F\\�v\�׺��','Swaziland'),
('q^-��1G���CɅ\�','Tadjikistan'),
('W>|\�F�Lg�j\�T���','Taïwan'),
('6��ss\�M5�\�\"�WB\�G','Tchad'),
('w�l��\�@a�K�)r\�\�\�','Terres Australes Françaises'),
('E7\�\�\�fD���i̤(�K','Territoire Britannique de l\'Océan Indien'),
('1�\�K�\�@��J�)8�C�','Territoire Palestinien Occupé'),
('?\�_�\�bCG�\�\�\"A>!e','Thaïlande'),
('�۷XlJN�����\�\�','Timor-Leste'),
('&h<�Hќ��WR\�','Togo'),
('wC\�-p\�H裑\�¾2�.','Tokelau'),
('l�-I\��G!\�\�Y!','Tonga'),
('�\�\�@>K���\�g/�','Trinité-et-Tobago'),
('\�\�ū�@m�\�Z¬Ε','Tunisie'),
('\0/�\�6\0Id�9��ԟ�K','Turkménistan'),
('4��e`�I̋T\�$,U9','Turquie'),
('�j2ٴ�G�:�)\�N','Tuvalu'),
('\�\����]D��H9^Ժ+<','Ukraine'),
('(�a\�\�A!�\�\�x\�Їb','Uruguay'),
('\���AH�[\�F���','Vanuatu'),
('\�\�q\n�\�Hp�Orf\�U\�','Venezuela'),
('�\�\�\�ANȍ\�zÜ�p8','Viet Nam'),
('\�fbE�F��\�+Lǁ\�\�','Wallis et Futuna'),
('SY�\�?D�\�_�\"�K�','Yémen'),
('PT\�hE����u\��','Zambie'),
('�g:\�\�N\'�\�2�\"|q','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-14 19:50:46',3),
('DoctrineMigrations\\Version20240201152951','2024-11-14 19:50:46',2),
('DoctrineMigrations\\Version20240202084749','2024-11-14 19:50:46',4),
('DoctrineMigrations\\Version20240202150901','2024-11-14 19:50:46',1),
('DoctrineMigrations\\Version20240207105701','2024-11-14 19:50:46',4),
('DoctrineMigrations\\Version20240319212437','2024-11-14 19:50:46',1),
('DoctrineMigrations\\Version20240614133504','2024-11-14 19:50:46',11),
('DoctrineMigrations\\Version20240617165906','2024-11-14 19:50:46',12),
('DoctrineMigrations\\Version20240708061729','2024-11-14 19:50:46',14),
('DoctrineMigrations\\Version20240801202153','2024-11-14 19:50:46',2),
('DoctrineMigrations\\Version20240815153823','2024-11-14 19:50:46',3),
('DoctrineMigrations\\Version20240916065051','2024-11-14 19:50:46',4),
('DoctrineMigrations\\Version20240929091802','2024-11-14 19:50:46',12),
('DoctrineMigrations\\Version20241002164506','2024-11-14 19:50:46',7);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-14 19:50:46');
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

-- Dump completed on 2024-11-14 19:50:47

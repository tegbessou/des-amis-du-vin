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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-03',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-03',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-03',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-03',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-03',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-03',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-03',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-03',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-03',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-03',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-03',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-03',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-03',NULL);
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
('(\�TuױLČz�o���','Afghanistan'),
('!\�DԨsH����\�8�s\�','Afrique du Sud'),
(';N\�xNO��C\��[��','Albanie'),
('Y_�7\�~G\��$B\�{�','Algérie'),
('_LP\�\�A���(��','Allemagne'),
('��\�@�@�����\���6','Andorre'),
('\�ɩ1C���E^ն','Angola'),
('r\'��K\'C���_���','Anguilla'),
('\�\�Ah\�\'@������Q\�/','Antarctique'),
('\����\�Lɑz\�(!\Z\�@','Antigua-et-Barbuda'),
('\�=�\�fD\r�t9\�༚','Antilles Néerlandaises'),
('>Z#L�K��\�u~݈W','Arabie Saoudite'),
('\Z|c#@mE󤁼?�m\�','Argentine'),
('h�{	rOLե\��5>\�v','Arménie'),
('�:\�&�\�L��j���n�','Aruba'),
('\\\�\�\�MX�\�{\�\�\�\ZM','Australie'),
('?\�w�0=Ht�f���1�i','Autriche'),
('NRT�HP�<~\���\�\�','Azerbaïdjan'),
('\�Mvr��D�E6\�)�','Bahamas'),
('_\�]>vEO�5kk_F\�','Bahreïn'),
('ǮpS\"AL�\���йl','Bangladesh'),
('\�\�\��O<�ϐQ\�\�	\�','Barbade'),
('|?:\rO���4\����\�','Bélarus'),
('���\�^�K7��--�	�]','Belgique'),
('G�Ɋ7pJ��ߚHU�eo','Belize'),
('\�褔BvN\�\�~��4+','Bénin'),
('�V���\0H��u8��\�\�!','Bermudes'),
('\�^�e�M%�\�\�2v\�','Bhoutan'),
('H[2ź0Hi�\�\�P]','Bolivie'),
('ڗ��uM:�*\�\�\�s','Bosnie-Herzégovine'),
('\�8-�J_�3\�\���','Botswana'),
('oe4��GD�����mD','Brésil'),
('\�}=���@#�ANIo�N','Brunéi Darussalam'),
('+\�<\�,0M��\��\�^','Bulgarie'),
('6ج��\Z@�G=\��\�\�','Burkina Faso'),
('AG\�\�a\�H�>5�\�p','Burundi'),
('\�}jp rCٶJ\�ۨ\�','Cambodge'),
('Jz\�ڟD��@��L�\�>','Cameroun'),
('<DrC̬ȚJ&�\�','Canada'),
('�;�g\�A��fF\�\�=\�','Cap-vert'),
('��\�C\0���\�\�ME�','Chili'),
('?<@\�*Ea�$\�\�\�p\�','Chine'),
('��\�\�BNσ�\���]','Chypre'),
('*L\�\�HIȧ\�a���%�','Colombie'),
('\�\�е\�Bs�\��\�\�','Comores'),
('��B#\�F���_��\Z�h','Costa Rica'),
('�\�ʆ\�\\F\�.4��l\�[','Côte d\'Ivoire'),
('[~�:\�H볤ѓ��\�V','Croatie'),
('J���\�B\�\"��ҁi','Cuba'),
('��<�?OE���\�!|]�','Danemark'),
('�(\�1F,�3杫kX�','Djibouti'),
('8\��M\�%H2�٬G<Q\"(','Dominique'),
('�\�O\�\�u@#�h�JZ��Y','Égypte'),
('�b�$D��\�f�>5\�','El Salvador'),
('�JC\�5L������GZU','Émirats Arabes Unis'),
('\�\�\�&�DNȴ�\�*��','Équateur'),
('\�f=8B�\�`\��L','Érythrée'),
('\�T�7	H�s©�u\�','Espagne'),
('m\�;ڒA=�h�\�\�\�','Estonie'),
('*���cB� \��\�FX','États Fédérés de Micronésie'),
('�\�\" Hs�jP\��m�','États-Unis'),
('�\�x᩾Ae�v9�8\��\�','Éthiopie'),
('f��UM��#�Q���','Fédération de Russie'),
('pٹ7��A͌?�\�\0','Fidji'),
('�i�\Z�\�G\�m\�9C\�','Finlande'),
('h\�O\�F��ht7\�4 ','France'),
('\rYR\�=M��ؒZ�^\�','Gabon'),
('�Z�\�,E��W/�\�[','Gambie'),
('�nH��\�Dߐi6s\�/t','Géorgie'),
('\'\�ĕPAr�\�\�\�n�','Géorgie du Sud et les Îles Sandwich du Sud'),
('���N�G��])J/�;','Ghana'),
('<\�V>Lũ�\�,h�\�i','Gibraltar'),
(')f\�ډsEd��8\�S�L','Grèce'),
('\���G���\�/|A5','Grenade'),
('��\�\�AE���^\�Cs\�','Groenland'),
('�[b;�C\�2nZ	�','Guadeloupe'),
('\�/ߛΘC��.�\�\�y\�\�','Guam'),
('�j]�nO\��7f�ש','Guatemala'),
('�Y��)�M��\�\�v�\�','Guinée'),
('	\�OM�N�9OO\�U\�x','Guinée Équatoriale'),
('\��0�=@E�oS\�=b��','Guinée-Bissau'),
('@��\�\�E[���n��_�','Guyana'),
('��\�\�KC��#�Q�W�\�','Guyane Française'),
('m\�N\�L��� g\�M>','Haïti'),
('\�~a�L\�U�p@z3�','Honduras'),
('�r\�uH\�@�\�\�)��','Hong-Kong'),
('�vԛ\�@S�\�\�!\�k','Hongrie'),
('g\�H3s�C�#�H\�́','Île Bouvet'),
('_��W�M`�����\��\�','Île Christmas'),
('4?��ĳK��2�3�X]','Île de Man'),
('���	[\�H�O\�߃3UX','Île Norfolk'),
('Q�i�\��F����w\�\�','Îles (malvinas) Falkland'),
('JW{\'�CC���V\�8\r','Îles Åland'),
('o�7|]J��k6�@�','Îles Caïmanes'),
('^m�7\�o@��g\�e=\Z�','Îles Cocos (Keeling)'),
('$FR\��\�B˦�\�\�M\�!','Îles Cook'),
('\�kl}�HT�\�o!r<�b','Îles Féroé'),
('C\n��BB_�\�\�D�~\�\�','Îles Heard et Mcdonald'),
('8��I�G�����\�8\�','Îles Mariannes du Nord'),
('�\�|\�(�B��!yM\�]N�','Îles Marshall'),
('9\�\�ĪK\�	�#yO/g','Îles Mineures Éloignées des États-Unis'),
('\nf�\Z�M����R�\�x\�','Îles Salomon'),
('nj\��mG��\�\���\�xM','Îles Turks et Caïques'),
('\�\��ʰ\�E֫/�k|\�','Îles Vierges Britanniques'),
('y�g\�p\�L��í\�E�7','Îles Vierges des États-Unis'),
('�\�P�	\�JïU@o��E4','Inde'),
(':Wn\�A��ד�\�JC','Indonésie'),
('�ҝJȅK����\�`','Iraq'),
('�i�\�\�\�N��\r&��y3','Irlande'),
('����2�OZ�rx�s�|','Islande'),
('�-o�@M/�N��L   ','Israël'),
('\�\�(2\�E��Ќ�\��\�;','Italie'),
('`S\�_Օ@²Q\"p\n ş','Jamahiriya Arabe Libyenne'),
('ùƮnrI���\�юtZ','Jamaïque'),
('i&\�R\�H��1\�Q	C','Japon'),
('\�\�]Q�fBo�ƴ\�l\�G','Jordanie'),
('\�&o�LC�� a2r��','Kazakhstan'),
('�ю9�\�H鮎g����\n','Kenya'),
('\�@<��EY��c�/:�','Kirghizistan'),
('^F�\�iC��b������','Kiribati'),
('\"H\�P\�\�Al�0�\�N��\�','Koweït'),
('\�)�ä\�@$��\�Tpq\�\�','L\'ex-République Yougoslave de Macédoine'),
('6K$�\�L��\���\�','Lesotho'),
('Y����\�O[�.0�o\�V','Lettonie'),
('\� i��M����V��\�','Liban'),
('\�g9\��G힚\�\�$�','Libéria'),
('L5\�\�Oዓ\�\�T�b','Liechtenstein'),
('��\�\�(+H&�\�\�Ȍu\�','Lituanie'),
('?��[eDԾZ\�\�\�/�K','Luxembourg'),
('	]�5��BI�\'!YW\�\"','Macao'),
('�%����A����̗���','Madagascar'),
('\�\n\���\�F$�\��\�\�&�','Malaisie'),
('�\�&\��J���\�|\�T','Malawi'),
('\�+C�\0\�m\�u0','Maldives'),
('�ԍ\��\�H����K.\�f','Mali'),
('�w\�w�B\Z�\�\'!��\nD','Malte'),
('�k�@@�BF\�\�\\','Maroc'),
('\�lq\�!C��m̈́\�u#','Martinique'),
('*\��&\')O\r�/�\�W','Maurice'),
('K�\�d�BI|��R�','Mauritanie'),
('2\���J/�\�\��E�A�','Mayotte'),
('\�j\�l�aOG�\�GN+\�0/','Mexique'),
('������K�dwa�e','Monaco'),
('Н,e�I2�g&��','Mongolie'),
('\�;�3\�@Ůl%��\�','Montserrat'),
('�J�`��K��\'�{t\�}','Mozambique'),
('��(X^\�F̌��\�','Myanmar'),
('\��\"Y�L��?\r��\"','Namibie'),
('��l\�>H��Ũ/\�D�\�','Nauru'),
('�\�\�Mꨥ\���|�','Népal'),
('��\�}�B؂\�\�p\�\�','Nicaragua'),
('�\�\'�\�\�G�K\�ǣ�\�g','Niger'),
('/ݸ\�\�C�e\�\��P','Nigéria'),
('~7fWCs�\�\�\�i��','Niué'),
('\�\�l�CA�o�\�\�s�','Norvège'),
('\\)ԓ\�C\n���J�2-','Nouvelle-Calédonie'),
('�?\Zz\�N@��\�T�p_','Nouvelle-Zélande'),
('X3\�\�˾Iά\�\�e���','Oman'),
('\�E�\��mI��PH)\��','Ouganda'),
('e\�\'\�>\�K\r�Ѫts0$\�','Ouzbékistan'),
('��2\�KG���8�#�\�','Pakistan'),
('s=*�\�\�K��C����\�','Palaos'),
('dnB\�9I؎�ID\�s�','Panama'),
('M\�+x(\�H��\�\�u\�','Papouasie-Nouvelle-Guinée'),
('Q��J\�cH�ll�p','Paraguay'),
('�[\"\�a�O���\r7Q','Pays-Bas'),
('�\"^�\�EӁJ\�!\�y�S','Pérou'),
('2\�%\�J�F���7��\�','Philippines'),
('�E:6\�wM�����)�','Pitcairn'),
('K�G~MϪ[��\�i�','Pologne'),
('\�˒$\�Dj�N&=<\�\�5','Polynésie Française'),
('gվy\�)NL��\�\�1\�\�|','Porto Rico'),
('x\�\�\\JE�\n��\��ZA','Portugal'),
('���@mFO��_��\�=hE','Qatar'),
('��\�\r�_A��/H\���q','République Arabe Syrienne'),
('%\�r���O��P\�\�pV','République Centrafricaine'),
('MRSa�\�L)�>>�y�\�\�','République de Corée'),
('53\�\�,Eü�P@����','République de Moldova'),
('T\�\�*7�NR�f\��m�>','République Démocratique du Congo'),
(' \�*3q#E[���V:ȭ','République Démocratique Populaire Lao'),
('^��\n�tM�<\�\�\�\\�N','République Dominicaine'),
('m���?YNg���\�^\�\�','République du Congo'),
('$�\��T�F߉�%0��F','République Islamique d\'Iran'),
('9a)�\��B2�jK\�5\�\�','République Populaire Démocratique de Corée'),
('��{@ߺEv��0�\�I','République Tchèque'),
('�m�\�ڤC\����\�\�','République-Unie de Tanzanie'),
('��\�\�S\�B���?����5','Réunion'),
('�\�\�\�FOک3^\�U��H','Roumanie'),
('LC�|/RFK��vWt-i�','Royaume-Uni'),
('i$d��D{�d�೉�\�','Rwanda'),
('P�L\��lO\r��`\�\�\�\�','Sahara Occidental'),
('�y�p\�L�~c\�y#�','Saint-Kitts-et-Nevis'),
('p?4VkLH�!\�\�)\Z \�','Saint-Marin'),
('��\�\rB0@���\"G\\s\�\'','Saint-Pierre-et-Miquelon'),
('\��<\�\��F\��h\��\�r\�N','Saint-Siège (état de la Cité du Vatican)'),
('K�\�D�\'@_�\�\�\�B��','Saint-Vincent-et-les Grenadines'),
('\�X\�L��Jc���\�U�j\�','Sainte-Hélène'),
('�=Y\nBJ����h��\�','Sainte-Lucie'),
('\��\�qH��G$ \��\�','Samoa'),
('�mL�,F!�AJ�_�a\�','Samoa Américaines'),
('���\�\�D��䡔%�x�','Sao Tomé-et-Principe'),
('�^��h\�D�N\�\�!	\�','Sénégal'),
('ɭ����Ao�\�]��\�p ','Serbie-et-Monténégro'),
('\�0��VkG��aX2޸\�','Seychelles'),
('\�\����MȽ\Z~���\�','Sierra Leone'),
('�#\�Q\�-D���n\�JS�','Singapour'),
('\�R\"�\�O2���B�)�','Slovaquie'),
('\��5\�J��\�\�?/1D\�','Slovénie'),
('�F�e�\�E��a���\�\�','Somalie'),
('\��z]@(�G;x�U\�f','Soudan'),
('5u\�WJ	�\�H\�`�\�6','Sri Lanka'),
('Yo\�\�C\�.\Z\�\�\�\�\�','Suède'),
('I.w3�Ks�U��\�','Suisse'),
('.\���r[D��\�+\�\�[','Suriname'),
('�\�R�6\�H��L���T\�3','Svalbard etÎle Jan Mayen'),
('\'ONQ�CF���:G��m','Swaziland'),
('�X\�s\rAj��\\%�RY','Tadjikistan'),
('\�猂\�I����~\�Q�m','Taïwan'),
('mu\n})E\'�6\'B\�.\�;','Tchad'),
(']K\�\�GG���M0','Terres Australes Françaises'),
('-\��G��Q@��D','Territoire Britannique de l\'Océan Indien'),
('D�-K��Hêd��w@��','Territoire Palestinien Occupé'),
('2�5z��N����\�|B','Thaïlande'),
('\ZۊDN��\0����','Timor-Leste'),
('�1P\�Bj�\�=��Կ�','Togo'),
('��ZE\�(N_�C\�+\�*E4','Tokelau'),
(':|�M�OE3�\�ŀ�\��\�','Tonga'),
('��\�\�\� B��qAR��\�','Trinité-et-Tobago'),
('\�z�ɜ�L6�\�\�K\��','Tunisie'),
('\�G0\�q@CԘx\�G�\�B','Turkménistan'),
('w*my&BG̓QX�m�','Turquie'),
('}¸�ԑJ���p\�\�1@','Tuvalu'),
('\�\�3\��I��\�\�\n\�\��','Ukraine'),
(':2�JM�\�\�#���','Uruguay'),
('��+\�\�M߮wF\�*l��','Vanuatu'),
('��\�0��I8�L �Z0��','Venezuela'),
('\�T(%_�E҅�p\�˴\�','Viet Nam'),
('!��?��A��,\�\�.X','Wallis et Futuna'),
('[.\�C�nD\����ἒ5�','Yémen'),
('ݿ\�1�Oޖ�\�\0��t\�','Zambie'),
('�w\�dS\�JJ�u�÷���','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-03 18:22:14',4),
('DoctrineMigrations\\Version20240201152951','2024-11-03 18:22:14',2),
('DoctrineMigrations\\Version20240202084749','2024-11-03 18:22:14',2),
('DoctrineMigrations\\Version20240202150901','2024-11-03 18:22:14',3),
('DoctrineMigrations\\Version20240207105701','2024-11-03 18:22:14',2),
('DoctrineMigrations\\Version20240319212437','2024-11-03 18:22:14',2),
('DoctrineMigrations\\Version20240614133504','2024-11-03 18:22:14',10),
('DoctrineMigrations\\Version20240617165906','2024-11-03 18:22:14',8),
('DoctrineMigrations\\Version20240708061729','2024-11-03 18:22:14',12),
('DoctrineMigrations\\Version20240801202153','2024-11-03 18:22:14',2),
('DoctrineMigrations\\Version20240815153823','2024-11-03 18:22:14',2),
('DoctrineMigrations\\Version20240916065051','2024-11-03 18:22:14',4),
('DoctrineMigrations\\Version20240929091802','2024-11-03 18:22:14',11),
('DoctrineMigrations\\Version20241002164506','2024-11-03 18:22:14',8);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-03 18:22:14');
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

-- Dump completed on 2024-11-03 18:22:15

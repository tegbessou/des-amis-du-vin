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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-12-14',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-12-14',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-12-14',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-12-14',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-12-14',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-12-14',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-12-14',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-12-14',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-12-14',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-12-14',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-12-14',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-12-14',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-12-14',NULL);
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
('7�Iy*N?��P\nLϲ\0','Afghanistan'),
('�Z #*K\�sl�\�J�P','Afrique du Sud'),
('B7\�DF��*\��\�','Albanie'),
('\�J�D\�O��z,�?�','Algérie'),
('��\�$\�K���\�\�\�\�\�','Allemagne'),
(']\'�٫B\r��h~>j\�','Andorre'),
(':z]\�eiA��\�na\�\�T','Angola'),
('�J�/OG�3|�]\�o','Anguilla'),
('��Q�7@��B�O0\�\�\"','Antarctique'),
('rv�ҥK��\"a���\�','Antigua-et-Barbuda'),
('\�A�M�����~@�\�','Antilles Néerlandaises'),
('6\��=�)@&�ٝ�\�4�\�','Arabie Saoudite'),
('{0�	��B!��\�Һ|$�','Argentine'),
('���U��@��p�%\�9�\�','Arménie'),
('/%8a�HY�!�\Z� <\�','Aruba'),
(':fP��OC\�4���','Australie'),
('̫`\�\�&O�3�Cy\�\�','Autriche'),
('+aڝ˲Nϝ=G�M�','Azerbaïdjan'),
('�Sb�\�J�&r\�\�n��','Bahamas'),
('�>��˂C깤ꓴnǷ','Bahreïn'),
('#\�\�?,\�Lw�\�\�W/��o','Bangladesh'),
('Wo%-��KP�\�C\n\�E\�','Barbade'),
('9DI\�fI\n��r�\��\��','Bélarus'),
(' ���!F����\�\�]','Belgique'),
('\�=;�h\�K��;>\����','Belize'),
('<\�uŖ\�E\�\��-ss�D','Bénin'),
('E�2�[�K(�\�)Y=.~,','Bermudes'),
('\�a�N\�?A��\���e�;k','Bhoutan'),
('I��\"��F#�{���\�','Bolivie'),
('ϰz���A���!atA\'v','Bosnie-Herzégovine'),
('F\�`�>aAz�	\�l�\�4','Botswana'),
('L\r`�mjO5��P:�l','Brésil'),
('o�ʏ+�Fd��w�\�o[V','Brunéi Darussalam'),
('�	��/L�U����*','Bulgarie'),
('F�,_�O��i�-\�яb','Burkina Faso'),
('/\��nBjA+��.��\�\�\�','Burundi'),
('2K\�j[�K,����\�\��','Cambodge'),
('X�\�3\�6In�\�\�\�pE�','Cameroun'),
('\�]��\�\�N��\�\�&p��','Canada'),
('��*\�L��@nvBܢ�','Cap-vert'),
('I&�\�TB��(4]L','Chili'),
('�]HάL���\Z3^�9L','Chine'),
('\�\�6�W@��$�\�\ZY\'~','Chypre'),
('\�c�;,ML��H �60','Colombie'),
('�\�eLOM�\����\�*','Comores'),
('g�p�Cj�Ϛ1\�$','Costa Rica'),
('A�����O1��mF\�\�','Côte d\'Ivoire'),
('6�\��d�F��\�W\�8��','Croatie'),
('�?�~�HI���\����\�','Cuba'),
('��y�lpDk�����\�','Danemark'),
('C\�l\�)B8�\��n','Djibouti'),
('8\�2PK��-\�$\�1}^','Dominique'),
('\�i\�\�NR��DO\�\��','Égypte'),
('�v�]\�Mp�\�,j��','El Salvador'),
('�\0�\�ۍN\r�cg:ڬ�\�','Émirats Arabes Unis'),
('@%ӂ�\�BZ���\�~\�j#','Équateur'),
('kh\�\�\�B��Fw�^\Z�','Érythrée'),
('\Z\�\�l\�ET�;h{\�fY','Espagne'),
('��.\�D���9L�%N','Estonie'),
('p\�O�F0��\�q\�\�','États Fédérés de Micronésie'),
('�@�\�\"�G}�G�\�\�\�@','États-Unis'),
('\�M�@߷�?l�Ԯ','Éthiopie'),
('��%\�Ka�\�\�]\'\�','Fédération de Russie'),
('\�\�ᯞ,B��0x��ʹ\�','Fidji'),
('pT�dZ@�0^_>~','Finlande'),
('�1�R\�Hؑ\'���*Q','France'),
('��	\�\�gD\"����jh�','Gabon'),
('MwzLK�E����\�ʅ�','Gambie'),
('�b\�\�\�gH��\�\���GA','Géorgie'),
('A�fb�E>�B9Ì�}','Géorgie du Sud et les Îles Sandwich du Sud'),
('�7h��G\�]��D\0\�-','Ghana'),
('G��Z\�I��#\�\'\�\�','Gibraltar'),
('\�N��}qJ��y\�P͵','Grèce'),
('\�\"q쐫G%�1\�:�\�1','Grenade'),
('#��E\�O�P\�\0]\�qE','Groenland'),
('\��SAB���p�O\�','Guadeloupe'),
('���\�\��L��\�\�H\�u','Guam'),
('�\�\n�L��\�\n<�','Guatemala'),
('\��\\\�F@�4`z\�s`','Guinée'),
('��UYBB�oE�7�i','Guinée Équatoriale'),
('�\�d\�sO��t�A�\�\�','Guinée-Bissau'),
('���2��J����Be\�\r\�','Guyana'),
('\�t�]y&Ef�Ɯ\�1\\��','Guyane Française'),
('\�\0�\np@��\0Y���,\�','Haïti'),
('�\�Rv�D%�Y8łE^�','Honduras'),
('��\��\�\�N쩄�z�+\�\�','Hong-Kong'),
('\Z��d�Ey��<V\Z1�','Hongrie'),
('�l<\�s@�Q�J\�\��','Île Bouvet'),
('\�\�\�c?JB���t�)>�`','Île Christmas'),
('�Z[E;���TU\Zq�','Île de Man'),
('js��\�H���^�R1\�','Île Norfolk'),
('�\�\0�+M:��\"T\�\�^\�','Îles (malvinas) Falkland'),
('���V\�O��`%\�\�\n\�','Îles Åland'),
('��oOOG6��*�Mx\�s','Îles Caïmanes'),
('\0(aK\�DM��X,=�\�\�','Îles Cocos (Keeling)'),
('\�\\\ZhJ��l\�\�\���','Îles Cook'),
('T�\�A΍Q`&\�C','Îles Féroé'),
('�FP�\�M��se\�','Îles Heard et Mcdonald'),
('7���K��\\g�Cz\�\�','Îles Mariannes du Nord'),
('*v<\�	�G���\�zC','Îles Marshall'),
('��\�No&I閱\���֕','Îles Mineures Éloignées des États-Unis'),
('m�d\\,�O͘`qj��','Îles Salomon'),
('\�X�1I\r�O �ϗ','Îles Turks et Caïques'),
('W<J�\�Bȋ������a','Îles Vierges Britanniques'),
('�\�~FC@��~�_�','Îles Vierges des États-Unis'),
('��\�\�\�Bk�(�V����','Inde'),
('\��DC��\\>��\�\�','Indonésie'),
('5\�_�gAĉ�ɒ\�\�','Iraq'),
('��e7�\�@h�\�;�\�\�\0\�','Irlande'),
('��)�\�\\N\Z�\�\\4��','Islande'),
('\�]@\�?mCl���\�eO\\�','Israël'),
('\�?�`��B����Ň��','Italie'),
('\�\�\�J���&\�{a	','Jamahiriya Arabe Libyenne'),
('��g\�uA��ƶ\�1\�','Jamaïque'),
('�Ed\�~UA���I����','Japon'),
('��1RDLѽ\�\r�ܾ�\�','Jordanie'),
('\�i$^I\ZNX����I���','Kazakhstan'),
('��\��kD%�{++]\��','Kenya'),
(' /#HE\�]\�<\'+�','Kirghizistan'),
('La��\�.E\���\�;�>U','Kiribati'),
('���>\�I���ҊN�','Koweït'),
('FC�\�N�M\�\�\�2nB9�','L\'ex-République Yougoslave de Macédoine'),
('d\�N\�LJ�Z\�\ZX�J','Lesotho'),
('v\�0B[��a3\�n��','Lettonie'),
('-x�\�\�K���\�Wt�|','Liban'),
('\�\�\�C��B��	\�1�','Libéria'),
(',K�\�G\�F۶\�JY�','Liechtenstein'),
('uś�\�HA�\� \�q','Lituanie'),
('/�B\'C!�/NS\�f','Luxembourg'),
('\�F���@ӊ)z�\�5\�','Macao'),
('�K�Q�B9�P\�|\�\�','Madagascar'),
('�Q��\�-Ee���\�\�ޱ','Malaisie'),
('\�ԝR�F\�\�c�\�\�','Malawi'),
('�ۼ^vSFȖ����L','Maldives'),
('z\�\�!G�@��\�,p9\�&','Mali'),
('8���q�GՄgjP=\�\�','Malte'),
('��\�V�6E뛬\�Fh^V\�','Maroc'),
('��n%�UKD��-,�q\n\�','Martinique'),
('�z�#\�M\r��\�;�đ','Maurice'),
('�B��;KR�\�\��\�\�b','Mauritanie'),
('�\�\�8ڗ@ʽk\�\�\�6�\�','Mayotte'),
('���_F��ɠ\�\�\�i','Mexique'),
('\�\�)\�Jf�\�DQ�j\�\�','Monaco'),
('\�svȄ|D��\�F�qp\�','Mongolie'),
('��\�\�MV�dկt�','Montserrat'),
('{�6/\��DS���\�\�','Mozambique'),
('��i\�cC؉�\�\�','Myanmar'),
('~\�V�\0Gq�u\�$w�\�','Namibie'),
('\�D(KE���鋹�','Nauru'),
('H8�m�M��\�\�\�\�\�g\�','Népal'),
('�\�\�I�Iצ\�6K�X}','Nicaragua'),
('x�\�lWGL�\�I�KH��','Niger'),
('\�\�vC��EE����\"v\�','Nigéria'),
('\Z�\�HLH�\��}H�\rZ','Niué'),
('	\�9HB��Y���U','Norvège'),
('ߑ̀�FHӽ\�\�CZ\�\�','Nouvelle-Calédonie'),
('aHW\�p?F��\�Ȏ�\�:','Nouvelle-Zélande'),
('>��\�ȅ@C�RƜ\�v\�7','Oman'),
('�\�C\�x�C*�\�a(l\��','Ouganda'),
('hgkh\�A\�\�݅\�\�L','Ouzbékistan'),
('�γ&\�3E\�a���\�\�.','Pakistan'),
('�����J\�\�7�\�D','Palaos'),
(')4#/��H��J#\�	��\�','Panama'),
('\�\�LL=\�By�dOJ7,Ӊ','Papouasie-Nouvelle-Guinée'),
('{��\�vG��\�i��\�7�','Paraguay'),
('\�(S˟PL׎<\�\�o�','Pays-Bas'),
('s\�x\n�@싋^\�\�\�E','Pérou'),
('�tJhM8���l��@\�','Philippines'),
('��\�^D����̲l�K','Pitcairn'),
('\�w�v\�GX�X\�<\�R��','Pologne'),
('��\�ߑ\�A2�\�7�\��&','Polynésie Française'),
('�\��D�RF��)O\�\�Bz','Porto Rico'),
('\�\0��<J^��\�\�o\�\�W','Portugal'),
('��i\�J2����Bo�J','Qatar'),
('��XF\�\�H,���5�S�','République Arabe Syrienne'),
(':ޡ;��Dx�\�?7?Ǆ\�','République Centrafricaine'),
('�p��5jLB�cF��p','République de Corée'),
('k���T�L��n\�%d\�C','République de Moldova'),
('\�deM\�%H\�E�9\�','République Démocratique du Congo'),
('T��@\�\�Jy�\�Ht\�VQ','République Démocratique Populaire Lao'),
('�Ի\�H˾V#?��\�0','République Dominicaine'),
('��\�61\�C˓\�A\�\r\��','République du Congo'),
('�;�XQA��e&+T\r\�','République Islamique d\'Iran'),
('-[WF\��M���\�#ĠV','République Populaire Démocratique de Corée'),
('\�c\�\� L\�\�\�a1\�D','République Tchèque'),
('�d�\�LHR�\�&5}\�','République-Unie de Tanzanie'),
('G4��\�M������V�~','Réunion'),
('B\�tQH�\�^�0��','Roumanie'),
('�k�\�ZZI|�+\�1�T','Royaume-Uni'),
('�`�\�\\�M��\�b���','Rwanda'),
('b\�\�z<M���g#i\�\�\�','Sahara Occidental'),
('q\�\�\�0eO�����\rewe','Saint-Kitts-et-Nevis'),
('\�IV\�jI؈�?�?\�i~','Saint-Marin'),
('��\�A��E�lhb\�','Saint-Pierre-et-Miquelon'),
('[�$GpWIo�\�~�����','Saint-Siège (état de la Cité du Vatican)'),
('��ZEv\�Oަ5����\�','Saint-Vincent-et-les Grenadines'),
('@��\�\�Ae�|\0�\�\�\�\�','Sainte-Hélène'),
('#_��v�Fi�7�\����','Sainte-Lucie'),
('\�\�\�Q\�gN\���Ba@','Samoa'),
('w�V\�M��\�O�\�4\�n','Samoa Américaines'),
('yN@�\�\�K��ǐ=J��\�','Sao Tomé-et-Principe'),
('\�\�\�\�\�vE\�.gB�\���','Sénégal'),
(')��|��Ku��\�C���\�','Serbie-et-Monténégro'),
('.W���gA/�3��4N\�','Seychelles'),
(';�<\rCʄˋm\��','Sierra Leone'),
('��ݠ\�\�@��H�\�','Singapour'),
('j\r��g�A\���F4\�','Slovaquie'),
('S\�\�\�ҍBv�\�uD6�','Slovénie'),
('՚�\�fK��ʑ�\"\�!�','Somalie'),
('��:�F*I߀1�\�\�\�','Soudan'),
('\�x<C�B�\�bVҍ\�','Sri Lanka'),
('\�\�H\�g�Oy��W�\�u','Suède'),
('(\�{fRE�����@O�','Suisse'),
('ށ\r\�F����N&�l\�','Suriname'),
('Zt|���O\�N\�ݜh��','Svalbard etÎle Jan Mayen'),
('�\�\�?Nb��D\�@�\�&','Swaziland'),
('��a�@\�A@�\�\�a$�\�R','Tadjikistan'),
('\�8	\�A\\�yp}�\�\�','Taïwan'),
('R�\�[Gq��]\�.\�{t','Tchad'),
('3G�\�O �)��y�+','Terres Australes Françaises'),
('\�]V96Nj���[�\�\�\�','Territoire Britannique de l\'Océan Indien'),
('��\�2bO|�\�f����-','Territoire Palestinien Occupé'),
('Wifa��J\��\�\��]\�P','Thaïlande'),
('�t\�x�*I��%St�GKl','Timor-Leste'),
('Kw_ܭKo�ޔ�\�1T','Togo'),
('�\�v\�{%J��`\�\��\�','Tokelau'),
('f��\�\�\�N���<�\�\�F','Tonga'),
('�=h[fI��Z��\�\��','Trinité-et-Tobago'),
('�\�~\�O���	V�\�1','Tunisie'),
('\�1�SBd�|�\�)\�O','Turkménistan'),
('Ox�}G�I��t�m�\�ڷ','Turquie'),
('-\��\�\�H\�U�\�~:A','Tuvalu'),
('&{B�mIвn�ԧ\� ','Ukraine'),
('�\�a�\�J\Z�\�w�\\��P','Uruguay'),
('�y�\�MKU�܄�\�t\�','Vanuatu'),
('\"\���9M��\�\�>p�=�','Venezuela'),
('7Ć\�MeI8�����\�y�','Viet Nam'),
('�\�rKM��U�<��#^','Wallis et Futuna'),
('>�hy\0/Ib��ݍ9K2','Yémen'),
('\�0����D\�L�\�\�M�','Zambie'),
('\\G*\nEӨ�\0\�e\��','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-12-14 20:08:36',3),
('DoctrineMigrations\\Version20240201152951','2024-12-14 20:08:36',1),
('DoctrineMigrations\\Version20240202084749','2024-12-14 20:08:36',3),
('DoctrineMigrations\\Version20240202150901','2024-12-14 20:08:36',2),
('DoctrineMigrations\\Version20240207105701','2024-12-14 20:08:36',2),
('DoctrineMigrations\\Version20240319212437','2024-12-14 20:08:36',2),
('DoctrineMigrations\\Version20240614133504','2024-12-14 20:08:36',11),
('DoctrineMigrations\\Version20240617165906','2024-12-14 20:08:36',9),
('DoctrineMigrations\\Version20240708061729','2024-12-14 20:08:36',12),
('DoctrineMigrations\\Version20240801202153','2024-12-14 20:08:36',3),
('DoctrineMigrations\\Version20240815153823','2024-12-14 20:08:36',2),
('DoctrineMigrations\\Version20240916065051','2024-12-14 20:08:36',5),
('DoctrineMigrations\\Version20240929091802','2024-12-14 20:08:36',10),
('DoctrineMigrations\\Version20241002164506','2024-12-14 20:08:36',7),
('DoctrineMigrations\\Version20241119144432','2024-12-14 20:08:36',12);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-12-14 20:08:36','root@gmail.com');
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

-- Dump completed on 2024-12-14 20:08:37

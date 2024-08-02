/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-ubu2204

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
  `owner_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  `tasted_at` date DEFAULT NULL COMMENT '(DC2Type:date_immutable)',
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-08-02',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-08-02',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-08-02',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-08-02',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-08-02',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-08-02',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-08-02',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-08-02',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-08-02',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-08-02',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-08-02',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-08-02',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-08-02',NULL);
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
('\�S/m�3C�.\�\�A�','Afghanistan'),
('�y�.kDBۨpQƠ�~\�','Afrique du Sud'),
('\r-ԟ\�B���T\Zğc\�','Albanie'),
('˕�\�BF�	o鉂=','Algérie'),
('\�%�f\�LW�gsK\�Zm?','Allemagne'),
('���\�\�\�B��f:��\�\�\�','Andorre'),
('�\�9Ӝ\�L���eϯ�!�','Angola'),
('�|\�@h�\�\�6Z�a','Anguilla'),
('�\�~q�\rO,�fB\�\r(i','Antarctique'),
('\�\�\�nC\�,rzd���','Antigua-et-Barbuda'),
('�I\�4��JA���B�1�','Antilles Néerlandaises'),
('\'�\�c�E䝇c\�\�k\�X','Arabie Saoudite'),
('MP\�\�\�@D���\�	\�','Argentine'),
('��\�t?In�\�^͟8b','Arménie'),
('�\�>L@ʗS`�\�l','Aruba'),
('z0��FGA��\�R�:\�','Australie'),
('5��\�I>�dG\�l\�','Autriche'),
('��\�Q�C̡�#~���','Azerbaïdjan'),
('\�	D<I�L��\�\�*�k\�','Bahamas'),
('+�{b�\rC���5H\�\��','Bahreïn'),
('�\r�\�xA��\�\�U\�\�C','Bangladesh'),
('�Iw\0�wOg�\�U�́5\�','Barbade'),
('\�)\�\�\�K��~7KgR','Bélarus'),
('�x\�6\�@\�\�\�E�j','Belgique'),
('\��\��C޴w2ڧ�r�','Belize'),
('��\���IИ�M��!I','Bénin'),
('j].@U\rA��7\�π9\�','Bermudes'),
('-\�G�\�\�@Y�\�\�!/\"\�','Bhoutan'),
('H^\�k�SBA���Fj<\"','Bolivie'),
('�v��!\�K��_H.~��','Bosnie-Herzégovine'),
('ל�^M�\0�վ3c*','Botswana'),
('+��)L1�%\r��\�e','Brésil'),
('g_�LbA���\�\�\�\�\�G','Brunéi Darussalam'),
('U�\'S�M���a\�b','Bulgarie'),
('vwBG;LW��\�b9�\�)','Burkina Faso'),
('\�ˈ�+=M�O\"y�^\�','Burundi'),
('S�Lxt�CO�m.��@$\�','Cambodge'),
('q�\�EF]Nݯ\�Z\0ي�','Cameroun'),
('�!�npJ\n�\�\�6\�','Canada'),
('7�\�FAN͠\��4��','Cap-vert'),
('ƀ�\�j/G��\�\�\�\�','Chili'),
('����\�E���گb\�#','Chine'),
('(C�=� G��\�m��\�T�','Chypre'),
('��h�\�\�A���\rX�4','Colombie'),
('\�	\�{�Oa�i�-%G{','Comores'),
(')\�O�g@��Q\�)-�','Costa Rica'),
('\��cHH:IY���)\0T','Côte d\'Ivoire'),
('�\0=��fD:�7\Z\�m��','Croatie'),
('��*\"DF?�C�!�D\�','Cuba'),
('\�\�bS\�Oڼ�\�&U\�t','Danemark'),
('\"�\�%��BK���+�w','Djibouti'),
(',h^���Kջ��\�aW�\�','Dominique'),
('@?hƄ�E\n�c_2r�Ѧ','Égypte'),
('�\�/��@e�\���\�>\�','El Salvador'),
('\Z|�_%nF߸\rϺ-��i','Émirats Arabes Unis'),
('�=��IJ��	K�A�','Équateur'),
('\r\��Nؚ�\�!\�\Z�K','Érythrée'),
('�{���4MӇ\�Ѧ�&�','Espagne'),
('�qA.�J�e\�l\��','Estonie'),
('\�\Z\\\�2!H	�u\�\�p��','États Fédérés de Micronésie'),
('-AN�+A%�%u\�\�','États-Unis'),
('B�\\V��J}�9\�k��g','Éthiopie'),
('�:�\�K���3�\\\�%','Fédération de Russie'),
('a�&\�A���\\���','Fidji'),
('��ҩ�\ZF&��f4��','Finlande'),
('�\�eiK �g��x	S','France'),
('%մ\�{O$�\��\�j\�','Gabon'),
('k���M���\Z\�\�\�','Gambie'),
('�1M\�z\"B7�__\��','Géorgie'),
('\�yMz\�J��g4Ȧ\�\��','Géorgie du Sud et les Îles Sandwich du Sud'),
('��t@~AQ��\�ϊ#\Z�','Ghana'),
('p}\�\�DO�\���\�I�','Gibraltar'),
('A�a�\�\�E���C^.\�','Grèce'),
('\\\�_n�.K-��ǎ���','Grenade'),
('���&@�3n�x ��','Groenland'),
('y�j��Bol�Xs\�','Guadeloupe'),
('�A����Ex�\�oopO\��','Guam'),
('���d!O&�Jr\0�|7\r','Guatemala'),
('�s!KD@Lj�H\0}I!','Guinée'),
('\�xׇ\�$A���٭e�\�\�','Guinée Équatoriale'),
('y��S,�K���\�\���E�','Guinée-Bissau'),
('�[\�\�\�Hٮ\�\���','Guyana'),
('��w�=�J\�4w\����','Guyane Française'),
('\�sE\�YL\�a�\�\�kQY','Haïti'),
('s\\��\�eO�\�R\0M\"�7','Honduras'),
('�\�Q��NZ��G\�,F\�\�','Hong-Kong'),
('�\"k�P4M�5�\�y	\�h','Hongrie'),
('�\�\�i_N���[\�h','Île Bouvet'),
('BI\�\�\�J��;\�\Zi\�\�','Île Christmas'),
('\�[\�\�hO\�X��\�\�\�','Île de Man'),
('\�\�o�M�-N�\����','Île Norfolk'),
('ws�f\��O˘\�|�y�\�\�','Îles (malvinas) Falkland'),
('j\�\Z�gC �~��\�\�}','Îles Åland'),
('\�x.J^�r\�c.\�','Îles Caïmanes'),
('>�\��I;�Ru\r\��\�','Îles Cocos (Keeling)'),
('^�\�DzK\0���i�O\�','Îles Cook'),
('\�}\Z�\�\n@v�\�v\�\�Qa','Îles Féroé'),
(',*\����Dm�ȸv-\�','Îles Heard et Mcdonald'),
('m]~\�8@r�i�_�4T','Îles Mariannes du Nord'),
('�l.0@L�V3#�\�_\n','Îles Marshall'),
('>ae\0%�B�㨝M\���','Îles Mineures Éloignées des États-Unis'),
('�۲\�HEȝ1P�S\n�','Îles Salomon'),
('�#��LL.�\"{@�\�+','Îles Turks et Caïques'),
('�W�>\\HLΡ��ˁh#','Îles Vierges Britanniques'),
('�g�\"D�D\�\�\��','Îles Vierges des États-Unis'),
('Ȉ�ψ*Ha��Q\�\"~','Inde'),
('g�ڕ�M�Ѭގ\\@\�','Indonésie'),
('Û���\�C��\�ԃ �J','Iraq'),
('OWS\��D?�P��\�z[�','Irlande'),
('a��\�F����@\�\�\�','Islande'),
('8du�\��OT�=�2�\�[','Israël'),
('+y\Z;@�����jjR]','Italie'),
('\�$5�B�W^pI\�r�','Jamahiriya Arabe Libyenne'),
(')��\�iI&���h\�','Jamaïque'),
('ԣd�F՜�\r��V\�\�','Japon'),
('�\�U�E/�W�xy�5�','Jordanie'),
('�AP\�\�JM|�\�m(�OK/','Kazakhstan'),
('\�a\�s\"�O\'�\��\�+�\0�','Kenya'),
('�p�\�H���\�2\�\�;','Kirghizistan'),
('9\�L\�r�F��\��x�','Kiribati'),
('��*I\�C6�\�O=','Koweït'),
('6z��\�Nؙ4P\\�\Z�','L\'ex-République Yougoslave de Macédoine'),
('މ$!{L�\�Hvw\�','Lesotho'),
('mY�\�G\'�\��8��?\�','Lettonie'),
('\��\�\�!N	�\�Xd!\�','Liban'),
('S*\Z�%�M��[aH݇=O','Libéria'),
('\�C\�\�ۤA��aAm\n�\�\�','Liechtenstein'),
('GR#�\"�G��O>�\�e','Lituanie'),
('*Г�\�=L١׆\�?�\�*','Luxembourg'),
('�\�\�:-N��&z�\�~i.','Macao'),
('\�@�xs]Oa�\�/��B�\�','Madagascar'),
('�X\�\�\�MU��g>t�\�','Malaisie'),
(')\"J�{G\\�C\�\�&q��','Malawi'),
('\���s�O�e9?�!\�\�','Maldives'),
('� j��By�����','Mali'),
('\�l�\r\�\�I��JE\��','Malte'),
('��\�\�-dC��47\�{B','Maroc'),
('�l\�\��5I���R	\�EI','Martinique'),
('c\\\�~\�\�@ȉ��+��\�\�','Maurice'),
('�\�m\�\�qL��^DC}\�','Mauritanie'),
('β�Ew�D��<\�\�\���','Mayotte'),
('E\nm�WLb��6�\�z_\�','Mexique'),
('hL�\�b\�Bq��1B*k�{','Monaco'),
('z\�ߌ�L7�\�\�\�*?V','Mongolie'),
('V\�,�L,�\���\�A\n','Montserrat'),
('�\�o\�D�\�����','Mozambique'),
('�<|�\�[C:�2\��\�\�X','Myanmar'),
('h�\�\r��N�싟\�}\�K','Namibie'),
('�\��|0J�=�;S-�A','Nauru'),
('}��Xu\�IԠ>\�\�+3�b','Népal'),
('�aC�J������3X\�','Nicaragua'),
('�]�\�+\�I��#@>�^�','Niger'),
('��,U+�@��ZG���\�','Nigéria'),
('�{�`�\�I(��!2�f�?','Niué'),
('�x\�N\�QF*�����^\�','Norvège'),
('o�\�\�\�8N{�\�h\�dfO','Nouvelle-Calédonie'),
('\�\�ZTL��y�@:b�','Nouvelle-Zélande'),
('iV]\�JEw�-���\n\�','Oman'),
('�/�KALW��1OH\�\�','Ouganda'),
('J}\�W\�UB���\0�\�SI','Ouzbékistan'),
('\�uC$BN:��.\�\�\�\�','Pakistan'),
('�\��\�KI��1M49a','Palaos'),
('?b��IGIk�C�쇻\�\�','Panama'),
('Z���\�\�G��i=G\�\�vD','Papouasie-Nouvelle-Guinée'),
('\�I�@�N��A,eO@\�\�','Paraguay'),
('+�p1\�O1�kǭ왘\Z','Pays-Bas'),
('R\�b�-PE��\�\"�\0`��','Pérou'),
('�\�i\�K5��a\�Vx}','Philippines'),
('p�~\�\�B�\�\0\�K\�\�','Pitcairn'),
('\��hkIq�O8E���f','Pologne'),
('/�~�J����\�\�\��&','Polynésie Française'),
('�\\{1\\;O꽍v�Up��','Porto Rico'),
('�Qݐ��A�4^Op','Portugal'),
('\�R`Y!D\��ow\�_;�','Qatar'),
(',�]X\�Ci��0a�-�\�','République Arabe Syrienne'),
('a\���A��|��T\�B\�','République Centrafricaine'),
('�\rA;\�D\�m�\�y�\�\Z','République de Corée'),
('V\�\�X�\�C��F\�udɼ','République de Moldova'),
('=\�\�\�PwH\��#c#\��','République Démocratique du Congo'),
('��\�\�.>O\�\�ɼLжP','République Démocratique Populaire Lao'),
('c\�ZacE\���^�ğ','République Dominicaine'),
('#�݋ǲG枭r��͟','République du Congo'),
('k��N+M���\�	\�','République Islamique d\'Iran'),
('\�\�\ZV�N���\��Jy','République Populaire Démocratique de Corée'),
('�Y���6OZ��Ë��','République Tchèque'),
('��d&\�HI��hK��(\�','République-Unie de Tanzanie'),
('��\�\��M\�\�W���5','Réunion'),
('��>\"\�F��R\�9����','Roumanie'),
('*\�(AťJİj@Ys','Royaume-Uni'),
('��5V̻Nݎ��Y\�\�\'�','Rwanda'),
('T�\��B8�u�*��4','Sahara Occidental'),
('XroHv�O��\���Cf�\�','Saint-Kitts-et-Nevis'),
('\�\�L9\�O]� Ѥc\�/','Saint-Marin'),
('\�#I%�\nE\�y?��e�\�','Saint-Pierre-et-Miquelon'),
('\�\�W�D8��\��{�b','Saint-Siège (état de la Cité du Vatican)'),
('Ĥ\�\�Fɨ��ǌ	M�','Saint-Vincent-et-les Grenadines'),
('D�߇\��O\Z��+��\�','Sainte-Hélène'),
('\�I�\�;M���i��`Ȃ','Sainte-Lucie'),
('�\�O\�}\�O��\�\��n�c','Samoa'),
('��\�\ZMp������jz','Samoa Américaines'),
('9{\�wOˋ9we�R\�','Sao Tomé-et-Principe'),
('�\�\�\�@�\�\�T�\'','Sénégal'),
('�<�\�K\�}׶\�','Serbie-et-Monténégro'),
('3�\�2&O-��$�k���','Seychelles'),
('[\�\�\�A��\�X�&]*','Sierra Leone'),
('�t��EN��{2�Y�','Singapour'),
('�\��?\�G��k\�\���g','Slovaquie'),
('\'�z\�cID;�\��Fԏ\�','Slovénie'),
('�B:q�\�J_�\�\�)jN�r','Somalie'),
('\0\�=;�K��\�N��\�}','Soudan'),
('\�\n\r�N\�Køq�\�\�\�i;','Sri Lanka'),
('\��\�\�48@X��\\�o|!','Suède'),
('2\�AÉ�D\'�>=I�v','Suisse'),
('���\�/Dk�\�\0�\n:]','Suriname'),
('\�\�	�\�,NÍ|\Z8��I','Svalbard etÎle Jan Mayen'),
('�G];jsJ��\���1\�','Swaziland'),
('\�\�~�6C��VS','Tadjikistan'),
('\�\ruq�Aӯ��J','Taïwan'),
('�I6\�q�Nب�~症�\0','Tchad'),
('\�ȽZz\\Ao�)�W`\�','Terres Australes Françaises'),
('g֫S�:O��(3��\�\��','Territoire Britannique de l\'Océan Indien'),
('��㤡*N\�V���','Territoire Palestinien Occupé'),
('o}$�RrG\�/mG�_\�H','Thaïlande'),
('\�\�s�\�!Ná@\�(��','Timor-Leste'),
('󃚃\�BQ��C\�.{J','Togo'),
('b�e	g�I�{`V	\� ','Tokelau'),
('\�\�$��@o�g�\�F�\��','Tonga'),
('���fp\�E\�i�_\"�G','Trinité-et-Tobago'),
('}�\�\�CL���/@kt�','Tunisie'),
('p�ʟ[<G��C\�l���\�','Turkménistan'),
('\�\�v�K@��pw�\�','Turquie'),
('��ynINOm�~ߪ��\Z\�','Tuvalu'),
('煠\�F9O��(&� y�','Ukraine'),
('V�\\]Ai�v\�d\�`\�','Uruguay'),
('\�	�\�K\�Sѝ���\�','Vanuatu'),
('s\�X\�8D���\�>�T��','Venezuela'),
('\��g�>\�MִaO�\�#Ɠ','Viet Nam'),
('V%s!\�H��\�\�̳C','Wallis et Futuna'),
('��O�oDh�3\�ˉ\�','Yémen'),
('\�{82YI��F�\�IW̌','Zambie'),
('�\��MG���g�y���','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-08-02 19:19:25',6),
('DoctrineMigrations\\Version20240201152951','2024-08-02 19:19:25',1),
('DoctrineMigrations\\Version20240202084749','2024-08-02 19:19:25',2),
('DoctrineMigrations\\Version20240202150901','2024-08-02 19:19:25',2),
('DoctrineMigrations\\Version20240207105701','2024-08-02 19:19:25',4),
('DoctrineMigrations\\Version20240319212437','2024-08-02 19:19:25',2),
('DoctrineMigrations\\Version20240614133504','2024-08-02 19:19:25',12),
('DoctrineMigrations\\Version20240617165906','2024-08-02 19:19:25',9),
('DoctrineMigrations\\Version20240708061729','2024-08-02 19:19:25',12),
('DoctrineMigrations\\Version20240801202153','2024-08-02 19:19:25',4);
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
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `tasting_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `target_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `sent_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `link` longtext NOT NULL,
  `STATUS` varchar(10) NOT NULL,
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
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
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
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
  `id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `owner_id` binary(16) DEFAULT NULL COMMENT '(DC2Type:uuid)',
  `bottle_id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`participants`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_73621810DCF9352B` (`bottle_id`),
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
('.�l5��Ln�I�y\�\�7','�d\�9�F���\�\���','^��{�F\�\�\�v�\�\�_','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]'),
('�J<�_�Fx�\�\�q���\"','�d\�9�F���\�\���',')R1��\�N��7\�P\�','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]');
/*!40000 ALTER TABLE `tasting` ENABLE KEYS */;
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

-- Dump completed on 2024-08-02 19:19:27

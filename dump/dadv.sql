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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-07-11',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-07-11',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-07-11',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-07-11',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-07-11',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-07-11',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-07-11',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-07-11',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-07-11',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-07-11',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-07-11',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-07-11',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-07-11',NULL);
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
('\�\"��L˟�ʪ�k7=','Afghanistan'),
('�P�\��BD�\�\�(\�j\Z','Afrique du Sud'),
('`=�4N��M٩U�I','Albanie'),
('j5R \�LI�K�����','Algérie'),
('	8(�zUK�bm�\�<\�4','Allemagne'),
('@�%=\�CǇ:��m�8','Andorre'),
('ٗ�qMF�i�\�0C','Angola'),
('\�\�Mv�N\�UdEb\�]�','Anguilla'),
('�\�gL�Е_�I\r�','Antarctique'),
('�\�ks<E��r�3\�Y\'','Antigua-et-Barbuda'),
('�k\�Vl\�H�#��V\�w�','Antilles Néerlandaises'),
(';C:��BE�>[�ػ\�','Arabie Saoudite'),
('a2\�\�F��sH�1ӽc','Argentine'),
('\��k�O��J\�􃂎K','Arménie'),
('�܃\�	Ji��)GՈN','Aruba'),
('��c\�\�9I�\�Ѻy[�','Australie'),
('I\�)\�DC0�\�\�ǚ�\�~','Autriche'),
('���]t�J��\�\�2�b','Azerbaïdjan'),
('\�\�h�E\�7\�,�\"�','Bahamas'),
('\�X\�\�\�\�H��\�Sk�\�I','Bahreïn'),
('\0\�\�\�H��\�Ô\��:','Bangladesh'),
('�/�\�\�D���܄z�-','Barbade'),
('�	_�C��m>jq\'\r.','Bélarus'),
('�д�5�CƏ�~\0�X�\�','Belgique'),
('�\n��\�I��F�h���X','Belize'),
('DBx9ZHY��`�N\�P\�','Bénin'),
('.y%\'�A\���X5[','Bermudes'),
('��\�\�I\�j��}x&\r','Bhoutan'),
('�Yj	.SG��6:�F\�','Bolivie'),
('>0�b %G&�(��b�+','Bosnie-Herzégovine'),
('\�m,>t�N��ѐu\�\�n','Botswana'),
('�\�Y��QK��\�V\�b)\�','Brésil'),
('�P�_\�MO�4U!�\�Y','Brunéi Darussalam'),
('1u㚋F��1\\\�\�}','Bulgarie'),
('���\�N�G����饔�','Burkina Faso'),
('o*\��̰AΗg\���\�ƥ','Burundi'),
('?y\�c�E���voá�\�','Cambodge'),
('Ś�\'O}��\'q掣�','Cameroun'),
('\�9?�ˮGN�:�(%�Wu','Canada'),
('f�x>O\�jb���Y�','Cap-vert'),
('�o\"LA���-�\�r�','Chili'),
('���ԅ�N\�\�,\��\��','Chine'),
('1לXz$J���w~�͐','Chypre'),
('`�q��G��R�\�j��','Colombie'),
('\0`6�hK��\�X�a�U','Comores'),
('�Ѡ�vbJf��ӌ&\�M','Costa Rica'),
('W\�7�\�N�߉�\�\�','Côte d\'Ivoire'),
('K_\�\�\�MK�\�\�ڹ\�^','Croatie'),
('�\���(D��\�\��','Cuba'),
('\�Ϸ9��D1�\�X*\��','Danemark'),
('��(\"\�\�Dޭa�	��+�','Djibouti'),
('��\�\�=�E��\�^\�\�*\�','Dominique'),
('H\�}��B*�H8���=�','Égypte'),
('\�0���Aq�*��+��J','El Salvador'),
(')Ar\�x@��\�^���','Émirats Arabes Unis'),
('a�;kIڮ���\�\�<','Équateur'),
('�\0�MD�HI�\�\�fZ\�P','Érythrée'),
('\�\�t��Aո�\�\��\"Z[','Espagne'),
('0@Ü�H؀\�R[\0\�;E','Estonie'),
('\�lD\�4�I���Jx\� k','États Fédérés de Micronésie'),
('e��3C6��\np�~\��','États-Unis'),
('5���̗I7�}\�U�\��','Éthiopie'),
('a�\�\��*A�e7�\�','Fédération de Russie'),
('(�Eb�hG��$\�G\��\�','Fidji'),
('�dY\�\�C�\\cǶ\�\�','Finlande'),
('QL@\�d\�C��g�\�p\r�','France'),
('eL\�gG0�fg\0�G9�','Gabon'),
('�����\�@��Cä����','Gambie'),
('Ǽ\�,\r@!�\�MO��?','Géorgie'),
('\�:a��BF��\�dL\\\"','Géorgie du Sud et les Îles Sandwich du Sud'),
('��\�qDG�\�!W�\�\�','Ghana'),
('�J\�s\�	G���n�ǻ','Gibraltar'),
('\��	�Kh�b3fU=','Grèce'),
('��l�QxOK�����\�]e','Grenade'),
('��kKT�BF�n=X��\�n','Groenland'),
('\��\�\�yK$�ra5K_z\�','Guadeloupe'),
('O\�_\�\��Ms�\�9�`v\�','Guam'),
('/n�%�Me�)�tYФ�','Guatemala'),
('\�h�%\�E����YFX\\F','Guinée'),
('�\��.\�A��\�\�fF\�\n','Guinée Équatoriale'),
('��;FPyBo�\0r�_@\r','Guinée-Bissau'),
('\�㷄\�ZI��Ǳ\�\"J\\','Guyana'),
('R\�==�Cض7J\�\�\�.p','Guyane Française'),
('� �\�\�I��\"\�-�vō','Haïti'),
('\�\�К��I��m�OX��','Honduras'),
('r*K��Kʺ+#C>�\�1','Hong-Kong'),
('�!\�\�\\OI��D\�d\�\�','Hongrie'),
('|�q9��G\\�3\�\�~]�\�','Île Bouvet'),
('��\�\�O��섌�F8\�','Île Christmas'),
('\�\�j@dmE���?\�G�B]','Île de Man'),
('�+��u\�CG�wpOm\Zh,','Île Norfolk'),
('��W��Jβ\"�\�*�^','Îles (malvinas) Falkland'),
('�&�	NC����\�^>&','Îles Åland'),
('gO\�Yi\�I���S�-\�#','Îles Caïmanes'),
('I- m(G4��r�\r\�','Îles Cocos (Keeling)'),
('=u\�d@s�KP]*M&','Îles Cook'),
('\n\�B\�C�����P�\�\�','Îles Féroé'),
('��P]�D$�B��=x��','Îles Heard et Mcdonald'),
('` �\�\ZM���$�\�\�','Îles Mariannes du Nord'),
('.r\�Jj\�MV�h}�>\�','Îles Marshall'),
('�\\\�\�݄I���\�.[\�','Îles Mineures Éloignées des États-Unis'),
('\�\�`�@��\�\�\�ǲ\�','Îles Salomon'),
('\�\n��:H��Bjz24','Îles Turks et Caïques'),
('sb\�z2+E�ռ�X\�','Îles Vierges Britanniques'),
('�I��w�@&���\��.','Îles Vierges des États-Unis'),
('\�\�@�O@d�\�3s�\��','Inde'),
('\�R�>\�F���pR\�#\�','Indonésie'),
('}\�\�5n2@�׻Tx^A','Iraq'),
('���\�\�@۩*c\�\"-6.','Irlande'),
('\�\�1\�!eMf�*Fj\�~','Islande'),
('\�ՠ�GE\�O��\�N9','Israël'),
('>��(��A��˚\"��y\�','Italie'),
('Մx\�u�Hr�\�ν⾿�','Jamahiriya Arabe Libyenne'),
('�^�>&G~�3&\�\�FV\�','Jamaïque'),
('�\�\�	\�I���u\r\�','Japon'),
('\�r>�\�D��v�\�\���','Jordanie'),
('�f�3�#DӾ�-g\r_\�','Kazakhstan'),
('h���\0lG��n\�҅�z8','Kenya'),
('0�6�^L��\�\�\�/R�','Kirghizistan'),
('ENpp��J �\��6\�|\�','Kiribati'),
('V\�u�m\�Gݗ\���Q','Koweït'),
('\�lM%<E���q�O','L\'ex-République Yougoslave de Macédoine'),
('l�\�ËG[��S�D\�','Lesotho'),
('�-\�\�\0\�A��.\�\�6\�I','Lettonie'),
('-w\�_S\�M5��\�2\Z?','Liban'),
('\�ؒ�KG}��\�E�$','Libéria'),
('\�m\\,�OA�\���\�z]\�','Liechtenstein'),
('JMh�\�\�A��5؉\�D','Lituanie'),
('�\�z)\Z\�LB�:\�K��TJ','Luxembourg'),
('�[��\�F\��.�q\���}','Macao'),
('\��W<�D�\�~\�c�\�\�','Madagascar'),
('DJ�݅eL��\�.G��]','Malaisie'),
('�\�fNf�\�C>w\�J','Malawi'),
('�G\�\�Eܑ\�9�\�	�','Maldives'),
('Ws\�fO���\'\�kTo','Mali'),
('��~&g;G��e6�\r,%\�','Malte'),
(';�\� �Kl�\�%�\�','Maroc'),
('S\�Up\�<L����\�Qsf\\','Martinique'),
('Y��kUF\�BC���','Maurice'),
('�㣆mF����Ğ!�','Mauritanie'),
('A��N�\�N���5{\�t%\�','Mayotte'),
('�\���NH-����N\�\�\�','Mexique'),
('�EJ�3Fߴ{���\�\�','Monaco'),
('N\Z3|��C��6��5�','Mongolie'),
('vr�Q��C����\�5\�y','Montserrat'),
('�M�#+C\�u\�\�\0','Mozambique'),
('�\�\�J�\�Dc��g\�\�\�','Myanmar'),
('8\�R�E<��0�\�\Z�\�','Namibie'),
('�|��D>�~j\�\�\\\�\�','Nauru'),
('\�\��%YE��l�\�l��','Népal'),
('\�]\��:/E2�5TH\�8','Nicaragua'),
('dִM?Ls��w|�%�','Niger'),
('�\��X�DN��\�Nl�\�','Nigéria'),
('�@$�JNT��p|\�\�u','Niué'),
('\�75Ӟ\�O\��\�\n}Ch\�','Norvège'),
('ӈ�Cr\�F���L\�ҟ\�-','Nouvelle-Calédonie'),
('�\0]�M��u�\�0\�\r','Nouvelle-Zélande'),
('��\�\�̨M���~\�id��','Oman'),
('\�\�\�\�\�kC��s�/\�S�','Ouganda'),
('�\�i�\�H.�uG\�i\�l�','Ouzbékistan'),
('�\�?M/@D���\�.�*�','Pakistan'),
('�R\�\�m@ۂC{�\�\�','Palaos'),
('�	\�E����\�4@','Panama'),
('7��O҂}��\�\r\�g','Papouasie-Nouvelle-Guinée'),
('\�0k)�B��ԈJ��\\<','Paraguay'),
('\�_\��\�M���W\�[]T','Pays-Bas'),
('\�2g>B\r���S~у�','Pérou'),
('�\�x\�B<D���FnQ\rw\�','Philippines'),
('gɪBW�N�\�s�`A','Pitcairn'),
('�Sj.�\�N2�\�\��\�\�\�','Pologne'),
('s\�`Y\�3J\n��\�\�\�*G','Polynésie Française'),
('\�8.�\�Ci�-\�_\�܀\�','Porto Rico'),
('�%��a�D\�0�:\�\�','Portugal'),
('�aӧƦF\r�5��C-','Qatar'),
('N)�\�#GM����\� q-.','République Arabe Syrienne'),
('\�Z\"#>�Jx�\����\Z\�\�','République Centrafricaine'),
(';��\�vF�ty7\�A�','République de Corée'),
('\�\�\�K�Oӱ�=cv �a','République de Moldova'),
('�\�_��LD�\�p>���P','République Démocratique du Congo'),
('��|V�6@n�`�ۀ\�d','République Démocratique Populaire Lao'),
('�B\�K\�wBZ��MX$\�m�','République Dominicaine'),
('\�\��&�J��\��4\r','République du Congo'),
('\��\�WL���\��\�\�ӓ','République Islamique d\'Iran'),
('�\�\�\��%Je�D\�y9�`\�','République Populaire Démocratique de Corée'),
('ą\�\�(N��\�w�̹','République Tchèque'),
('k\�\�\�A��5G�\�\Z�\�','République-Unie de Tanzanie'),
('Zn�\�\�MQ�ГJ\�\�s�','Réunion'),
('m���K��Ǎg{��)','Roumanie'),
('��\�e�Lֹ\�\�6.1p','Royaume-Uni'),
('���\��@��Θ\�\�','Rwanda'),
('\�]\�\�cD��\�\�e�\�g�','Sahara Occidental'),
('�O�\�eM\r�;\�ƙ�H','Saint-Kitts-et-Nevis'),
('z⮟;#C*�B��\�FV\\','Saint-Marin'),
('�Ɠ�\�PF(O!	j�','Saint-Pierre-et-Miquelon'),
('\�Dz�_�L\\�\�\��\��A','Saint-Siège (état de la Cité du Vatican)'),
('��u\�\�DOv�>��o\�/','Saint-Vincent-et-les Grenadines'),
('��!&^E\0�44\�*','Sainte-Hélène'),
('!w\".JJ�&W�V\�\�','Sainte-Lucie'),
('�\�&�\�C\�t\"�\�\�k','Samoa'),
('\��H^S�L��tPZg','Samoa Américaines'),
('αX�\�EI�\�\�U�Qeq','Sao Tomé-et-Principe'),
('�o<�S�Mn�\�!7\�\�','Sénégal'),
(':3$_�A\�5\�b�&o\r','Serbie-et-Monténégro'),
('��I�Eٹ\�V�<i�5','Seychelles'),
('�x:�Fb��n6v|�','Sierra Leone'),
('c7u)�PF\�\�+���(\�','Singapour'),
('�9\�\�@`�K�k�UU]','Slovaquie'),
('*^\�+$\�I<��\�4\�','Slovénie'),
('d�`\��YN\���\0l\�A\��','Somalie'),
('J�\�bT8Bx�\'v)X','Soudan'),
('��U/\�cG坟\"��\�\0','Sri Lanka'),
('�\�\�b\�VN��g1�AfV�','Suède'),
('Ѻ��\ZfF��\�\�Z�\�]','Suisse'),
('^#\�yX\�G��j+\�+Kn\�','Suriname'),
('@����Iط��V\�C9a','Svalbard etÎle Jan Mayen'),
('l\�8Z��N\\�	0g��W','Swaziland'),
('\"|O\�DJ\��ĘF<.|P','Tadjikistan'),
('��ۊ�|M��@����','Taïwan'),
('H��b\�\�B�\�_�\��','Tchad'),
('(.\�ҰCӸt~����','Terres Australes Françaises'),
('�t�\�eA��L\�4ui\�','Territoire Britannique de l\'Océan Indien'),
('\�\�	-\�hCq�\�ӳ�\'��','Territoire Palestinien Occupé'),
('\"\�t�\�B`�UY\�R�\�j','Thaïlande'),
('l���/9A����\0�4\�','Timor-Leste'),
('@�g0\�yH端�@8\"U','Togo'),
('��;f�gL݁-5\�@��v','Tokelau'),
('\�Sv�Y\�M��\�_Tx\�`','Tonga'),
('�dg),@[�}\�\�\�m�','Trinité-et-Tobago'),
('�\ZrR@ÃK\�q\Z��','Tunisie'),
('�����G.��\��T','Turkménistan'),
('M�X��?G��6\�Ui 9','Turquie'),
('\�烧�\�C�����Ȕ�J','Tuvalu'),
('��j�NI��\�\�4�','Ukraine'),
('�\�G\�Z;A�աn,��','Uruguay'),
('\�\�	!q}HZ�)\�\�\�\�\�','Vanuatu'),
('��¿ʑGx�a\�Dয়','Venezuela'),
('\�	ѭO\\�c`\�(u\�','Viet Nam'),
('\�\�*��CM�Ϗ\�\�:K\�','Wallis et Futuna'),
('MAӯ\�>D����!\�\�#','Yémen'),
('3�\\�J��]�\�N\�\� ','Zambie'),
('�\�\���\�C\0�\�&Nսyh','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-07-11 07:29:18',3),
('DoctrineMigrations\\Version20240201152951','2024-07-11 07:29:18',2),
('DoctrineMigrations\\Version20240202084749','2024-07-11 07:29:18',2),
('DoctrineMigrations\\Version20240202150901','2024-07-11 07:29:18',5),
('DoctrineMigrations\\Version20240207105701','2024-07-11 07:29:18',2),
('DoctrineMigrations\\Version20240319212437','2024-07-11 07:29:18',2),
('DoctrineMigrations\\Version20240614133504','2024-07-11 07:29:18',10),
('DoctrineMigrations\\Version20240617165906','2024-07-11 07:29:18',7),
('DoctrineMigrations\\Version20240708061729','2024-07-11 07:29:18',12);
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
  `full_name` varchar(255) NOT NULL,
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
('.�l5��Ln�I�y\�\�7','�d\�9�F���\�\���','^��{�F\�\�\�v�\�\�_','[\"9964e539-05ff-4611-b39c-ffd6d108b8b7\"]');
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

-- Dump completed on 2024-07-11  7:29:19

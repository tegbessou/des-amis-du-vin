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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-09-15',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-09-15',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-09-15',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-09-15',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-09-15',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-09-15',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-09-15',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-09-15',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-09-15',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-09-15',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-09-15',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-09-15',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-09-15',NULL);
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
('\�\\{7�L4�\�щ\�\�r','Afghanistan'),
('\�\�Jl]\'An�\�R\�JT�4','Afrique du Sud'),
('Y���oI��\�?��j\�','Albanie'),
('�\0\�\�!B��\�g�m�\0','Algérie'),
('o�&*AL቗\�^��\�y','Allemagne'),
('OӭT�DB����!\�\�>W','Andorre'),
('�j�l��F��E\���m\n','Angola'),
('\�_A�hL�\�	�\n+[\�','Anguilla'),
('��\��\�A\�\�k��\�d','Antarctique'),
('�eB�\�MîӰ60��','Antigua-et-Barbuda'),
('��J۸II��w\����','Antilles Néerlandaises'),
('�7�ںC���|Um?\�','Arabie Saoudite'),
('����D�E.�� kⓚ�','Argentine'),
('\�X<�sgA7�by�~��','Arménie'),
('�\�fz+B��A>�zR*`','Aruba'),
('B�\�(@�Lٜ\\�T�|l','Australie'),
('x\�\�dYB`�e���?s','Autriche'),
('�,ԝX\�L����Ũ�D','Azerbaïdjan'),
('\��D�\�HG��\��t�\�\�','Bahamas'),
('�T\�6QD؆\�]zޞ\�','Bahreïn'),
('�\�C��O��Z�\����','Bangladesh'),
('\�v�|D��\�~�~F&Q','Barbade'),
('`F\�勤O<�\�\Z�\0��','Bélarus'),
('8\�\�\���Dٟ���ɒ��','Belgique'),
('�MB\��OG��^\'�\�\�','Belize'),
('\�\�Q�D\0��\�w\�p9','Bénin'),
('\�vFXK2DB�\�+�<','Bermudes'),
('�C~� N³\n�-\�J\�\�','Bhoutan'),
(']�����C\�T\�{��z','Bolivie'),
('#]�H�@��E���7D\�','Bosnie-Herzégovine'),
('\�z΀A5�\�\�w\�[\�','Botswana'),
('ۉ��bpAI�\�\�^\�b�','Brésil'),
('\�\�\�F,�j�\\=:�','Brunéi Darussalam'),
('?�\�K@�L頛f_\�\�c','Bulgarie'),
('l$�\�HЎ�Ĕ5�C','Burkina Faso'),
('��|�:Kս\�N_\��','Burundi'),
('��-�!mG؁L#\�ߒI;','Cambodge'),
('\�S$0N���\�z#\�','Cameroun'),
('�:n6͢JE�5�j��2�','Canada'),
('\�\�j�p]F��;\�\�P+�','Cap-vert'),
('�E�W\rzL��N\�\0\��\�|','Chili'),
('\�JV\�\�D\�\��9�j','Chine'),
('$.\�\�cI0��e\�^]X�','Chypre'),
('Po	\�\�1A)d\�\�8�','Colombie'),
('N�\�\�D̢T82W�s','Comores'),
('j?�Gv�D��v�\n,\�','Costa Rica'),
('׊\�\�A��0�8��','Côte d\'Ivoire'),
('%�g\�8E͹\�k[)�	\Z','Croatie'),
('>��U\�E�+}]dZmj','Cuba'),
('H�\�\n5D��\�2\0ESE\�','Danemark'),
('\�V�\�\�Do�L/�	R�','Djibouti'),
('\�݅뷧Mp�P˕�_\��','Dominique'),
('7�=\�	H3�0P}\�o','Égypte'),
('Y\"a�sC��O,=�n�','El Salvador'),
('�u�\���I�w\�\�)w\�\�','Émirats Arabes Unis'),
('\�\'l1�L��h\�1ٍh','Équateur'),
('JJ�\�\�A���\�)\�1��','Érythrée'),
('�V�2�iH3�r\�΁[\�','Espagne'),
('`���\0�Hw��\��E\�+w','Estonie'),
('\��L�\�C�\�{GԢ','États Fédérés de Micronésie'),
('\�RE�?L��\�~\�\�&','États-Unis'),
('zt>u�	D��7x{G�Z\r','Éthiopie'),
('\��_1�G��J\�iD�\�','Fédération de Russie'),
('\�\�\�\�NC��bq�\'\�3','Fidji'),
('\�6�%ЃK��\�������','Finlande'),
('\�F<z!K�Ҙ�I\"\Z\�','France'),
('�3�\�OR�\�.\�\�?\�','Gabon'),
('��\��J\��渫���','Gambie'),
('��\�@\�@o�]�*\��I','Géorgie'),
('cy\�\�\�\�C��2�_��m','Géorgie du Sud et les Îles Sandwich du Sud'),
('&\�7��\�A������SJ�','Ghana'),
('Ħ2\�\�F��.�\�	g1','Gibraltar'),
('���\�@[�@�b|i�','Grèce'),
('��\�\�]XA<����)\Z&\�','Grenade'),
('\��}W�G��+\�Cx�0','Groenland'),
('\'�:v�LB�\�\�v�\�w�','Guadeloupe'),
('��,\��\�J��\�\�\�\�\0P[','Guam'),
('i�\�@w�O[�l1<\�و','Guatemala'),
('�k�[\�A!��4�ޡV','Guinée'),
('r\�9ẌM>�7�z��\�','Guinée Équatoriale'),
('�|\�\�N���Y��%\�','Guinée-Bissau'),
('�D?�H��\\��P�;','Guyana'),
('\�\�\�\�\�I��h��\�','Guyane Française'),
('1%\�y�\�JK�\�A\�Q�s','Haïti'),
('V��c�Ag��Q\\\"�\�','Honduras'),
('�/�[�&J���_r�\�','Hong-Kong'),
('��N�AjL����#\�','Hongrie'),
('\�1mn�\�F\�S䅹�W}','Île Bouvet'),
('i�1\�\�D\'��\�*�Ɗ','Île Christmas'),
('\�1\���MȬ\nOM�\�p\�','Île de Man'),
('\r\�\r\n��G�]*Oe��h','Île Norfolk'),
('����\�\�Nf�\�ug)D','Îles (malvinas) Falkland'),
('m\�\�\�$J3��\�>��pZ','Îles Åland'),
('�\�ば(Oe�J\�9~b\�','Îles Caïmanes'),
('7\�V�_3N��4\"�t	\�','Îles Cocos (Keeling)'),
('\�\�g]%BGr��\�Pw�<D','Îles Cook'),
('\�\�M$|%K}����f��W','Îles Féroé'),
('����n@��.��','Îles Heard et Mcdonald'),
('a\�P�C嚘ںʋ��','Îles Mariannes du Nord'),
('V|P\�/@ŚD6�\�\�O�','Îles Marshall'),
('T\�V�\�D��\�\�\�?i7','Îles Mineures Éloignées des États-Unis'),
(' \��\�eAM��}�!�\�','Îles Salomon'),
(']\�O�z\�B�d[Ө�>\�','Îles Turks et Caïques'),
('\�uF\���H��NT�\�,�&','Îles Vierges Britanniques'),
(']k%SAs�\�ژ\�','Îles Vierges des États-Unis'),
('�I\�\�-\�I��0glJ>\�x','Inde'),
('\�\\s\�*�FB�NO߰�Rs','Indonésie'),
('T\�۹\�J��{y��eN&','Iraq'),
('���ΧnA��jr�\�0','Irlande'),
('S\n^\�NA�3TRI�\�','Islande'),
('���\�\�J��ąB\�','Israël'),
('���_\�)K\n�ǐL\��\�','Italie'),
('bru�%I֍��?B��','Jamahiriya Arabe Libyenne'),
(')^�#\�Kj���V\0�\'','Jamaïque'),
('��T\��E��+\�\�l&','Japon'),
('�@\�\��yG-�\�HLN��','Jordanie'),
('˪FN:B\�\�&\�.�','Kazakhstan'),
('1xr\�sMڪ7\�\�\�4','Kenya'),
('�l��HZ�pU�0','Kirghizistan'),
('싈��J@��\0l{�\�','Kiribati'),
('u)�>\�`N\Z����	��','Koweït'),
('�\�\�O_��/f��','L\'ex-République Yougoslave de Macédoine'),
('/5\�r�0J�\�>\�|܊�','Lesotho'),
('������LV��>d\�\��','Lettonie'),
('\�\�L�_O>�\�KWn','Liban'),
('<�`\��L|����#h��','Libéria'),
('���~QiG��OD�\�\�l','Liechtenstein'),
('\�\'e�\�~LY���\�s\�B�','Lituanie'),
('\�\�9s\�Jo��\��B�\�','Luxembourg'),
('�\�q��B;��v~:\�\�\�','Macao'),
('+\n�\�<C��5&�\�S=\�','Madagascar'),
('�\�\�n{\�C�� J\nl\�\ZD','Malaisie'),
('Q\��/M��DA�\\','Malawi'),
('v:TI��O��u\�)\�\�','Maldives'),
(':�\�F�\�K�����\�]�o','Mali'),
('o�!�\�E��:\�`q�\�','Malte'),
('�K\"�\�ND�Чݝ\�x','Maroc'),
('@�\�gM\�OP��8��\�$','Martinique'),
('EX�RK�\�y{|','Maurice'),
('�q�7�C���-�\�$','Mauritanie'),
('RU����AP�9��\"H7z','Mayotte'),
('ӬJ\�\�tH\�~�\'�C�','Mexique'),
('�\�t�HuG=�:��7^Z\�','Monaco'),
('p�̅T�Fτ]�Ҟ�fF','Mongolie'),
('\�Zmt\�H���Z�J�F~','Montserrat'),
('�\�~\�ܛC`���\�=^�','Mozambique'),
('�\'y\�As��+�\Zۤf','Myanmar'),
('n�Q�\�\�HU�\Z\n���l','Namibie'),
('\�Esi\'�Aʁ\�\�O��j','Nauru'),
('��tecI��\�\��\�O>','Népal'),
('ٓ�\�E3�\�딷�\Z','Nicaragua'),
(' \�\�\�c�J�Tw�=\�\�\�','Niger'),
('���~OB�����~6','Nigéria'),
('͗繁Bx�â+:�\��','Niué'),
('�l��\�KX�Ŷe��','Norvège'),
(' >�*\�E0�^�ܦt\�','Nouvelle-Calédonie'),
('$\�iHK�\Zs�@�#\�','Nouvelle-Zélande'),
('�:U�FP��V\�G&','Oman'),
('%\�?v��E��P��;�G�','Ouganda'),
('\�B\�\�Aޔ���\�yV','Ouzbékistan'),
('���Oż\�ن�\�W','Pakistan'),
('�B/Q\�}@Y�I	&^\�\�','Palaos'),
('�\�d�ĸFE�\�#^9z]{','Panama'),
('�}ߞk\�Nb�e\�s�8\�}','Papouasie-Nouvelle-Guinée'),
('2R�\�7N\\��T��\r@a','Paraguay'),
('\�\�||6�@ ��d�`(\�','Pays-Bas'),
('\�\�\�\�PDH��2!&\��','Pérou'),
('�\�4\�@��\"s(�#�','Philippines'),
('��\�	ѼF�\�\�\�0��','Pitcairn'),
('\��\�G9H���³C}WN','Pologne'),
(' vp9/%I�\��?���\�','Polynésie Française'),
('f\�\�>>Kc��k\�H?�','Porto Rico'),
('\�nH&3�@z�k\�\r\nn�a','Portugal'),
('�\�\�N	EV���\�S�L�','Qatar'),
('�\\\�\"\�O\�Cr\�Ko','République Arabe Syrienne'),
('n@���\�N��w� \ns\�M','République Centrafricaine'),
('-9��4�H\��	�I\�\�','République de Corée'),
('!���~L�7�6\�P\Z','République de Moldova'),
('3�\�\�\�F��ډ ˡ��','République Démocratique du Congo'),
('�\��!]�C~�\"\\+Z~�','République Démocratique Populaire Lao'),
('�oS�N��E>�\�\�\�','République Dominicaine'),
('?��\�\�C��3��D,','République du Congo'),
('ٹV[\�@Y�I�9<<nr','République Islamique d\'Iran'),
('�q\�M�CL��3�8\�','République Populaire Démocratique de Corée'),
('%9�\"+C.�»�o)','République Tchèque'),
('Z/Z�HH[�\'+�r�','République-Unie de Tanzanie'),
('G\�\�\�gH;�K�d��@','Réunion'),
('U�\�w�nL��\�\�\�\\','Roumanie'),
('�}\�rE��>\�ǜ�K\�','Royaume-Uni'),
('i�\nv��Iն\'���\�','Rwanda'),
('Q\�I�\�I��#xD��J<','Sahara Occidental'),
('\�H8햙J\�,\�;\��I�','Saint-Kitts-et-Nevis'),
('�_gVyA��\�\�T\��Dh','Saint-Marin'),
('ܚWH�Fv�q�o��','Saint-Pierre-et-Miquelon'),
('�\�C[@lFєc�$�\�','Saint-Siège (état de la Cité du Vatican)'),
('\��:P;O���i:\�=\�','Saint-Vincent-et-les Grenadines'),
('\�m6\�ER�Y\�\�(\�','Sainte-Hélène'),
('M4Ӱ@D\�\�gi�Y�','Sainte-Lucie'),
('(\�\�@\���\�.','Samoa'),
('\�c�o�kNt�:\0Ml\�','Samoa Américaines'),
('\����LM��&/P\�.','Sao Tomé-et-Principe'),
('�A\�9:\�LW�\�\�&ir�','Sénégal'),
('��S��\�B\Z�;�BS)4.','Serbie-et-Monténégro'),
('�P?��B\��� \"\�','Seychelles'),
('P\�g)TE�Ⱦa\"m\�','Sierra Leone'),
('%��VM�\�\�\�d]�\�','Singapour'),
('�QA{�B>�$^\\�9\�','Slovaquie'),
('�K,��\�I��\Z\�\�q@I','Slovénie'),
(':X=`kNj�����8\�','Somalie'),
('a\�\�d�O��?�\�;b\�','Soudan'),
('4�\�UйF�勉[3\�','Sri Lanka'),
('\�\��B�CE\n�v�T�','Suède'),
('_��rA��F\�z�ؔ2','Suisse'),
('Hl7���Jݨ�}\�\��','Suriname'),
('վ�!�@L�\r#y[MU','Svalbard etÎle Jan Mayen'),
('=�n�N�&&)\��o','Swaziland'),
('��%�\'\�A�{pH\�0','Tadjikistan'),
('�d�\�\�M��jl?\�\�{','Taïwan'),
('\��mU	?Ao�3\�t\�\�x\�','Tchad'),
('+�$r]NƆ�K\�\�\�','Terres Australes Françaises'),
('\�i`�2F�R雷N`','Territoire Britannique de l\'Océan Indien'),
('���LRgNڊ�\�\��;Q','Territoire Palestinien Occupé'),
('\"�S�\�J���\�\n��)','Thaïlande'),
('�3�\0�LB4��\�\"�\�/h','Timor-Leste'),
('�{]\�G6� �\�\�\��','Togo'),
('R,Q\�G��P\�\�\�\�B','Tokelau'),
('|\�ݒA:���l��T�','Tonga'),
('\�o�pҌO$����\�\�','Trinité-et-Tobago'),
('~\��\�B���f��\�h','Tunisie'),
('G\�\�R2JGw��/\�R���','Turkménistan'),
('��z_H\�o͍T\�','Turquie'),
('bQ֐\�\�L�R��\�m8','Tuvalu'),
('�G\�5s\�G��\���X','Ukraine'),
('\�^F��RJ\\�\�xTҏ�','Uruguay'),
('�mdա�Gȏ\�XO\�a�','Vanuatu'),
('[�F�\�I���D3\�\Z�\�','Venezuela'),
('\�\�j�\�\�B�n\�b��','Viet Nam'),
('\�V�\�\�O7�\�X�Zb\�','Wallis et Futuna'),
('��d\�G��\�	\�\n\��','Yémen'),
('[�\�Ƣ\�@��T�̺','Zambie'),
('ک�`\�\�A��\�-�ʛ�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-09-15 09:08:33',3),
('DoctrineMigrations\\Version20240201152951','2024-09-15 09:08:33',1),
('DoctrineMigrations\\Version20240202084749','2024-09-15 09:08:33',2),
('DoctrineMigrations\\Version20240202150901','2024-09-15 09:08:33',2),
('DoctrineMigrations\\Version20240207105701','2024-09-15 09:08:33',3),
('DoctrineMigrations\\Version20240319212437','2024-09-15 09:08:33',1),
('DoctrineMigrations\\Version20240614133504','2024-09-15 09:08:33',11),
('DoctrineMigrations\\Version20240617165906','2024-09-15 09:08:33',8),
('DoctrineMigrations\\Version20240708061729','2024-09-15 09:08:33',12),
('DoctrineMigrations\\Version20240801202153','2024-09-15 09:08:33',3),
('DoctrineMigrations\\Version20240815153823','2024-09-15 09:08:33',2);
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
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-09-15 09:08:34');
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

-- Dump completed on 2024-09-15  9:08:35

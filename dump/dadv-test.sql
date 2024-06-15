/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-06-14',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-06-14',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-06-14',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-06-14',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-06-14',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-06-14',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-06-14',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-06-14',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-06-14',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-06-14',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-06-14',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-06-14',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-06-14',NULL);
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
('��H�JCċ\�\�\�\�\�','Afghanistan'),
('U\�\�\�A\���k��{\�\�','Afrique du Sud'),
('�S$e\�\�N!�nX\�G[_\�','Albanie'),
('�/u\�BiG��8-��[�\�','Algérie'),
('\�|c8K������=','Allemagne'),
('P&U\�gIď\�^cs3�','Andorre'),
('�ݐݽ\�N2��\�\��;','Angola'),
('t��~>Oȴ\�\�P��\�','Anguilla'),
('Z\�/׽\�@\�,Ir2�\�\�','Antarctique'),
('Jll�yK+��,n/�\n','Antigua-et-Barbuda'),
('?Y5d\�N��s�^��\�','Antilles Néerlandaises'),
('\�$scT\nM��\�\�>�\�\�','Arabie Saoudite'),
('\\\�\�ȨDR�8+\�','Argentine'),
('1,)�Lבd\�Dy�','Arménie'),
('���hF�C\�.�\n','Aruba'),
('Q�\�\�Kٗ\�\\�\��n','Australie'),
(':3�_�Lc� ՛7a%\�','Autriche'),
('^�\��M]K��\�F\�\Z\��','Azerbaïdjan'),
('e�\��\�K�\�E�7\�w','Bahamas'),
('��\�=�Mj�N\�\�^?\�','Bahreïn'),
('\�@!0?A{�\�?�\�#��','Bangladesh'),
('~�z9wF��d|\�/=\\','Barbade'),
('$/�>\�$Jۖ\�\��CRE','Bélarus'),
('<�;\�>�A��\'Z(\�\�','Belgique'),
('Þ\"83Lկ�>FCJt\�','Belize'),
('\��F\"5\�Mi�\�q\�q/ő','Bénin'),
('\�\�\�R�@��|S\r\�g','Bermudes'),
('�#�3]IԸ>V/�\�3R','Bhoutan'),
('\\\�2m\�wJ���N\�ؼr','Bolivie'),
('\��A\�t\'Cg�\�\�\�v}d','Bosnie-Herzégovine'),
('�.���\�D,�\�\�%\n�.a','Botswana'),
('\�s\�$A��\���\� �','Brésil'),
('\�\�}:�\�G��\"\�1esW\�','Brunéi Darussalam'),
('\��%I\�(���\�\r\�','Bulgarie'),
('W(�P-Fb��&�\�R�\�','Burkina Faso'),
('}\�\�\�\\�D��q3O�m','Burundi'),
('��\�9\�pC|��>��ϥ\�','Cambodge'),
('\��\�^H��;\�v�\r\\','Cameroun'),
('�SuoL\�HM�\�t�I�$.','Canada'),
('s6\�~B�M鏩3B�\�\�u','Cap-vert'),
('ĜEt�G뎛\�\�95','Chili'),
('cX)\�z|Bt�f%Y\"JR','Chine'),
('��\�[$2FF���\�W\�','Chypre'),
('?�\�xN�L�8k\�� ','Colombie'),
('P��ZM�D��u���\�;','Comores'),
('R�l\�g/Cs��\�M\�2','Costa Rica'),
('.��ċB���^�a\�]�','Côte d\'Ivoire'),
('cYTe\�\nDϖm\�U\�','Croatie'),
('\�@{\�z\�Aq�\�\�D\�\�','Cuba'),
('��\�\�@�F��\�\�w�\�\�','Danemark'),
('\�\�([�JE����Ⱦѣi','Djibouti'),
('�	96�Cљ�\�vv`','Dominique'),
('��VSEJ$�F\�!\�e\�','Égypte'),
('\���\�LµK��\��\r','El Salvador'),
('\�?�3iA\n�?e��=\�\�','Émirats Arabes Unis'),
('М\�d2N��R���e8','Équateur'),
('�v\�\�oJt��]9\�I�','Érythrée'),
('n9���\�J����%\�m\�','Espagne'),
('\�\�\��\�tJ}�\�\�\���~','Estonie'),
('9f��|M��\�W@\�/','États Fédérés de Micronésie'),
('\�\�\��\\G]�/�\�6','États-Unis'),
('4f�\�a�Ad�8X�\�^�','Éthiopie'),
('\nH\�yI!��>,p���','Fédération de Russie'),
('\��\�ïL���\�5�','Fidji'),
('\'1y�B@\0�\�\'\�j\r','Finlande'),
('\�\�R��bC-�V�z\�\'�','France'),
('7D��\�H겾��\�1\�','Gabon'),
('��c<T�B\���\� 5�h�','Gambie'),
('��=fq@��\�+^\�','Géorgie'),
('�\�c\�u\�H㆒\��G#5)','Géorgie du Sud et les Îles Sandwich du Sud'),
('y\�\�7\�E\�\�F\��\�}�','Ghana'),
('X(%U^$B����\�zF','Gibraltar'),
('l{\0\�H�D<�Y\�g+�\�','Grèce'),
('d\�%AE�;\�\�.��\�','Grenade'),
('z�7p��B���zAِ\�X','Groenland'),
('���\�c�F��\\����k�','Guadeloupe'),
('\�?B\��\�N��H\��\�?','Guam'),
('��4\�\�@c��0/`\�oV','Guatemala'),
('8\��\'BJ��w�Z��\�','Guinée'),
('�\�*�MEp�^8\�\\�\�','Guinée Équatoriale'),
('�a\�W1OB�6�U)e\��','Guinée-Bissau'),
('1\�\\\�p@A��U�Lr','Guyana'),
('�{_\�E�c��Jf&','Guyane Française'),
('\�0��pF&�\�h;\�','Haïti'),
('� �!�\�J����Ԑ\�\�','Honduras'),
('\"1gr�B@�:1��\Z�','Hong-Kong'),
('zp\�\�!�G���T�\�\�\�-','Hongrie'),
('`\�u.\�AF�\�Ϻocm','Île Bouvet'),
('R���mK��D\�\Z��\��','Île Christmas'),
('JE	E\�3IJ�\�;���!','Île de Man'),
('�\�n2tB�\�v�GyG','Île Norfolk'),
('\0�\�=��HǏ/\�<\\��','Îles (malvinas) Falkland'),
('4N�h-M��\�\�\�\�L\�','Îles Åland'),
('�\�)��JF��$z$o\�*','Îles Caïmanes'),
('\01��@�BW�1\Z#>\�\�\�','Îles Cocos (Keeling)'),
('R>�qhE��j�\�Eq}','Îles Cook'),
('9 /FF��N��ɋ\�','Îles Féroé'),
(']i\�\�WI�\Z�dĸ;','Îles Heard et Mcdonald'),
('KA��H��.\�ab#j','Îles Mariannes du Nord'),
('\�\�@,�5KҸ#\'#|1\�','Îles Marshall'),
('b\�\�]%Bm�)&1J��','Îles Mineures Éloignées des États-Unis'),
('��\�T��Gd�/\�\�s5\�\�','Îles Salomon'),
('�\"\�\�XHɜ\�!,^Q�[','Îles Turks et Caïques'),
('\�͍\�F�Z՟\�,?�','Îles Vierges Britanniques'),
('\�i)\�N޲\�k\�Ϯ�','Îles Vierges des États-Unis'),
('�e1�¤D05��\�d','Inde'),
('�\�\Z�Q}@%�\�/�Zf\�\�','Indonésie'),
('��i�`N?��+�Knl!','Iraq'),
('\��\�\�\�K����\���\�','Irlande'),
('�b,n�\�Mϔ�LH(<(','Islande'),
('���\'C̑\�2\�\�\"Z','Israël'),
('�-�L�\ZM\�\�p�\�','Italie'),
('+\�\�m��O[�!�/\�N.','Jamahiriya Arabe Libyenne'),
('\�G��GVC��\�\0=��W�','Jamaïque'),
('�2;~�RG��s\�=�7\�','Japon'),
('gY\�J\�}F\r�)6T.ҋ','Jordanie'),
('YG�\�\�Hp�VD\�\��\�','Kazakhstan'),
('\�\�UNF��럒y-\\','Kenya'),
('ve÷L�����\�vD','Kirghizistan'),
('.!�\�/�E��r_0','Kiribati'),
('\�|k<\�N��;o���w-','Koweït'),
('_\�\�(S\�Cm�,��7\��','L\'ex-République Yougoslave de Macédoine'),
('���\��\�L��\Z~\�-ھ','Lesotho'),
('5c\�IG:�\���PE','Lettonie'),
('�\�/�-�Cm��B%\�\�H','Liban'),
('#l>�P\�B��5\"A�\�4','Libéria'),
('q��\�\'\�O2�S��\�0�','Liechtenstein'),
('c\�l<\�AN�Cf�Z�Xg','Lituanie'),
('�$\�7YuC4��\�< �]','Luxembourg'),
('U^�\�fMI��8\�F�ci','Macao'),
('�\'`�q�CS�)�o\�7\�','Madagascar'),
('\"\�g��E�\��\�\�\Z\�','Malaisie'),
('ɽ�\�AR�\�\�\�ݮ\�','Malawi'),
('�|\���\�@���\\\�\��','Maldives'),
('�a�uD\�Ok���Q�\�y�','Mali'),
('#\r\rJ�H@ꃲ�X�\�YD','Malte'),
('�ih�xBG�#�SES\�\�','Maroc'),
('r\�U�_K�����6\0\�\�','Martinique'),
('X+Ē�hB=����\�[\�\�','Maurice'),
('I\�q$��GɄFTr�궂','Mauritanie'),
('D\�*��H��ArI�e�','Mayotte'),
('\�\�\�k�JE���\�\��w','Mexique'),
('\�	\�\�)A�Ɇ�G|Y�','Monaco'),
('�����\�K���N��/','Mongolie'),
('�\�@[J�Jɇ��	+LW�','Montserrat'),
('9|h\�B\�Lu#�\�\�','Mozambique'),
('	y}R\�@�\�<�2噄','Myanmar'),
('\�ڠ2EIF߶_\�}^\0q','Namibie'),
('�\�x*0�E�� �\��\�K','Nauru'),
('�\�]\n�\rJv�I-\�O��','Népal'),
('ף�H��Hz�\��$\Z\�\�y','Nicaragua'),
(' �Y2HwF���e<\�\�','Niger'),
('@A�>�@��)�\�؎\�l','Nigéria'),
('4��%\�\ZLO�B�Cx��\�','Niué'),
('{\��ÿHƄd\\��e�~','Norvège'),
('eE@��B(�\�&�\��','Nouvelle-Calédonie'),
('\�K_~��Iŕ|�Hc\�F','Nouvelle-Zélande'),
('��)�Cz}�,\�','Oman'),
('�ڭ�eN\�&\�e��\�','Ouganda'),
('ȃt��\�B�\��\�\�iM','Ouzbékistan'),
('\�\�s\�\�Lz�a[�=\�\�','Pakistan'),
('�e!v�TJ@�\�)�\�\�\0\�','Palaos'),
('#��:�Hߜ�\�)�\��\�','Panama'),
('����\�\�B\n�\\:>\Z��','Papouasie-Nouvelle-Guinée'),
('���UE��}8?k�','Paraguay'),
('9\�\��(E\n��K<:�\0\�','Pays-Bas'),
('�}��WnM��\�୍\�','Pérou'),
(',�G/�EG��Q�\�','Philippines'),
('ĭ���AM��F\�\�u*@V','Pitcairn'),
('N�o�\�gOf�����]<','Pologne'),
(';\�,!\�\�Cڠ�c\�_�ֱ','Polynésie Française'),
('\�ɑkG`�6\�h߀q�','Porto Rico'),
('=��NL@g��O\�\�n','Portugal'),
('L^�KzLI�[p\\{C\�','Qatar'),
('f\�	�E�E��\�~%\�u','République Arabe Syrienne'),
('�\�`1�Hւخ�\�w1$','République Centrafricaine'),
('\�ȼs�@��\'V}�*p','République de Corée'),
('�ti��\�@���\�+#�r�','République de Moldova'),
('A�\�ceKN��\\\�\�|\�\�','République Démocratique du Congo'),
('*�*\�x�M奈�n�%\0~','République Démocratique Populaire Lao'),
('\�I[�\rJ��+*�%<','République Dominicaine'),
('�7��lCs��A�eY�','République du Congo'),
('UD��>@�����U�Y_','République Islamique d\'Iran'),
('Fcc�\�I ��\�)�\n\��','République Populaire Démocratique de Corée'),
('q\�r��O*��??��+k','République Tchèque'),
('`T}\�?H/�\�\�*\�T4','République-Unie de Tanzanie'),
('�\���Bo�Hi;Ҵ�','Réunion'),
('�j�\�_xMK����\�­\�','Roumanie'),
('�`_�\�N���.\�K','Royaume-Uni'),
('�>\�<D���o�5�\�','Rwanda'),
('\�QX�\�\�L4�߫\�Ufk','Sahara Occidental'),
('=[hYzB���\� \�4\�','Saint-Kitts-et-Nevis'),
('\�@�³@ڻɕ�Ĩb]','Saint-Marin'),
('7\�nX�K��!\�\n\��.�','Saint-Pierre-et-Miquelon'),
('�\�g_��O݊UC�\r�\�','Saint-Siège (état de la Cité du Vatican)'),
('|�\�^\�VJP�\�:\�-e\�','Saint-Vincent-et-les Grenadines'),
('\����\�Kߡ\��n\��}','Sainte-Hélène'),
('�J\�}+�L���\�\�4F��','Sainte-Lucie'),
('|�[�N��#{�h\�d','Samoa'),
('�te\�Q�O>�Jw.�V|�','Samoa Américaines'),
('~����B\\�\��}\�\�_','Sao Tomé-et-Principe'),
('_\�)fI���t\�E�w\�','Sénégal'),
('�9g��L׆Qc8v$','Serbie-et-Monténégro'),
('\'0�\�Dx�\0{�p>�`','Seychelles'),
('j\�\�O5�G���uJ\�\��','Sierra Leone'),
('�\�(\�G$��\r3J','Singapour'),
('�?\��\�Db�/\�\�\'\�\�','Slovaquie'),
('p��v\�E�S;��;�\�','Slovénie'),
('1�\�ڶM��H\����k ','Somalie'),
('\�\�,ޢ�HF��4\�CJ�W','Soudan'),
('H=\�h\�M]��`!ֶ�','Sri Lanka'),
('Z~��OC�\�݇\�C','Suède'),
('\�UB�_\�G>�O\�A\��\�','Suisse'),
('�\�zH\�D��)��]��','Suriname'),
('p+\�\0N׳A\'�\�\�','Svalbard etÎle Jan Mayen'),
('.L�o\�\�G���^<\�A','Swaziland'),
('w6S#�E�������*','Tadjikistan'),
('fɆẬI��-�\�|�','Taïwan'),
('\�o\�7#�M#�\�\�\�\�o�','Tchad'),
('�AD\���@�ߐ��z,�','Terres Australes Françaises'),
('^{$\�9[HŖ\�2@+]�:','Territoire Britannique de l\'Océan Indien'),
('A4G��H��\�Nӽh�','Territoire Palestinien Occupé'),
('\�!eϓE\��]�wp�z','Thaïlande'),
('\�P�G�.Bv�	\�T|9\�\�','Timor-Leste'),
('�r�4-C\'��<>)R�;','Togo'),
('\Z@;CA`@Ȁöh��','Tokelau'),
('�*���\�I��Q\r��7\�s','Tonga'),
(';\�t�\�\�FO�0c\�$\�','Trinité-et-Tobago'),
('o\�D5K¶����\�\�','Tunisie'),
('��bc�C\�[l~r\�e','Turkménistan'),
('7����G(�\\/\��\�','Turquie'),
('�\�!.n�@\'�� \�\�*','Tuvalu'),
('\��\�\'\�K��0\�\�c�?&','Ukraine'),
('�ܞ叔K���o\�\�\�|','Uruguay'),
('Yfr��\�LS�r�[�\�ګ','Vanuatu'),
('�\�*`E\'�R.�,+g','Venezuela'),
('F\�޴�C��B\�}�u��','Viet Nam'),
('\�\�3h]�Ay�	A\���','Wallis et Futuna'),
('#c����F��VvR�\�\r\�','Yémen'),
('\�@�\�NL��V\�4�b','Zambie'),
('\�\�j���N���Ű\��q','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-06-14 14:17:18',3),
('DoctrineMigrations\\Version20240201152951','2024-06-14 14:17:18',1),
('DoctrineMigrations\\Version20240202084749','2024-06-14 14:17:18',1),
('DoctrineMigrations\\Version20240202150901','2024-06-14 14:17:18',1),
('DoctrineMigrations\\Version20240207105701','2024-06-14 14:17:18',2),
('DoctrineMigrations\\Version20240319212437','2024-06-14 14:17:18',1),
('DoctrineMigrations\\Version20240614133504','2024-06-14 14:17:18',8);
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
('\�NE\�DԍB\�\�\�a�','root@gmail.com');
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

-- Dump completed on 2024-06-14 14:17:19

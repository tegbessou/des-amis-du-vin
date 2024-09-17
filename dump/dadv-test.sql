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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-09-16',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-09-16',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-09-16',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-09-16',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-09-16',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-09-16',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-09-16',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-09-16',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-09-16',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-09-16',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-09-16',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-09-16',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-09-16',NULL);
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
('����\�J��0�v\�','Afghanistan'),
('2\�	1�8J���:��l','Afrique du Sud'),
('\�No�G�\�^Y�\�8','Albanie'),
('.��>SKY�\0>xSo�','Algérie'),
('\�\�\����H(�,\�TJL�','Allemagne'),
('\�s\�\\1Ng��Q\�d\�\�','Andorre'),
('&�.v� J0�UIQ��_�','Angola'),
('&�$\�\�M����\�\�f\0','Anguilla'),
('&�O�{J��xX^\�2J','Antarctique'),
(']W�\0�G��	�:��<','Antigua-et-Barbuda'),
('-ZY�[G݁l\�\�\�/#�','Antilles Néerlandaises'),
('��\0ɖbJ��PeKAM%','Arabie Saoudite'),
('\�\�16\�{Cw�y\�\�<,5�','Argentine'),
('��rAF�\\Q\�2\�','Arménie'),
('�s�Z(G��A�^!�','Aruba'),
('\�\0sQ}Fh�\�+\�\�\�s<','Australie'),
('n\�\�~I��ҹrn��G','Autriche'),
('���\�\�IZ���\�93m�','Azerbaïdjan'),
('oP��|0J��v4Ԑ�\�Y','Bahamas'),
('#/:VK౭v\�|;\�\�','Bahreïn'),
('��H�x[O��8�h�f','Bangladesh'),
('�Z�2�N׍A�KCӕM','Barbade'),
('\�\�\�Q\�fJb��2]|���','Bélarus'),
('�\�\�\�H����@zqda','Belgique'),
('�<¤�MM�ޏ\�L�[','Belize'),
('6p\�\�F��l�\�\�j9','Bénin'),
('Wh�\�\�CX�\�e�]\�`R','Bermudes'),
('�\�\�רBL��Z6\�[�','Bhoutan'),
('�P\�Z@�����3�\�','Bolivie'),
('b \��o�H��}0}͸	','Bosnie-Herzégovine'),
('��\\D�\rIѢ\r��\�+N','Botswana'),
('��\�˪:G�m�\"��\0�','Brésil'),
('m�k0y\�J췳\�\���\�h','Brunéi Darussalam'),
('\��\�\�3LX�C�r\�\�v','Bulgarie'),
('��KS\�\�L��J�be�\�3','Burkina Faso'),
('NH��A+��X8��a','Burundi'),
('�ń�A׼2���K\'\�','Cambodge'),
('�\�\Z�BD����ץ\'�','Cameroun'),
('�\��>G\�*z_\��$�','Canada'),
('BJ�\�K<J:�D���#k','Cap-vert'),
('��Cx6B����\�ЫX','Chili'),
('`��E[�t@��@!','Chine'),
('N-3RArH}�-��\�/4�','Chypre'),
('$\�\�s@��˘�]3fq','Colombie'),
('\�\�+%\�MFP�\�NdoB','Comores'),
('��J\��Iֿ�}SVC�\�','Costa Rica'),
('�ү}b @��/�A\���	','Côte d\'Ivoire'),
('D�\�\'\'!I��<#\�	d\�','Croatie'),
(')Dџ�TL���\�jq㜥','Cuba'),
('\�]�	(B\�#�M-p','Danemark'),
('\�\�	�\�\�D����%�1-','Djibouti'),
('��p�/D���\�L�','Dominique'),
('�;�\��@د\�\�o\�\n�V','Égypte'),
('\�*\�zS@��/hIƙ','El Salvador'),
('Y@ʖ\�kK0�|b�\�7v�','Émirats Arabes Unis'),
('\��\"س\�J��?�*3�٘','Équateur'),
('꧊@\�IΛ�\�\�\�J%','Érythrée'),
('�$�\�@:�].�A_,!','Espagne'),
('\��:\��C��/$�\��','Estonie'),
('\�+�B�\�EȠ!필Ҹ4','États Fédérés de Micronésie'),
('%��n9\�N��\�\��4~','États-Unis'),
('�k4.\�]O:�o?yFa�','Éthiopie'),
('�g\�?\�H��\�\�\"�jk','Fédération de Russie'),
('YCjd�dH�����:\�8','Fidji'),
('a\�\�H�*I��\�K\���','Finlande'),
('�?��\�\�Nk�r��C\�1','France'),
('�0���yJf�\�T%�wjF','Gabon'),
('BP�\�Dn�U}�\�.V�','Gambie'),
('��}�h@��n���\�\�\�','Géorgie'),
('�7q(EoC촇\�\�c���','Géorgie du Sud et les Îles Sandwich du Sud'),
('0�=���@\�0\�m� \�','Ghana'),
('oV*V�F��j\�\"ֶ�','Gibraltar'),
('`I�ڹ\�C���ڼ�9','Grèce'),
('\��S7�>Od�#L31�C','Grenade'),
('�s{��K/��\�O�u','Groenland'),
('-�x�1�KӞ@\�N?�kB','Guadeloupe'),
('�ʇ\�\�FJ��ֲCY�Qm','Guam'),
('GC��#�E����\�\r�\�','Guatemala'),
('A�pBN\�L+�\�o2�','Guinée'),
('&�ypN񸢒v\���','Guinée Équatoriale'),
('#ߎ�*\'B�\�/锏','Guinée-Bissau'),
('��>��@�ɥ���\�','Guyana'),
('�Fg�LA���\�^V��','Guyane Française'),
('��\����@V�\�\r<\�\��','Haïti'),
('�\n�N\�\�@<�B\�v\�\�f�','Honduras'),
('z\��jO��\�\�\0\�P�','Hong-Kong'),
('c\�4&\�J��\�.�\�\�j','Hongrie'),
('�\�ChܒF\�4���H�~','Île Bouvet'),
('ڦ\�\�IU�ۆS�-U','Île Christmas'),
('$Hz�vOHo��@\�k���','Île de Man'),
('�\����N��\�L�K�.','Île Norfolk'),
('��\�\��A��.r�WF~','Îles (malvinas) Falkland'),
('0�\�M*LM�MOfj�','Îles Åland'),
('a���|D���K\�\�\�Iv','Îles Caïmanes'),
('�2B�s@�T\�\�؜�','Îles Cocos (Keeling)'),
('p\�r+B���l��h','Îles Cook'),
('�ؐ�Gي=_X�+\�','Îles Féroé'),
('\�J�.\�VOᅘ�އw(`','Îles Heard et Mcdonald'),
('�O�<hQJm�\�\�ry�)�','Îles Mariannes du Nord'),
('*\��L�.D��IY�L�/','Îles Marshall'),
('EN\�\�o\�Er�pC\�\�\�','Îles Mineures Éloignées des États-Unis'),
('��\�ȥ(H\���1��-\�','Îles Salomon'),
('�m\�N\�@\�=�j)\�','Îles Turks et Caïques'),
('\Z�M��XE����\�4\�\�','Îles Vierges Britanniques'),
('���ݻ\�N��\�r:8','Îles Vierges des États-Unis'),
('�\��\�\�\�IǺ\���㕹','Inde'),
('/��:2Ex�ԇH\�\� �','Indonésie'),
('�ԗ�\�tH׊\�T��\�','Iraq'),
(';�\�@\�Ck�b\�\��\n','Irlande'),
('\��Iť@f�\0.���','Islande'),
('{\���Q�G\�b\��䵂','Israël'),
('Ƅ�\�L-�&U��_%�','Italie'),
('\�\�݄\�Cf��\�0��:\�','Jamahiriya Arabe Libyenne'),
('Y\�\�z�L¯2\�*g\�\�Z','Jamaïque'),
('�\�e\�A��H\�\��','Japon'),
('\�f G\�MH�P\��h J','Jordanie'),
('�.\�\�B��Ma�<�6z','Kazakhstan'),
('\�\�\�I�K��-\0�T\�','Kenya'),
('S,\�l�Gʓ�3\�|,|�','Kirghizistan'),
('ގ;6��J�H�Ԡ�','Kiribati'),
('�b�ءN��o��B(�','Koweït'),
('$\'^�l~NZ�:Z��\�\�','L\'ex-République Yougoslave de Macédoine'),
('uБ\�i]K%��9�\�ӹ','Lesotho'),
('�\��֔C��V�\�mš.','Lettonie'),
('�s_��\�N��S\�ʓ\�\�','Liban'),
('�e\�\�E���A\�\�\�\�I','Libéria'),
('\�\�ײ\�?Fl�\r\�N�','Liechtenstein'),
('�y\�GD�1\��!\n7','Lituanie'),
('�\�(-_D��͔bk��','Luxembourg'),
('\��2�?Bۮ}y]�#D','Macao'),
('��\�\�mB��M=\�_�G','Madagascar'),
('ڛ͞\\�D9�\\p\��%','Malaisie'),
('7;\�Ao\�BĜz�\�u��\�','Malawi'),
('�\n-��\�L���r\0�D','Maldives'),
('\n?OU\�D�f �\��\�','Mali'),
('E�\�_��A\0�:#_\�\�~','Malte'),
('j#_cWVF���WaL� \�','Maroc'),
(':�\�S\�H��rsr\'C~','Martinique'),
('\�\�}mE���X=?�\�','Maurice'),
('�-p��\�M�6jkK\�-\�','Mauritanie'),
('c����RM���\�D�B�m','Mayotte'),
('$[����O��ױ�\��	','Mexique'),
('-�� �@a�p����i','Monaco'),
('Xg�ލAӹt*A\�\�n','Mongolie'),
('\��ˤO#��lAM!\�!','Montserrat'),
('\�hI�\�ND<�̨���\�','Mozambique'),
(' fw\�\�K\n�P1�8\0','Myanmar'),
('NYq��I.��\��*5','Namibie'),
('\�Ƌ�\��O����R�;S�','Nauru'),
('��,^�kMy�c�ô�','Népal'),
('/;m\�[K��R$�dv~','Nicaragua'),
('���\�!oM8���O\�B��','Niger'),
('\Z[��2�A��!:�\�R\�','Nigéria'),
('\�6���Op�\��\�B�','Niué'),
('OޏY\�kM;��D\����','Norvège'),
('�E�\��J�\�q\�%/0*','Nouvelle-Calédonie'),
('���{4-AG�\�T��E�','Nouvelle-Zélande'),
('d�wʡ\�C��	�ʾf�','Oman'),
('���\�\�\�C��\\���\�J','Ouganda'),
('^\�,\\v@�0\\\�\�%�\�','Ouzbékistan'),
('y��\�	PFT��\�P�p0d','Pakistan'),
('u\� sL��\\[�\"�\�\�','Palaos'),
('�1\��jLJt�\�POi-','Panama'),
('�:�\�@@Z�\�32斻z','Papouasie-Nouvelle-Guinée'),
('=$� \�@\\�Z��)u�q','Paraguay'),
('c&\"x۝GQ�c\��x\�\�8','Pays-Bas'),
('��\�&\�@��8s\�\�\�Z','Pérou'),
('��d%��A\\���\0\�ߪ','Philippines'),
('���I*\\H��Fl5\n,a�','Pitcairn'),
('� ���\�Aκ ����\�I','Pologne'),
('\�֯�$NS��2��\�','Polynésie Française'),
('c\��F��}O?�&\�%','Porto Rico'),
('\�\��\�\�\�A`�������\�','Portugal'),
('g��\�)Imwa\�\�','Qatar'),
('�>�f��H\�\�\�R\�','République Arabe Syrienne'),
('�ԣ�\��ED�7\r�%\��\�','République Centrafricaine'),
('S�*\�bEKC�\���8','République de Corée'),
('b��JAp��p\�a�d','République de Moldova'),
('Z�|e*nJ:�h\�\��','République Démocratique du Congo'),
('=\�\�\�\�@l�gB\�\��','République Démocratique Populaire Lao'),
('\�(\�\�Ew�\�O+\�%\�','République Dominicaine'),
('�]�\'�8@��נ��\"J','République du Congo'),
(';?�\\iD��M�\n��`\r','République Islamique d\'Iran'),
('mO\r�C;B���`���\�','République Populaire Démocratique de Corée'),
('�,b\"\�dK���d\�@�','République Tchèque'),
('|4�7\�B\�`�2�T','République-Unie de Tanzanie'),
('\�%A?\nBݾ�T!9�','Réunion'),
('\�Z*:\�O���\\0Y\�','Roumanie'),
('lJx�(Cw�\�B�fy\�','Royaume-Uni'),
('z�s2	Cu�e�9x	�','Rwanda'),
('�\n\�\�AK\�G���\�n?','Sahara Occidental'),
('p��\�j\�Mկ�;=]��','Saint-Kitts-et-Nevis'),
('U\�JO\"D��{/9�K\�','Saint-Marin'),
('�\Zh��L]�i\�\�\�Fe*','Saint-Pierre-et-Miquelon'),
('[;�\'�Ne�\�Ю��','Saint-Siège (état de la Cité du Vatican)'),
('K��0N�����TJ ','Saint-Vincent-et-les Grenadines'),
('0\�\�?wB,��)F�_','Sainte-Hélène'),
('\�\�%�4\�D��;�\�kY\�','Sainte-Lucie'),
('\�\�,�L{�&�u_I�','Samoa'),
('\\\�\�\�\�RH[�\�*\�Ջ\�3','Samoa Américaines'),
('\�\�>�L��P\�ӁD\�','Sao Tomé-et-Principe'),
('f�wb\�\�A:�\�m\�2x','Sénégal'),
('\\K,\�}LӫZe\"�\�b','Serbie-et-Monténégro'),
('\�/\�\�=H���\�=�\'\Z\�','Seychelles'),
('<y\"V�PJ/�M%PA�	B','Sierra Leone'),
('�\�ȭiDؼ�방QG�','Singapour'),
('��إ:WF-�\�\�kv\�','Slovaquie'),
('*N�xi�N{�\�\�6so%','Slovénie'),
('�\�G\�&\�Jv���\�!1+','Somalie'),
('\�2{�\�I��a)\'�','Soudan'),
('.��	\�Ib�f��\�ϸ','Sri Lanka'),
('�Q_0ksMs�$\��[]n\�','Suède'),
('\�U���LV�\�!�\�`��','Suisse'),
('Y�\�n�Mҩf\��Ӥf\�','Suriname'),
('UY�N\Z�R\�\��\�','Svalbard etÎle Jan Mayen'),
('��\�\�K��&2���x2','Swaziland'),
('�\Z�8��D���,��\�8','Tadjikistan'),
('2\�#O5�\�So�\'','Taïwan'),
('q�f\�EB��\�\�\n\'�','Tchad'),
(':\�!(Nr��}�\�D9','Terres Australes Françaises'),
('cF\�*G H�й���','Territoire Britannique de l\'Océan Indien'),
('Ҁ�\�\�E4�\�׈\�\�\�','Territoire Palestinien Occupé'),
('\�W\��	D��#�ձh\�','Thaïlande'),
('h5\�U�\�E��l��]=\r','Timor-Leste'),
('H�G\�\�7L\�\�Rp�0f','Togo'),
('\�\�\�\�\�HC(����	S�H','Tokelau'),
('\�\�A(\�Dߠ�w�͚\��','Tonga'),
('�h�X�H��	��\"�','Trinité-et-Tobago'),
('�pk��Mʬ��\��>','Tunisie'),
('r\0 �S�L}���[$\�','Turkménistan'),
('i\'���Du�u�Oq\�','Turquie'),
('�\�\�?	A\�\�\ZK\�{\�','Tuvalu'),
('lp]��Eڄ��Y\����','Ukraine'),
('L�����L�\�۪\��','Uruguay'),
('\�t%\Z�\�In�i\�d���','Vanuatu'),
('pG�oXMD��±\�N�!','Venezuela'),
('T#\�`2MT�B��Ż�','Viet Nam'),
('�饸/�Kl�ΆXR:\r','Wallis et Futuna'),
('E�\�-�bLs�˷�{��|','Yémen'),
('(x8Z4M�\��\0���','Zambie'),
('o\�PeOҖ5��\�\�M8','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-09-16 07:06:20',4),
('DoctrineMigrations\\Version20240201152951','2024-09-16 07:06:20',2),
('DoctrineMigrations\\Version20240202084749','2024-09-16 07:06:20',2),
('DoctrineMigrations\\Version20240202150901','2024-09-16 07:06:20',3),
('DoctrineMigrations\\Version20240207105701','2024-09-16 07:06:20',2),
('DoctrineMigrations\\Version20240319212437','2024-09-16 07:06:20',2),
('DoctrineMigrations\\Version20240614133504','2024-09-16 07:06:20',13),
('DoctrineMigrations\\Version20240617165906','2024-09-16 07:06:20',10),
('DoctrineMigrations\\Version20240708061729','2024-09-16 07:06:20',12),
('DoctrineMigrations\\Version20240801202153','2024-09-16 07:06:20',2),
('DoctrineMigrations\\Version20240815153823','2024-09-16 07:06:20',2),
('DoctrineMigrations\\Version20240916065051','2024-09-16 07:06:20',4);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-09-16 07:06:21');
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
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`participants`)),
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

-- Dump completed on 2024-09-16  7:06:22

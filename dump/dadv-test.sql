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
('�6Ln�\�B͇>�\�8�','Afghanistan'),
('�~~G\��Zv�it','Afrique du Sud'),
('\�O� E�Bw�n\\2�\�Bv','Albanie'),
('\�\�\�\�p@{��\���M[b','Algérie'),
('[�\�h�G:��4!R�x','Allemagne'),
('v\�03�NN�\'a��_3\�','Andorre'),
('\�\�>a�B̷�x��7','Angola'),
('�_�5ٓM=�g,9m̃','Anguilla'),
('\�\Z\�[�MҔʝq\�x\�','Antarctique'),
('�\�!�!EU�\"Cl(\'','Antigua-et-Barbuda'),
('bx~\�3\�H\Z�\�6��','Antilles Néerlandaises'),
('�\�U)�BO߄�D�\rVS{','Arabie Saoudite'),
('e\�\�\�xF��\�gE�\�9�','Argentine'),
('YU\�*��G��\�\�gٛ�','Arménie'),
('�_\ZsG\�E\�>���','Aruba'),
('¦\��\�N�dx/\�w\n�','Australie'),
('\ZdwSA\�@��\�f�H:','Autriche'),
('Ⱦ��|\�G�� 	��g�','Azerbaïdjan'),
('|�lXH\�M`��n\�W��\�','Bahamas'),
('|��	K8����G#','Bahreïn'),
('ݮ#mI���Y��','Bangladesh'),
('�c�1Q|KJ��\�=j��','Barbade'),
('z���_H�Q٦Ђ�\�','Bélarus'),
('cؒwF6�\�\�V!\�{�','Belgique'),
('�g���\�@ȶs\���EC�','Belize'),
('���\�W\�Go�={\�V\�','Bénin'),
('G<TE0��8%X׃�','Bermudes'),
('\�Ytt�OԸA\�瀳�\�','Bhoutan'),
('v�\�~_Kʮ��\�r�','Bolivie'),
('ZG5e��I:��d	�h�\�','Bosnie-Herzégovine'),
('ū\��\�Jٌ�\�sCg�','Botswana'),
('�s5tC\����\�]\�\�\�','Brésil'),
('\�ǉf�\�E����΁�\�','Brunéi Darussalam'),
('�].�\�E�>�2��-','Bulgarie'),
('\��0P3Kz�5��\��}','Burkina Faso'),
('�¸�Ae�=c|2��4','Burundi'),
('\�\�]�\�\�B��\ZI�%��','Cambodge'),
('\Z�J\�G֑��\�\�\�1\�','Cameroun'),
('&�TCw�M/�g \�\r\�$.','Canada'),
('\�~�KP�d�:\�\�$','Cap-vert'),
('�=�7\�\�Hm��OU�#s.','Chili'),
('��@�\�I��^jP\��','Chine'),
('� ͤ8B��SV�+$j','Chypre'),
('l-w<ԴF��\�\�\\pR','Colombie'),
('h�\�8DA��\�\�\�b','Comores'),
('4�\�I�\�N<�ي�:���','Costa Rica'),
('�_\�c{�D8�W6\�Ի+','Côte d\'Ivoire'),
('ŜaY{E\Z�W�f\�\�p]','Croatie'),
('-\�\�F�M��\���Mwm','Cuba'),
('Ѹ\�\�F�J���k��','Danemark'),
('\�\�⚀Ci�\���#c\�','Djibouti'),
('F�F�;\�H��fq;s��','Dominique'),
('�\�1�=�H��\�ϽV.4\�','Égypte'),
('��\�J)\�A���`u$Ue�','El Salvador'),
('�,�Պ�G���:��6\�','Émirats Arabes Unis'),
('~qF���Bk�o�F�Cq','Équateur'),
('lm\�\�7�C��\ZjjG�\�','Érythrée'),
('\�\�\�?WIP� j�fǘ','Espagne'),
('a\�\�\n\�\0DƋ?\nlH\\','Estonie'),
('R\�\�\�J(\�UE�','États Fédérés de Micronésie'),
('�Z\�\�GK>��d\�KJ�','États-Unis'),
('(U\�:\�>A3�\�.y\�=�\�','Éthiopie'),
('\�\��+�B���e\"\�r','Fédération de Russie'),
('\0����E/�}�\�;\�,','Fidji'),
('\0]$Ŋ�H6��O\�{�','Finlande'),
('OB ŜDH��X$i8','France'),
('C\�\�\�\�M|�Q�\�\�w��','Gabon'),
('mr�%\"\�Ap�\�\�\�#','Gambie'),
('p�vqcJ��\�1\�\�K','Géorgie'),
('VGT[Y�G�\�z\\\�Vl','Géorgie du Sud et les Îles Sandwich du Sud'),
('�BT\�MB��W`y��N','Ghana'),
('.���ܚJX�sx#N��','Gibraltar'),
('�T�\�s|H`�j\�\r[ǻ','Grèce'),
('T(\'\�\"pM_�I�K�\�\�a','Grenade'),
('\�=��\��L��;\�6!�\Z','Groenland'),
('�o �\�C�\��\���\�','Guadeloupe'),
('٪\�7\nID`��؜��d','Guam'),
('V\�\"�AK�\��q	}\"\�','Guatemala'),
('!�\�Vs\�A��Y�\�;\03','Guinée'),
('���`�\�Bh�o\�+k�\�','Guinée Équatoriale'),
('֕\�\r.G\�$\�Nn\Z�h','Guinée-Bissau'),
('���`FL�n(ğ�','Guyana'),
('\Z�?��[M\�̒N�o','Guyane Française'),
('bҪ\�cH����\r��>�','Haïti'),
('v_8\�%LG��=��6O','Honduras'),
('\�\n\�mG��kC\�\��	�','Hong-Kong'),
('<�@�#\�I\�\�B���\�\�','Hongrie'),
('���5��N����\�-�\�','Île Bouvet'),
('\�<\�TˋFC�#\�\��','Île Christmas'),
('Ε\�\�9�G���s�\�`4L','Île de Man'),
('G�\�uE�D��7UqEP�','Île Norfolk'),
('ڬ�\�\ZBJǁ��!\�','Îles (malvinas) Falkland'),
('Iq;��CGN�2\��)\\�\�','Îles Åland'),
('\���|E�I�-a4��\�d','Îles Caïmanes'),
('\�A\�\�\�L�\�\r!�\�2','Îles Cocos (Keeling)'),
('\�N\�\�UNԷ�{�~M[L','Îles Cook'),
('�U\��Y�K?��o\�ZY','Îles Féroé'),
('�\\�\�ڻKE�.\�g\�\�\�','Îles Heard et Mcdonald'),
('d�\�ɏO �7f�e;�\�','Îles Mariannes du Nord'),
('\0�2\�\�M܅�\����I\�','Îles Marshall'),
('�$=��4D��\�S\�n�','Îles Mineures Éloignées des États-Unis'),
('W4W\�P\�I͌�_ �T\'','Îles Salomon'),
('O��\�\�1G��\�|\�\�׎q','Îles Turks et Caïques'),
('L�\�BzTDx�aF]o�yG','Îles Vierges Britanniques'),
('\�\��i�}@�\�\�)�$ƨ','Îles Vierges des États-Unis'),
('�QE\�H\�B*�\�QJ�ψu','Inde'),
('�\���XI^���L(�6�','Indonésie'),
('<\�\Z�\�\ZK\�6\�Tz�ط','Iraq'),
('\Z���\�\�F�\�i�!]\�','Irlande'),
('�� �\�\�K����J�FH ','Islande'),
('�\�y <tE���_�7','Israël'),
('�;�\"\�G��A)ڥ','Italie'),
('��\��F��\�\�6�','Jamahiriya Arabe Libyenne'),
('�n�NgK���\�B�\�&','Jamaïque'),
('����ɵJx��c\�<>6�','Japon'),
('	8{G�E\"��p��̣<','Jordanie'),
('\�\�(\�Bc�\�\��','Kazakhstan'),
('\�9:�`�B��ջ\�\��l','Kenya'),
('o{��p�N�e\nͫ\�\�\�','Kirghizistan'),
('�wKu1G׬.\�\"���','Kiribati'),
('zN��W<G���~\�,H\�P','Koweït'),
('�s\�KIL\�_\�^l\n�0','L\'ex-République Yougoslave de Macédoine'),
('�s8�iLL!�?5�\'','Lesotho'),
('<�YFf\�AI�\�=�_�','Lettonie'),
('N�4\�\�F��fE����','Liban'),
('�Mغ�\�A,�`�ytO�','Libéria'),
('�p�1\�\�M2�\�,�/�','Liechtenstein'),
('K\�\'\�\�N�A._\�\�gQ','Lituanie'),
('��w\�8I��tV�Fe4','Luxembourg'),
('��낋1A0�^+q<\�1','Macao'),
('bx\�/\�XM��dl��\�','Madagascar'),
('Lb}Dv�\�\�\�4׭\�','Malaisie'),
('�\�P\�ǟL\\��a�r3I','Malawi'),
('������G#��\�\�BR��','Maldives'),
('no��+�A��bKi<];\�','Mali'),
('\�w�\��E{�Qʆcr3�','Malte'),
('��\rh?�Oҹt\�\�Ϫ\�','Maroc'),
('|}�\�)1Oß��/}E\�','Martinique'),
('�I��Z\�A��\�I\Z��\�X','Maurice'),
('��A\�\rHé�\�\��a�\'','Mauritanie'),
('\�L(\�\�FA��\�.�\'\�','Mayotte'),
('.qo�D\�P��C\�V','Mexique'),
('oD\�5\�\�F\�,m\\炋','Monaco'),
('�(K\�KE�!Y�GH��','Mongolie'),
('�d\�ɃLg�d#�y?\�)','Montserrat'),
(' �sX!H:���ގ	�F','Mozambique'),
('\�\�\�/C���\�\�\��k','Myanmar'),
('p(��\� I��9�\�53S�','Namibie'),
('L�v\�}O\0�g\�\n','Nauru'),
('\� � �LO���z\�\'l\�','Népal'),
('\�W��8N��g\Z\�ή>','Nicaragua'),
('�\�pNM\n�\�s|���','Niger'),
('�\�z�F\��־�\�Uk�','Nigéria'),
('젒�H\�\�].�\�','Niué'),
('|��\�W\�E��Ś��Q=d','Norvège'),
('���b\�Mr�LTl\Z\�','Nouvelle-Calédonie'),
('�k\�A�B\�v\�\�>\�|','Nouvelle-Zélande'),
('Z4�\�\�\�D\�\�ǧ\�O+\�','Oman'),
('���8ŠIC�\'��8$�','Ouganda'),
('�1W|vN����fe�\�','Ouzbékistan'),
('W\�\�Η�B��\�\�\�\�<hx','Pakistan'),
('�$\�\'\0\�K ��l���x�','Palaos'),
('��`�\�MS�7\��\�','Panama'),
('#��V\�G��k\�ʛJ9','Papouasie-Nouvelle-Guinée'),
('\�\�<\�gJ+�?*\�\�C�','Paraguay'),
('C_P&UFF�n]\��','Pays-Bas'),
('��bE\��S��\�','Pérou'),
('͍dg�G��W�\�\�\0W','Philippines'),
('׷u\�TE:�+��\'�	�','Pitcairn'),
('\� ӒqPK��\\(�b�	p','Pologne'),
('(\�7I^�\�\�xכ\�','Polynésie Française'),
('�CiB7\�J`�\�\"v\�,F\�','Porto Rico'),
('C \0���L�qm��)h�','Portugal'),
('y0��L\�{�L\�͢o','Qatar'),
('&\�\�B�D��W\�[>�\�\�','République Arabe Syrienne'),
('�-1K�G��VIC@�','République Centrafricaine'),
('U�,67�Bs���!* \�','République de Corée'),
('j6�?\��Ke�\��5)�','République de Moldova'),
('�cL�7\rJk��YWr�','République Démocratique du Congo'),
('\�UJ�OL��ɛ6ސ2�','République Démocratique Populaire Lao'),
('�\�p_\�\�I��\�<ξ8','République Dominicaine'),
('&�>���Gq��\�\�#hZ','République du Congo'),
('\�%�z\�@���@v��\�','République Islamique d\'Iran'),
('*\�dA��$8\�\�\��H','République Populaire Démocratique de Corée'),
('(j�@\�8@盠p���\�5','République Tchèque'),
('\�4\�\�AJ\�\�����','République-Unie de Tanzanie'),
('�h�K\�9B���b�� ','Réunion'),
('\�)��l�K��Y\�\�S\�p','Roumanie'),
('�Y\�\�[Bc�:�`Xp','Royaume-Uni'),
('uL�%DG���}��[$\�','Rwanda'),
('\�i�C��H^�뎍u��','Sahara Occidental'),
('@\�\�q\�0L:�\'��)\��','Saint-Kitts-et-Nevis'),
('�򢁕�Oܚ\'��u�','Saint-Marin'),
('�[��Z�K\0�\�U�f\��','Saint-Pierre-et-Miquelon'),
('G\�h\\\�M|��\�?��3','Saint-Siège (état de la Cité du Vatican)'),
('#\�^ߗWKR����Ы�\�','Saint-Vincent-et-les Grenadines'),
(';i���H���X�]<\�_','Sainte-Hélène'),
('���_�3F��df;*/�','Sainte-Lucie'),
('��\�,G�Kՠ���et(h','Samoa'),
('��C�$�@=��\�z��u','Samoa Américaines'),
('>�x�:5L\�\n>\n���','Sao Tomé-et-Principe'),
('ݹŬ��Hi��ݼ@�I\�','Sénégal'),
('P�\�+#\�F��Qf�$\�m\Z','Serbie-et-Monténégro'),
('_�	��\�FD�o{�^�l','Seychelles'),
(':\�\'KM^�?����\"^','Sierra Leone'),
('*�\r�\�M �;\�ς�4','Singapour'),
('\�9��F>��	*�\�D�','Slovaquie'),
('\�o\�xq�KĊ�k>`ܺ�','Slovénie'),
('�E\�q�QO؅AÜG\�\\','Somalie'),
('�6R\�i�K`�\'���ޡ9','Soudan'),
('v\�Mj�@Z��\��\�>','Sri Lanka'),
('&��\�uC\"���Hw�\�','Suède'),
('�k2͖EH\�\�>�|\�\r`','Suisse'),
('\�DM��E[�C\�B6\'\�G','Suriname'),
('|Z\�\�N�H۸p��\�\�\�','Svalbard etÎle Jan Mayen'),
('! H^=Gŵ�\�msܺ�','Swaziland'),
('חq�lfO�� ��L\�\��','Tadjikistan'),
('�Ō\�+�DE�~�֖\�W','Taïwan'),
('u~\�ퟝN���{hK�','Tchad'),
('�\�ޏ>Ne�\�\�+\\i+�','Terres Australes Françaises'),
('PP�A���\�q\�	�','Territoire Britannique de l\'Océan Indien'),
('@2�\���O���0��$\�5','Territoire Palestinien Occupé'),
('\�5o�YJ쪖\�_\�\��','Thaïlande'),
('�\0�\�M؝��\�oV\�','Timor-Leste'),
('�&p\�`VF���Z\�Ϥ','Togo'),
('\'[\r`�L��B8\�XlQ�','Tokelau'),
('bj\n\�H��?<�m9[','Tonga'),
('G\�z\�CM|�=����\�F','Trinité-et-Tobago'),
('ڙ\�\��\�Fj�ڕ�\�\�Fa','Tunisie'),
('��\r$\�\�@���lC\�','Turkménistan'),
(')g�0\�I}�u�e��s','Turquie'),
('l����@<�\��\�W\�/','Tuvalu'),
('~̼�ͲM�(8Iɷ̴','Ukraine'),
('F\��n�gI����\�\�0\�L','Uruguay'),
('\�\�i�k�Mw��\0fn\�#\�','Vanuatu'),
('i�B�\�FZ�\�\�=\�z\�D','Venezuela'),
('��*�\':N��\�6\"�\�','Viet Nam'),
('BXc��\�L���.��U�s','Wallis et Futuna'),
('\�S\�Wa.J_�m#\�(\��','Yémen'),
('(�\�\nMLݟ\�\�u0','Zambie'),
('-�\�˯I\�\��@B','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-08-02 19:19:31',3),
('DoctrineMigrations\\Version20240201152951','2024-08-02 19:19:31',3),
('DoctrineMigrations\\Version20240202084749','2024-08-02 19:19:31',2),
('DoctrineMigrations\\Version20240202150901','2024-08-02 19:19:31',2),
('DoctrineMigrations\\Version20240207105701','2024-08-02 19:19:31',3),
('DoctrineMigrations\\Version20240319212437','2024-08-02 19:19:31',2),
('DoctrineMigrations\\Version20240614133504','2024-08-02 19:19:31',12),
('DoctrineMigrations\\Version20240617165906','2024-08-02 19:19:31',8),
('DoctrineMigrations\\Version20240708061729','2024-08-02 19:19:31',12),
('DoctrineMigrations\\Version20240801202153','2024-08-02 19:19:31',3);
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

-- Dump completed on 2024-08-02 19:19:33

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
('4�帥\�C݈<nw.\�\�+','Afghanistan'),
(' \�}@\�vC���\�3c#','Afrique du Sud'),
('\�i\�B��٧\�(.V\�','Albanie'),
('�﯃\rqG8�\�̊��$~','Algérie'),
(';�V!LN�Y(V\�\�ۊ','Allemagne'),
('e`\�Y\�KL��\�\�6?%z	','Andorre'),
('�0̫;Bc���v�\n\�\�','Angola'),
('�\�w�\�K䯑\�c\��I\�','Anguilla'),
('����\�K`�,5�S�\�','Antarctique'),
('\�+&\�A\\��\�\�\Z#�','Antigua-et-Barbuda'),
('.?S\���K����\�,P\0@','Antilles Néerlandaises'),
('�h�.)�AL�\0��N\�$','Arabie Saoudite'),
('�\�\'\�@@/��M�Ԙ\�','Argentine'),
('\��CY6M�\�\��U�','Arménie'),
('��\�牁FV�ND�\�\�l','Aruba'),
('?�\�\ZA�\�\�\�y�W','Australie'),
('��C3\�]B��i�v','Autriche'),
('Y\�S\�C��Ԩ�n˳','Azerbaïdjan'),
('}�ogA]�ۮ�\�0Gv','Bahamas'),
('��i���G\��Nq*{','Bahreïn'),
('��۹\�KJ�(\�\�_�0\'','Bangladesh'),
('xJk �OA�\�T�\�N','Barbade'),
('sr\�<s=Ng�\�5\�j��','Bélarus'),
('��\��+IX��`]u\�','Belgique'),
('\�ubH��\�қ=\���','Belize'),
('\�$=_J@��ŠZ\�\�','Bénin'),
('\\�|�n>Kˣ\�r�Xg+�','Bermudes'),
('T�/\�C��m\�T!','Bhoutan'),
('2T�\�\n5C����#�Ih,','Bolivie'),
('ƀ\��\�L�y^�`窆','Bosnie-Herzégovine'),
('\�j��\0E3�\���\�w�','Botswana'),
('\�`{�H`IŨ����C\�.','Brésil'),
('\�Lch8>L莯+@H�','Brunéi Darussalam'),
('\�F\�!\�kLl�\��g\��k','Bulgarie'),
('�\�CN��Nd�\�\�hsr�S','Burkina Faso'),
('sڟo\'7@3�\�4Wn	<','Burundi'),
('\�\�HčF�\�\�\r&\�\�\�','Cambodge'),
('}\"\�K\�M�\�\�\�^N��','Cameroun'),
('�k\���I��}\�ÔZ,','Canada'),
('\�\�\�_.\�L��\��\�7�','Cap-vert'),
('��i�+�NĞ\�\�쬉m\�','Chili'),
('\�*j�\��A��(�~\Z�','Chine'),
('#�\�uI�I�K:�O�C','Chypre'),
('6�\�C�MHX�\�}�cN','Colombie'),
('/�w\�#\�Hԗn`\�L�+g','Comores'),
('T��}\ZAݡ�^Ǜ\�6�','Costa Rica'),
('F��\�7Dc�J�i\�܏','Côte d\'Ivoire'),
(']\�;\�C9�\�\�Q\��','Croatie'),
('\�,<Ʊ\�Nf��C\�ScL','Cuba'),
('s8؊<II��6���(�','Danemark'),
('r\�!QYvA��b���wF\�','Djibouti'),
('�xWۓO̺�\0\r��1','Dominique'),
('��\�cCK&�`�;a�#i','Égypte'),
('X��.�D/�\�\�׊�','El Salvador'),
('{kܿ5\�L	�w�MV\�.�','Émirats Arabes Unis'),
('P㯺\�&@r�z\�;\�\\\�\�','Équateur'),
('A\�\Z�;M^�e���-@[','Érythrée'),
('\�[�(\n\�Ke�)߹.\�\�','Espagne'),
('\�\�&G�aF̓@�\�نǧ','Estonie'),
('.E�\"sHF��\�ȋ\�҄','États Fédérés de Micronésie'),
('{nZҽG\�\�\�\�٬\�\�','États-Unis'),
('\�OˆED�y/0k\\�\�','Éthiopie'),
('�-\�+G7��u\��.','Fédération de Russie'),
('^r\�dJ��VZYr5\� ','Fidji'),
('���I^Cȵ3�:\�\�?','Finlande'),
('�\�^��H*�]\�\�+���','France'),
('|·:\nAs�L$\�m�\�','Gabon'),
('c��\�\�Iۊɡ\�v@D','Gambie'),
('[)����Dܫ�1�cV\'V','Géorgie'),
(']\�P\�{�M���#{)','Géorgie du Sud et les Îles Sandwich du Sud'),
('\�3�\�B���+\�\�lך','Ghana'),
('�\�+>gA���V�LZO;','Gibraltar'),
('u�\�X0G����\��g','Grèce'),
('zE\�\"-@����I�=�','Grenade'),
('�!_\��\�E��1\"\�ց%','Groenland'),
('\�[`n��D��܂m\�\�\�','Guadeloupe'),
('�3{�.@*�\�\�9\�tn','Guam'),
('�n\n�\�\�I@�ly�7','Guatemala'),
('\r�b�ZLȡ\�`S�w8�','Guinée'),
('{܎J\�\�M��/.2\�hg','Guinée Équatoriale'),
('�\�\��\�jB\'�|k\�J\�&','Guinée-Bissau'),
('\�<�\�HDH�\�1�\rs','Guyana'),
('\�1$�UF�%�\�\�','Guyane Française'),
('\�#\�s�O�v:,\�\�\�r','Haïti'),
('Toөa�C͇.�L1(�','Honduras'),
('4 ~4G&���\�Wbד','Hong-Kong'),
('�Ū,�@*�߰h\0��\�','Hongrie'),
('7ʀ�\�K\"�z掃���','Île Bouvet'),
('�82O\�mN��*�\��)','Île Christmas'),
('e/W�dBޣ\�%��xO','Île de Man'),
('	+\�-d\�G�����\�\�','Île Norfolk'),
('_qGk�mB�\�Y\�x#','Îles (malvinas) Falkland'),
('$�	�3�Ka�9\�!\�W�\�','Îles Åland'),
('���\�\�uFH��L�\�M�h','Îles Caïmanes'),
('SQ\\2<M9�|(s�YI','Îles Cocos (Keeling)'),
('��m~uNQ�\�\�\�\�g�\�','Îles Cook'),
('�x\n�~:O\�Q�:\�5^','Îles Féroé'),
('\�G�V\�L�=D��','Îles Heard et Mcdonald'),
('v�]3�Bǀ�f�J\�','Îles Mariannes du Nord'),
('L�d�(E��Eoё��$','Îles Marshall'),
('�\�\�\�[EБ�I3y�','Îles Mineures Éloignées des États-Unis'),
('W\"\�\�%I���\�G�3�','Îles Salomon'),
('�=P��F8�d�7�\�U�','Îles Turks et Caïques'),
('q%\�$7H9�j>`ϙ�','Îles Vierges Britanniques'),
('\0\�7j~O��&\�0L\�','Îles Vierges des États-Unis'),
('\�\��2�zA\�6Ӿ}\�[\�','Inde'),
('�mHDO3N��\�8�\�ɱ[','Indonésie'),
('�5)~��C��x\�w\�*�4','Iraq'),
('��ѶOHϝ\�\�:\��1','Irlande'),
('��.\��N��!��\���','Islande'),
('�\�D�I�L������FT','Israël'),
('�\�#rR!H���P>Z�\�','Italie'),
('&�\\�څ@C�e\�t��}','Jamahiriya Arabe Libyenne'),
('�ެ��SJ�����\��','Jamaïque'),
(':��Nȋ���\�\0�~','Japon'),
('I!�p\�N3�\�D�>�','Jordanie'),
('\�	\�X@�}Y\�\�]d','Kazakhstan'),
('	�\�\�C�F��%�\ZP6\�\�','Kenya'),
('\�]��~\�Jܜe��\�p�','Kirghizistan'),
(';JhNΌ�ӕ{�\�\�','Kiribati'),
('�T&v\�Ha�y~V�\r�','Koweït'),
(' \��F��L\�\�\�Ѵ,%+','L\'ex-République Yougoslave de Macédoine'),
('\�\��5U�I��ɀ2�\\j','Lesotho'),
('ukO�_\�M@��wȠ�P�','Lettonie'),
('\��n܏I������g','Liban'),
(',jO\�\�G��n��iuf�','Libéria'),
('C�B!hH��Dz��˹','Liechtenstein'),
('��8��MG�(�\'�\�\n�','Lituanie'),
('�v\�がO-�\�^�\�iT�','Luxembourg'),
('\�L)�ْE���\��\��','Macao'),
('\�\0\�;�jN���\"\��1K','Madagascar'),
('3\�U\�,�C\"�}e�\�+]�','Malaisie'),
('�.&�YNN��}hzm\��\�','Malawi'),
('�Q\'�K#����N#�\�','Maldives'),
('\����A�E\�̍\�C�$�','Mali'),
('c{�L`G��\���Y/#','Malte'),
('Ad\�t3\�L��h��$���','Maroc'),
('1\�7[Cr@��!\�\�֪\�','Martinique'),
('/\"��Lj���P�7','Maurice'),
('��t\�\�KN���A\�d�V','Mauritanie'),
('�Dg�$(H��p<\�Z�','Mayotte'),
('\�\�-{H|��\��\n��T','Mexique'),
('��V�79I#�am\�>9�','Monaco'),
('Sb\�5JE7�\Z\�<�\�<','Mongolie'),
('�B���@뱛�0��ps','Montserrat'),
('gD�\�HE��\�\�H\�\�+','Mozambique'),
('�\\C+nDO�@En\�Fe','Myanmar'),
('A\��E\�b^с)\�K','Namibie'),
('PT\�G�wL��.�l;a@','Nauru'),
('\�8nx�J�(�X\�Oj\�','Népal'),
('��q�D	�Y=s\�C0','Nicaragua'),
('@Y\�P}D��q\�`�\�','Niger'),
('l\�@@\�\�A_��C�~͂�','Nigéria'),
('�#��F2@\"�x3S\�Y\�','Niué'),
('m\��)\��J��P|\����T','Norvège'),
('m�.-Q�B��\�aq˄�K','Nouvelle-Calédonie'),
('	Ha8O\���4@gv��','Nouvelle-Zélande'),
(' �ӜGMO����\�\��s','Oman'),
('q4�\�F��{A���^?','Ouganda'),
('�Gu#o�A��V\�>�\�\�z','Ouzbékistan'),
('�<TWF��\�\�h晊<','Pakistan'),
('w�(�C9�\�MmGq��','Palaos'),
('\�_\�AGeF��	��d\�|','Panama'),
('\�\�)�\'�J�\n�\���Ռ','Papouasie-Nouvelle-Guinée'),
('!2�\�Cخ�\�@6\�\�','Paraguay'),
('.�\�\�q@`���p\�\�[\�','Pays-Bas'),
('&+\�\�:Cz�J\�\�Q44\�','Pérou'),
('>�\�b@��)�KX\�\�','Philippines'),
('\�1L\�+\�I[�\0\�\0\�\�','Pitcairn'),
('Gs<�L2�\�C`\"Ł ','Pologne'),
('\��\�<I��im�=��&','Polynésie Française'),
('�]�GC�#۾�\�','Porto Rico'),
('.�\�x\�ILi���?\�$6�','Portugal'),
(')/[F�N�� \�����\�','Qatar'),
('{:PN\�j\�\�\�\�\��','République Arabe Syrienne'),
('\��#�K��6�p	^\�\'','République Centrafricaine'),
('�V\"��@��Us�~l\�R','République de Corée'),
('\�Z]2(KΗ�	 \�G�_','République de Moldova'),
('7M�Ow\�H��\�*�\�y�','République Démocratique du Congo'),
('�Qz\�\�C#�-�o\�','République Démocratique Populaire Lao'),
('g�3\�F�Ab�&�+\n�+�','République Dominicaine'),
('W\�,bsYL��T3���','République du Congo'),
('\�\�\�\�>G\�\�=ھ\�\�','République Islamique d\'Iran'),
('\�5b\ZWNe�\��x�r3�','République Populaire Démocratique de Corée'),
('�\�:�J F��m\�\�с^','République Tchèque'),
('d$GԸK\�r0$�ĥ','République-Unie de Tanzanie'),
('\���ɃqH\0��,�E��','Réunion'),
('t\�4\�N\�1�L\�9W�','Roumanie'),
('�-\�^CLE�\�j��\�\��','Royaume-Uni'),
('coU=�E퍞)i0�_','Rwanda'),
('n{\�*_Oi����\�=w\�','Sahara Occidental'),
('\0\�\�\�hNE���e�R\�P','Saint-Kitts-et-Nevis'),
('�����H~�z\�s�','Saint-Marin'),
('�\�\�np�ER�m(�#?�\�','Saint-Pierre-et-Miquelon'),
('\��/zML���ēH�','Saint-Siège (état de la Cité du Vatican)'),
('\�	\"P\�N�r�\� \�!{','Saint-Vincent-et-les Grenadines'),
('X@���?Di�(���\�\�','Sainte-Hélène'),
('0�i3+\�LU��~\�L�R','Sainte-Lucie'),
('�\�(h\�B�I vZ��I','Samoa'),
('���\�C\�MD�\�w\�:�','Samoa Américaines'),
('�\�|\\\�J��� [ؾ#]','Sao Tomé-et-Principe'),
('.\n�\�<B�)ej\�U ','Sénégal'),
('\�\�+�C�t\0\�b\��','Serbie-et-Monténégro'),
('�ݪ\"d7G��\�6q^\0>@','Seychelles'),
('֍F\�I��&��x�+','Sierra Leone'),
('��W�a G�\�{��\�\�','Singapour'),
('\r�9\�\�l@8�|\�>,6\�','Slovaquie'),
('5�\�fE �.ÿ�g�-','Slovénie'),
('�\��\�`�F���{V','Somalie'),
('JA�X\�XM!��\�IQ\��','Soudan'),
('�\�J���@����ê�\�\�','Sri Lanka'),
('^6�\�\��K�����\�UM','Suède'),
('�`9\�\�)J�b�q%�ou','Suisse'),
('^\0as\�B��\�0i�\�A','Suriname'),
('\�w�\�~G񙉘֪N3�','Svalbard etÎle Jan Mayen'),
('\�F�)X7I���\�%\�\�\�','Swaziland'),
('ЩV)\�AE�#\r\�vzg','Tadjikistan'),
('\�*\�q\�H�d|�i\n/\�','Taïwan'),
('[o\�;&\�L!��\�ةS�','Tchad'),
('p[KR\�)NR��\�\�\��','Terres Australes Françaises'),
('9���P\�O\"�i!Ξ\�~','Territoire Britannique de l\'Océan Indien'),
('���\�jJ<�?\�U\'},�','Territoire Palestinien Occupé'),
('�\��ȓJq�Q���\�u','Thaïlande'),
('y\�yR\�Aٝ0\�P�\� ','Timor-Leste'),
('Y\�\�]mIm�\�^*�^!�','Togo'),
('�\�j|�B���C\�F�1','Tokelau'),
('\�N1QG+�z�\�G�\�','Tonga'),
('\���a�N:����+�`A','Trinité-et-Tobago'),
(' ws\r\�Gѧ��\�@]\�','Tunisie'),
('\'7\�<MM �\�T�\0\�I','Turkménistan'),
('���\�A�H8�/�5\Z#\�','Turquie'),
('I���ȗCE��\"�\�Ԣ','Tuvalu'),
('|��\�\�J\�`��;','Ukraine'),
('CE�A��A���Cŝu','Uruguay'),
('��+�M͘�\�\n\�\�','Vanuatu'),
('Ӷ�c�LN{��}Xc�','Venezuela'),
('��\�gpM�HmD:*�','Viet Nam'),
('_s�^)H�8ΔސF�','Wallis et Futuna'),
('0F�i\"D�\�1\�N\�{�','Yémen'),
('>m�\�\�\�L.�n\r4��8e','Zambie'),
('�m�{[:Ep�ĝqek\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-09-15 09:08:39',3),
('DoctrineMigrations\\Version20240201152951','2024-09-15 09:08:39',1),
('DoctrineMigrations\\Version20240202084749','2024-09-15 09:08:39',3),
('DoctrineMigrations\\Version20240202150901','2024-09-15 09:08:39',2),
('DoctrineMigrations\\Version20240207105701','2024-09-15 09:08:39',2),
('DoctrineMigrations\\Version20240319212437','2024-09-15 09:08:39',2),
('DoctrineMigrations\\Version20240614133504','2024-09-15 09:08:39',10),
('DoctrineMigrations\\Version20240617165906','2024-09-15 09:08:39',7),
('DoctrineMigrations\\Version20240708061729','2024-09-15 09:08:39',12),
('DoctrineMigrations\\Version20240801202153','2024-09-15 09:08:39',3),
('DoctrineMigrations\\Version20240815153823','2024-09-15 09:08:39',2);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-09-15 09:08:40');
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

-- Dump completed on 2024-09-15  9:08:41

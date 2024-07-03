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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-06-24',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-06-24',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-06-24',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-06-24',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-06-24',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-06-24',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-06-24',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-06-24',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-06-24',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-06-24',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-06-24',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-06-24',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-06-24',NULL);
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
('�\�\�\�X@\r�\\{�x','Afghanistan'),
('\�\�\�AàJ��ܙ�{�>\�','Afrique du Sud'),
('�\�.\��)@q�h���\�~4','Albanie'),
('T%�\�I-�4E/�\�\�Q','Algérie'),
('���Q�O���\�v6\�\�\�','Allemagne'),
('a�t�hB\�L�$A�','Andorre'),
('8k��)aI%��\�\�M�m�','Angola'),
('b\"\�\�XA��\�A�_n','Anguilla'),
('Z0�+�2J��Q\\]\�9Z','Antarctique'),
('\�XٜO��UE\�\�Gu)','Antigua-et-Barbuda'),
('0��O��Al����rmL�','Antilles Néerlandaises'),
('\Z\�� �\�NM��\�4�m\�','Arabie Saoudite'),
('\�L!\0\�/K��k؛\�\�','Argentine'),
(';�(:\��G1�\�-�c\Z','Arménie'),
('Ce\�`dK��\�s	~\�œ','Aruba'),
('\Z+�9\�Jq�qX2\��','Australie'),
('\�Z¯\�yF�����9�o;','Autriche'),
('H�+\�RO�~�\0)\�','Azerbaïdjan'),
('_��J]\�Dj�I�\�Ӵ�\�','Bahamas'),
('v����I3���k\�u��','Bahreïn'),
('G	ʦ\�`I洞m�jA.�','Bangladesh'),
('\'\�\�T\�H�FK\�I�i','Barbade'),
('�d4\�SO�+�\�\�\��','Bélarus'),
('\�9\�\�$�CS�\"�\�$\Z5','Belgique'),
(' �\n;B���\�\�_Jy','Belize'),
('\�K��\�)Lȃ_�\�T\�P','Bénin'),
('�wձ~�BB��\�\��','Bermudes'),
('��\Z-%UI��\�#�Q�','Bhoutan'),
('�CG�N\�D܀d|\�x��\n','Bolivie'),
('\�kTj@���\n�l׍','Bosnie-Herzégovine'),
('$�\�\���@t���/1�\�*','Botswana'),
('�L�LD\�|\�چ~�\�','Brésil'),
('Y�e�^(Jv��\�8-�I','Brunéi Darussalam'),
('϶�L�K��\�\'��h\�','Bulgarie'),
('3Fj�\�(@\'���\�Dm','Burkina Faso'),
('׿эGI�~5�s\�\�$','Burundi'),
('�1쁌N����hf��','Cambodge'),
('c�\��\�\�D���~����9','Cameroun'),
('�q�*��E���\�x�j\�','Canada'),
('\�oq\�ۉH˭q�BZZN','Cap-vert'),
('�˿\�\�N��&^\�\�-','Chili'),
('\�\��\�\�K��wf=��','Chine'),
('{:ђ�\�BN�\�\�A`��d','Chypre'),
('H9�\���HČ\n\�rp%h[','Colombie'),
('�<\�d�F���ݙ�}ŧ','Comores'),
('�µ�G��\�\�L\�}\�','Costa Rica'),
('�7KnhZE\�\rpK�^\'k','Côte d\'Ivoire'),
('\�\���L�Cѥ-\�a\�5\�','Croatie'),
('�\n\�t�^@:�If�&;ב','Cuba'),
('��n`H^G���\�+\�\�','Danemark'),
('�SE�PHy���\'8E�T','Djibouti'),
('\�he.^E\���|ާ�Sc','Dominique'),
('��<\�\�F���\�wr\�\�','Égypte'),
('��3ƐgB�o�Ǧϸ-','El Salvador'),
('5\�eN�bM�����*\��','Émirats Arabes Unis'),
('�A���vFǯv��{�','Équateur'),
('J?���C\�ς��[<�','Érythrée'),
('\�\�\�\�I\�A��0�\�ܳ�','Espagne'),
('T��N.J\��\�JL\�l','Estonie'),
('\��:\�M ����B%`\�','États Fédérés de Micronésie'),
('\"w\�(j\�G\�R.�Tj','États-Unis'),
('\���P��O\���MQ�t(�','Éthiopie'),
('\�\�f\�-`@\�灱J�\�\�','Fédération de Russie'),
('~4k���G��+\�j�\�','Fidji'),
('\�zP��pIe����&','Finlande'),
('�\�.nC �8�\�@\�d\�','France'),
('y�~b\�B��\�~;��Z\�','Gabon'),
('�\�o\��\�G|�\�ڷ7L\'','Gambie'),
('�g\���Eޒ��H\��H\�','Géorgie'),
('mqq�9\�I�	�l�\��','Géorgie du Sud et les Îles Sandwich du Sud'),
('I\�TZ\��G��VSg\�\�DE','Ghana'),
('\�\�\�ĂL���4\rF�\�\�','Gibraltar'),
('�̀75M��#rTť�o','Grèce'),
('�,\�\�DNÇ�\�CG\�خ','Grenade'),
('nK,8�A6�\�$�j�','Groenland'),
('O�ӭ�\�D��i+𐃉','Guadeloupe'),
('\�{�MIE���?�t\�\�','Guam'),
('��i\��B����\�,�','Guatemala'),
('W���\�D̟�NS�\�n?','Guinée'),
('A�\�}�@�w00�;B','Guinée Équatoriale'),
(']\�?<EE�\�L;`\�','Guinée-Bissau'),
('���kMG��F0xY�Vs','Guyana'),
('��\�xRG����ӪL�u','Guyane Française'),
('~hZ\�tB��1x��','Haïti'),
('��\��N��\�\�HI�\"8','Honduras'),
('�\�|0L��r�R?\�','Hong-Kong'),
('7�=�@ѭU�Z\�=^\�','Hongrie'),
('\��l��F1�������','Île Bouvet'),
(';E\�7$BB��rc���','Île Christmas'),
('V�)1\�\�BJ��!A�\�','Île de Man'),
('}\�t�t@T�\�ė��m\�','Île Norfolk'),
('�K\�\�+HE��@J\�\� ?\�','Îles (malvinas) Falkland'),
('c�(V�E�\�\�!\�4�','Îles Åland'),
('i��-�fG���\��\�\�','Îles Caïmanes'),
('S\�>�\�mGe�\�b�=C�\�','Îles Cocos (Keeling)'),
('L\�\�$�UJq���\�~��\�','Îles Cook'),
('�:�8#C��zp\�F^','Îles Féroé'),
('\�\�i\�L4�[-\�L^K�','Îles Heard et Mcdonald'),
('$)�i;p@u�J\�\�\�R\�','Îles Mariannes du Nord'),
('\�\�+4��F̝\���\�\�/�','Îles Marshall'),
('�\��\�H$�IҴ�Wb\�','Îles Mineures Éloignées des États-Unis'),
('�.\�\�\�E֨r}\�Ŕ�*','Îles Salomon'),
('K�}T\�MA�M\Z\�6','Îles Turks et Caïques'),
('\��`&�Ci�\�w�Z','Îles Vierges Britanniques'),
('�08�\"\�F��4�T\�x�','Îles Vierges des États-Unis'),
('xN\�R#�OQ�A`Q\�^�z','Inde'),
('���K*�Ae��:�w�m�','Indonésie'),
('­�-XF\'���^��>','Iraq'),
('K�S\�\�I$�mm��','Irlande'),
('\�\�\�C��I��\�c\�)\�','Islande'),
(':��q#@\�@tј>v�','Israël'),
(')$�v\�M|���','Italie'),
('q*y\�޶C��W�\�b)gy','Jamahiriya Arabe Libyenne'),
('\�{%%H��:��\�b��','Jamaïque'),
('�Bi$TH��|\�GMZ3','Japon'),
('��\�\�,\nM=��\��_�\n\�','Jordanie'),
('�A�\�+KU��0\�x\�)','Kazakhstan'),
('��I�m�F���hҰo��','Kenya'),
('�T\�DV�\�݇\�\�L\�','Kirghizistan'),
('\�5�\�\�F��:\�\�{\\','Kiribati'),
('\0�\�e	�H[�\�_\�t�','Koweït'),
('���H؅�\�n请o','L\'ex-République Yougoslave de Macédoine'),
('\�\�<f	B��O\�F\��','Lesotho'),
('�\�\�\\\�C	�N�rE\�5','Lettonie'),
('\����N4�Ic�w�\�\�','Liban'),
('_\�\�\��C��\�W31�','Libéria'),
('��� R@Ԭ�Mϝ\�F','Liechtenstein'),
('$�\�y�J@L��]<	\�','Lituanie'),
('C���ƑK\��ԝ��\�','Luxembourg'),
('I\�Ψ!E���$Liv\r�','Macao'),
('v��-�I`�f֢�\�N','Madagascar'),
('\'�\��5D �x9	\��\�E','Malaisie'),
('\�4\�̿Nc��>\�\�.��','Malawi'),
('zY��N���`뻅\�\�','Maldives'),
('I�\�|L��\�YCٽ�','Mali'),
('X�h<rJ`�s\Z�\�%�\�','Malte'),
('\�\�7�x�K6�`gc\�a\�','Maroc'),
('�<�j�M��V�g\���','Martinique'),
('�\�c�G͓�\�x\� �','Maurice'),
('��|pNŜ�\�#�\�_\�','Mauritanie'),
('�a\�˄E��\�?�d\\\�\0','Mayotte'),
('ڡqeE�Hz�P�W�\�d�','Mexique'),
('��\�\�A}����\�t��','Monaco'),
('�Ri}D	��\� )�\�','Mongolie'),
('��\�.ET��\�Q���Q','Montserrat'),
('\�G�\�iD��q\�]*#!','Mozambique'),
('Y�)��1DB��k�\�','Myanmar'),
('��^�U*I:���Iv\�\�','Namibie'),
('x \�n8Bo�	�\�󡡍','Nauru'),
('\����\�;LƐ\�u&\�\�\�\�','Népal'),
('\�\�V\rdRA˩?\�7/��','Nicaragua'),
('k��֏BQ��\�\0�U+','Niger'),
('\0SEN��@ݩg\r���j','Nigéria'),
('n���QE+���\�_I�','Niué'),
('P�N�mHL1��ć�ׁD','Norvège'),
('_\�H��gO����V�#@�','Nouvelle-Calédonie'),
('�Fu�G��ӱ+_J��','Nouvelle-Zélande'),
(',\�\��\rG��/�\�\�-\�','Oman'),
('i\�~�\'VE��`\�\�\�\�\�','Ouganda'),
('��P�@E��,\'+�+�=','Ouzbékistan'),
('T�p���K$���Umo','Pakistan'),
('G�6��NǬ�\�L�(\��','Palaos'),
('3��l�Oz��ZBe�\�R','Panama'),
('Ny\�E9�L8��\�\�7Ϯ','Papouasie-Nouvelle-Guinée'),
('\�\��>�H��!��ʻUA','Paraguay'),
('\�g]�\�C���U%�\�\�','Pays-Bas'),
('�9n��K���\�\��m','Pérou'),
('����Z4F����U��','Philippines'),
('v��F���\�U�,2\0','Pitcairn'),
('p:\�\0�Dr�)��\�4R\�','Pologne'),
('\�a\�u1O\�C���	\�\�','Polynésie Française'),
('\�Ց@%\�C�\0Z[�G�1','Porto Rico'),
('.;\�\�tDF�?���\�[','Portugal'),
('q2\�$@��e�ђS�T','Qatar'),
(']\�%�yF��	\r�L��\�','République Arabe Syrienne'),
('\��,\�\�@��qiozK�','République Centrafricaine'),
('�~9NFE���\�\�\�g','République de Corée'),
('٬\�<�2K˱�&�{�؃','République de Moldova'),
('\�\�z\�nK\�cD\'\�x�g','République Démocratique du Congo'),
('��T�:\\Ar�$Y\�.`H\�','République Démocratique Populaire Lao'),
('s\�.t5H�����P\�\�\�','République Dominicaine'),
('m�{\ZuLg�\0\�E�P7','République du Congo'),
('�\"ܒѾCu�x~f9�s','République Islamique d\'Iran'),
('.Θ0ڸE]���\�\�\�','République Populaire Démocratique de Corée'),
('�U�\��GA��*�xѺ','République Tchèque'),
('�Q�f_B��1���\�d','République-Unie de Tanzanie'),
('+�{�gL��\�y��\�','Réunion'),
(' NS\�\�\�G��\�`L\"f','Roumanie'),
('!w9�I\�B}��\�ƾ0\�','Royaume-Uni'),
('\�\�\�_N��rM\�\�+�','Rwanda'),
('m7�}�.OQ��8���\�\�','Sahara Occidental'),
('4;n,F�\�\�Y�<\�','Saint-Kitts-et-Nevis'),
('\�\�6�\�M\�\�y���(','Saint-Marin'),
('�~\��\0Hc�E�\��|�','Saint-Pierre-et-Miquelon'),
('\��{P_IMė\�\�S�~�','Saint-Siège (état de la Cité du Vatican)'),
('�~@༔C����o\�\�D^','Saint-Vincent-et-les Grenadines'),
('#��5\0E@�wZ\�g¥�','Sainte-Hélène'),
('j�s\���Iؒ���\�S\�','Sainte-Lucie'),
('\�\�.\rxN#��m\�\�\��','Samoa'),
('+\��;�LK@���#7t','Samoa Américaines'),
('��;\\�K\\��\�\��A','Sao Tomé-et-Principe'),
('\0\�\�V7C�\�\�a\�\�\�_','Sénégal'),
('\�ĮФFQ��j Ƹ&','Serbie-et-Monténégro'),
('w\�gcLM��Q�\�\�>�','Seychelles'),
('\���2O��L:�\�u\�^','Sierra Leone'),
('\�Ϸd\�yC�\��\�\�\�H','Singapour'),
('\�t9&�\ZB��-l\��Q�','Slovaquie'),
('�S6Iӂ\�m�\�]�','Slovénie'),
('�9�x\�XB��_�b�\�*\�','Somalie'),
('(҇\�tSA\�p*5g�3�','Soudan'),
('���\�c\�B���44�\�\�','Sri Lanka'),
('9{�uCF٢���M�\�\�','Suède'),
('\�FN\�NIn�	���\�','Suisse'),
('\�I^�@ D��/�lϢ�A','Suriname'),
('+7/\�aFOΝ7\�\�\�\�','Svalbard etÎle Jan Mayen'),
(';\���N��F)��#�\�','Swaziland'),
('�K���J���(My[G','Tadjikistan'),
('\�K٩5E����\���b','Taïwan'),
('\�\�g\�<M��NCQr@\�','Tchad'),
('w\�²\�M���JPSy','Terres Australes Françaises'),
('!\�#�3�KᑰO�\�\�X\�','Territoire Britannique de l\'Océan Indien'),
('T�3���B\Z���o\Z�]','Territoire Palestinien Occupé'),
('֪�\�\�I]��\�[T_n�','Thaïlande'),
('K`?�`Ng��f\�RV','Timor-Leste'),
('YvB\�a�Bd��R\Z\'/\r','Togo'),
('1:WTgXAs�7\�e�w�','Tokelau'),
('\�b\�e\��J��\��p��','Tonga'),
('v4\�kq\ZE��\�C�_�`\�','Trinité-et-Tobago'),
('\�M�6vF/���X}\�\"\�','Tunisie'),
('c\�\' m\Z@+�>\�\�\�\�','Turkménistan'),
('ʖ�#T:Kc�ؖf�m\�6','Turquie'),
('W3sEU��\�\�\�!','Tuvalu'),
('C\����DU�}�u�\�','Ukraine'),
('\�`�D���\�K�','Uruguay'),
('?���߃EO�8\0�\�S�F','Vanuatu'),
('�u\�\�\�BEy��\�\�MZ\�\�','Venezuela'),
('(c��~F���\�d\�f','Viet Nam'),
('9�ƮUF\�T�F�\�՘','Wallis et Futuna'),
('}z6PWI`��\�jz��','Yémen'),
('p\�*�C\�I��2N�{QZ','Zambie'),
('a�b�]�Dw�\�\�B�<','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-06-24 20:32:29',3),
('DoctrineMigrations\\Version20240201152951','2024-06-24 20:32:29',2),
('DoctrineMigrations\\Version20240202084749','2024-06-24 20:32:29',2),
('DoctrineMigrations\\Version20240202150901','2024-06-24 20:32:29',2),
('DoctrineMigrations\\Version20240207105701','2024-06-24 20:32:29',3),
('DoctrineMigrations\\Version20240319212437','2024-06-24 20:32:29',2),
('DoctrineMigrations\\Version20240614133504','2024-06-24 20:32:29',12),
('DoctrineMigrations\\Version20240617165906','2024-06-24 20:32:29',7);
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

-- Dump completed on 2024-06-24 20:32:31

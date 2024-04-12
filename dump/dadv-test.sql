-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB-1:10.11.7+maria~ubu2204

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
  `owner_id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  `tasted_at` date DEFAULT NULL COMMENT '(DC2Type:date_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99,'2024-04-10',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99,'2024-04-10',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99,'2024-04-10',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99,'2024-04-10',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','\�o;ԈC����\�\nl','France',1599.99,'2024-04-10',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'\�o;ԈC����\�\nl','France',358.99,'2024-04-10',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99,'2024-04-10',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99,'2024-04-10',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','\�NE\�DԍB\�\�\�a�','United States',199.99,'2024-04-10',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99,'2024-04-10',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99,'2024-04-10',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99,'2024-04-10',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99,'2024-04-10',NULL);
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
('�>^\� �L���\�?m\�','Afghanistan'),
('\r|mг�I<�\�\�P,߱','Afrique du Sud'),
(')(x�Gэ\��g���','Albanie'),
('C֖�/A��h�\�Ku\�','Algérie'),
('�i�A\�-D΋\�\���W�','Allemagne'),
('�s	�=T@N��r�Om','Andorre'),
('\�ǥ�K\���+��p�K','Angola'),
('�[��HF�3�w\�','Anguilla'),
('\r9��\�A��I�\n��','Antarctique'),
(',8Z�Au�\'\�\�\�2�','Antigua-et-Barbuda'),
('\�\�N�\�K��݊5\�[','Antilles Néerlandaises'),
('p\�а1N��\�\�\�\�+','Arabie Saoudite'),
('�]\�O\�\�H\�\�\0���\�','Argentine'),
('�p\�4\�\�I�o\n`\�\�\�','Arménie'),
('�)\�*Au���\�C,@\'','Aruba'),
('f\�#�K��ޓ\�є�\�','Australie'),
('^^ͅ�5LQ�\n۹V�6\�','Autriche'),
('\�\�*��@����cI~','Azerbaïdjan'),
('_I\�e@L��$�\�0\�4','Bahamas'),
('�*�\"�\�@@�	�\�\�Ժ�','Bahreïn'),
('\�]�<HCƛM��/{\�\�','Bangladesh'),
('1\�\�d�\�Mb�\�rӱhR','Barbade'),
('\�wq�T\�K\��p\�u\�\�N','Bélarus'),
('}(�\�Jx�U�\�\�','Belgique'),
('\�}#R;N��\�j6\�ۣ','Belize'),
('\���s\�\�A��+\��L�$','Bénin'),
('\�\�\�4\�]J���F\�M	','Bermudes'),
('̉���:A\�\�N\�}','Bhoutan'),
('z\�8J���\�d.�T\�','Bolivie'),
('N\�!\���ED�\��\�\�.�\�','Bosnie-Herzégovine'),
('\��M�FA��H�n','Botswana'),
('��\�ϨuL6�0\�\�\�\�S\�','Brésil'),
('�Ġ��Jr�9~\��N','Brunéi Darussalam'),
('�݉�#N����+h\�','Bulgarie'),
('\��RL���~\�Uu�\"','Burkina Faso'),
(',yCn�J׵\����q\�','Burundi'),
('�\r\�\�B\�����\�n','Cambodge'),
('�k\�!\ruO��t\�\�3�','Cameroun'),
('�G�[7HB���W\�L�R\�','Canada'),
('M��iKC���\�Ԛk/v','Cap-vert'),
('T\�\�gM���h61��','Chili'),
('*�\�,JD4��RQ*���','Chine'),
('4μ[B����\\���m','Chypre'),
('�gL�\"\�B`�+��%\�\�','Colombie'),
('z�s\�ΐC����l�=�','Comores'),
('\�U.R5D*�\�\���\�','Costa Rica'),
('S(>�eF9��àh�t\�','Côte d\'Ivoire'),
('\Z-֛ \�D\�\Z�\�]�\�f','Croatie'),
('迃\�w\"M��K\r=Ûf\Z','Cuba'),
('\�!C\�\�wGʧ��\�\�\�','Danemark'),
('�^\rYd�@���kҒJ\�a','Djibouti'),
('�\�ʇ\��H\�\�ߋ\�\�\r\�','Dominique'),
('O�Z�y�Cf��\�g)�4�','Égypte'),
('\�\�TZ�\�Jk��;,PN\�','El Salvador'),
('\�*�\�Z_Li���n\��x\"','Émirats Arabes Unis'),
('\�T\�\�\�J\n�\�\�;�փ','Équateur'),
('b)�豮H۷MQ���\�H','Érythrée'),
('\�p\�F\�M��|f0VmmP','Espagne'),
('�\n\"�Ե@��\�\�\�Zd','Estonie'),
('5\��Iؤ~\Z\�0ɿ�','États Fédérés de Micronésie'),
('!���!H���_{Om#k','États-Unis'),
('\�u�\�\�?OO��k\��/\�`','Éthiopie'),
('u..���A����w��Ip','Fédération de Russie'),
('\�C��N��\�>�\�','Fidji'),
('\�0\�\�\�\�F+�֦ڀ\�\�5','Finlande'),
('I��o�H౱fA\�\�','France'),
('9ւ��B\�}q\r\�U\�','Gabon'),
('b�$�I��I)�UR|5','Gambie'),
('Q��zޚL���\�\�\�4','Géorgie'),
('�۰�L;�6\'\�\r\�\��','Géorgie du Sud et les Îles Sandwich du Sud'),
('0\��\�`C�\�r\��>��','Ghana'),
('m\�\�dW�B��\�\�\�\0\�P','Gibraltar'),
('\��:I��\�\"ݡ\�\�\�','Grèce'),
('�gHSNe�\�\�0�rG�','Grenade'),
('\�7���E�l�\�7\�','Groenland'),
('㣃�p:D��\�	# �7�','Guadeloupe'),
('Ӊ�q\�E��\�Q.��Ǽ','Guam'),
('\�\��]�B7�$�\�\\O','Guatemala'),
('\�\r\r�EE�V\n���O�','Guinée'),
('�:��R\\N��\�q\����','Guinée Équatoriale'),
('\��qTL��\�\�x�hn','Guinée-Bissau'),
(')G*\�.B��̿&�\�@�','Guyana'),
('\�ݙ\�1B;��W��\�','Guyane Française'),
('j~\�A�MC�2\��E\�V','Haïti'),
('_׼�ZG��D�.\r��','Honduras'),
('\�e�\�\�vIJ�\�a3Z','Hong-Kong'),
('�Xf1:\�EO�/�i�\0�9','Hongrie'),
('�r����L��4\�FB~~','Île Bouvet'),
('��m�\�\�H��<G%\�/HN','Île Christmas'),
('��Z\�q\ZM�}SAґ3B','Île de Man'),
('o��\'SK����\�ө','Île Norfolk'),
('�\�\�H�B\0�\�80l��\�','Îles (malvinas) Falkland'),
('n\��b\�\�@6�BM�[\�','Îles Åland'),
('\�\Z؛\�Dy�I�|�\�C','Îles Caïmanes'),
(';\�\'pY+M����/\'=�3','Îles Cocos (Keeling)'),
('���\�B��J�\��FP�','Îles Cook'),
('߼�~\�EE��N\�g3u','Îles Féroé'),
('|E���@����\�\�\rP�','Îles Heard et Mcdonald'),
('K(\��XVLØq�K\r\�kB','Îles Mariannes du Nord'),
('�c�5\�N.��T���m','Îles Marshall'),
('��\�@\�Lp��?u~\0��','Îles Mineures Éloignées des États-Unis'),
(' :P��G\'�Kex�b','Îles Salomon'),
('x��\�S�@\��ˈ*��','Îles Turks et Caïques'),
('R��D��J\�KA\n','Îles Vierges Britanniques'),
('\�\��@@�Hs��f\�1�17','Îles Vierges des États-Unis'),
('\�\�e1.\�C���\\g�\�','Inde'),
('��I�69@��`_���g','Indonésie'),
('i�\�;�Kگ_#\�\�4ch','Iraq'),
('0;\�b\�O\�.�F�D6','Irlande'),
('W�L�WK��23:��.','Islande'),
('��թ\��A\��\�\�\�\�F','Israël'),
('͈Z~M�\��\�X~','Italie'),
('_-\�9E�s���ׯy','Jamahiriya Arabe Libyenne'),
('9(?\�kG��A�\�\0�-�','Jamaïque'),
('m}InTJ_�\��x\�j','Japon'),
('~\�\�\n\�O��\�_�A�}�','Jordanie'),
('D�j�7EB\�Q?dum�','Kazakhstan'),
('M��1d\�K���W��+�]','Kenya'),
('p���\�wO��\�\� �P�P','Kirghizistan'),
(' 6\�_\�C!�Q\�6R\��','Kiribati'),
('��6�Mk�\�\�\�l4.\n','Koweït'),
('h��=(�G��\�N\�\�&\�\�','L\'ex-République Yougoslave de Macédoine'),
('\�\�y)�F6�%1��JK','Lesotho'),
('\��9?\�A��fV���','Lettonie'),
('g\��O�hH\"�\�i��-QO','Liban'),
('H\�v;�2E^�Uސ�Mh�','Libéria'),
('rh\�*�H|���,�q̯','Liechtenstein'),
('W�ӅBM�$�\\\'\�\�?','Lituanie'),
('\�\�\�}�O\��Qu\��yr]','Luxembourg'),
('is>sTQH�`xG�\�\�\�','Macao'),
('\��|%L��p\�\"\���','Madagascar'),
(':_\�\�\�E��DsD�\�\\�','Malaisie'),
('�z�Z\�n@�\�S��-#�','Malawi'),
('�\�\��F����\�\���f','Maldives'),
('��2SO@��cS�A,(9','Mali'),
('�^gCҺ��\�{��','Malte'),
('S�M�\�D���\�\�M\�Ǟ','Maroc'),
('X��\�\�E��SEp[O2�','Martinique'),
('5���J��R�5M��\�','Maurice'),
('�\��\n\�ZF\Z���\��','Mauritanie'),
('��2�E˩?9�҇^','Mayotte'),
('\�?\�L\n�V�u�8\��','Mexique'),
('b.��\�mGS��\�lj��','Monaco'),
('���\0��J$��]\���','Mongolie'),
('�\�hٵL$�׆\�*N\'','Montserrat'),
('&�W�	O��zD\�H\�D?','Mozambique'),
('П\'�\\�A��C>�LI\�\�','Myanmar'),
('\Z�\�$��L�E\�[v�','Namibie'),
('�d�\�\'I\�Xڟ�\�2J','Nauru'),
('/�LdO1�^\�1j�p','Népal'),
('��tkk\�Iɂ\�\�\�L�','Nicaragua'),
('���\�eCx�\���','Niger'),
('��\"�EL~�\'_N�\n`Y','Nigéria'),
('Lo\�\0eEe�\�\�búN�','Niué'),
('O�\\?EeHg�AWI�','Norvège'),
('��\�﨩C��4.�V�','Nouvelle-Calédonie'),
('\���W�GF�q[c?�','Nouvelle-Zélande'),
('\�	c�B��=j�\�\�','Oman'),
('lB:\�D��jyde\\/','Ouganda'),
('oձH\�M\�\�\Z�P�','Ouzbékistan'),
('�r\�X]\�GЈ}Hkc7��','Pakistan'),
('�o\�U\�E\�P;��=I4','Palaos'),
('�I��\�Fa�k\�В8\�','Panama'),
('���\�>E@\r�/&d�X','Papouasie-Nouvelle-Guinée'),
('\"\�FT%\�N6�I9�|0\�L','Paraguay'),
('\�5\\�OsL<�\�\�\�@	','Pays-Bas'),
('w/_�8J��(\�\�8\�p�','Pérou'),
('{O\�\"\�\'DĐ-\�$H$z[','Philippines'),
('\�R\�	\�\�OÊ?��<#3�','Pitcairn'),
('\\\�&ݦDܢ^ͫ옓H','Pologne'),
('\�0�R/hHؾ\�]��\�','Polynésie Française'),
('�G_��\�A���\����Q','Porto Rico'),
('z�\r�G\n�0 �pkq','Portugal'),
('\�/�ԜNKp��Y#��<4','Qatar'),
('\�\�%�`w@�؋�8�','République Arabe Syrienne'),
('\�~px�M��K\�\�a\"\�','République Centrafricaine'),
('�\�k\�H=�G)\'τ\��','République de Corée'),
('���,��Jןgڝ���','République de Moldova'),
('\�\�\�}�>H>�\�\�>͞\�x','République Démocratique du Congo'),
('@]\"6M�@��yyvk\�.	','République Démocratique Populaire Lao'),
('�� \���E�����9\'','République Dominicaine'),
('D�G��Ly�\��@))u\�','République du Congo'),
('�\�R5pE\�O\�X�\"`','République Islamique d\'Iran'),
(':3\�yL�N,�\��fPӽ�','République Populaire Démocratique de Corée'),
('fx�\�\�K�\�@�-|�\�','République Tchèque'),
('Z\�җ\�\�HR�\r\�	1J\�','République-Unie de Tanzanie'),
('<،\�\�J;��TS\�s%','Réunion'),
('�8\��W�K����S\�7\�F','Roumanie'),
('%�N7Fӟ��rm�X\�','Royaume-Uni'),
('3	G}��I\"�E^�\nF\�R','Rwanda'),
('\���\'d+G�����\�?�','Sahara Occidental'),
('z�+�\�PD%�w\�\�7;x','Saint-Kitts-et-Nevis'),
('�0\�\��Ek�\�B\�\�\��','Saint-Marin'),
('3hַ-Gև\�`��w\�\�','Saint-Pierre-et-Miquelon'),
('[\�5\�9gJa�\�%\�\�\��','Saint-Siège (état de la Cité du Vatican)'),
('�	�Y\�yNI�ܡ\�\rnO\�','Saint-Vincent-et-les Grenadines'),
('m!��k@\n���W��Y�','Sainte-Hélène'),
('\�W�f�B\�\"�k�T��','Sainte-Lucie'),
('�\�\0��G��\�P7nO\�','Samoa'),
('� ��\�)A��c\\\� t','Samoa Américaines'),
('\�t?p?H��7\�ط\�;','Sao Tomé-et-Principe'),
('\�V\�\�J����\�\��','Sénégal'),
('�A\��w@\�,\�uQՊ\�','Serbie-et-Monténégro'),
('��W_�uM��E,3\�','Seychelles'),
('V�<[\��CP��+98h4}','Sierra Leone'),
('���`�J���վ\�AF','Singapour'),
('t��\�C2�v_��\�w','Slovaquie'),
('p�2�EBP�zN��W\�','Slovénie'),
('��f\�|G\'�\�qO�\�c','Somalie'),
('l;�K�J�����I&\�o','Soudan'),
('{BDwB궖%R�','Sri Lanka'),
('n�\�co\�G���}<\�\Z','Suède'),
('P�\�R�G҄p\�\�X�@\�','Suisse'),
('\��9,\�j@B�\�Cva�','Suriname'),
('�@8\�ALG�\�\�\�)\�|','Svalbard etÎle Jan Mayen'),
('x�]\�N��u䨕a\Z*','Swaziland'),
('����3\ZO��Cr�	b�Z','Tadjikistan'),
('t]x\\\�\�C\��\n.t\�-','Taïwan'),
('E�ݺ�kKu�@��6\�','Tchad'),
('5\"��4\�E��-�z�9	','Terres Australes Françaises'),
('W���	@4��\�v<I\�','Territoire Britannique de l\'Océan Indien'),
('�n\�!�AI�\ZT�l&4','Territoire Palestinien Occupé'),
('�\�\�\�eE��-`l]\�','Thaïlande'),
('�{�R*1J��\�{����','Timor-Leste'),
('�Id0�De���u8hV','Togo'),
('SQ�!&F��?Jsz�L=','Tokelau'),
('uf�?1�N��Zٮ#�','Tonga'),
('\�\�*��GD��\�M\�%r','Trinité-et-Tobago'),
('�����\�IF�+;\���Q','Tunisie'),
('��\��[B�\�.89�','Turkménistan'),
('���\"�K튙L� \0�','Turquie'),
('	5���FU�b�㨱.','Tuvalu'),
('/����B욵~�\�GY','Ukraine'),
('Z\�LA@WAz��cF\�֐�','Uruguay'),
('ʢ\�Z\�F3�\�\�\�\�Ӻ','Vanuatu'),
('/���J>��e\�\�y\�\�','Venezuela'),
('dx�\��F$�\�\"��\�\�','Viet Nam'),
('�\�l�\�\�B\��)T�\�','Wallis et Futuna'),
('\��y{�O���\�g.Kt','Yémen'),
('\\�\�@\�J��\\�zFZ','Zambie'),
('\�\Z\Z2��Kמe�\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-04-10 20:56:47',3),
('DoctrineMigrations\\Version20240201152951','2024-04-10 20:56:47',2),
('DoctrineMigrations\\Version20240202084749','2024-04-10 20:56:47',3),
('DoctrineMigrations\\Version20240202150901','2024-04-10 20:56:47',2),
('DoctrineMigrations\\Version20240207105701','2024-04-10 20:56:47',5),
('DoctrineMigrations\\Version20240319212437','2024-04-10 20:56:47',2);
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

-- Dump completed on 2024-04-10 20:56:48

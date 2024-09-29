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
  `id` binary(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `estate_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `grape_varieties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`grape_varieties`)),
  `rate` varchar(2) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `owner_id` binary(16) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL,
  `tasted_at` date DEFAULT NULL,
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-09-29',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-09-29',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-09-29',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-09-29',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-09-29',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-09-29',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-09-29',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-09-29',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-09-29',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-09-29',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-09-29',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-09-29',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-09-29',NULL);
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
('r\�w\�yNv�>�\�\�t�','Afghanistan'),
('�1S\�c*MJ�M�~\��\�p','Afrique du Sud'),
('E�\�\�\�LJ����_\�2�\�','Albanie'),
('N+\�-F�.�vh��','Algérie'),
('\�;�L<�.!\�\�+7','Allemagne'),
('�\�20hI&��F\�P�\�D','Andorre'),
('\�\�D�\Z@G�{X�ia�P','Angola'),
('e�~z�M>�;jvN���','Anguilla'),
('���k`I����;x\�l	','Antarctique'),
('�g\Z\rg�J>�TGӝ5g','Antigua-et-Barbuda'),
('\\ؘ�H���$\�X','Antilles Néerlandaises'),
('KE%f�H����\��X\�','Arabie Saoudite'),
('2\�\�j�1HA�\��\�','Argentine'),
('	p�\�Q\"@��Y�\�\�)\�','Arménie'),
('\��\�L�B%��\�-%\�T�','Aruba'),
('<p�\�BDM�\�[\�y','Australie'),
(' 9`\��G\���P\�Q','Autriche'),
('�T��\�sE\�\�J\���<','Azerbaïdjan'),
('T�|L@\��^j\��','Bahamas'),
('\�b��Z�CH�o����','Bahreïn'),
('∪\�b�Dؗ �9\� ','Bangladesh'),
('�`\�4�@�>�i�ۃ\�','Barbade'),
('\�c+�N�vt챕','Bélarus'),
('ےF̀{NיQ��A\�','Belgique'),
(')�(f�\�Kf��Rc\��','Belize'),
('lzU�\�	KϽ�(\�]\�\�','Bénin'),
('���L�uE�<\�:�+��','Bermudes'),
('.~��F\�N��tBv^�4�','Bhoutan'),
('\�V\�\�\�M1�Z\�q�/>�','Bolivie'),
('\�\�v?�\�CO���\�D�','Bosnie-Herzégovine'),
('�oEE5����7��\�','Botswana'),
('\�+�\��=@Ԡx#��-�','Brésil'),
('\��\�UI\���\r�Ta','Brunéi Darussalam'),
('��	�EC��\�17���','Bulgarie'),
('\0>8�`Jy�g\�\�ث�','Burkina Faso'),
('s\�\�l�B>�~pac�`�','Burundi'),
('�\�N�\�\�OA�\�\�\�\��','Cambodge'),
('\�Mֲ\�Iؔ6\�\�f5�','Cameroun'),
('\�_5�dD �k\0P;i','Canada'),
('|5��wKئO��\� �','Cap-vert'),
('X��\�8:I:�\��\�m','Chili'),
('\'\�Y�\�EJ�\�����','Chine'),
('\�\��-KΓjT�h	I\�','Chypre'),
('��ښ�D��\��ۃ\�','Colombie'),
('J\�}\�\�KH��y��\�P\�','Comores'),
('C\0�\�C\0�w�\�ef�\�','Costa Rica'),
('\�.�J\�MI����˘-^�','Côte d\'Ivoire'),
('J����J?�\�\�U���$','Croatie'),
('7<��N���]\n�\�m','Cuba'),
('j\���K9�T\�^.�','Danemark'),
('o��C|�O�\�T�\\~xO','Djibouti'),
('�o�,��D��\�^\�\�\�\�\�','Dominique'),
('�?&V��O��PW鯱g','Égypte'),
('\�gDh�@G�� 7F','El Salvador'),
('uy~�C���\�[�ԛ','Émirats Arabes Unis'),
('\�i\�\�{K\Z�pȕ<\�`L','Équateur'),
('c\�ͥW�J��[1�\�oO/','Érythrée'),
('\�\�\�+\�E\�K<lö�n','Espagne'),
('M\�\�f��@\� �0�','Estonie'),
('Uɭɲ�G��ػZ��^','États Fédérés de Micronésie'),
('y�4\�\�\�Nɝ\�+\�\�lß','États-Unis'),
('�\�\�\�6Fp��m���\r)','Éthiopie'),
('\�1�\�6A��)ݭ\\T�','Fédération de Russie'),
('�G!BI\�J����R:\�,g','Fidji'),
('b��a�Me�Fk��_Y','Finlande'),
(')N�Q/}C\�\�}\�C�','France'),
('\�*B7I(���\�\�s�\�','Gabon'),
('�����G��2҉�Y\�x','Gambie'),
('��ǽ�C��~�\�\�C','Géorgie'),
('������@͔��Q\�4�','Géorgie du Sud et les Îles Sandwich du Sud'),
('ïA&CRL���q\�f��B','Ghana'),
('����\�FܻFw�_\���','Gibraltar'),
(' \�\�UM�E~����\�\'\�','Grèce'),
('~�\�`\�A��]q�','Grenade'),
('d�\�\�cD\�۷\��@hg','Groenland'),
('�v@�g,HA�\�3h\�+�','Guadeloupe'),
('J\�\�a\�E��<2\�N\�1','Guam'),
('�\�E��`F��\�vy\�N\n','Guatemala'),
('�O�5\�C��2�\�\0\��','Guinée'),
('?Nv�\�I$�\�냥)\�','Guinée Équatoriale'),
('�[�N����\��\�ZM','Guinée-Bissau'),
('�F1\�k�G��d��\�\��','Guyana'),
('�9-�@̛��6F�\�9','Guyane Française'),
(',u�z\n�G$�>b\�3\�\�C','Haïti'),
('�\�\�*\�NX�2\�N\0|','Honduras'),
('�( \�\�@��e�\�\�\�}','Hong-Kong'),
('�9>2ϣI\'�(\��\�\�','Hongrie'),
('�\�rFmA$�\r��\�K\�','Île Bouvet'),
('\�\0P\�\��H6��P\n��4}','Île Christmas'),
('` >,�\�B����\�%�','Île de Man'),
('QSэV�GB�7\Zu�n\�','Île Norfolk'),
('\�r\�KT�z��\�l\�+','Îles (malvinas) Falkland'),
('��3\� �@ͧ�P\�5��','Îles Åland'),
('�j/z\��IB�U�/-�N3','Îles Caïmanes'),
('\��QC\�\�D8�\�\�lY\�','Îles Cocos (Keeling)'),
('e(w<\�xE֋��6wɕ','Îles Cook'),
('�l�\�\�A@ʁ\�E7:�','Îles Féroé'),
('���I�Aׂ@RŬ�','Îles Heard et Mcdonald'),
('��v\�\�L �<\�\r�*\�\�','Îles Mariannes du Nord'),
('{�\�[��I��DF���x','Îles Marshall'),
('G�\�E\�\�Hw','Îles Mineures Éloignées des États-Unis'),
('9v��Oú\�\�/�\Z\\�','Îles Salomon'),
('\��\0\�A`�f\��	M*','Îles Turks et Caïques'),
('\��:T\�E��Z���>\0V','Îles Vierges Britanniques'),
('eo4�|GD�\�c\�\�\��','Îles Vierges des États-Unis'),
('��\�\�\�C6��\\��}a','Inde'),
('b�\'�\�Kb��^��\�','Indonésie'),
('w\��JC�샂)�\�&','Iraq'),
('\0;�dK8�W�y2�dQ','Irlande'),
('\�O[�C\�EY�\�yV�8<\�','Islande'),
('o>\\\�\��IϺ\�g��\\','Israël'),
('\�\�k6\Z!E/��t��\�\�\�','Italie'),
('W@NS|�J�����cg͘','Jamahiriya Arabe Libyenne'),
('�k�,u�M\�ħ�\�S\�B','Jamaïque'),
('�d\�\���F0�Z=\�Ȗ�','Japon'),
('\Zm���\�Jo�\�bx\�\�\�\�','Jordanie'),
('\�D�P�\�H��{	\�\�˳','Kazakhstan'),
('<d1MD��%�T\�By','Kenya'),
('\�L�ҟ\�M��c0h��','Kirghizistan'),
('\�\Z\�\�MIP�\�\�\'\��','Kiribati'),
('\0��p/J��#2\�\�x�','Koweït'),
('�Y\�\�\�G(�=ttR�l','L\'ex-République Yougoslave de Macédoine'),
('Q�`�\�7M>�ʇԣP5�','Lesotho'),
('��s�	BS�\Z\�CM\�','Lettonie'),
('�ݪ�M��w\0�\�3','Liban'),
('\�%�t�[Gڈ\�\�[�`\�J','Libéria'),
('I\�����B\�z7��\��','Liechtenstein'),
('�\�\�ȱ�CL�\�\nB���','Lituanie'),
('�mK\�[1HW�\�\�\�>1','Luxembourg'),
('\��/F�Nx��p��\�m�','Macao'),
('�s\�\'ƨIj��*\�\�\�\�','Madagascar'),
('̓~x\�\�@	�\�\�\�SF','Malaisie'),
('\�uK\�COٰ\��\�(�h�','Malawi'),
('\�Q\�\�!qL��O\�%\�9','Maldives'),
('\�f\�oF\�CV���\�~��','Mali'),
('��T��nLÐ;o$��<','Malte'),
('�F�\�\�M�T\�ԛ�\�','Maroc'),
('����$GK�+R�ޕ\�\�','Martinique'),
('AZȍ\�D4��[}�;�s','Maurice'),
('V\�\�*\Z;DN�V�ݰ׬}','Mauritanie'),
('��F\�PL��\�,\�H�m','Mayotte'),
('��W�Q<L����_�\Z+','Mexique'),
('\\�N\�OF5�`�i�!','Monaco'),
('\�Э\�W\�O��_\�/4u','Mongolie'),
('�\�!�mG��\���7�','Montserrat'),
('�m�Z�Hn�\�}9\�y�\�','Mozambique'),
('j`J�\�N��Ş� \�','Myanmar'),
('5\�/B(Fξ�)��y��','Namibie'),
('���\�ĔMD��g�\�C','Nauru'),
('\�̐��DM�\'�P\�\�\�','Népal'),
('\�T�5��BT��\��L&g\�','Nicaragua'),
('�>c޻CԐ����\�:','Niger'),
('s񚍪G\�4kע}g','Nigéria'),
('A\�ǗB߀�\�t�4f�','Niué'),
('\�\�\��Kq��\�\�Iv�\�','Norvège'),
('�\�\�B�\�E�kd�HI�','Nouvelle-Calédonie'),
('�!#Y�@G-�\�\r�e','Nouvelle-Zélande'),
('W�_�h]H��|�\�#v\�','Oman'),
('�g-���ND�Q�^�\�\�','Ouganda'),
('C�\��O�z�\�\�w','Ouzbékistan'),
('�^\0k�\�O\�\�E����','Pakistan'),
('�\Z\�@)N-�R\�s��_�','Palaos'),
('\0L\�)�ZEͫ�\�\�\�','Panama'),
('\�@\�ڔA,�)���\n�','Papouasie-Nouvelle-Guinée'),
('�\�c�\�\ZK|��Y�x�G\�','Paraguay'),
('\�Ʋ���Gm�yx��h�T','Pays-Bas'),
('��5(gD҅u��(u','Pérou'),
('|\�\06�jK�\�\�d���','Philippines'),
('(��\�OH�5D.u\�','Pitcairn'),
('qsy�QD�7̭�SB�','Pologne'),
('5\�}\�!�HɇoU�5�','Polynésie Française'),
('\�פ\��C�G&��E��','Porto Rico'),
('/�A�>M+��&�A{','Portugal'),
('q\�\\�\�\�@Y�\�lũ\�\�7','Qatar'),
('�2ꋓ\�Mj����\�>�7','République Arabe Syrienne'),
('<lR\�\��M`��\�\�g�','République Centrafricaine'),
('T偋�I��L\�5z$7p','République de Corée'),
('\�4U\�SOӘ\�	��#','République de Moldova'),
('�; @	�oh�\��7','République Démocratique du Congo'),
('5꣋L���\�E,t[\�','République Démocratique Populaire Lao'),
('Ů�,vPN����VƂ\�','République Dominicaine'),
('kX���B���\�\�{','République du Congo'),
('0\�=/VMo�\�高\�@�','République Islamique d\'Iran'),
('j��%\�$O0�\�	t\�','République Populaire Démocratique de Corée'),
('\"TP�^M/�P�\�V\�t','République Tchèque'),
('U�D��)A1�\�\�KW\�\�','République-Unie de Tanzanie'),
('\�$c**\"Kk�;:\�\�#k�','Réunion'),
('�`\�Y�\nE\�\�\�[�d','Roumanie'),
('\�!\�\�`J̒O�8ZcG2','Royaume-Uni'),
('q\�u\�\�M+�j\�)\�g\�','Rwanda'),
('��%�1�J$�J\�\�){�','Sahara Occidental'),
('\�\�\�4A��{PO\�0','Saint-Kitts-et-Nevis'),
('�	Q�=\�Ck�5�\�\�1\�','Saint-Marin'),
('i\�JI?M��\�	#C�@','Saint-Pierre-et-Miquelon'),
('j\�d�wIx�<r_ތ','Saint-Siège (état de la Cité du Vatican)'),
('\���ԥ\�N��X\�m\�%','Saint-Vincent-et-les Grenadines'),
('\�P��G����ɉ߀�','Sainte-Hélène'),
('�G�˔XL4�#Z{;\0\�','Sainte-Lucie'),
('%��N\�O��@\"4�QJ','Samoa'),
('\�\�\�U\�D]�e�LD>�','Samoa Américaines'),
('\�\�\r\�B�Bo����\�J','Sao Tomé-et-Principe'),
('��V*^\�G���W\��\�]','Sénégal'),
('��zT�>DQ�Q\��\���','Serbie-et-Monténégro'),
('\�D\�tD\�,\�ܻ�\�','Seychelles'),
('�_.D>G��4Q�\���','Sierra Leone'),
('#m�\�\�D|�s�5�U�','Singapour'),
('5q\�-]N��\�3$�O�','Slovaquie'),
('\�ҹ�W�C=�l]Z��3','Slovénie'),
('@�\�\�bN\��S��g�\�\�','Somalie'),
('�\���UsNI�\0\�fz��','Soudan'),
(' \�nX�F]�\�\\e\\\0_','Sri Lanka'),
('�dno\\\�Nv�P�8D','Suède'),
('b\Z\�ުA+�iN�\�,BD','Suisse'),
('/\�̛�J���\�/��','Suriname'),
('�;�Jf�F���ڣD--','Svalbard etÎle Jan Mayen'),
(' 2�+�GE��\�4���l','Swaziland'),
('R\�Ǌ�F��\��V�\�','Tadjikistan'),
('BV�\�t3OӬ�������','Taïwan'),
('�A\�HLg���R\�+re','Tchad'),
('AЭV�Nq��eO~��^','Terres Australes Françaises'),
('Pӟ77�Jk�\rM�7��','Territoire Britannique de l\'Océan Indien'),
('U@�<G��=�;)<','Territoire Palestinien Occupé'),
('��׊B�H=����ء\�','Thaïlande'),
(')�\�\�AW�\�!6M','Timor-Leste'),
('m\�\�܋F��\�F\�8 �','Togo'),
('$K�r\�lAǂ�D�|{�k','Tokelau'),
('\Z��#2N.�}\�Z�؄\�','Tonga'),
('\�b\'ζ\�@��%.�\�\�B','Trinité-et-Tobago'),
('O!f\�\�O��Ctz�+\",','Tunisie'),
('\�\�\�AF\�MS��M\�h�','Turkménistan'),
('ŵCR�@��\�\�v^\�','Turquie'),
(':\�6$\�{O���\�[_','Tuvalu'),
('�\�r�\n\�N��k/�;:��','Ukraine'),
('$��\�!AT�vx��\�','Uruguay'),
('\�{�6I�J��N\�\�\�8\�\�','Vanuatu'),
('\�\rBU\�Jޝ�����','Venezuela'),
('�8-�wOI���X��@\��','Viet Nam'),
('	�\��\�5I�j\�ޱ�D','Wallis et Futuna'),
('L���7aKˊ\�+��ߧ�','Yémen'),
('�o�`nLV��\�\�Y��^','Zambie'),
('\�\�j\�NEh�H�>�n�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-09-29 09:19:15',2),
('DoctrineMigrations\\Version20240201152951','2024-09-29 09:19:15',1),
('DoctrineMigrations\\Version20240202084749','2024-09-29 09:19:15',3),
('DoctrineMigrations\\Version20240202150901','2024-09-29 09:19:15',1),
('DoctrineMigrations\\Version20240207105701','2024-09-29 09:19:15',4),
('DoctrineMigrations\\Version20240319212437','2024-09-29 09:19:15',1),
('DoctrineMigrations\\Version20240614133504','2024-09-29 09:19:15',11),
('DoctrineMigrations\\Version20240617165906','2024-09-29 09:19:15',7),
('DoctrineMigrations\\Version20240708061729','2024-09-29 09:19:15',11),
('DoctrineMigrations\\Version20240801202153','2024-09-29 09:19:15',3),
('DoctrineMigrations\\Version20240815153823','2024-09-29 09:19:15',2),
('DoctrineMigrations\\Version20240916065051','2024-09-29 09:19:15',5),
('DoctrineMigrations\\Version20240929091802','2024-09-29 09:19:15',11);
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
  `target_id` binary(16) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link` longtext NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-09-29 09:19:15');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` binary(16) NOT NULL,
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
  `id` binary(16) NOT NULL,
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
  `id` binary(16) NOT NULL,
  `owner_id` binary(16) DEFAULT NULL,
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`participants`)),
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

-- Dump completed on 2024-09-29  9:19:16

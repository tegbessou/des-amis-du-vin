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
  `id` binary(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `estate_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `grape_varieties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`grape_varieties`)),
  `rate` varchar(2) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `owner_id` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `saved_at` date NOT NULL,
  `tasted_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-11-03',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-11-03',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-11-03',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-11-03',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-11-03',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-11-03',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-11-03',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-11-03',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-11-03',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-11-03',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-11-03',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-11-03',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-11-03',NULL);
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
('/\�50�`L]�l�\0��\�','Afghanistan'),
('/\�f\�zL��\���|qx\�','Afrique du Sud'),
('5m\�F��A��^R��f','Albanie'),
('�u7}BGߣh\n��>\��','Algérie'),
('l\�v\�6\�J#�5~\�@[@','Allemagne'),
('��-䣟M��([կ�\�','Andorre'),
('�\0譡C��\�+\�6m\�','Angola'),
('���COf�\�\��\�\�;�','Anguilla'),
('5]��G<�B����q\�','Antarctique'),
('K�v�L�J\0�\�Wp�yX','Antigua-et-Barbuda'),
('�\�\�MF\���g�\�\�W','Antilles Néerlandaises'),
('E���\�F@�}��,m�','Arabie Saoudite'),
('�!�I|C\"�>�����','Argentine'),
('1�~_F$�bW\�\�\�ϱ','Arménie'),
('�\�*K�M�\�|sGPn\�','Aruba'),
('nX�_��MT�Wb˪ �>','Australie'),
('w \�8F	�\�Eô\�q','Autriche'),
('<��(�J\����\�\�\�N','Azerbaïdjan'),
('\�v�\�\�FB�i�n�\�$','Bahamas'),
('t��\�lRLq������l','Bahreïn'),
('���\"K��.\0`$','Bangladesh'),
('y�԰\rL��b�u�㍕','Barbade'),
('P�g$g\�C��^aQ7��','Bélarus'),
('NQ\�RN�N\�Q\���`\�','Belgique'),
('�Y^2\�Jʂk&jv�\�X','Belize'),
('\�\�\�\�CJ�\�D\�\�jG$','Bénin'),
('�v$993M,�/O~\���5','Bermudes'),
('T{hfIσ\�d\0\�\�','Bhoutan'),
('E;:`NI���\�O��l�','Bolivie'),
('��*vQ)OL��dz9��','Bosnie-Herzégovine'),
('-�)E�OȦ�\�\�`p','Botswana'),
('��zI�E��yNc°\"','Brésil'),
(':\�`>�D\�X=�J\�\�','Brunéi Darussalam'),
('\�\�k\�\�\�E1�#F�-\�]V','Bulgarie'),
(':��J\�	G����\�\�\�P','Burkina Faso'),
('!9ބc�J����\�b�','Burundi'),
('�%�\nUAi��G,�Z','Cambodge'),
('�\�\�\�X\\J��k,)�G��','Cameroun'),
('98y�^H�>>�\�<\��','Canada'),
('\�їL�\�A8���\�m','Cap-vert'),
('�\\`�@��T�je','Chili'),
('䤻\�\�D�qv�R��\�','Chine'),
('x�.\�\�OȚ\�\�O��L','Chypre'),
('�\�\�\�yE��\�n��\�\ri','Colombie'),
('�X1�P<LޤX����s','Comores'),
('�\n� ��AF��Wܔ��','Costa Rica'),
('�I)\�\nK��x#�fE�','Côte d\'Ivoire'),
('{I\�ļiFΟr\�s�j','Croatie'),
('�!�\�9]FZ�Ar��\�;','Cuba'),
('��?o\�oJ؍NR����','Danemark'),
('G\�?��~H4�G\�f�\�\�','Djibouti'),
('f9&\\ߊF��&4\\L\�C�','Dominique'),
('����Fӑu\�\�+T','Égypte'),
('\���\�\�B޺�Ux\�','El Salvador'),
('\0\�ȷO{Ok��\�}\0�,','Émirats Arabes Unis'),
('�3L|�#Iȿ>�M,','Équateur'),
('�f�$�\�G�[\"\�\�\��\�','Érythrée'),
('מ�\�K��_\�\�:8\�','Espagne'),
('\�ea\�_BOM�\�c\�<�\�','Estonie'),
('\�Pa@�Lɴyo>H)\�k','États Fédérés de Micronésie'),
('t���8A�z�\�9p�9','États-Unis'),
('�\�;��rLi��t\�l\�\�','Éthiopie'),
('L�\��WOT�<6O�M','Fédération de Russie'),
('BVY4\�]K(�\�\���_�','Fidji'),
('	�\�\�\�tIc��\�P\\nC\�','Finlande'),
('�W\�?F\�JU��\�$(�,','France'),
('}��a\�M6�\�׆�	�','Gabon'),
('���EqO_����\�a','Gambie'),
('\�\�U\�ЎB��\ZƟׂϭ','Géorgie'),
('�)��\�B\'�>Ѓ��<�','Géorgie du Sud et les Îles Sandwich du Sud'),
('kd��MLM\�ÌE\�\�','Ghana'),
('ǁ�\"�T@ݦej1�ˏ\�','Gibraltar'),
('�\�D\�<\�I����=8\�','Grèce'),
('\�\�EU\�)M��ww0NX\�','Grenade'),
('U�\�\�E�����^�','Groenland'),
('�»eI\�\�u\�\�\�','Guadeloupe'),
('\�ޫ\�\�L1��\�~�\�!','Guam'),
('ܶ�B\�:C��\�\�\nh���','Guatemala'),
('�SIN�\'O��7�]@q','Guinée'),
('\�\�&\�$G~�E=�m\�~','Guinée Équatoriale'),
('`����B\'�/uSm\�T�','Guinée-Bissau'),
('jWf\"�DG���u�s���','Guyana'),
('_�3��EGK�5S_{�\�','Guyane Française'),
('�\�bxkK�\�\�E\0cC','Haïti'),
('Qܿ��\�H��ݍݽz��','Honduras'),
('\�J�ںjA.�\�z\�֧\�','Hong-Kong'),
('|��j\�Dh�[,̀V','Hongrie'),
('�g\�8WJ,�	+�y\�','Île Bouvet'),
('f�\�\�N!K����,@[\�','Île Christmas'),
('�TGh��B������Ć','Île de Man'),
('�K���B)�\0�l\�F�`','Île Norfolk'),
('c�\�\�}AI�\�E\\a�','Îles (malvinas) Falkland'),
('���\�`dF��w^o#e*S','Îles Åland'),
('t\�@��6B\��P\���~7','Îles Caïmanes'),
('WL\Z\�\�F}�\��<�,*}','Îles Cocos (Keeling)'),
('%{\�\�I��<\��g<)u','Îles Cook'),
('���PJCÔ��\�R=l','Îles Féroé'),
('\��\�-�A�\�W�.�\�','Îles Heard et Mcdonald'),
('�V�\�\�N��X�\�\�r�\�','Îles Mariannes du Nord'),
('��\�%�\�J\�\��ѣ�','Îles Marshall'),
('��\�\��H���ܛ{h\�','Îles Mineures Éloignées des États-Unis'),
('i\n�\�O����\�','Îles Salomon'),
('�ַ�)B��f>\r0�','Îles Turks et Caïques'),
('�r7�\"�Jk�\�1�f','Îles Vierges Britanniques'),
('O\�\�A�2�\�qd\�','Îles Vierges des États-Unis'),
('�y�\�\�-B\��\�o\�̺DL','Inde'),
('�۶�\�\�Du�\r\�\�h\�>','Indonésie'),
('�ƕ[�JC���\�b�O�','Iraq'),
('\�\��YK���\�M\�\�>','Irlande'),
('pwba��KV��tR\�\�>\�','Islande'),
('�4\�\r�BY�j��\r��','Israël'),
('0��|�nF*�\�\�6\�ځ','Italie'),
('F\�:3J\�gn�U\\Xe','Jamahiriya Arabe Libyenne'),
(')�\�5E�E	�;.ԓ~\�','Jamaïque'),
('G\"r\�Ok�C7��]�','Japon'),
('G�\r�J�I\�\�ǰL<','Jordanie'),
('�D�H~�E�+du\�~�s','Kazakhstan'),
('\�(S/\�F��\�5$w\�=','Kenya'),
('P��	M\0��uK���','Kirghizistan'),
('>D͝7N?��\�\�\�\�\�','Kiribati'),
('�y`_o�C`�2\�Їv�v','Koweït'),
('\�X�i\�Np�t�\rЇ\�','L\'ex-République Yougoslave de Macédoine'),
('��\��^Bj�#<\"�\�\�','Lesotho'),
('?\�(qZM���\r�','Lettonie'),
('\�:\�\0\�`O��\'�S&tS','Liban'),
('\�I��\�\ZL���\�b\�)','Libéria'),
('\�<)p�I��\�\�N�y�','Liechtenstein'),
('1�l�DʨrG7\�\�\�','Lituanie'),
('\�;fXG\�r9�\0�\'','Luxembourg'),
('�\�.\'C��`E^�F\�\�','Macao'),
('\�35\rL+�tH\�O�\�','Madagascar'),
('=���O��m54A�','Malaisie'),
('?J[%F@��N�s\�s','Malawi'),
('\�􃾙\�@4�P\n�s\��','Maldives'),
('��C\�\Z�JT�\�Wp�\�','Mali'),
('\�\�\�\�o\�J\\�XKp�\�','Malte'),
('\�	_MO\�NИk݃�]]�','Maroc'),
('�\�nDtAw��h\�T��','Martinique'),
('\0\�Ll>F\n�\������\�','Maurice'),
('�dr6��H\r��v(�J�','Mauritanie'),
('�Ƃ��@�\��\r\�t','Mayotte'),
('\�n\'�+\�M�\�b�\�','Mexique'),
('C�gm�A[�cdr���','Monaco'),
('���s�B��.��4�\�','Mongolie'),
('\�\�p��AA�ݿy5��','Montserrat'),
('\\\�j�bEy��\�l�r','Mozambique'),
('\��oDE���@*�C��','Myanmar'),
('��=A\�HJ��[~\�]\�\�','Namibie'),
('�O���C\�DĎ��:�','Nauru'),
('��q��\�B\�Aa\�̷a�','Népal'),
('<�\nM�\�\�\�X�\�p','Nicaragua'),
('\�A\�$I�A׬��\�2z','Niger'),
('��\�Dy�uyr��9','Nigéria'),
('\����3\'F��KB3wm�V','Niué'),
('�S\�\\�Fڑ��]�\Z','Norvège'),
('��Ob&\�C��\�\n�G\�d','Nouvelle-Calédonie'),
('u\"�Z\�G����\�\�\�E','Nouvelle-Zélande'),
('5տë\�I\n�-l\�(6','Oman'),
('+uc�(D}��Sȧ','Ouganda'),
('C(�\�xJM�߈#!\�','Ouzbékistan'),
('��\�\�(\�FR����&�\�\Z','Pakistan'),
('\"\�\�g\��M%�@�9;Ge','Palaos'),
('|\Z{#GmMo��\�֎\�|','Panama'),
('Ka\���4L-�X,_\�3�','Papouasie-Nouvelle-Guinée'),
('r�\�0\�HԮ\�\�@\�m\\','Paraguay'),
('ZPw,&J����~���\�','Pays-Bas'),
('\0�aK\�gMو\�\\<�\�','Pérou'),
('�8���MY�V,\�f��','Philippines'),
('�$\�*��J\\�QZfgs�\�','Pitcairn'),
('\�\�\09E\r�l9�\'�0E','Pologne'),
('I\��K\�D��HoA\�i\�','Polynésie Française'),
('��o\0\�4E\���U\�\�^#','Porto Rico'),
('\�T��i�Iƶ��|\Z�\�','Portugal'),
('ct\�\�FѹOb�~hS','Qatar'),
('\�\��\�eRD�U\��l�:','République Arabe Syrienne'),
('\�>p��\�IۂV��l6�','République Centrafricaine'),
('ɾ\�\�OBI�\�\\@�\�^','République de Corée'),
('\'��G����ui�\�','République de Moldova'),
('S\�\�ś�CB��b\�f\r','République Démocratique du Congo'),
('�\�\�\�\\?NT�6¾\�\�\�\�','République Démocratique Populaire Lao'),
('=��=�@G��>:q�Y','République Dominicaine'),
('�.Gm\�H{�\�\0��3fj','République du Congo'),
('�w\�V�L�%K\��i\�','République Islamique d\'Iran'),
('c2,�\�wN�\�u]T��','République Populaire Démocratique de Corée'),
('l�Ur�<C=����\�','République Tchèque'),
('$���\�OȲU\�g<�|','République-Unie de Tanzanie'),
('hZ?La!G��\�\"�C��','Réunion'),
('\�;]�$�F���s\�V�','Roumanie'),
('G���Q�K��\�:\�\��X','Royaume-Uni'),
('�F\����H��\�\����','Rwanda'),
('\�d\�.\�lLݕ-??Q��','Sahara Occidental'),
('z�����M֯K�\�\�J�','Saint-Kitts-et-Nevis'),
('��f\�\�\�F��\�9̔�ǜ','Saint-Marin'),
('v\�:\�+\�He��ܬf\�\�\�','Saint-Pierre-et-Miquelon'),
('�Ɍ��B���\�P\���V','Saint-Siège (état de la Cité du Vatican)'),
(']v�5\�%Il��0O%\��/','Saint-Vincent-et-les Grenadines'),
('\�t\�lLz�k&�S','Sainte-Hélène'),
('!\�[���M\�\�\r/RM`','Sainte-Lucie'),
('\�\�HS�-�I \\\�','Samoa'),
('�BrH��x^\�\�\�nL','Samoa Américaines'),
('\�\�No\�A�8Օɞ+\�','Sao Tomé-et-Principe'),
('@	�xE��\��G�N�','Sénégal'),
('N\�|W\�B��<\�\"�\�\�','Serbie-et-Monténégro'),
('\�\�j\'M\�Њ��:@�','Seychelles'),
('\�g\�B|+J;�� �M;��','Sierra Leone'),
('@e\�*GGg�f��N�.','Singapour'),
('r3(k	�@��D�[\�\�','Slovaquie'),
('��g8�JP�\�Q>\'{T','Slovénie'),
('S{%˒M0�\�3\�}\�\�','Somalie'),
('Y\n�\�\�N�\��\n�ld','Soudan'),
('��S=W�Eo�\�\�\�\�A�','Sri Lanka'),
('�ܣk�C��\�r\�5�\�','Suède'),
('�\�%H�SBY�\�Gʪ@�Z','Suisse'),
('+ϭCICo�g\�+\�O�','Suriname'),
('H*\�D.@\�M\�P>�$','Svalbard etÎle Jan Mayen'),
('�\�\�\n\�9DӘ^!ǵؿ�','Swaziland'),
('F\�\�9kDԢ�_�\�Ι','Tadjikistan'),
('Ğf\�SC�Dv�5g8','Taïwan'),
('w\��\�\�\�IĹ�\�]i\�\�(','Tchad'),
('&\�z\�Aؙ M�U�z�','Terres Australes Françaises'),
('\�}�\�\�L\��\�\�','Territoire Britannique de l\'Océan Indien'),
('5�s\�\�N`��!ƭE\r�','Territoire Palestinien Occupé'),
('\�ީa�Jj�b\�+\�O,!','Thaïlande'),
('\�+=MNG��\��\0��','Timor-Leste'),
('P0�7)I7���\�\�\�\�','Togo'),
('�G��`D��s�̮\Zc','Tokelau'),
('H@\�\��E��h\�\�\��','Tonga'),
('S\�.\�O�\�Q���~','Trinité-et-Tobago'),
('\\	\n.O՗�\��B','Tunisie'),
('2Ӵ�a�I����_\�q�\Z','Turkménistan'),
('P\��F�G\�JX�\�','Turquie'),
('\�\�>D[O;����\���','Tuvalu'),
('��-\�\��G��do�͊�','Ukraine'),
('\'d YjJ��\�C��kh\�','Uruguay'),
('\�\��3�=K�ШU}\��b','Vanuatu'),
('�\�Ʉ\�Mհ�(�ЍY','Venezuela'),
('\�vOe�NJ�gJ\�\�D\Z4','Viet Nam'),
('}+IO\�E«\�t\�my�g','Wallis et Futuna'),
('Kp�4P�A��n�G\�D\�','Yémen'),
('�\�\�\�zJǽw\�c$+��','Zambie'),
('0�u��G��	U]\��\"','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-11-03 18:22:23',3),
('DoctrineMigrations\\Version20240201152951','2024-11-03 18:22:23',1),
('DoctrineMigrations\\Version20240202084749','2024-11-03 18:22:23',3),
('DoctrineMigrations\\Version20240202150901','2024-11-03 18:22:23',1),
('DoctrineMigrations\\Version20240207105701','2024-11-03 18:22:23',3),
('DoctrineMigrations\\Version20240319212437','2024-11-03 18:22:23',2),
('DoctrineMigrations\\Version20240614133504','2024-11-03 18:22:23',12),
('DoctrineMigrations\\Version20240617165906','2024-11-03 18:22:23',9),
('DoctrineMigrations\\Version20240708061729','2024-11-03 18:22:23',12),
('DoctrineMigrations\\Version20240801202153','2024-11-03 18:22:23',3),
('DoctrineMigrations\\Version20240815153823','2024-11-03 18:22:23',2),
('DoctrineMigrations\\Version20240916065051','2024-11-03 18:22:23',4),
('DoctrineMigrations\\Version20240929091802','2024-11-03 18:22:23',11),
('DoctrineMigrations\\Version20241002164506','2024-11-03 18:22:23',8);
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
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7','\�5?0O���)\\�ZDQ',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-11-03 18:22:23');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
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

-- Dump completed on 2024-11-03 18:22:24

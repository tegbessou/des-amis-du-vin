-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-1:10.11.6+maria~ubu2204

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
  `picture` varchar(255) NOT NULL,
  `owner_id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `country` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','/images/bottle/caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','/images/bottle/chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','/images/bottle/romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','/images/bottle/tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','/images/bottle/montrachet.png','\�o;ԈC����\�\nl','France',1599.99),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','/images/bottle/penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','/images/bottle/chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','/images/bottle/ridge-vineyards.png','\�o;ԈC����\�\nl','United States',199.99),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','/images/bottle/cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','/images/bottle/gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','/images/bottle/vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','/images/bottle/opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99);
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
('\�䤹0�I����\�\�\�4','Afghanistan'),
('�\�C\�Aȑ|\�\�a\��','Afrique du Sud'),
('\�\�\��\�@��\�>��-�!','Albanie'),
('h��F�~H���Rҟ\�C5','Algérie'),
('Zi�>�&LB�\�\�\�%�\�','Allemagne'),
('�wDt`,E���\�Je�\�','Andorre'),
(']J\r��As�\�VȻq�','Angola'),
('y\�\�eyC��15~�zP�','Anguilla'),
('�)�\�p�G���\����','Antarctique'),
('\�\�\�dSE�,�_.��','Antigua-et-Barbuda'),
('c��ӽ?L;�e:\�)vS','Antilles Néerlandaises'),
('�<\���Aj�\��K��W\�','Arabie Saoudite'),
('_ϕ�\�WE7�\�r�$3�','Argentine'),
('�j�RSB��\�^\����C','Arménie'),
('\�M1��\�I��\�\\�\�2��','Aruba'),
('ُ�\�\�3Nb����\�\�1','Australie'),
('\�.|3tgC↕w\�z�Y','Autriche'),
('Y�ZID����뺰\�z','Azerbaïdjan'),
('���|@�C���G�\�7\�','Bahamas'),
('N���t�@ʳ�\�m\�\�\�','Bahreïn'),
('\�\��OK\0�{\�\"��1','Bangladesh'),
('\�R�\ZRJ^��yb\'c\�z','Barbade'),
('��\�ԕH	��V=\�*� ','Bélarus'),
('\�΋�\�?B*�Z�V\'','Belgique'),
('Cv��\nLR�\Z;Q}\0_�','Belize'),
('U�J�\�J��s z��:W','Bénin'),
('\�@f\�F��\�D�xB\�','Bermudes'),
('\\I�\�\�SF�\�\��\�','Bhoutan'),
('�\�\�\�GN���b|�@h\�','Bolivie'),
(']\�)^[G��\�\�C�\�7','Bosnie-Herzégovine'),
('N!W���J(�?\�A�','Botswana'),
('\�5F�\�D��K\��}f`m','Brésil'),
('c ma\�@T�A�L�\�\�','Brunéi Darussalam'),
('��͜�A\"��\"\�\'�q','Bulgarie'),
('\�\�\�\�mF#��\�9\�A\�','Burkina Faso'),
('\�\�>1\�H8�j��B�<','Burundi'),
('\�\�(\�@v�\�\�M���','Cambodge'),
('��_\�D=K����>�a\�','Cameroun'),
('|��\�c�N�+N~�M�','Canada'),
('�R@\�B@Ǯ\�M\�ܯ\�/','Cap-vert'),
('�b��\�Bن(\\\�Q�(','Chili'),
('\�K\�P�\�Lh�\�:b&d\�\�','Chine'),
('޼\�GH��6\�u�3�','Chypre'),
('M\�781L��\�H�F+\�','Colombie'),
('��\"�\ZOz��p�O\�p','Comores'),
('\�\�Q\��Jh�\�z\�\r>m','Costa Rica'),
('(�@�p\�N�I%N\�*\r|','Côte d\'Ivoire'),
('\�\�V��[NW�9G862','Croatie'),
('\�K/ Nb��٥�\�','Cuba'),
('VC8\�G�H�����\�\�Ȁ','Danemark'),
('ɐ.p��G�z�\�:��','Djibouti'),
('|d�/�D&�\�ѼY�','Dominique'),
('f\�b�ҚG��@\�\��\�}','Égypte'),
('������I(�:��g\�\�','El Salvador'),
(' �A�\"FL�-@v4e�\�','Émirats Arabes Unis'),
('�{,�FK,�P�\�&zW','Équateur'),
('���T\�NM���n\�\�a','Érythrée'),
('F\�\� O���\�{\�`','Espagne'),
(']\�\�/\�G��N\��>z2�','Estonie'),
('a\Z>8	J\�`\�\�Q�^k','États Fédérés de Micronésie'),
('K�Z\�\�cLɡ\"d4�;j\�','États-Unis'),
('���B�&I̽\\�{\09C�','Éthiopie'),
('Pv\�\"\�A�\�\��N\�JO','Fédération de Russie'),
('(Hc�9\�I��/���7\�','Fidji'),
('��c��G�@@^Q0�','Finlande'),
('�b�QL#��\�GgP\�','France'),
('HsE�\�I���T\�Ly~�','Gabon'),
('E�&��JBk�1\��\�F��','Gambie'),
('m7\�\�J\n��\�\�Pw?\�','Géorgie'),
('�Z:`�L3�,�\�\�Y\�+','Géorgie du Sud et les Îles Sandwich du Sud'),
('�k�\�\�E��<!\�a�','Ghana'),
('\�`1��\�B��Y�\�\�vF','Gibraltar'),
('�\�\���\�BG�Bφcb�','Grèce'),
('\�r	HcM���\ZB+x\�','Grenade'),
('��\�~\�M����+�UC�','Groenland'),
('���_\ZA��LZK�g�','Guadeloupe'),
('~��\�C���b���Ʈ','Guam'),
('>b� DA&�,\�X\'&�o','Guatemala'),
('5���PM��Z��1�','Guinée'),
('\�o(xMo�짭�֚\�','Guinée Équatoriale'),
('O\�L3\�B$�Cż=Vk�','Guinée-Bissau'),
('��sDaGO��C9諸h\\','Guyana'),
('y\�\�\�jH%�MQ��\�','Guyane Française'),
('�}���MGo� �*�\�','Haïti'),
('�\�xc�\�@���|j\�R;\�','Honduras'),
('*�f$�\ZHx�W�Ld :','Hong-Kong'),
('L\�c`XD���\�nM','Hongrie'),
('�0MFS��\"\�?\r�\�','Île Bouvet'),
('=��c�Gu��ϓ�','Île Christmas'),
('�\�0L}F\'�\�0v\�50�','Île de Man'),
('��\'�h\�E\\�6v�7ms\�','Île Norfolk'),
('\�Iu�}G��\�M�� �','Îles (malvinas) Falkland'),
('P\�y�\\\�M��g��p��','Îles Åland'),
('�s܋&GAa���k\�h\�s','Îles Caïmanes'),
('\��6?7\�M\�/\�\�\�9�','Îles Cocos (Keeling)'),
('���#M(�Э4\�L\�\r','Îles Cook'),
('\�\�k	\�N���3\�\�\�k','Îles Féroé'),
('0B�B=�A>�ϗ\�/aR','Îles Heard et Mcdonald'),
('ڒ`\�:I��6\�\nP�\�','Îles Mariannes du Nord'),
('\�\�\�);\�O\��.��','Îles Marshall'),
('$�ӽzK��0cp�','Îles Mineures Éloignées des États-Unis'),
('@��\"J@΍�F}��\��','Îles Salomon'),
('�����oK��<52�','Îles Turks et Caïques'),
('\0S��sM>�\��Α�\�','Îles Vierges Britanniques'),
('1?+\�`K������3','Îles Vierges des États-Unis'),
('\�\�f���O�\�\�6\�y�\�','Inde'),
('\��\�#%I��cC�b\�\�','Indonésie'),
('��%\�AB\��x�w��','Iraq'),
('�l�U\�~H��\�@շp\�`','Irlande'),
('�\�̠fAڲ\�N9#\�Δ','Islande'),
('e܈�\�Lw�a�\�D.\�^','Israël'),
('�j�$�\�B���x\0h,�y','Italie'),
('\�j\�	�&@�\�M&v/{�','Jamahiriya Arabe Libyenne'),
('g\��|�A?�?�\�#\�-','Jamaïque'),
('\�LYFæ�A�\�M','Japon'),
('�J��(L\Z��\�JoȈH','Jordanie'),
('5��>\�PK@�\ZM\'	��','Kazakhstan'),
('g;ZE\�\�B��t{\�\�(_','Kenya'),
('\�HYɆKV�m�)ᎍ\�','Kirghizistan'),
('_\�8!x\�O��X�\�d\�$','Kiribati'),
('Z}�?�LE���v�\�\�','Koweït'),
('k9��̱M\"���\�ܯ\�c','L\'ex-République Yougoslave de Macédoine'),
('a\�\�֡OL~�U�\�(`�','Lesotho'),
('\��݄¨A\��\�wh=��','Lettonie'),
('�g�*GJ|�o��\�+	C','Liban'),
('�\�\ZD��\�dH�ѓ','Libéria'),
('^�\�H��O-��!w֊��','Liechtenstein'),
(']N�U\�gG奸���3[','Lituanie'),
('�L�,�\�@ؑ\��[\�q�','Luxembourg'),
('\��w�N\�J>wA\��)','Macao'),
('Oa�\��L�u\�N.�','Madagascar'),
('�\�,n0E\�K�d7j`\�','Malaisie'),
(':M��\rFS�\�m�D\�e\�','Malawi'),
('��\�\'\�iG.�UlaC\��','Maldives'),
('1\��SuD)���_���','Mali'),
('?cG6.Fִ���\�','Malte'),
('{\�>[\�K��H�^6��-','Maroc'),
('%8\�QC\�M\��;\�\�Z�\�','Martinique'),
('�4�WDN��\�\�\�\Zv%\�','Maurice'),
('\�QJx@����m��[\�','Mauritanie'),
('{�eY\�K\�\�+��\'?','Mayotte'),
('��\�\r	J�N\"i\� ','Mexique'),
('�a:\�KT�6�Jd̫','Monaco'),
('s\rM�Kܐn+\�\�Vj','Mongolie'),
('��sےVEڇ\�\�\�Ct�^','Montserrat'),
('ua3$�O\�ty\�\�:|','Mozambique'),
('�\n�\�\�&N��Gn]\�\�','Myanmar'),
('���U\�\�L��X{Ph\�','Namibie'),
('D\'\�z9@ǲO�\�r}\r','Nauru'),
('�1ԏ\�M��	@�\�]','Népal'),
('@\�x\�jE��sZ\"h�O?','Nicaragua'),
('8�\��yJV�\�:e魮','Niger'),
('sL\�r9F���\�6\n@b�','Nigéria'),
('0���\Z\�A\\�`j\�\�\�B\�','Niué'),
('r\�\���N��\�\�D�|�','Norvège'),
('o\0\�7Cҡ�+\�_{�','Nouvelle-Calédonie'),
('\�\�,\�H\�D��\�4]�\�б','Nouvelle-Zélande'),
('�xC_�s������','Oman'),
('M\�.k7�BH�gJ��s\�','Ouganda'),
(' �x�*M���\�ub7$','Ouzbékistan'),
('�s\�E�I��l\�Ƌ\�}','Pakistan'),
('�F�\�\�D��	_\\\�ޚI','Palaos'),
('\�\�H�u�N���lb]\�','Panama'),
('\�43�\�NΫdo$�\��\�','Papouasie-Nouvelle-Guinée'),
('�O�\Z�\�M��t�V\�^','Paraguay'),
('-��lN؂�:��l�','Pays-Bas'),
('\��}3]�I\��pErg��N','Pérou'),
('ԏ�\��OGB�JjU\�Y��','Philippines'),
('��\�\�E\�! \�\nܩ','Pitcairn'),
('���g�{O\n�)M\��̼','Pologne'),
('\"��uB��5\�\�ϭ��','Polynésie Française'),
('�[\�.HT�@�\�s@\�','Porto Rico'),
('k[0(\�C��\�\�f\�\�\�','Portugal'),
('�\�bc��J��][\�\�a','Qatar'),
('�\Z�\�~�Oܜ��\�\�q\�','République Arabe Syrienne'),
('͑��4�B\�~�2ҎG�','République Centrafricaine'),
('\nĲ�\0D(��\�ѳ\n','République de Corée'),
('h�\�Hr�`\�H��','République de Moldova'),
('\�z\�S\�A4��Ol/\0\�c','République Démocratique du Congo'),
('>�f�3\�LX�\�ҹ\\�','République Démocratique Populaire Lao'),
('\�;W�\�A+��\��\�\�nR','République Dominicaine'),
('�Se�1�EP��]ͬ�,','République du Congo'),
('c\ZC�\�M��=��U\��','République Islamique d\'Iran'),
(':\�Q�YDI	���\"m%\�','République Populaire Démocratique de Corée'),
('C0�W�E\�G�R�\�','République Tchèque'),
('�2�K�xK��w�E�','République-Unie de Tanzanie'),
('�LP[\�ZF�M�̶��_','Réunion'),
('@l2I\�A쬿	Z�Z','Roumanie'),
('݁��\0I\�%����\�','Royaume-Uni'),
('E�+�\�E\�Nxb&0C\�','Rwanda'),
('e�g�LS�\�\\�\'�Z','Sahara Occidental'),
('ʁ��\�\�Fw��\��A�','Saint-Kitts-et-Nevis'),
('ǎd�UuG\��v\�\�y\�','Saint-Marin'),
('\'H<�ʗH}�@�>\��','Saint-Pierre-et-Miquelon'),
('!\�\�9\�8C��\�q��N)','Saint-Siège (état de la Cité du Vatican)'),
('�\�\���D[�\�m?\�QT\r','Saint-Vincent-et-les Grenadines'),
('6\'+\nH*LL��u\�_\� ','Sainte-Hélène'),
('�\'Y�d�O�A�%1Gg','Sainte-Lucie'),
('HOaϪ5HԳ�;\�\�LL','Samoa'),
('Z��O=AIυ\�qvI','Samoa Américaines'),
('��Q�\�\�A{��\�U�\�0','Sao Tomé-et-Principe'),
('N�\�_\\fDؔ�h\��\�','Sénégal'),
('��!bA�\�9r\��~}','Serbie-et-Monténégro'),
('s�\�1\�gCV��#>˫i�','Seychelles'),
('&b\0\�u�@\�!(#%zx','Sierra Leone'),
('\�o~&�B����\�U�\�','Singapour'),
('q/�4O^��\�`		t','Slovaquie'),
('b>\��M��I\�\ZF�Yi','Slovénie'),
('NV�T\�O�Lf�U�h','Somalie'),
('�4\�\�K\�D߽\�\�\n�\�I�','Soudan'),
('\�m�#n�F!�\�\�@~T�\�','Sri Lanka'),
('��D�\�H`���\�d�=','Suède'),
('�!!\0�\�F���ҁz�u','Suisse'),
('\'\r��<K��#\�;;C','Suriname'),
('\�Ԛ�\�Me�P\�\�\�\Z\�','Svalbard etÎle Jan Mayen'),
('�\"tH��N2��}gm���','Swaziland'),
('��\�\�\�mO��|qӔ\�\�','Tadjikistan'),
('Co�0\�@�yP�K\�\\','Taïwan'),
('?\�\�\Z�\�F���wY\�\��','Tchad'),
('���HTwNԞ	��\'U�','Terres Australes Françaises'),
('�\�	D�O\'�\�\�45��%','Territoire Britannique de l\'Océan Indien'),
('��.�kB\��\�\�\�\�n\�','Territoire Palestinien Occupé'),
('E\�\�\�K��vUA\�)&','Thaïlande'),
('>-J[\�cO��*����','Timor-Leste'),
('\�\�\�J6\�C!���be','Togo'),
('<���\�M���\�^\�\�1','Tokelau'),
('\�a\�\�\'LM�\�h\\�','Tonga'),
('\�Z�TE{�\�Z�!','Trinité-et-Tobago'),
('�c[Wj\�L��Rl��\�\�','Tunisie'),
('�\�]\roM��Bqj�\�\�\�','Turkménistan'),
('3\� �M7�=\��sz��','Turquie'),
('?Ǹ�\�`HB���^g\�-�','Tuvalu'),
('��,\�\�H2��\�C; �','Ukraine'),
('��d��\�@ﾖ6/{7\�2','Uruguay'),
('5��\\9L��S>2Jݳt','Vanuatu'),
('�~��@V�Zd�\rx�','Venezuela'),
('��?�MGh�K�E\�\�qH','Viet Nam'),
('�PF�F{� ��\�*\�:','Wallis et Futuna'),
('�_�\�{K��\�`=\�.\�','Yémen'),
('\�\�9��\�D⑹��\��','Zambie'),
('Dr\"�\�\�K�\�\ZG�f�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-03 14:25:00',7),
('DoctrineMigrations\\Version20240201152951','2024-02-03 14:25:00',5),
('DoctrineMigrations\\Version20240202084749','2024-02-03 14:25:00',3),
('DoctrineMigrations\\Version20240202150901','2024-02-03 14:25:00',3);
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
('��Ȩr@ܢ�[�,C�','Merlot'),
('w3\��qO\r�\�\�\�A','Nebbiolo'),
('�chi�C�� Z�\�\r�','Petit Verdot'),
('��\�\�\�F��h\�DN׋','Pinot Noir'),
('���7QD��93�\�=','Sauvignon Blanc'),
('ݸ\Z\�\�DQ�\�\��Ҽj�','Shiraz'),
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
('\�o;ԈC����\�\nl','hugues.gobet@gmail.com');
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

-- Dump completed on 2024-02-03 14:25:03

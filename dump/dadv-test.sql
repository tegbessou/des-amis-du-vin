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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99,'2024-03-19',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99,'2024-03-19',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99,'2024-03-19',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99,'2024-03-19',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','\�o;ԈC����\�\nl','France',1599.99,'2024-03-19',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'\�o;ԈC����\�\nl','France',358.99,'2024-03-19',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99,'2024-03-19',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99,'2024-03-19',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','\�NE\�DԍB\�\�\�a�','United States',199.99,'2024-03-19',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99,'2024-03-19',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99,'2024-03-19',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99,'2024-03-19',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99,'2024-03-19',NULL);
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
('/�\�~L9G���i�B\�1','Afghanistan'),
('�\�!\�tB��s�\\B\�','Afrique du Sud'),
('\�l7H,N\n���\�\�4\�','Albanie'),
('\��\�)A���\�\�r\r�/','Algérie'),
('.�o\�cLHĮoN&Ұ�\Z','Allemagne'),
('$\�\�\�rN\��t��\�\00','Andorre'),
('\�Ch.\�?M\�ga>>\�\0','Angola'),
('\�\�\�%mH~�\�<1�\r�','Anguilla'),
('1\�;\��A���,�\Z&m','Antarctique'),
('o>�@fE��3^Y]i�','Antigua-et-Barbuda'),
(')�o,Ho��F:�7O�','Antilles Néerlandaises'),
('\\�\�	\��M��J�\na\�d','Arabie Saoudite'),
('�ۓ�}JJ%�o?\�8ڵ','Argentine'),
('z�����F�����:|6\�','Arménie'),
('\�1ʾ\�;H\�=/I\� �','Aruba'),
('G\�ۜ�H��fb���','Australie'),
('�\�Og-\�H���&k\0\�\�W','Autriche'),
('E&1}*\�A5�!\�؇M9�','Azerbaïdjan'),
('�t��\�MJ���\�*\�','Bahamas'),
('E7N\�O�)\\\�\�t','Bahreïn'),
('�S��F_B��VY���\�','Bangladesh'),
('�c\�$��Dβ��\���\�T','Barbade'),
('\\�\�O]�A���<I\�\0�i','Bélarus'),
('p}{\04WG{�X (T=�\�','Belgique'),
('�>�\��VM.��KOlG\�y','Belize'),
('��Ɇ<M$��z�2�','Bénin'),
('<\�\�0\r\�@\Z�\nl\��dU','Bermudes'),
(':H\nʲHx�\�4\�9�\�$','Bhoutan'),
('\�\�B\�\�\�C�4�����\�','Bolivie'),
('���\�\�M��\�{R\�*','Bosnie-Herzégovine'),
('��\'Ц\�GԬ\�\�\� �','Botswana'),
('��4��\�C]�\�\���\�','Brésil'),
('�u�}G\�E��Թw\�\�','Brunéi Darussalam'),
('f]p�\�G��\"?z�j\n','Bulgarie'),
('7�YT��B��eX�\�\�\�','Burkina Faso'),
('i�-�B\��.Cb(\�W`','Burundi'),
('t\"\�O\0\�ET�hD4���*','Cambodge'),
(']��\�ʭN]�O�(r�\�','Cameroun'),
('\�v\�QG��Ne-\��p','Canada'),
('!N�\���D��v\�>\�q�','Cap-vert'),
('�5ɝD>H&��D^�Ej[','Chili'),
('\�ú�\�\�B�3\�\�1\�\�\�','Chine'),
('rV�}�@i��+˝','Chypre'),
('y\�f\�\�<D\�J\�Q\n�','Colombie'),
('�Ɠ�\�iJ/�\�\�\�虧�','Comores'),
('z<n[2SJg�̠NK8��','Costa Rica'),
('���\�ʶN��EUKe�@.','Côte d\'Ivoire'),
('U���XIӫ�|S�.3','Croatie'),
('\�6�Hb\�LD�\�`\�O�}E','Cuba'),
('@D\�R!0A`�\rN�l��F','Danemark'),
('�ٙ.\�A��\�O�\�.:j','Djibouti'),
('��\��I\��Dn\��.','Dominique'),
('$\�\�\�\0\\Ad�\�\�pŹ�','Égypte'),
('�\�\�\�Mg�\�NM\�º\�','El Salvador'),
('Rq\�\�\�\0D��\�\�%\�','Émirats Arabes Unis'),
('�q��\�/Ja��7@�%\�','Équateur'),
('I �\�\�J�;\�]\��\�','Érythrée'),
('\r\�d��E ���b\0\�m�','Espagne'),
('\�\��\�G/�@�\\x$\�,','Estonie'),
('X\�\�z�\�H��	�P\�D','États Fédérés de Micronésie'),
('\n8Z7\�@Ϙ\� �~�a','États-Unis'),
('\n\0��H[����R9','Éthiopie'),
('���\�\�J��	�\�6�B\�','Fédération de Russie'),
('�-�iC��\n�D�\�','Fidji'),
('v\�%8}O�\�-^k9J>','Finlande'),
('\�.Ȉ�\\JI�ș8O�\�','France'),
(')��\�vX@��~\�\�\�g�a','Gabon'),
('_\r㍖L\�j\�\��\�','Gambie'),
('Ͽ_c�K%�\�<:ӿ!\�','Géorgie'),
('tl89 Gg�F./�\�>6','Géorgie du Sud et les Îles Sandwich du Sud'),
('r7��T�K����8.1_�','Ghana'),
('\�\�\�3XK\n�\�\�S��>','Gibraltar'),
('\�`h\�c�B���x��oL','Grèce'),
('x���\�L$�a�AWxZ','Grenade'),
('�\rm\�9A־K�\Z�1-','Groenland'),
('.�C\�F��p�4���o','Guadeloupe'),
('u��y\�^J�<P��֏{','Guam'),
('q�\�\�~K�����\�\�\�F','Guatemala'),
('\�\�6F��\�\�K','Guinée'),
('\�\0�\n9Kë\�U\�E�L','Guinée Équatoriale'),
('\r\�\�BSN޽\�\�/�','Guinée-Bissau'),
('uFb~\�\�B2�2,E\�\�Q','Guyana'),
('�DF\���G⍳\�\���N','Guyane Française'),
('	n6p\rC�\�\�ߴY\�','Haïti'),
('\��\�`�\�EP��k\�߫�\Z','Honduras'),
('0\'7�\�\�B��%֦J�\re','Hong-Kong'),
('\�j�ֳwM���D6\�\n�','Hongrie'),
('\��\�?-B��\'\�\�m@\�','Île Bouvet'),
('}��ͺN�ي@\�|��','Île Christmas'),
('��ed\�zL\��戁�e�','Île de Man'),
('�\�\�$\�yEU�\ZG#�{L�','Île Norfolk'),
('\������MΜ�^w\�s\�\�','Îles (malvinas) Falkland'),
('��ts\�Nk�\�R\�dt�','Îles Åland'),
('YH�\�i\�@�����\Z�\�{','Îles Caïmanes'),
('��bZczN\�7O\�]�','Îles Cocos (Keeling)'),
('V\�Β\�6C����\�H\�','Îles Cook'),
('\�D`+\�NƇ�%W\�\�','Îles Féroé'),
('4�\�UnuN\0�3��\�.v\�','Îles Heard et Mcdonald'),
('�\�l\�jLE`�qB??�','Îles Mariannes du Nord'),
('\��\�O\�\�,R�\�\��','Îles Marshall'),
('l�\�#�O3�.|�29ƶ','Îles Mineures Éloignées des États-Unis'),
('B\��O���SC|�\�','Îles Salomon'),
('�Sã\�@ӌ\�u\Z\��Y\�','Îles Turks et Caïques'),
('�!\n#�\�@���&D2�\�','Îles Vierges Britanniques'),
('\��2H\\6M\'�:W�Lp�G','Îles Vierges des États-Unis'),
('�\���46@L�t\�ؠ�','Inde'),
('\�\\cS��K��\\��\'P��','Indonésie'),
('*`�~g\�GΞ��κ�G','Iraq'),
('=�v�\�L\��f(-W�','Irlande'),
('߹\�\'\rI��3��w�N','Islande'),
('�\�`4��L���+]@\�k�','Israël'),
('\�\�ţ\�JN�S}\�A\��','Italie'),
('���\�\�G͒\�Μ��m�','Jamahiriya Arabe Libyenne'),
('dv\�j�L��u@��','Jamaïque'),
('�\�\�\�-J\�\�t\Zg','Japon'),
(';\�o\�\�F\�>\�|TFc2','Jordanie'),
('�;s4�\�@ß\�}5�1w','Kazakhstan'),
('�\�\�sC5�¯b�$Ʋ','Kenya'),
('\�\�.\�\"H\�\��w\�\�','Kirghizistan'),
('Q\�\�kТM\�9�5᎕','Kiribati'),
('\�\�^\�\�N��\�\���^0','Koweït'),
('\�M\�DyI\�\'K�\�','L\'ex-République Yougoslave de Macédoine'),
('o��@\�AE먴��@��G','Lesotho'),
('}\�i�QB%���F:F','Lettonie'),
('P]v���J\�F\�(\�\�(M','Liban'),
('\�ql8@��Ul��`�','Libéria'),
(':E�k\�2N����@�7J\�','Liechtenstein'),
('��\rǅGߴy蓮qD','Lituanie'),
('+�2\�L����0��','Luxembourg'),
('�]�\�]�Fʱ�x]\�Z>','Macao'),
('�x��\�FJ��\�\�]2�I','Madagascar'),
('�b\0\�V�AD���}\�]:','Malaisie'),
('�n�@��? F\�\�H\�','Malawi'),
('*\���\�<L���\�\�\�','Maldives'),
('\�3��x\�A��:\"\�`gR','Mali'),
('��	4\�:C��F��\�\�','Malte'),
('ښ~p\�@���v\�=\�','Maroc'),
('\�N\�E=��$\��eA','Martinique'),
('�\���MD`�N	�Op','Maurice'),
('D��0I���!ҴT�','Mauritanie'),
('>��҂iOȧ\�.z\�ϥ','Mayotte'),
('�L��iH�GGd׌�\�','Mexique'),
('�J\ZFy�I��_\�\�\rs\�','Monaco'),
('q��a\�\rH��\�>\�w','Mongolie'),
(']\�8)�B��k\�M�','Montserrat'),
('y�0I:J��폶s','Mozambique'),
('g�z�<SO`�B��\�\�\n','Myanmar'),
('�06�b\�M �\�R�*\�}','Namibie'),
('`p��tD|�\�L\�W�\�3','Nauru'),
('cLϺ\�Jچp\�\�3:Ҹ','Népal'),
('���+L1K\�X�ܖ�\�\0','Nicaragua'),
('.\�nE\�CJ�\��p','Niger'),
('\�\�V\�o@��\�\�\�\�}','Nigéria'),
('͉�1\��F��Ʊ�;y�','Niué'),
('+\�~\�9M*�\�_\�\�@','Norvège'),
('f�\�x��I�k\�\��','Nouvelle-Calédonie'),
('�aL\r�I�\�]$7\�*','Nouvelle-Zélande'),
('�\��g�O���\�l%8\n\�','Oman'),
('��|0=�FY�ݑPcB-G','Ouganda'),
('�:B\0�DT�j}!\�eoI','Ouzbékistan'),
('�\�F,K\0�n;��\�4','Pakistan'),
(' Y�k\�H:�\�n<\�hl','Palaos'),
('t�\�y\�uM��ox�7\�X','Panama'),
('�qb\�B�K\�`yPg\��','Papouasie-Nouvelle-Guinée'),
('��Fb�\�Kg�k��{K\�G','Paraguay'),
('r9wB�M	��V�mխ�','Pays-Bas'),
('�ǋ\�EM\�eR�\�~','Pérou'),
('��&P�,@Հ!�[rv�\�','Philippines'),
('\�p=\�ٗHo�\�%|b�0�','Pitcairn'),
('[\�z19Jd�.ێ�\�\�','Pologne'),
('fh\�\�@;���]��$\�','Polynésie Française'),
('\��\�mHN��߉\n�gh','Porto Rico'),
('|��\'�[Eu��\�\�N','Portugal'),
('!f+%>�A>�OD���A`','Qatar'),
('�\�	� BH�\� X\�\�','République Arabe Syrienne'),
('�D�*�DU��J�\"Z�','République Centrafricaine'),
('\���u~D}�\"��\�g','République de Corée'),
('�L\�=\�J��|\�\'\�SF','République de Moldova'),
('JJD\��H��EPJ$v','République Démocratique du Congo'),
('&g!8L[E6�\'����\�\�','République Démocratique Populaire Lao'),
('�\�\"\�\�K-�\�}J�\�	\�','République Dominicaine'),
('O\��\ZE�������','République du Congo'),
('�u�/rE��G_ׂ\�a\�','République Islamique d\'Iran'),
('\0]\�\�dE\�\���a+�\r','République Populaire Démocratique de Corée'),
('�\�e��_Lȕ�\�[G��','République Tchèque'),
('?����&Aថ\�\�½\�H','République-Unie de Tanzanie'),
('���͊\�G��o\�P�P�','Réunion'),
('\�[�\�%O@C�\�2 �a','Roumanie'),
('<l�ܒBȹl��\�\�k','Royaume-Uni'),
('5_*\�V\�C\�7�F&S�}','Rwanda'),
('\��߷\�PFȗ�&f��G�','Sahara Occidental'),
('?�n��D��\�\�0/,�','Saint-Kitts-et-Nevis'),
('[5W�\�DՓ=e��\�l','Saint-Marin'),
('�O���C��_�J	^\�','Saint-Pierre-et-Miquelon'),
('H\�[\�B\�51�\�\�\�','Saint-Siège (état de la Cité du Vatican)'),
(')\�\�z�Dv���g\�\�','Saint-Vincent-et-les Grenadines'),
('d�\�\�\�(@Ͼ�\�0��R','Sainte-Hélène'),
('\�\'�� E��I�0\�É','Sainte-Lucie'),
('\�kT�\�SF�pvA\�D�','Samoa'),
('��\Z[\�IKЀELPg\�N','Samoa Américaines'),
('��W�\�\�K���\�\�-\�\�','Sao Tomé-et-Principe'),
('�(g��C�j6�=\�\n','Sénégal'),
('3	\�<LK��*���ĉ','Serbie-et-Monténégro'),
('��m\�`dE��p1��w\�$','Seychelles'),
('\�kٻc\�N��\�[\�\�9>E','Sierra Leone'),
('�Mqr�\�Cq��\�Lo�\�G','Singapour'),
('Y[&�GCJ�.�3EY�','Slovaquie'),
('\��\�B�Hc\�r�','Slovénie'),
('!�\�\�\��F廡*渳\�','Somalie'),
('\�e�0/O��rd\�%OB\�','Soudan'),
('Xj�TK\Z�s^\�	�1','Sri Lanka'),
('�\�\�kD��X8�v','Suède'),
('�K\�N�D%�n��m�R','Suisse'),
(' \�\�C��@$�j3��X\"^','Suriname'),
('V���\�LƧ�x��c','Svalbard etÎle Jan Mayen'),
('H�\�\�%�N����\�@8','Swaziland'),
('@�\�@\�K8�>h\�	;','Tadjikistan'),
('��[�\�\�L��\�͂\rk�','Taïwan'),
('\�5m`HÚ������s','Tchad'),
('�׆��J࣡�ܓ�\�','Terres Australes Françaises'),
('\n܌N)�B%�\��R��','Territoire Britannique de l\'Océan Indien'),
('4p\�\�8!Fё\�	2��4>','Territoire Palestinien Occupé'),
(']\�1< d@��Ą/֠','Thaïlande'),
('\�A\��L��9�vUo\��','Timor-Leste'),
('e�K��\�EN�9p\�T\�\�','Togo'),
('A(�vA���ճ�\�%�','Tokelau'),
('|�4u{eD��r{;z.K\�','Tonga'),
('���=�IՇ��UK\��','Trinité-et-Tobago'),
('F/�\\x�@]�8ے�]^','Tunisie'),
('IO\�F�\�J��\�j�ګ@','Turkménistan'),
('6u #rK֎��-��\�A','Turquie'),
('�\��OR��\��\�O]\�','Tuvalu'),
('\��\"0E��\�#4\\b�X','Ukraine'),
('\�Q�\�~�E��\��`���\�','Uruguay'),
('\�$\�D3�\���\�\�\�','Vanuatu'),
('�Z\�L\�F�?d\�ۢ�\�','Venezuela'),
('�b^^\�I�D^��','Viet Nam'),
('+t~�\�\�B=�s/a�\�b\�','Wallis et Futuna'),
('8�i\�D��\�\�\�','Yémen'),
('=\�l?\�D2��ޙq��\�','Zambie'),
('�y\\.�jF�\�&|�\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-03-19 21:25:40',8),
('DoctrineMigrations\\Version20240201152951','2024-03-19 21:25:40',2),
('DoctrineMigrations\\Version20240202084749','2024-03-19 21:25:40',4),
('DoctrineMigrations\\Version20240202150901','2024-03-19 21:25:40',2),
('DoctrineMigrations\\Version20240207105701','2024-03-19 21:25:40',5),
('DoctrineMigrations\\Version20240319212437','2024-03-19 21:25:40',3);
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

-- Dump completed on 2024-03-19 21:25:43

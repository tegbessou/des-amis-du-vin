-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
('\���\0,J��Ȓ�|Udi','Afghanistan'),
('�0[\�\�G!���q�AD]','Afrique du Sud'),
('�\�\�\�UA�0M�\�\�','Albanie'),
('�>m6\�\�N\���Si���','Algérie'),
('\�\�\�k-C�aU\�o�','Allemagne'),
('V��O�D���\�X\�@�\�','Andorre'),
('�L\�t-�L��gE\�mv','Angola'),
('\��\�2�H�����h-','Anguilla'),
('x��\�\�G��Ӄ\� \�\�','Antarctique'),
('\�\���\�C��m�5b@��','Antigua-et-Barbuda'),
('O\�\�VuOL\�ʒ�؃�','Antilles Néerlandaises'),
('D)\��nG\�3\�\�F1+','Arabie Saoudite'),
('D͋),E�K;�މD','Argentine'),
('d��4�I\n���]o�B�','Arménie'),
('�\�ʜ H\0�\��\���','Aruba'),
('4w0�cH�\�\�d��','Australie'),
('\�\�H\�JDۻf\�gٷ��','Autriche'),
('-����MV�[I\��3�','Azerbaïdjan'),
('\�pC\�A��-?g?�\�O','Bahamas'),
('j���K@�P���_�k','Bahreïn'),
('�E\�g�J^�t=�N�\�','Bangladesh'),
('��&|\�cD��~؇\�t�','Barbade'),
('�y�\�\�Jr�l9���=','Bélarus'),
('��\�\��\�K&��藍?�','Belgique'),
('��OG�+Nu�hW7','Belize'),
('\�;\0�8.AƅZ\0�[','Bénin'),
('��\�N��M�J\�\�5��','Bermudes'),
('6c4zCPL����\Z>��\�','Bhoutan'),
('�fZ\�inA���\�q#\Z�','Bolivie'),
('\���\�@j�_�`p\�\�','Bosnie-Herzégovine'),
('C��\�PN٧k\�N \�','Botswana'),
('bޥ\�Q}Mu�\�/�\�\�\�','Brésil'),
('o9&�\�M=��B�V�','Brunéi Darussalam'),
('��\�W��M��1�<X�-%','Bulgarie'),
('\�4\�rJ����^\�v\�','Burkina Faso'),
('R@O��\�I\��k�\�\�V','Burundi'),
('\�{��4A��.���\�\�','Cambodge'),
('J�:\�N\Z�S\�\��ਙ','Cameroun'),
('����^\�K?�4/�Q��','Canada'),
('�K�/\��L\�Qg�]\�	','Cap-vert'),
('\�ᰎ��L��\�\�3�6','Chili'),
('`3.\�tPG@����^o7','Chine'),
('gu��CHU�\�L\�YgF','Chypre'),
('9-�hH̺`qQ��G','Colombie'),
('φ�!\�\�Ea�\�\n4A\�','Comores'),
('\�~\��@ԥ`�	�l','Costa Rica'),
('|���O���i�\�\�R','Côte d\'Ivoire'),
('9N8�cH����\�\�b�','Croatie'),
('\��N*9�B�����Y�\�','Cuba'),
('\�\�\�y�H��2�W','Danemark'),
('#\�gO\�\0YD��t','Djibouti'),
('?\�2֦HA������Mz','Dominique'),
('s�ǀ~J\��//t\�.�','Égypte'),
('g�3\�\�DC�\�\�\r7<�\�','El Salvador'),
('7�\�\�B]�\�ևr:�\n','Émirats Arabes Unis'),
('\�vNp��Mg�L76��\�\�','Équateur'),
('\�\�L�D0�\�f(ú#','Érythrée'),
('nP1w/J(��:[��3�','Espagne'),
('�7Q�upF>�\�޺\�=','Estonie'),
('��S_-�H	�F;\��C�','États Fédérés de Micronésie'),
('�ݲf�vE��k1�\�\�i9','États-Unis'),
('w\\Y-GNv�\�	&�\�%','Éthiopie'),
('dg���0GJ�\�@��\�\�','Fédération de Russie'),
('#\Zbc�M��\��:.+�','Fidji'),
('��n�K��\�st	<�w','Finlande'),
('\�hvCJ�p7Α\�','France'),
('���P\�\�F\�\�\�8g�\�D','Gabon'),
('�\�Jg�KC��M�,�\0\�','Gambie'),
('�#��\�N��̞vz�\�','Géorgie'),
('\�\�Q��LX�8U��0�','Géorgie du Sud et les Îles Sandwich du Sud'),
('rl\�\\L��q\�kY�','Ghana'),
('zr��\�mH�����.\�}b','Gibraltar'),
('p��\�\�CJ��\Z\�\�\�A\�','Grèce'),
('��K+�\�HH�\�U\�=�@1','Grenade'),
('��x-�	Cɂ\����mg','Groenland'),
('|\�΁\�O���G�\�t:','Guadeloupe'),
('a�\�WtD$�E���\�e�','Guam'),
('%)�\�\�M��]k\�%�zt','Guatemala'),
('\�[\"ɏI)���\�.�\\b','Guinée'),
('\�\�\Z\�5O�Ni�Q�1','Guinée Équatoriale'),
('�.w\�\"}G\�\��\�p','Guinée-Bissau'),
('\��S1+C��\r\�3|0\'u','Guyana'),
('��\�2:F\n�Q�<W���','Guyane Française'),
('\�\�c{\"\�FM��\�\�\�&j','Haïti'),
('vWWbm�F\���i\n���','Honduras'),
('BsDM,��� z�2','Hong-Kong'),
('|\�\�#\�A��\"��\�t�','Hongrie'),
('�\�hx��KɣY�\�ɞ\��','Île Bouvet'),
('�rN�=KY�5\�\�\�6','Île Christmas'),
('a�\�2F�U@5�xr','Île de Man'),
('p\�\��\�,F��\n��\�2h','Île Norfolk'),
('��\�(0F��ic���\�','Îles (malvinas) Falkland'),
('C1�jB\�\�>��\�\�','Îles Åland'),
('\�A\�\�N�����t}<','Îles Caïmanes'),
('`M\'�\�BO�R�i\�\�\�','Îles Cocos (Keeling)'),
('\�`Z�M���b	\n\�)�','Îles Cook'),
('a���U)Mڰ�\�ܻH5H','Îles Féroé'),
('^_\�\�LO�V\�\�\�','Îles Heard et Mcdonald'),
('\�&&j\�\�A��\�n��j\�f','Îles Mariannes du Nord'),
('\�\�\�.inDH�\��%�:K','Îles Marshall'),
('|\�])\�Ns�C\'}U,n�','Îles Mineures Éloignées des États-Unis'),
('� �+\�PFP�ly0l\�\�7','Îles Salomon'),
('F{{���FԴ}}���Z2','Îles Turks et Caïques'),
('�\�}0-L\�K�\\@�Z\Z','Îles Vierges Britanniques'),
('\�]\��\�D �\n6�B!#\�','Îles Vierges des États-Unis'),
('\�\����B����0qT\�`','Inde'),
('�\���3�LM�\�y9\r-1�','Indonésie'),
('\�\�\�F*��\'\�<\�\�','Iraq'),
('\�\�*)\�O�\��\�\�s','Irlande'),
('�|��F��>�eU8�\�','Islande'),
('\�a)FM3�\"��]�09','Israël'),
('\�+vdJ\���\�\�T��z','Italie'),
('�1�4��I��~!s��֯','Jamahiriya Arabe Libyenne'),
('��Nu�G	�>c��\�\�','Jamaïque'),
('0�\��^@\�0j�{\�C	','Japon'),
('�},m��Dk�\�.4�P','Jordanie'),
('\�N\�XOEOš}k\�+b[','Kazakhstan'),
('\�D�\�\�L��}E;r�;','Kenya'),
('n�6>xD���\r UB>','Kirghizistan'),
('Ȣ��\�pK�_&]��\�','Kiribati'),
('O���!\nHο~+�cȧ','Koweït'),
('	K1o\�M\\��)y~\nq','L\'ex-République Yougoslave de Macédoine'),
('B�\�\�J{�.\�\�\�i�','Lesotho'),
('�\�eE*Oѝ�1\�\�\�L','Lettonie'),
('�^��x>Ij��ٛ�qT�','Liban'),
('�s��~C���\�6%޼','Libéria'),
('~�OrcF��itb8R=n','Liechtenstein'),
('U$�UAB�\�%\�\�\�d','Lituanie'),
('m\�K\�\�I�)mPf\�_X','Luxembourg'),
('��M�tVGǍ\�\rc\�\�Zy','Macao'),
('ü\�C݄\\fa�\�','Madagascar'),
('��?GvII\��G\�y@\�','Malaisie'),
('M`^��bHǫ����\�\�','Malawi'),
('Cfm\�q3I��t@�1','Maldives'),
('�[\�\�\�F��C��','Mali'),
('qC=D\�Om�6�z\�\�Q�','Malte'),
('c\�SE�\�V��<p\0','Maroc'),
('\�OՋ\�4K]�?{͠<ï','Martinique'),
(')h�G��Aӝ�7f\�c\�7','Maurice'),
('EBn��@m�kEHL\�','Mauritanie'),
('��5@\�G���\�H�}kO','Mayotte'),
('^/\�`-N��\�W��_|','Mexique'),
('�k\�~��J�jQ%��','Monaco'),
('\'&��3\�FL��b��22�','Mongolie'),
('O��y�Ev�Q����j�','Montserrat'),
('�n\�癋B`��\�(\�eK�','Mozambique'),
('�^C��\�HS�ՀxI\�\�N','Myanmar'),
('\�\�\�WK�Mz\�ݦ\�\�','Namibie'),
('�w�\�ZAʡ0\'\�Pf\�i','Nauru'),
('���\�\�\�N.�\�H\��\�','Népal'),
('�\���b A3�x�\�*�+�','Nicaragua'),
('0c�\"\�\�J���آ\';\�\�','Niger'),
('X\�� %�HƝ�Gb[\�','Nigéria'),
('@N4xkIQ�\�ip\�%\�','Niué'),
('5\�*��DI�\0,�!','Norvège'),
('\��S�H��)a*m�\�','Nouvelle-Calédonie'),
('�)�\�\�FI�?�����','Nouvelle-Zélande'),
('\��{�B�Ls�xQ��؞\�','Oman'),
('DL��KO�\���&,\�9','Ouganda'),
('ٙ7\�8G8�<��v��','Ouzbékistan'),
('�G\�բ*O�\�\�4G�\�','Pakistan'),
('�N�׼FL{��,�\�y�\�','Palaos'),
('ȃ��NNH���\�4Ҍ\Z7','Panama'),
('��\�39@d�v\����`','Papouasie-Nouvelle-Guinée'),
('ޮV��\�Hی�\�䰠j','Paraguay'),
('>]P*;L٪j5o\�\�T','Pays-Bas'),
('W�,\��I\�,Ag\�\�','Pérou'),
('\�[왁MM���^T\�\�','Philippines'),
('�%fzSlNt�վCљ�','Pitcairn'),
('�\�4�d�N:�\��\�Z','Pologne'),
('���R,�@�L\�\�\�5�X','Polynésie Française'),
(')j�5d~Je�\�A\��q','Porto Rico'),
('ص��N��\�\�\�nf','Portugal'),
('\�M\�\�\�KS��\�\�[7�','Qatar'),
('�)�\�E\�O���I�\�\�F=','République Arabe Syrienne'),
(';\�\�}��Dᮄ��\�\��H','République Centrafricaine'),
('��\�<A*�Q\�\�՜\�','République de Corée'),
('y �\�N���\\<��ؤ','République de Moldova'),
('�e\�\�C1���# Pv\�','République Démocratique du Congo'),
('e\�*BrK)��\�\�kL\Z','République Démocratique Populaire Lao'),
('\�b�\r�D\n�U#a���','République Dominicaine'),
('c�\�9yE󠞙U�\�߀','République du Congo'),
('-��\n1\�Ld�+P�ʼC','République Islamique d\'Iran'),
('!�\�k{F2�\�D?�sb','République Populaire Démocratique de Corée'),
('XҊ�½F����2(�Y�','République Tchèque'),
('�xO�\�,D����\�A\�\�>','République-Unie de Tanzanie'),
('�rTK3�Eo���m�F\�0','Réunion'),
('\�\�2m\�yB���\�H�	+','Roumanie'),
('\�[f;�\�H˴\�\nn\�tm','Royaume-Uni'),
('x����F��\����','Rwanda'),
('|�\�7��B������^','Sahara Occidental'),
('�A{N��i\�\�+AZ9','Saint-Kitts-et-Nevis'),
('�\�.�\nHQ��Ez�yHu','Saint-Marin'),
('y\�&HcA���\�^\0�g�','Saint-Pierre-et-Miquelon'),
('2\�\�p+\nH���m�^\�\�(','Saint-Siège (état de la Cité du Vatican)'),
('K��B�	N��\�y�]�3\�','Saint-Vincent-et-les Grenadines'),
('�\�ze�\�Op�\n�\�\�f','Sainte-Hélène'),
('Սz�\�\�E}��\�\n\�1\�\�','Sainte-Lucie'),
('\�\�F\�ǸAٜ��]\�Km}','Samoa'),
('~�\�JJID�\��OH\�c','Samoa Américaines'),
('Io���\�A�B\�SQF\�','Sao Tomé-et-Principe'),
('\��%��D��\�nD?R�','Sénégal'),
('%eI\�ebGM��W�ڵ�\�','Serbie-et-Monténégro'),
('odc�\Z�Md�֞b�yc5','Seychelles'),
('�n�H2|L��<K\�&9K','Sierra Leone'),
('\�s�\�9�J�`U٭\��','Singapour'),
('\�2CݚE1�2�\�\�|','Slovaquie'),
('\�\��]�C��t\�~~�\�.','Slovénie'),
('\�L�\\C�F`��\�\�\�_\'�','Somalie'),
('a_\�\�6L\0�NA\����\\','Soudan'),
('��\�\�C���\"pq`<�','Sri Lanka'),
('�\�$mc\�E\'�EA<�[','Suède'),
('q,,�\�0EX�\�~���k+','Suisse'),
('qNP\�ԒCY�\�.\�\Z��','Suriname'),
('\�5�\�OW��׊G5h\�','Svalbard etÎle Jan Mayen'),
('��4\�#�I\�W}\�\��j','Swaziland'),
('\�\��<uI\��\�\����\�','Tadjikistan'),
('��bH\�\�G\0���\�V\�','Taïwan'),
('�K��o\�E��B{�\�2;y','Tchad'),
('�\�\�n\Z�N��:W�H{\�S','Terres Australes Françaises'),
('l\�\�ԨhF��\�D\�{D�','Territoire Britannique de l\'Océan Indien'),
('�b/\�]IE����\"�','Territoire Palestinien Occupé'),
('(\�.u*\�Eu�\�\��q\'L','Thaïlande'),
('\�ӎOAG�\�\�\�~\���','Timor-Leste'),
('♆K\�Cγ�a\�\��^','Togo'),
('R\�~�GĎ��YP','Tokelau'),
('�=%J\�\�L�\Z�\\�Nz\�','Tonga'),
('�\�CO>uB0�{D=1_','Trinité-et-Tobago'),
('��_b�L��Ѓno`\�','Tunisie'),
('�댳\�4DU�,wx\��','Turkménistan'),
(')ֶ\\A{�=p]�/�','Turquie'),
('\\�\�0~HY�	/ƹ\�`�','Tuvalu'),
('��\�\�O?����*\rM','Ukraine'),
('\�Ε�@�Cπ�]P�{','Uruguay'),
('S�D\�?\�u3��\�','Vanuatu'),
('�}�\�Lت$\�\"\�粙','Venezuela'),
(',%\rn�[Lò��\�\�Ɇ�','Viet Nam'),
('��1��\�K\�Ă\�@�','Wallis et Futuna'),
('\�%�P�_K����@\Z\�\�`','Yémen'),
('\���V\�Ak�~\�\�K\�','Zambie'),
('U�\�f\�C{��\�!\�\04','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-03 14:23:23',8),
('DoctrineMigrations\\Version20240201152951','2024-02-03 14:23:23',3),
('DoctrineMigrations\\Version20240202084749','2024-02-03 14:23:23',3),
('DoctrineMigrations\\Version20240202150901','2024-02-03 14:23:23',3);
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

-- Dump completed on 2024-02-03 14:23:27

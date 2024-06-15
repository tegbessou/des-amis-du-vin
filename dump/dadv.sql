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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','�m2\�#M��fh\�3[�','États-Unis',259.99,'2024-06-14',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','�m2\�#M��fh\�3[�','France',999.99,'2024-06-14',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','�m2\�#M��fh\�3[�','France',2999.99,'2024-06-14',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','�m2\�#M��fh\�3[�','Italie',899.99,'2024-06-14',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','�m2\�#M��fh\�3[�','France',1599.99,'2024-06-14',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'�m2\�#M��fh\�3[�','France',358.99,'2024-06-14',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','�m2\�#M��fh\�3[�','Australie',1799.99,'2024-06-14',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','�m2\�#M��fh\�3[�','France',1099.99,'2024-06-14',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','L\�#zO0��j�q�s_','United States',199.99,'2024-06-14',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','�m2\�#M��fh\�3[�','New Zealand',49.99,'2024-06-14',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','�m2\�#M��fh\�3[�','Italy',899.99,'2024-06-14',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','�m2\�#M��fh\�3[�','Espagne',1499.99,'2024-06-14',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','�m2\�#M��fh\�3[�','États-Unis',1299.99,'2024-06-14',NULL);
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
('XɝT\�J��rPAӸ\�','Afghanistan'),
('buӠ A=�e\0T�1��','Afrique du Sud'),
('m\�:�qH�\��ܮ�V\�','Albanie'),
('-�{U\�*M��\��ٻhF!','Algérie'),
('I�ylA\�C�����8C&','Allemagne'),
('$X�\�tNR�\�\�\�q:6','Andorre'),
('\0���\�eD��\�J\�\�\�!�','Angola'),
('I\�\�\�\�A�\�\�3L���','Anguilla'),
('\"]�\���D-��9)70','Antarctique'),
('\�m:pMVL\���\�\�$v\�','Antigua-et-Barbuda'),
('Qb+\�]gH�\�\�y�ݷ','Antilles Néerlandaises'),
('+�\�\�(\�E\�YA\��\�','Arabie Saoudite'),
('�F润\�H��\�熄x\�\�','Argentine'),
('�e�\�Dѹ�i\�W�f','Arménie'),
('.���\�E|��ps(#\�;','Aruba'),
('���5\�D�� Fe�&��','Australie'),
('\�<\�VzN7�\�5�J��X','Autriche'),
('b~\�\�\�F�\�,��\�J�','Azerbaïdjan'),
(')@Z�\�\�H0�\�$��a\�','Bahamas'),
('�I4~V�L>��9\�9>\�\�','Bahreïn'),
('\��\�e\\O\�{S�|W\�','Bangladesh'),
('�^T��HFx�0TA\�\�K','Barbade'),
('S/�L/���\��u�o','Bélarus'),
('\�$0���A��\�\����F','Belgique'),
('�\�&�>L}��\�Mc\�\��','Belize'),
('�-�4{H�I^:�','Bénin'),
('\�\'fy�>Jћ�W�\�\'3�','Bermudes'),
('\�\�\�n|N��>�̆\�6I','Bhoutan'),
('`Lx�AJ��?S�C���','Bolivie'),
('uG�\�UN`��H���/\�','Bosnie-Herzégovine'),
('8\�߼9M��\�޽(M�','Botswana'),
('#�&aiyA\n�	𞯫�*','Brésil'),
('P�I\�\�M�\�\�4H\�/','Brunéi Darussalam'),
('&�\�Dp�� I�\r','Bulgarie'),
('\'[w�Lq���j\nl�','Burkina Faso'),
('ۿ�s;\�J��8�,Y�','Burundi'),
('�<\�uk\�O��\ny-��!D','Cambodge'),
('f\�v\nC@\Z�4mߺʊ.','Cameroun'),
('���\�\n\�I��\�d\�D\�0�','Canada'),
('FG�\�DF�E\�J�\�ۚ','Cap-vert'),
(':��/üCt�\�\�\"�7^','Chili'),
('L�\�\�iNڅ\�,{\�\�p','Chine'),
('Fn\�\�qI���s\r=-\�V','Chypre'),
('a\�{Z,rLU��pӷ��\�','Colombie'),
('_�F�E@i��\nH\�\�m','Comores'),
('�G�\n\�CL���sy\r	(','Costa Rica'),
('���`\�MMρ\�\�	%k','Côte d\'Ivoire'),
('I\�\�YK��QEB\�\�','Croatie'),
('\�>d�1A;�\�\���)','Cuba'),
('60���I��_eǩL\Z�','Danemark'),
('چ\�<ڒLI���\�TP','Djibouti'),
('�\�t\��\�@$�����\�\�','Dominique'),
('\�|���HH���\'H\\\�','Égypte'),
('\�\�R�62N���\�\�w 1','El Salvador'),
('��\�D܃\�8��7�','Émirats Arabes Unis'),
('�\�\'%IiKH��ZB�~<','Équateur'),
('�K�fU�M����\�S\�','Érythrée'),
('v�\�\�G}��U\�i\�\�\\','Espagne'),
('ڷ,�|O��\�kJb\��','Estonie'),
(']�H�\�	D��R�|\�;�','États Fédérés de Micronésie'),
('�Gf�̮G��\�i�9o','États-Unis'),
('��Wc�L�\�s�\�\�','Éthiopie'),
(',\�y\�\�H�jHm64\�b','Fédération de Russie'),
('�b\�9�K��e\�:�\� ','Fidji'),
('g̓�?SC\�J\�٘\�\�\�','Finlande'),
('	5�q1jI��(M�\�Y\�','France'),
('5���MHK�\�#��\�','Gabon'),
('\0���s&Bļ\�}�\�*_2','Gambie'),
('o\�0�\'NW�߬s\�T','Géorgie'),
('XH,b\�Ab�C��K�\�\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('��V��Oƥ@�S��ԡ','Ghana'),
('$Dm\�\�D��T�C\�2','Gibraltar'),
('�\�\�!LG �D\�\r�\�{','Grèce'),
('\�\�#�J(�\�\�\r�!\�','Grenade'),
('Δ[�VK���IX�&\�','Groenland'),
('$[)�N5�la��W�u','Guadeloupe'),
('BaAd�AO�Y><���\�','Guam'),
('\�\0데MB��\�\�r','Guatemala'),
('c&�\�A�N��n�U\�','Guinée'),
('7�o���N���)�w\�\��','Guinée Équatoriale'),
('\�M{�t@	������v�','Guinée-Bissau'),
('\�@��\�\�LK�\�Ԗ��v','Guyana'),
('@\�\�oOB��z\�?\�`\�','Guyane Française'),
('57#+|\�N^�>p\�\�G','Haïti'),
('1\�n��DJ�Z\Z�s\�','Honduras'),
('��	�D�G���\�\�x\�','Hong-Kong'),
('B5\�jF)�#\���u\�','Hongrie'),
('�g\�lAE��|bV�\�','Île Bouvet'),
('�FnbEZ�\\	�l�\�','Île Christmas'),
('F�bl\�E(�\�\�\�\���','Île de Man'),
('\�q�b\�\rK��\�\�N%\�4','Île Norfolk'),
('\� �\�\�\�F׉c\�\��Z','Îles (malvinas) Falkland'),
('Y�\r�)�Dʞ\��C\�<�','Îles Åland'),
('+j߲o�B\�\�ej\�v\�','Îles Caïmanes'),
('D�OS\�\�Aì�u��\0�','Îles Cocos (Keeling)'),
('�$X�0Dt�\�k�eG\Z','Îles Cook'),
('۱0�\�K�]\�\�5��','Îles Féroé'),
('�3rM�\�B��\\3\�+e�','Îles Heard et Mcdonald'),
('8ӑD�Ad�ܶ���\��','Îles Mariannes du Nord'),
('�D8\�wD3�\�d\n\�<\�','Îles Marshall'),
('n�gM�\�Iʱ�\�:��\�','Îles Mineures Éloignées des États-Unis'),
('iKf�nE\��:\��\�5�=','Îles Salomon'),
('>�0\�E��`lJ\�M�','Îles Turks et Caïques'),
('�\Z���\�I�\�\�f','Îles Vierges Britanniques'),
('O)~\�~J4�*y�7#)R','Îles Vierges des États-Unis'),
('��Y\�Lt��\�(�\�b\�','Inde'),
('��O\�\�\�Iϯ\�,\�\�\�\�','Indonésie'),
('ɫ�|�@	�Y�\�B��','Iraq'),
('\Zӄ�<OS�S�P��J�','Irlande'),
('~ĮIH\�Bޑ�\�δD\�','Islande'),
('�\�\�\�,�L����u�','Israël'),
('�\�刼\�Mn��X2','Italie'),
('V\�?�jXH��,Z��뀓','Jamahiriya Arabe Libyenne'),
('o�\�\�N\�AZ\��\�','Jamaïque'),
('\\�̛�UO��!m�\"��\�','Japon'),
('\�\��\�\�L\\�3\�\�EXi�','Jordanie'),
('���b>\�H�oH?k��m','Kazakhstan'),
('Y=A̓oLM�,��a�T','Kenya'),
('�~\0K\�@��0㖾\�A\�','Kirghizistan'),
('�F��y\�M5�\���~�N','Kiribati'),
('<\�\�\�C��B\�S5llk','Koweït'),
('>��\�CM�\r�	\�>','L\'ex-République Yougoslave de Macédoine'),
('��O� &IH��\�\�\��','Lesotho'),
('�A\���C�����\�6�','Lettonie'),
('ƕ�\�\�C\�*_*�<\�','Liban'),
('\�IY%KY����\�\�D\�','Libéria'),
('N\rc��IG��Y\�)q\�','Liechtenstein'),
('R\�s{jI��\�g\�_p','Lituanie'),
('+x�/\�9A׸��\����W','Luxembourg'),
('\�[\�s\�N���ۼv��','Macao'),
('zV�\'�eEղ]\�\�9�G','Madagascar'),
('ݙ&\�G�B��\�dŘ\�','Malaisie'),
('(i�&O��\��WZ1\�\�','Malawi'),
('\�\�Tk$�E��\�\�\�駩k','Maldives'),
('��#�\�E��]fY	��!','Mali'),
('\�v\�6AEQ���ƙ\�','Malte'),
('ߐ\\���K\�v\�ԗ\�\�','Maroc'),
(')�\�n\�\�AV��\���~�A','Martinique'),
('7��:9KM��$.*\�`','Maurice'),
('Q��Jp����\�\�','Mauritanie'),
('S\�\�\�B���b\�\��:','Mayotte'),
('J<�I۴�\�رE~�','Mexique'),
('\�\�I��ٷG\�\�','Monaco'),
('��s�\�@t���(T','Mongolie'),
('��ه��K�����?\Zn\n','Montserrat'),
('ɍ\� \�(J\�\'��E\�ߎ','Mozambique'),
('\��\�\�KNW�E�\�%\�*','Myanmar'),
('.��x�tA�AЖd.','Namibie'),
('� }\�DCע/\� �+[','Nauru'),
('\���\�J��&1Y?�N','Népal'),
('��\"��$B��BA,waC','Nicaragua'),
('�v�&w\�Bį\�M�E���','Niger'),
('�����\�F6�	��>^','Nigéria'),
('\��\�\�yDd�*�\�\\h�','Niué'),
('��\�(G�A��zi�\�l','Norvège'),
('�!;�K\�\����j','Nouvelle-Calédonie'),
('O{I\�z\�O��\�.�\�$\�V','Nouvelle-Zélande'),
('1:\�g@&���z�z�','Oman'),
('\�\�\�u��Lx�X���FU�','Ouganda'),
('�፠OmK��V)n[�','Ouzbékistan'),
('p:\��#L��*{VVsA','Pakistan'),
('\�j\��L����}\�v\�\�','Palaos'),
('�\��\�7K���K\�S�o�','Panama'),
('\'d�ljCAS�JC�n�M','Papouasie-Nouvelle-Guinée'),
('\�$ֺ��G���.drs','Paraguay'),
('��\�M�!Eڦ�\��\�4h','Pays-Bas'),
('�]m��:D�-inp\�\�','Pérou'),
('\'��}�:J興h\�\�S','Philippines'),
('\�\�\�\�X�F���G�\�','Pitcairn'),
('\�\�G�\�MN�BE;\\Jd\�','Pologne'),
('ip!���L��-�̈́\�T�','Polynésie Française'),
('\��T\�I#�]�	��Jl','Porto Rico'),
('�G\�\']K]�y�\nG�','Portugal'),
('�*�s\�M\�ݹ\�o\�\�','Qatar'),
('ɣ\r�8H\��{�5���','République Arabe Syrienne'),
('�	�\�A��VФ�K\��','République Centrafricaine'),
('\�?��E\\�\�\�+t�','République de Corée'),
('�\�\�~\�F���\�\��ӽ','République de Moldova'),
('�૔�@IᏜ\�?V\�?\�','République Démocratique du Congo'),
('�d�}\��I\'�&JMg\�4n','République Démocratique Populaire Lao'),
('\�\���]J�\�~̋�','République Dominicaine'),
('@z\�p\�8LG��E����','République du Congo'),
('~�\n\�K�AF�L̒�\�-','République Islamique d\'Iran'),
('_֬�FDC���U�,\�h�','République Populaire Démocratique de Corée'),
('���U\�YOa�9%\�\�W\�','République Tchèque'),
('+�\�\�>�Ai�6\\0ܿ\�w','République-Unie de Tanzanie'),
('l��\��\�Aδ���S�)\�','Réunion'),
('*m_� J���\��\�u','Roumanie'),
('n\�\�\Z5�IG�X߽H��\�','Royaume-Uni'),
('\�ו�\\�@~�ID\�k\��','Rwanda'),
('bT[\�Y�J使}\�@n� ','Sahara Occidental'),
('�\�7ōyA �\�x�T\'','Saint-Kitts-et-Nevis'),
('\�J{٪\�@��`h5\�','Saint-Marin'),
('�\��\"\�LӠ�8QV�\�\�','Saint-Pierre-et-Miquelon'),
('pT�_w�I���q���k\�','Saint-Siège (état de la Cité du Vatican)'),
('�?�\�Mf�5\�V\�\�%','Saint-Vincent-et-les Grenadines'),
('�<\�\�;9Oݤ6�\�)�V','Sainte-Hélène'),
('I��\0&QC���P=\�U*','Sainte-Lucie'),
('i\��FNNa���\�N\���','Samoa'),
('0�f�\�4J��\�H�eQ�','Samoa Américaines'),
('\�L�{c�A��/L\�:��','Sao Tomé-et-Principe'),
('�/#\�G\�KR��_\�k��o','Sénégal'),
('�\�N\�?KH�b<\�]Tc','Serbie-et-Monténégro'),
('\�絚�O\��lC\�\"O\�','Seychelles'),
('s\�\�@HN\��X\�D�\�y','Sierra Leone'),
('f�vN+&I��\�!\0�,O','Singapour'),
('\�k�\�fJ}��\�\�\�','Slovaquie'),
('y�^��pO�PA	Xz(L','Slovénie'),
('��\�P\�@O�\�\�6\�~\�','Somalie'),
('Xka��Am�\�A�','Soudan'),
('�cH?\�\'Nc��]\���\r�','Sri Lanka'),
('\�mQv~VA?�\�g�E�\0\�','Suède'),
('�\�8Jh\�N녤��v\�z','Suisse'),
('�a~@3�{]!\�\�\�t','Suriname'),
('\�I�\�b\ZHs�\"��!\�j�','Svalbard etÎle Jan Mayen'),
('�-l�5O�L\��<�','Swaziland'),
('�\�)�J�\�7����','Tadjikistan'),
('\�:[�nJ��\�\�\�CT�H','Taïwan'),
(':\\\�\'�Hi�&�E�Q','Tchad'),
('�k\�v�dMe��BA½n%','Terres Australes Françaises'),
('\�xyv�9EΖ�;�G','Territoire Britannique de l\'Océan Indien'),
('��PBA�\��{ᰲd','Territoire Palestinien Occupé'),
('�\�A��{\�Cs\�','Thaïlande'),
('�]ƚ��G��g��7W\�','Timor-Leste'),
('ڥz\n�\�BǄ��\r\r�','Togo'),
('7rR�w_Iۺ؇\�\\\�\�\�','Tokelau'),
(',f\Z)I��\�\�\�P��','Tonga'),
('\�\�ƒGо�~$�s6','Trinité-et-Tobago'),
('pR\0Ө�L8�\"z>��','Tunisie'),
('��ˎ`�LŌ\\֘Q��','Turkménistan'),
('d\�\�L|M��J��fI.\�','Turquie'),
('����E@\�\��hz�\�','Tuvalu'),
('\�\��\�I\�\�UZ\�\�','Ukraine'),
('���c�E�v�\�%&�','Uruguay'),
('��7\�G�Eˍ�\�6M�߰','Vanuatu'),
('Ǽ\����Ow�\�һ\�\�\��','Venezuela'),
('60}^\�\�I�\'N\�ы\�l','Viet Nam'),
('\�0�\�\�Cϙ\�\0��F3\�','Wallis et Futuna'),
('\���\�D�F��I�\�\����','Yémen'),
('*><���Mz�J�4\�','Zambie'),
('\�\�\�\�\�\�Aa�\�z\�\�\�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-06-14 14:09:57',3),
('DoctrineMigrations\\Version20240201152951','2024-06-14 14:09:57',1),
('DoctrineMigrations\\Version20240202084749','2024-06-14 14:09:57',2),
('DoctrineMigrations\\Version20240202150901','2024-06-14 14:09:57',1),
('DoctrineMigrations\\Version20240207105701','2024-06-14 14:09:57',2),
('DoctrineMigrations\\Version20240319212437','2024-06-14 14:09:57',1),
('DoctrineMigrations\\Version20240614133504','2024-06-14 14:09:57',8);
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

-- Dump completed on 2024-06-14 14:09:58

/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv_test
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB-ubu2204

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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','hugues.gobet@gmail.com','États-Unis',259.99,'2024-12-14',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','hugues.gobet@gmail.com','France',999.99,'2024-12-14',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','hugues.gobet@gmail.com','France',2999.99,'2024-12-14',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','hugues.gobet@gmail.com','Italie',899.99,'2024-12-14',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','hugues.gobet@gmail.com','France',1599.99,'2024-12-14',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'hugues.gobet@gmail.com','France',358.99,'2024-12-14',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','hugues.gobet@gmail.com','Australie',1799.99,'2024-12-14',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','hugues.gobet@gmail.com','France',1099.99,'2024-12-14',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','root@gmail.com','United States',199.99,'2024-12-14',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','hugues.gobet@gmail.com','New Zealand',49.99,'2024-12-14',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','hugues.gobet@gmail.com','Italy',899.99,'2024-12-14',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','hugues.gobet@gmail.com','Espagne',1499.99,'2024-12-14',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','hugues.gobet@gmail.com','États-Unis',1299.99,'2024-12-14',NULL);
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
('�I�nPHȟf!�\�)C�','Afghanistan'),
('�9�T\�uM\Z�X\�̨�1','Afrique du Sud'),
('逮� E-���Pi\�','Albanie'),
('\�fQ {\�O��|YX�\�','Algérie'),
('�\�(:�\nM�F\��ȱ�\�','Allemagne'),
('\�m\�ɍ0N\�V@��t','Andorre'),
('�Yqk|\�A��4�P%-\��','Angola'),
('آ\�O��=9S����','Anguilla'),
('�<\��\�N\�\r�J�~a�','Antarctique'),
('�$��;\�F���B�w��R','Antigua-et-Barbuda'),
('�ggS\�\�EN�\�~k\�\�s','Antilles Néerlandaises'),
('\�\�;�\��Hb�r2r�y�\�','Arabie Saoudite'),
('g2\�2O8�\�|���ۏ','Argentine'),
('�^��\�\�O��6+_RVI','Arménie'),
('�ՂO��B���\�.��','Aruba'),
('k\�M}�EM�\"EU�\�','Australie'),
('�U���aIǬJY:�Ӧ�','Autriche'),
('�S\�j��JS�����5ګ','Azerbaïdjan'),
('ݨ\�H\�\�KA�ʛ\�u��','Bahamas'),
('�;FXWAHT���Nq�','Bahreïn'),
('\'4�|�I+��t\�R��','Bangladesh'),
('\�Q:\�An�h\��\�b','Barbade'),
('\�\�\�e\�O-�\n\�OV\�\r','Bélarus'),
('�\�9\�\rNP�\�Ѣ�+��','Belgique'),
('?F�U\�C\�\�Bӌc`','Belize'),
('k\��SH\�Ŭ~V:\�^','Bénin'),
('\�ُ\0JW��ЃHK�{','Bermudes'),
('\��?\�\��E��\�5�\�O7;','Bhoutan'),
('�_D\�I��nl\�F�\�','Bolivie'),
('`�զ\0�B��Fd�b_�','Bosnie-Herzégovine'),
('\�B\�g\\Ds�����w@','Botswana'),
('�}�\�aD��*�տ\�\�','Brésil'),
('�\�,�?C��\�a�ߍ\�','Brunéi Darussalam'),
('�Qƌ�L��K\�M\�	�','Bulgarie'),
('����ӆC��\�yo�)','Burkina Faso'),
('/<�E{I/��\�Z��~','Burundi'),
('�]<\�\'N��\�q�[6','Cambodge'),
('�/}�A��\���87J','Cameroun'),
('oN\�\�x�K��Vi�\�','Canada'),
('2�f<X�H��E\�\�:\�;1','Cap-vert'),
('�,.�g�N=�b\�\�+','Chili'),
('o.|\�?�G��\�\"zW\��','Chine'),
('�Ә�\n�@`�\�#Q\�\�','Chypre'),
('�\�ʧOMߒV#(��z','Colombie'),
('�\�_GHÐ�KE\r䱪','Comores'),
('I�w�u\�E͚X\�Xr\��','Costa Rica'),
('����\0\�NN�\�<@`+WX','Côte d\'Ivoire'),
('�%7�9N\rM�j-�U','Croatie'),
('�q�\�8zI톾*N\�\�c\�','Cuba'),
('ye�\�\�Lp�\�\��\��LI','Danemark'),
('B&8Z7K+�~\�$�Ѽ','Djibouti'),
('\\|�k�mBd���b�\Z\�.','Dominique'),
('d�ޛ&\�O��\Zn�\�8�=','Égypte'),
('Af���N��y\'�D�\�','El Salvador'),
('��\"\�V}K��\�A,��?','Émirats Arabes Unis'),
('�\�YZ�Oټu?��h�','Équateur'),
('Gf\�JXC\Z�\�Y_\�w��','Érythrée'),
('�\�U�F����xڱ\'�','Espagne'),
('\�#`\�;GԬ�\�CvR\�','Estonie'),
('�ٯ��_I�\r\Zc\'\�E	','États Fédérés de Micronésie'),
('Da\���MB�~W��\�\�','États-Unis'),
('/�\�L\�+MϾ�;�OD/','Éthiopie'),
('\�^N\�V\�M��\�*,�TO~','Fédération de Russie'),
('\�VkU�Kѽ\�[\��F','Fidji'),
('\�\�D]�Gt��\0�5�','Finlande'),
('\�^�:�\�O\�j\�Q�\�','France'),
('ɛ]��\�LX�H3��\�X\0','Gabon'),
('/�\�W)G#�\�\�j\�\�','Gambie'),
('\�i�\��D՚fS�7���','Géorgie'),
('\�\�\� KՀE\�0\�03\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('\�X��_&@����UX\�','Ghana'),
('�\�H���M��\�5�o\�','Gibraltar'),
('D��ӕI��W\'��I','Grèce'),
('h\�\�\�+\�GA��\�[\"','Grenade'),
('S$YM\�L��sEi�\�','Groenland'),
('�1\�]P/A��\�\�\nfX','Guadeloupe'),
('md,t�\�D��4�\�\��p','Guam'),
('��h\�~K\�rv�\�_�','Guatemala'),
('�\ZA\�{H��ރ\�\n(\�','Guinée'),
('\'�\�E{�T\\\�Z��l','Guinée Équatoriale'),
('�\�1\�JK����:�','Guinée-Bissau'),
('��	CG�����y\�S','Guyana'),
('\�9�nݗO\�\"\�\rn}Ĭ','Guyane Française'),
('�\���_L6�\�p�\�H\'�','Haïti'),
('\�`���1G���|ONXK\�','Honduras'),
('�?�J�\�MQ�E ��','Hong-Kong'),
('��T\�Az��6v\�;\�','Hongrie'),
('C�ijջ@��޵ߠ�LQ','Île Bouvet'),
('�\�G��N�����J1��','Île Christmas'),
('���upM\r�R\�ݻz�\�','Île de Man'),
('�;�~�-@��\�>ʔl','Île Norfolk'),
('��OS�ł���\�\�','Îles (malvinas) Falkland'),
('�0�\rIHK~����-��','Îles Åland'),
('�rmH5F!�:j�;\"�a','Îles Caïmanes'),
('�UR\�@�A]��\ZA�\���','Îles Cocos (Keeling)'),
('?#E�i0N��\�b��','Îles Cook'),
('r�yuE���8\�B�\"','Îles Féroé'),
('1���GNΤ\�$5Ҥ�\�','Îles Heard et Mcdonald'),
('\�U/\��@\"�%\�܈','Îles Mariannes du Nord'),
('���\�5E���1�@��k','Îles Marshall'),
('�e\��\�CF�\�\�\�tw��','Îles Mineures Éloignées des États-Unis'),
('�\�\�\�!F�\�.	��','Îles Salomon'),
('��v#dM@��\Z3\r\�\�[','Îles Turks et Caïques'),
('\�\�G���I3�\�S�\�)\"�','Îles Vierges Britanniques'),
('_�̥\�E\��OV\�-�','Îles Vierges des États-Unis'),
('\�Bm*\�^G��l�\�\"H\�','Inde'),
('�E\�\�\�O6�\�\�w��M','Indonésie'),
('��=q\0K�\0I�\�Qz','Iraq'),
('#��KJƦ4 \�Q\�\�','Irlande'),
('X\�X�9\�GӴj\�\�u\nT','Islande'),
('҈�=V�L\�\�=Y�','Israël'),
('1kh�D}�_\"y\'5J?','Italie'),
('df&ܕ7I��9�kI{','Jamahiriya Arabe Libyenne'),
('n:���K�6fA�C\�','Jamaïque'),
('��$��@}��Ў�\�C','Japon'),
('�m\�͜�G��\'�߃L\�','Jordanie'),
('\0��a��C/�t�Q��~','Kazakhstan'),
('(�3[\�zG\�qQ�h��\�','Kenya'),
('���LaB��\��\�\r','Kirghizistan'),
('���^XN���lE�\�','Kiribati'),
('\�t�\��L�R\0�h��','Koweït'),
('#�\�~�L��\��14��','L\'ex-République Yougoslave de Macédoine'),
('�8�7zL��\'%\��Ps','Lesotho'),
('�\'ߑ�\�K?�\��\"Ƨ\�','Lettonie'),
('/�s��Dޔ1\�Y��]','Liban'),
('{<o\���D0�\���|�f','Libéria'),
('\�P�+)<@5��\�cġ','Liechtenstein'),
('�tm�\�zC\��-O\�\�\�','Lituanie'),
('�L{MN��:\�u\�P','Luxembourg'),
('v���7�LƊ\rxm\0LJZ','Macao'),
('`\�\�\�U\�F�\�\�\�(�g','Madagascar'),
('\�\'�@ �NP�\�.\�\�\�_W','Malaisie'),
('\�\�=_A �ؠ� h�R','Malawi'),
('S�ߙ0vBQ�HZ\�t','Maldives'),
('	���\�HG��\�u��ͻ','Mali'),
('�ɔ�5C\���K/KL','Malte'),
('zZ�\Z�G��5i7�6','Maroc'),
('\�ʣ���C/��O\�h','Martinique'),
('\�] \��aF\n��\�.�;;X','Maurice'),
('\�JY5N��jCFU�U\�','Mauritanie'),
('&6{�_Bƴ$�\�@�y','Mayotte'),
('>��\�H�N\�$�\��C','Mexique'),
('Ƽ\�;\"cO\�\�5�4\�\�','Monaco'),
('2\�1%\�\�Gۇx\�q�\�','Mongolie'),
('hSe�\�Mt�v\��\�|i,','Montserrat'),
('\�\�\�a\�pL;���\�\���','Mozambique'),
('JYpVH>����\�\�\�','Myanmar'),
('ppH��\�LK��\�O��\�','Namibie'),
('y���-\nBh��5.|��\�','Nauru'),
('3�\�O\�EA��\�\���)�','Népal'),
('�kg\��NM1�\�\��\�R','Nicaragua'),
('M��\�I���e�`\�\�','Niger'),
('�toz|\�N\�U�eR�\n�','Nigéria'),
('&I��A��\�U�\�E','Niué'),
('N�\�=\�G9��\�\r@','Norvège'),
('E�\�[N\�L\�H\�q��\�','Nouvelle-Calédonie'),
('Z\�i\�YA��t?\�LK�','Nouvelle-Zélande'),
('\�TI��QB\�|ˬn\�\\\�','Oman'),
('�\�	@���ԝ�\�p�','Ouganda'),
('2�\��\'J���I�\�','Ouzbékistan'),
('\�\�8�\'C��\�r���c\�','Pakistan'),
('C\�\�\�\�E���|~M\�\�','Palaos'),
('p�\�\�qI&�z7R	\'\�','Panama'),
('\�2�(�AD��M`v=�','Papouasie-Nouvelle-Guinée'),
(',�{yI0F\�\�\�tM��','Paraguay'),
('�=�\�BK��1�\���?','Pays-Bas'),
('\�\��\�/\�B���Bb��','Pérou'),
('w�=\�W/G���\�һ\�','Philippines'),
('\\}pk?\�Nl���>\��C','Pitcairn'),
('�/Ԝ*?F��\�1�k_ͤ','Pologne'),
('�\"�\�V\0B���\�>\�4\�\�','Polynésie Française'),
('`n:��\�Af���Z�nH�','Porto Rico'),
('\�\�3=dE��C�ʑ\'˯','Portugal'),
('\�\�ɤ.CW�Sp4}M�','Qatar'),
('\�]r\�߾NB�[^0B2\�','République Arabe Syrienne'),
('d{\�U�DB��s,K\�\�(','République Centrafricaine'),
('ԯvElE=�\0c��M','République de Corée'),
('\�\n�/WN������kP','République de Moldova'),
('\�ިm5N�i{NE\�#a','République Démocratique du Congo'),
('��)�OMU�\�S�x=\�\�','République Démocratique Populaire Lao'),
('76��At���\'\�\�3','République Dominicaine'),
('��}��L˂\�)�H%&�','République du Congo'),
('l}[bM˧��W\�\�','République Islamique d\'Iran'),
('\�\�TZVKS���!&�\�','République Populaire Démocratique de Corée'),
('\�ʊ3\�\'H3�|\�\�=\�\�\�','République Tchèque'),
('�Gpn\�JP��n\�\�=v`','République-Unie de Tanzanie'),
('���w�@!�*ybb%cu','Réunion'),
('_�Z�Nh�>�Oꕫ�','Roumanie'),
('\�eD\rg�G*�@�+̞ͤ','Royaume-Uni'),
('u\�wRSL��\�\�G�\�]\�','Rwanda'),
('���x	D��\n\�\��','Sahara Occidental'),
('�iu��BQ�\�+\�G��','Saint-Kitts-et-Nevis'),
('V;�\�L��m\r�S	�','Saint-Marin'),
('�\��uB��(u\�\�E�','Saint-Pierre-et-Miquelon'),
('w�\�\�(`EW���\���\�','Saint-Siège (état de la Cité du Vatican)'),
('�t�\�]zI��;��!|�W','Saint-Vincent-et-les Grenadines'),
('�!�A=�B?���䘊��','Sainte-Hélène'),
('�}Y�\�I��kfJ��','Sainte-Lucie'),
('�/�\�J\�P���\�\�Q','Samoa'),
('�\�m\�\�B��\�ٕ?�\�','Samoa Américaines'),
('i\�3\'\�\�@ۈ\�\��\�+�','Sao Tomé-et-Principe'),
('(_ ��RB�\�\n%\r�XH','Sénégal'),
('\Z\��5��C}�ҝ�чB\�','Serbie-et-Monténégro'),
('��YN�T\�,�� (','Seychelles'),
('�V[\�Nא�dHu��\�','Sierra Leone'),
('�al\�O��Ɂ�\�-\�','Singapour'),
('U\�v\�3/I����;(*�','Slovaquie'),
('D\�mmL\�\�VX8�e�','Slovénie'),
('׺��[�E��Yf\�%6I','Somalie'),
('�D`*4�D�8�2\��]~','Soudan'),
('�\�\�M\Z�1�\nY\�f','Sri Lanka'),
('��\"�\�J®N9\�ި4','Suède'),
('\\z`�\��O[��JD\�M\�q','Suisse'),
('\�Yp��sJ��ZP�\���[','Suriname'),
('q�\�ҏM���?�%0\�','Svalbard etÎle Jan Mayen'),
('\ZU�3\�L��4\�tu�','Swaziland'),
('��\"4�0F����\'Er8','Tadjikistan'),
('+��\Z\�rL��|_N\�Q�','Taïwan'),
('\�\�t�JG���a!���','Tchad'),
('�\�Hr\�\�@-�\�g\r��hU','Terres Australes Françaises'),
('j��\�\�\�G��2qqB�f','Territoire Britannique de l\'Océan Indien'),
('\�\�e�pA��@N\�߂3','Territoire Palestinien Occupé'),
('�jBl8Kd�|��c�','Thaïlande'),
('���\�\��H\�ӫ\�mL�x','Timor-Leste'),
('�ʩ\Z�\�Oj�ǌ����','Togo'),
('�9\�+l\�D���Ԅ�R�','Tokelau'),
('oS��[C��\�|4�@�','Tonga'),
('!\�NRuDJ.�~\�V\�\�','Trinité-et-Tobago'),
('�J[\�\�fB7�i��E��\�','Tunisie'),
('	N\�\�y�L3��{�*\�o','Turkménistan'),
('�����A\��~vTL	�','Turquie'),
('�.�z\�Db��_\n���','Tuvalu'),
('C�ֳ:\�Fؿ.\�U� ','Ukraine'),
('�8�5��F���88y\�','Uruguay'),
('\�D\�\n�M҈uKV^��','Vanuatu'),
('Hk�#�_Fթ\�q�T�#','Venezuela'),
('��`\�[KU�>}P�-6\�','Viet Nam'),
('P��+k\�C]��l\n�>W','Wallis et Futuna'),
('�4\�rh�EK��Sb�','Yémen'),
('�\�S٫�K,����dQ�','Zambie'),
('&�\��H�\�B\\�N�','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-12-14 20:08:44',3),
('DoctrineMigrations\\Version20240201152951','2024-12-14 20:08:44',1),
('DoctrineMigrations\\Version20240202084749','2024-12-14 20:08:44',2),
('DoctrineMigrations\\Version20240202150901','2024-12-14 20:08:44',2),
('DoctrineMigrations\\Version20240207105701','2024-12-14 20:08:44',3),
('DoctrineMigrations\\Version20240319212437','2024-12-14 20:08:45',2),
('DoctrineMigrations\\Version20240614133504','2024-12-14 20:08:45',12),
('DoctrineMigrations\\Version20240617165906','2024-12-14 20:08:45',10),
('DoctrineMigrations\\Version20240708061729','2024-12-14 20:08:45',15),
('DoctrineMigrations\\Version20240801202153','2024-12-14 20:08:45',2),
('DoctrineMigrations\\Version20240815153823','2024-12-14 20:08:45',3),
('DoctrineMigrations\\Version20240916065051','2024-12-14 20:08:45',4),
('DoctrineMigrations\\Version20240929091802','2024-12-14 20:08:45',12),
('DoctrineMigrations\\Version20241002164506','2024-12-14 20:08:45',7),
('DoctrineMigrations\\Version20241119144432','2024-12-14 20:08:45',14);
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
  `sent_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link` longtext NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `target` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F11D61A25BC0FE1E` (`tasting_id`),
  CONSTRAINT `FK_F11D61A25BC0FE1E` FOREIGN KEY (`tasting_id`) REFERENCES `tasting` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES
('�\�/i��M��\��|�Vt','.�l5��Ln�I�y\�\�7',NULL,NULL,'https://apps.apple.com/app/6468406309','pending','2024-12-14 20:08:45','root@gmail.com');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasting`
--

DROP TABLE IF EXISTS `tasting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasting` (
  `id` binary(16) NOT NULL,
  `owner_id` varchar(255) NOT NULL,
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`participants`)),
  `bottle_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasting`
--

LOCK TABLES `tasting` WRITE;
/*!40000 ALTER TABLE `tasting` DISABLE KEYS */;
INSERT INTO `tasting` VALUES
('.�l5��Ln�I�y\�\�7','hugues.gobet@gmail.com','[\"hugues.gobet@gmail.com\"]','Domaine Leflaive Montrachet Grand Cru 2016'),
('�J<�_�Fx�\�\�q���\"','hugues.gobet@gmail.com','[\"hugues.gobet@gmail.com\"]','Château Latour 2010');
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

-- Dump completed on 2024-12-14 20:08:46

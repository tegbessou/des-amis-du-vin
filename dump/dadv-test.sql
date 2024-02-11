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
  `picture` varchar(255) DEFAULT NULL,
  `owner_id` binary(16) NOT NULL COMMENT '(DC2Type:uuid)',
  `country` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle`
--

LOCK TABLES `bottle` WRITE;
/*!40000 ALTER TABLE `bottle` DISABLE KEYS */;
INSERT INTO `bottle` VALUES
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','\�o;ԈC����\�\nl','France',1599.99),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'\�o;ԈC����\�\nl','France',358.99),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','\�NE\�DԍB\�\�\�a�','United States',199.99),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99);
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
('FO��B5�x�m�w\�','Afghanistan'),
('��\�_��A۫{����\�','Afrique du Sud'),
('\�g�\Z*G��o\�+�R\�\�','Albanie'),
('L*�bw�Bp�2ɫˮ�a','Algérie'),
('\�\�\�Ag�<\n^U,��','Allemagne'),
('o:�?JF^�o�q\"\�N�','Andorre'),
('\�����K��\�\�ծ�','Angola'),
('\�\�\Z(dPB\r�\�\�b9RG�','Anguilla'),
('�[�G#�L�����\�\�\�','Antarctique'),
('p4\�}A��k\"ψO%�','Antigua-et-Barbuda'),
('\�&��^X@��X\�c�Pl','Antilles Néerlandaises'),
('c\�\�D���OB\r','Arabie Saoudite'),
('��\"�\�\�Om�8\�\�\�4_\Z','Argentine'),
('�\n��t\�L՗a\�B\��YB','Arménie'),
('����B��`�=$\�','Aruba'),
('\�.GJW$M\�ޗV�%\�','Australie'),
('漁\�\�\�H�acst/','Autriche'),
('O4\����A��sy\��\�','Azerbaïdjan'),
('\�o#�L�FY��腞~[','Bahamas'),
(']\����oJ�E\�N�b-\�','Bahreïn'),
('\���HK��\0�c�\�M�','Bangladesh'),
('=\n�3#E��xN\�\�QJd','Barbade'),
('Mm�f�\\F�A\�\�\�\�','Bélarus'),
('9]�\�]�N\��J\�s�ZF�','Belgique'),
('i�\��׼J5�;�\�$E��','Belize'),
('j�\'�\�A�\�Ӻ�५','Bénin'),
('\n?�\�V�G�����\�\�:','Bermudes'),
('\�\�6�D*�1I\"T��\�','Bhoutan'),
('���4�A\�o����1�','Bolivie'),
('�Hh��YOq��\�_\�\�\�','Bosnie-Herzégovine'),
('�\�Ȉ5\�C]���:\�B�','Botswana'),
('\�\Z�,G��b\�xL\�\�','Brésil'),
('%\���A-BɃɳ�\�-x','Brunéi Darussalam'),
('�xQ7\�\�E\��\�\n�\�I^c','Bulgarie'),
('�����J����m\�\�Y','Burkina Faso'),
('�x\0\�$\\B�mD��','Burundi'),
('K\n\�\nUgOݳ�0�\�\�\�','Cambodge'),
('sX\��cpCїT{nK@\�','Cameroun'),
('S\�.\�M��K3�\�\08�','Canada'),
('\���t�)ML�\r\�/ͣ)','Cap-vert'),
('�-Lf4�IF�:z\�J�=�','Chili'),
('�\�4_F䞯���\�\�','Chine'),
('���\�\�K|���n���','Chypre'),
('\�\�F�ɴD��9��\�+�','Colombie'),
('N�)��L��z�\�$\�','Comores'),
('\��\��D���\�\�\�ԕ','Costa Rica'),
('�\�\�\�\�$N\0��\�\�JeM','Côte d\'Ivoire'),
('\�7HFG\�O�vkfкԩ','Croatie'),
('_�hqK��/��NxMB','Cuba'),
('�\�\���eL�qM\�=��','Danemark'),
('m]�n)J޴C��\��\�','Djibouti'),
('�K��nMH�\"0\��\'�','Dominique'),
('td�*\�@�\0{E�\��','Égypte'),
('\�\����gK\��Ep\�Τ�','El Salvador'),
('����Nq��X\�o(-','Émirats Arabes Unis'),
('m�\�q�\�K�	s��9','Équateur'),
('\�s\�)\0\�O��k+���;�','Érythrée'),
('_cM\��F��7��\�R\�','Espagne'),
('t?B˕,K\�{-k20','Estonie'),
('p�Ƶ\'�Lذ��\�I��','États Fédérés de Micronésie'),
('�La�prK��\�m$>c�_','États-Unis'),
('\\[\�\�E��\�\�?�kb','Éthiopie'),
('c��*x\�I;�\�m�\�\�','Fédération de Russie'),
('V�\�xn5M��ck��','Fidji'),
('�\�\�G�uJl����KX�','Finlande'),
('\�q\�N���Kfk\�U','France'),
('\�w�.ZBƠ\��raY\�','Gabon'),
('\�\��GJ��\�Iu���e','Gambie'),
('\�\��YMA�\'b\'OQ','Géorgie'),
('\�q��Bš\�oe%��\�','Géorgie du Sud et les Îles Sandwich du Sud'),
('�\�\�G��H\Z�n�\�y','Ghana'),
('v\na\�KӖ\�p*\��','Gibraltar'),
('� *\rJ��\�ت�\��','Grèce'),
('�\'J�kL\�ne�g} \�','Grenade'),
('þȸ�GV�,��\�e','Groenland'),
('��~\06�O��2C%\�:_','Guadeloupe'),
('\\���\�E�Fԍkﱬ','Guam'),
('a�iL\�>B>�c?�9h�','Guatemala'),
('o�R\�F���>�����','Guinée'),
(':AJ��F�\�r�5\�N','Guinée Équatoriale'),
('�\�N<�K��\'ٺxƅ','Guinée-Bissau'),
('K.\�G\0E:�\�V[\�{D�','Guyana'),
('73�`K@=���3g\�\�','Guyane Française'),
('��nA\�yK��\�\�Ԇ���','Haïti'),
('G���H,GՈ\�y\�dx�','Honduras'),
('I\�}�p@��\�6�t\��','Hong-Kong'),
('W�(\� I��\n\�r<�','Hongrie'),
('�o\�^�EC����\�N�','Île Bouvet'),
('\r&�\0�B&�]�\�	Ϛ;','Île Christmas'),
('8{#3\�sD(�/u\\�f\�\�','Île de Man'),
('�\�+wO�5g�\�0��','Île Norfolk'),
('v3\�\�\�E��p��`P\�','Îles (malvinas) Falkland'),
('\� SU�@S�v\n*}�\�a','Îles Åland'),
('\�y�4�@��\��Õ \�','Îles Caïmanes'),
('�\�*��\�I�PY\�_W�\�','Îles Cocos (Keeling)'),
('�l#\�3�Dr�W���2','Îles Cook'),
('�\'V\�\�MT�\�ʎ\�\�','Îles Féroé'),
('\�`�Ȱ Iҿ�\�)\�','Îles Heard et Mcdonald'),
('\�}[¨\�@��Qk<^�a','Îles Mariannes du Nord'),
('&��&�J��s\�Vaw�','Îles Marshall'),
('3;\�pR�C\�Or\�P\�','Îles Mineures Éloignées des États-Unis'),
('E�+_4M��\�\�\�Y�b�','Îles Salomon'),
('��\�\�v>I=�Y)\�_I3\�','Îles Turks et Caïques'),
('S\��^A*�\��\Zä','Îles Vierges Britanniques'),
('\�	J\�IHj�\�оl	�','Îles Vierges des États-Unis'),
('~�Q9fB\�p\�+��K�','Inde'),
('\�H<�j�M[����ʥ\�\"','Indonésie'),
('�z\�\�\"\�J\"�\�h\�S','Iraq'),
('+9_��Bԅ������j','Irlande'),
('�\"p4�tK��!\�\�\�\Z;','Islande'),
('o\"�\"s�O�\�\�aH�d\�','Israël'),
('\�\�S\�\�$O\��}�{�0','Italie'),
('�Jֆ�@r�[tbq���','Jamahiriya Arabe Libyenne'),
('�^�չM���\�d>��','Jamaïque'),
('\rޞ\�V�G�=\�\�\�5*','Japon'),
('`�iLT�&\�4\�&','Jordanie'),
('�$RMs\�O��H���','Kazakhstan'),
('�d\�?\�\�@�\�c\�y\�','Kenya'),
('�9\�\��$J��:\�J\�+\�','Kirghizistan'),
('ĕ,��H��TD���}\�','Kiribati'),
('{O\�B�BHQ�;�7��\�[','Koweït'),
('�`\�o�O��\�v\�\'\���','L\'ex-République Yougoslave de Macédoine'),
('jxJ\�SL��m\"�.��','Lesotho'),
('\�K\�\�\�I[��t\�h\�RE','Lettonie'),
('B8B(��C{��\��\�6+�','Liban'),
('�8+ڵxC��J��s��','Libéria'),
('GQ�p/F8��5U96Z','Liechtenstein'),
('Q*ZN���_�\�,X|','Lituanie'),
('����8\�M\��J\�S\�T�','Luxembourg'),
('t\�\�F4�Lo\�zEئ','Macao'),
('\�\�2\�NI�	\�m�޺\�','Madagascar'),
('��\�\�\"|L?����)?\�l','Malaisie'),
('$�i\�\�\�E>�hc\��\\_','Malawi'),
(']~\nd\�E��\�l�\n*','Maldives'),
('9Q\0\�kg@�����\��\'','Mali'),
('\�0\'XݻMH�t܏���','Malte'),
('_�)\�RTC��	Vຽ','Maroc'),
('��i��N��c\�p�Q(\�','Martinique'),
('xS�\�S�CO�\�_G�\�\�\�','Maurice'),
('\�J\�\�FV�Qϸ\�S�(','Mauritanie'),
('�l\�3B��D=j\�X','Mayotte'),
('V\�\�PSOu�Y�Aғi\�','Mexique'),
('f�ѯ�O��\�)ԙ\�G','Monaco'),
(']+�y��K�\"/\�1','Mongolie'),
('*��\��H��cg�\��X�','Montserrat'),
(';\�vv>E��\�+�,�|','Mozambique'),
('g@-֏�I��\�\�z�r','Myanmar'),
('�C\�0�SC6�\��(aIׅ','Namibie'),
('\�?U\�s\�O\Z���J\�k(','Nauru'),
(')��UqFK���\�\�Sa\�','Népal'),
('�0\�\Z+�Ey�yYh�N��','Nicaragua'),
('\�|x�J&�\�#d~�!�','Niger'),
('pv\�\�C���J\���','Nigéria'),
('��i\�\�nD\r�\�\�Dҽ\�','Niué'),
('�=�In�2q��\�l','Norvège'),
('3�o)�B�tn�Ai\�,','Nouvelle-Calédonie'),
('3Z�`K��a4DQ\�','Nouvelle-Zélande'),
('xu\rW�\�D\�V%��','Oman'),
('\�\�ЭNኤ��7�T_','Ouganda'),
('Kp\0�pNz��U� @zR','Ouzbékistan'),
('p?,�Bq��\\:��\�V','Pakistan'),
('&$��^A=�&\n\�@FЄ','Palaos'),
('\�6�^\�@/�\�X\�\� z','Panama'),
('�yj�%N��}=~�\�\�','Papouasie-Nouvelle-Guinée'),
('�^\�5\�iD�8\�A٘�','Paraguay'),
('��e]\��@\�8�kM�','Pays-Bas'),
('\�Y��VA9�7\�c�3[','Pérou'),
('\�Kz#�:Df�\�r\\�\0�','Philippines'),
('\����\'NM��)ѤdJ�','Pitcairn'),
('yR�\�\�I�������K','Pologne'),
('�\�\�_\�\�E��Z|_+�\�','Polynésie Française'),
('\"�\�&Nٳx�A�K','Porto Rico'),
('��>\�0B���WB��0�','Portugal'),
('wa��\�\�K�\�\�\�\�3','Qatar'),
('�1�w|Kl�]�c��','République Arabe Syrienne'),
('8�\�z9Jy�\�N\�m3�\�','République Centrafricaine'),
('��\��QC.�̐\�\��J','République de Corée'),
('��=�@�:��\��H','République de Moldova'),
('\�fݥ��@���	\�\�0\�','République Démocratique du Congo'),
('<\�_N�\�D�NK\�\�H','République Démocratique Populaire Lao'),
('n\�\�(�0O���\�\��','République Dominicaine'),
('C\�i��I\�r\� k\�S?','République du Congo'),
('룽��H_�C�r��\�','République Islamique d\'Iran'),
('4��%t�F#�\��\�\��','République Populaire Démocratique de Corée'),
('��\�Eץ��P15F\�','République Tchèque'),
('=`ͫ��F\��\�|�Pɚ','République-Unie de Tanzanie'),
('*\"�\�\\�D����Q�\��','Réunion'),
('h}K���@ت��¸t �','Roumanie'),
('�W��\�L��i\��$q7','Royaume-Uni'),
('��TW��CԵܯ!\�d�3','Rwanda'),
('\��S�H\\�x\�^1\�9','Sahara Occidental'),
('\�H\�f\�D���4��K��','Saint-Kitts-et-Nevis'),
('W\�UB\�\�B��E\'w�:�x','Saint-Marin'),
('KE\�=Lt���_��Y�','Saint-Pierre-et-Miquelon'),
('�\�\�6&L��;��\�\�&','Saint-Siège (état de la Cité du Vatican)'),
('� \�%\�\�C�����\�f\�','Saint-Vincent-et-les Grenadines'),
('��r1\�*Dr��h4���f','Sainte-Hélène'),
('+\�pWeG��\�\�\�\�)��','Sainte-Lucie'),
('6U��� K��L\\�SFk^','Samoa'),
('q-d\�U^Ad�\���\�\�w�','Samoa Américaines'),
('C�(ƂqDc�\�O薞0(','Sao Tomé-et-Principe'),
('�:{]L�Oq�+\�m\�\rM�','Sénégal'),
('\�`\�\�zX@\�R`\�\�p�','Serbie-et-Monténégro'),
('O6Z\�,\�@��\��N��','Seychelles'),
('�\�\'\�B:�$L\�\r;rC','Sierra Leone'),
('\�H\�vxZI\���9��B=\�','Singapour'),
('�F<\�O�J��ᙝ�\�','Slovaquie'),
('�\�s� H��G�\�\�*@','Slovénie'),
('yW�Y��@ߥ��L.\�','Somalie'),
('2\\�?\�H\\�\�I`\�?v�','Soudan'),
('��N\�F���G?�R\�','Sri Lanka'),
('t��/j-J��\Z(\�\���','Suède'),
('�n��fBE�\�|\�N�Ӹ','Suisse'),
('4��\�G���5�q�','Suriname'),
('z�\��nvD;�f�7�\rs','Svalbard etÎle Jan Mayen'),
(',�9$yHU�\��Dذ\�','Swaziland'),
('�BdӤ#N�oU�w�\�','Tadjikistan'),
('`�%�\0F#�\��\�*','Taïwan'),
('\�]%�\�+B���EȲ�Y{','Tchad'),
('�/	\�aEm��*iD','Terres Australes Françaises'),
('���)qN\n��f\�xa�\�','Territoire Britannique de l\'Océan Indien'),
('\�\�\��sI��M�Ӆ\��','Territoire Palestinien Occupé'),
('G\"T�\�H��\�\�&C\�\�','Thaïlande'),
('�;Ԯ0~BE�\�Eo)\��','Timor-Leste'),
('/��BNKq�!8�F�S','Togo'),
('\�\�#:y�LҁK\�\�\�\�v','Tokelau'),
('V\�pw�J\�\�L\�	ۏ\�','Tonga'),
('u\�\�)\�J���\��Exk\�','Trinité-et-Tobago'),
('�\��D��3��c\�','Tunisie'),
('���&e�L��lp/\�l\�]','Turkménistan'),
('�\��\��J��4f���%�','Turquie'),
('e$��\�E���\�٦/','Tuvalu'),
('FU^�(M\�@��)T\�','Ukraine'),
('z%��\�ML�ueh\�7\�','Uruguay'),
('����L@��ف��i\�','Vanuatu'),
('(j�<� H)�2�-K�\�','Venezuela'),
('\�\�>!�I↚\�a&��\�','Viet Nam'),
('�\�Q�I��\�J!��','Wallis et Futuna'),
('���c_O#�٥ڱ��\�','Yémen'),
('\�:\�B��X�N�\�','Zambie'),
('\�g\�E���l','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-11 14:35:16',9),
('DoctrineMigrations\\Version20240201152951','2024-02-11 14:35:16',3),
('DoctrineMigrations\\Version20240202084749','2024-02-11 14:35:16',3),
('DoctrineMigrations\\Version20240202150901','2024-02-11 14:35:16',3),
('DoctrineMigrations\\Version20240207105701','2024-02-11 14:35:16',6);
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

-- Dump completed on 2024-02-11 14:35:19

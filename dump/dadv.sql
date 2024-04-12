-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
('�\�\�BݗH�\�[\�PP','Caymus Vineyards Special Selection Cabernet Sauvignon','Caymus Vineyards','red',2013,'[\"Cabernet Sauvignon\"]','++','caymus.jpg','\�o;ԈC����\�\nl','États-Unis',259.99,'2024-04-12',NULL),
(')R1��\�N��7\�P\�','Château Latour','Château Latour','red',2010,'[\"Cabernet Sauvignon\",\"Merlot\"]','++','chateau-latour.jpg','\�o;ԈC����\�\nl','France',999.99,'2024-04-12',NULL),
(':(\�\�\�!J��k[\'{�','Domaine de la Romanée-Conti','Domaine de la Romanée-Conti','red',2010,'[\"Pinot Noir\"]','+','romanee-conti.jpg','\�o;ԈC����\�\nl','France',2999.99,'2024-04-12',NULL),
('N�I\�}#I���w��\�`','Sassicaia','Tenuta San Guido','red',2012,'[\"Cabernet Sauvignon\",\"Cabernet Franc\"]','xs','tenuta-san-guido.webp','\�o;ԈC����\�\nl','Italie',899.99,'2024-04-12',NULL),
('^��{�F\�\�\�v�\�\�_','Domaine Leflaive Montrachet Grand Cru','Domaine Leflaive','white',2016,'[\"Chardonnay\"]','++','montrachet.png','\�o;ԈC����\�\nl','France',1599.99,'2024-04-12',NULL),
('c^����@߄��Ͼ,U','Guigal Côte-Rôtie','E. Guigal','red',2014,'[\"Syrah\",\"Viognier\"]','++',NULL,'\�o;ԈC����\�\nl','France',358.99,'2024-04-12',NULL),
('i\n�s��NW�͑��*J','Penfolds Grange','Penfolds','red',2008,'[\"Shiraz\",\"Cabernet Sauvignon\"]','=','penfolds.webp','\�o;ԈC����\�\nl','Australie',1799.99,'2024-04-12',NULL),
('{\�]\�\�<A���^ټ\�\r','Château Margaux','Château Margaux','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\",\"Cabernet Franc\",\"Petit Verdot\"]','++','chateau-margaux.jpg','\�o;ԈC����\�\nl','France',1099.99,'2024-04-12',NULL),
('�-L\�FA�4S\��\�\��','Ridge Monte Bello','Ridge Vineyards','red',2014,'[\"Cabernet Sauvignon\",\"Merlot\"]','=','ridge-vineyards.png','\�NE\�DԍB\�\�\�a�','United States',199.99,'2024-04-12',NULL),
('�L�\�CnG��VajH','Cloudy Bay Sauvignon Blanc','Cloudy Bay','white',2019,'[\"Sauvignon Blanc\"]','-','cloudy-bay.png','\�o;ԈC����\�\nl','New Zealand',49.99,'2024-04-12',NULL),
('\�\�G�fF@�\�%\�>\�m','Gaja Barbaresco','Gaja','red',2016,'[\"Nebbiolo\"]','xs','gaja.jpg','\�o;ԈC����\�\nl','Italy',899.99,'2024-04-12',NULL),
('\�¡\�I^�ܓ��W\�','Vega Sicilia Único','Vega Sicilia','red',2011,'[\"Tempranillo\",\"Cabernet Sauvignon\"]','--','vega-sicilia.webp','\�o;ԈC����\�\nl','Espagne',1499.99,'2024-04-12',NULL),
('\�w�äO\Z�`v�\�','Opus One','Opus One','red',2015,'[\"Cabernet Sauvignon\",\"Merlot\"]','--','opus-one.jpg','\�o;ԈC����\�\nl','États-Unis',1299.99,'2024-04-12',NULL);
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
('Ja��!�G��<D�a��','Afghanistan'),
('\�\�\�ܳG��\���4','Afrique du Sud'),
('k��I\�Mu��&\�\�\��','Albanie'),
('�HU\��\�K[�Q\��\� �~','Algérie'),
('\���TВA�\�~#	��\�','Allemagne'),
('�%P\0�B^�d�ۄu1�','Andorre'),
('�Z\�́u@ŜN�$�/��','Angola'),
(']0D\�QN*�s#J�\�r','Anguilla'),
('iw>P\0Bƺ\�!FT�\�','Antarctique'),
('}൹IU�[1��\ZL�','Antigua-et-Barbuda'),
('��\��\�lET��Kz���','Antilles Néerlandaises'),
('�\0\\�\�F��\�i~�!','Arabie Saoudite'),
('�Y\�{MZ���zv\�Ng','Argentine'),
('��\�WvKZ��!3nc�U','Arménie'),
('\�	\�\�GM䅵*\n�k\�\�','Aruba'),
(']����|Oo�q~�\�\�\Z','Australie'),
('��\�\Z\�Gͺ�\��w,�\�','Autriche'),
('\�\�d�C�~�\����','Azerbaïdjan'),
('�\�t�q�N\\�8ŋ\Z�x�','Bahamas'),
('\n��uY\�A>�\�d\��\�','Bahreïn'),
('��U\�4�OY�\�\�*���','Bangladesh'),
('o^/\�3\�CU�gZ�i�\�?','Barbade'),
('��pDכK_�\�\0;�\�g\�','Bélarus'),
('�\��BY�Qksm�\�','Belgique'),
('�\�\�MT��PY���','Belize'),
('\"\�MR�G`�Ԯ\�\��','Bénin'),
('\��}\�D�G2\�ڇU\�','Bermudes'),
('�\��vC��H\�vƛ','Bhoutan'),
('\�\�ݮ\�F���V6�?','Bolivie'),
('��r��FY�\�g\�\�\�','Bosnie-Herzégovine'),
('����eC\r�\�0�\�~\�','Botswana'),
('�{o6u@@�-\�\�ǅl�','Brésil'),
('$��(��NF�\�yH ','Brunéi Darussalam'),
('�\�\��Aϗ\�wB\�\�l','Bulgarie'),
('>S&q��F�����<�\Z*','Burkina Faso'),
('<\�8_\�@��L\�`\�i\'','Burundi'),
('\�c��\�\�A�i\�\�Ē','Cambodge'),
('�P���J\�\nqR͓\r�','Cameroun'),
('\�\�N\�4�A�I��}�\"','Canada'),
('���\"BC���l��N�\�','Cap-vert'),
('\"Lf|I@��M\���8�','Chili'),
('\�Q�\�s$Jt�.\�:c�6','Chine'),
('8S&G\�L����U=\"','Chypre'),
('@�a\�vCi�S��NdJ�','Colombie'),
('!),\�&H(��\�b�\�;','Comores'),
('\�F�Ew��\�4^�\�\�','Costa Rica'),
('�G�\��O���<���','Côte d\'Ivoire'),
('\0z\�g�E���\�\�թ:$','Croatie'),
(':*60xB��\�h��\�\�','Cuba'),
('�\��\�FJ��=IT\�(','Danemark'),
('q\r?� �J����g8$E','Djibouti'),
('\�\�⟛!AM�����\�|\�','Dominique'),
('\�N@L�\ZCڣ�\n�oz\�\�','Égypte'),
('\�.B�AџCjt��','El Salvador'),
('\Z�ae;C\�z\��\�\�','Émirats Arabes Unis'),
('\�a	���KZ��gkfx\�`','Équateur'),
('nG\�-H��\0+�IG','Érythrée'),
('�\�	�\�\�H²6��[e�','Espagne'),
('*C�\���BӚ�Q��ޡ�','Estonie'),
('\�b��{Nb�Z�\�	�','États Fédérés de Micronésie'),
('�\�S\'�G,��\�,\�x\�\�','États-Unis'),
('\�|a�B	��� \�\�','Éthiopie'),
('\�\�\�Dڳ�4�\�6J','Fédération de Russie'),
('%\0lcυE֤~W\�\�;L','Fidji'),
('\�>\��:\�NC�D:x\�X�','Finlande'),
('^\�9��@L뇋\�v�\�j�','France'),
('榧\r8N��Q�m\�','Gabon'),
('\�$��;�N��\�Acx]�','Gambie'),
('�j�\��G��Ӭ\0_�7','Géorgie'),
('��W\�c@\�\�9\�@��','Géorgie du Sud et les Îles Sandwich du Sud'),
('�#��zC#�y\�Րjyr','Ghana'),
('8�R�\�H��\�\�Qdrۀ','Gibraltar'),
('\�X\"ڃ2Jq��:<���q','Grèce'),
('\�VS�B���\�N�\�','Grenade'),
('��,\�L��	\�e \�\�','Groenland'),
('䴻\�.�Fn��}w�B�]','Guadeloupe'),
('�/�P�XGg��ikɝ�\�','Guam'),
('Υ�\�A\�@k�\�V\�\�,\"c','Guatemala'),
('Bu\�ć@����\�x\�T','Guinée'),
('�E\�\�3E\�-}o-CU','Guinée Équatoriale'),
('Y\�r\�\�\�D���4��XS�','Guinée-Bissau'),
('���w=}E_�\�p\���','Guyana'),
('�\�\�U�M\�\�J�\�\�\�','Guyane Française'),
('6�\�֚K��\'�\�\�\�\�','Haïti'),
('�z�8\�C�����\�','Honduras'),
('WO8B\�QI��?Ă\�\�','Hong-Kong'),
('t�\�;\�O\�FϞ�\'�','Hongrie'),
('\� ^gB(�\�1\�O\�aX','Île Bouvet'),
('\�	Jp�iDZ�8\�9\�75','Île Christmas'),
('R?^���M���\�ǀ','Île de Man'),
('X^x>SH$�\�ة�\�\�*','Île Norfolk'),
('���G\�B4�\�D#\�\�Ԫ','Îles (malvinas) Falkland'),
('I\�bg,K��\�q4qbM�','Îles Åland'),
('a\�@\���I\�[��3��','Îles Caïmanes'),
('\�q\"\�CS��\rk~#\�','Îles Cocos (Keeling)'),
('v\"x@\�H�Y}7n\�\�','Îles Cook'),
('u8#_\�\�F䁝�ٴ2','Îles Féroé'),
('��1\�BK�&\�\�\�me�','Îles Heard et Mcdonald'),
('B�$$N2��1\�\���','Îles Mariannes du Nord'),
(']t��\� M��T�W91>G','Îles Marshall'),
(':�E��&C{�OF�g\�\"','Îles Mineures Éloignées des États-Unis'),
('\�.��\�UG��\�\�B�\�\�','Îles Salomon'),
('bz%�\�B��sT\�4','Îles Turks et Caïques'),
('2�{\��kHݐ!��Yl`','Îles Vierges Britanniques'),
('\�ƨp4\�I:��\��!��/','Îles Vierges des États-Unis'),
('\�r�F�kRD����','Inde'),
('��\�D\�@=�\�\�m�e','Indonésie'),
('@n�yL9�fReSz�','Iraq'),
('�O�\�A��\�\�\�\�','Irlande'),
('\�bv\�|@��#t���؂','Islande'),
('R\�\�\�GY�ނ\��X\�8','Israël'),
('ey_:�\�EՁӨ�\��','Italie'),
('ql_��\�I\Z�� �@�\�','Jamahiriya Arabe Libyenne'),
('|1|F�AK�\�*\�0W�T','Jamaïque'),
('\�\�f\�[0Gk�yI?H~W�','Japon'),
('�,<\�fC��vh��Gt3','Jordanie'),
('�V� ��GB�,��\"�.','Kazakhstan'),
('CZB\�czN]��-=\�|�','Kenya'),
('�;\�A�F˾f�,i\�r*','Kirghizistan'),
('�Ff	�I\�mu��','Kiribati'),
('�5o�s�C������:k*','Koweït'),
('��g|\�\�J[�_G¿D:\�','L\'ex-République Yougoslave de Macédoine'),
('\�ꔧx�E\�m\�\�p8}+','Lesotho'),
('�\0�	\�\�EJ�^\�\� \�f','Lettonie'),
('��\�ɼ\�F*�1ԡgy\�','Liban'),
('\�#>)OIy�Ųuj�\�]','Libéria'),
('Xd5qgUJ̮Q�*=,','Liechtenstein'),
('���k�gAټ/\���ݮ�','Lituanie'),
('�ð\�o\�Eⲍ\�\�5�T�','Luxembourg'),
('C\��RL\��p�\�r','Macao'),
('\�����G(�LfV6H��','Madagascar'),
('\�h\�D\�M\�޴٪B:\�','Malaisie'),
('�\�7\�\�KՑqє\�s\��','Malawi'),
('�\�\�pR\"@ƈ��,��>','Maldives'),
('4\�9\�=F���aH���{','Mali'),
('�`�g�K�\�\Z��T\Z','Malte'),
('w~�}\�Eݕ=\���}\��','Maroc'),
('\Z\�\�\�ʽLU�\�%j�\�R','Martinique'),
('G��\��RL\��6�\'�\���','Maurice'),
('��:�%KӵA\�\�\�#�','Mauritanie'),
('��\�\�@Ŋn�Lr�]f','Mayotte'),
('!�%�Q\�B���>l\�','Mexique'),
('= z]T@�zP*\��Q%','Monaco'),
('\\\�\�>/M �dq�\�>e','Mongolie'),
('}�\�KG���IhBM�','Montserrat'),
('\��\�V\�\�C���r�\�}','Mozambique'),
('��\�\��\�Bq��S	��\�','Myanmar'),
('h�hv\�{I)���+���','Namibie'),
('h\�\��SI���Rl;\�k','Nauru'),
('\�\n����J��� �8\�D','Népal'),
('\�\�\�c@��o&����F','Nicaragua'),
('\����\�FA�\�)�}ږ','Niger'),
('\�5;QJ5��c\�]��','Nigéria'),
('ո2\�\�K�v�\�\�Q��','Niué'),
('\�7\�\�[<FF�Ck���','Norvège'),
('rڋ\�\�BO��ꨫ{','Nouvelle-Calédonie'),
('>]��7B\Z�)1�\�Q\�\"','Nouvelle-Zélande'),
('�\"����A��\�Ԥ\Z','Oman'),
('T\�U&\�Dv�NaPd)=','Ouganda'),
('cL\�ab\�A1�\��+\Z�','Ouzbékistan'),
('\��?14C�a>\�ϟ3O','Pakistan'),
(':�c\�N��\�\��*\�P','Palaos'),
('}\��9\�qAƋ���5i�','Panama'),
('\�.�\�@<��ze��B�','Papouasie-Nouvelle-Guinée'),
('Z`ӶmF�ļ\�(\�?','Paraguay'),
('��-5\��@r�l\�43\�x','Pays-Bas'),
('\�\'S\'�B��\nh�נ','Pérou'),
('\�N\�\�{O7�?�S}\�B\�','Philippines'),
('��\�ێGH�;s9�gU','Pitcairn'),
('[6\r��\�Ar��p^F\��\\','Pologne'),
('z���\�WF�\n�u�\�H\�','Polynésie Française'),
('/U\�7_�N>�tBR�\�*i','Porto Rico'),
('���\��VIz�6iW\Z�\�\�','Portugal'),
('�k	�\�A㠄\�\�\�]�\�','Qatar'),
('���\�)\rEǽ�l\�Ŷ�','République Arabe Syrienne'),
('}�\�\�H��\\\�tiҶ','République Centrafricaine'),
('��L��LK��\�Y\r���','République de Corée'),
('\�I�/�A|��\�`��ly','République de Moldova'),
('\�(Έ\�HP�\�\�\����\�','République Démocratique du Congo'),
('\�\�\�InJˮc��`��','République Démocratique Populaire Lao'),
('�:\�B\�Kt�E2m\�\�A\�','République Dominicaine'),
('M/n\�E߻\��\�:m\�','République du Congo'),
('{���\��@��S�\�Ƅ','République Islamique d\'Iran'),
('=#��ϯC����ׯ\�','République Populaire Démocratique de Corée'),
('�LB\�\�C��cX�\"od/','République Tchèque'),
('	n\�+�Cp��N@�\�\�C','République-Unie de Tanzanie'),
('MV�`��C|��\ZC�t\�','Réunion'),
('��\n\�g8K[�)N��','Roumanie'),
('\�]W�NEm�Ƶ����,','Royaume-Uni'),
('�s*��C��`	A\�\�','Rwanda'),
('�\�\�\�MuM��w�\�l\�','Sahara Occidental'),
('��:��BAx�i\�\�\�V�','Saint-Kitts-et-Nevis'),
('DZ ���O:�;���\�G','Saint-Marin'),
('AO��m�O���r�.lJm','Saint-Pierre-et-Miquelon'),
('I7\�\�(\�A͠P�=¸^�','Saint-Siège (état de la Cité du Vatican)'),
('*�\�f\�$M\�u[\����W','Saint-Vincent-et-les Grenadines'),
('��~q�F���uGt-\�\�','Sainte-Hélène'),
('I\�S\�I=�u\�l\�{\n','Sainte-Lucie'),
('aW\�z�\rD��t�}Av','Samoa'),
('PG\�E\�I��KH<�m','Samoa Américaines'),
('�:\�P\'GB���׀B\�C','Sao Tomé-et-Principe'),
('K\�*\�@��\�\��R�Y','Sénégal'),
('��`c\�Bw�\"��;;��','Serbie-et-Monténégro'),
('��1}�rD���\�\r\�Q\�B','Seychelles'),
('�\�>�\�F�z��G�a','Sierra Leone'),
('Kv^c\'J.�w�z	*','Singapour'),
('KK\�y�N������W','Slovaquie'),
(']a��N�D\�S-�','Slovénie'),
('��\Z\�Y\�H\0�\�G3\�v\�','Somalie'),
('��Xz7K�\�D\���','Soudan'),
('sa\�?�G�@\�x5F','Sri Lanka'),
('\0�I�\'�L��\�\�\n۞x\�','Suède'),
(']�x�OÄ߀Y\�@:w','Suisse'),
('�ptd�O_�\�o\�ƇU','Suriname'),
('\0�.\0vMk�\\\�\�S\�','Svalbard etÎle Jan Mayen'),
('�>\�\�\Z}@\���\�{\���','Swaziland'),
('G\�C�kUD|�gc\�}�c','Tadjikistan'),
('-	\���O���ZۋC��','Taïwan'),
('\�X\�N��\�\'Zvb\�','Tchad'),
('_ф\�\��Dx�Jܐu\�','Terres Australes Françaises'),
('�Cp��+Lŀ\��\�\�	�\�','Territoire Britannique de l\'Océan Indien'),
('o�7\�J�G��\�\�W\�8�','Territoire Palestinien Occupé'),
('1�߆vAf�\��S\�\�\�','Thaïlande'),
('���\�A��?j�\���','Timor-Leste'),
('\�>\�\�\�)H �%{J���','Togo'),
('懜HkRN��\� �bq��','Tokelau'),
('x6RT�iFm�tZ�\�[�','Tonga'),
('ٚ�\�K`E@�7|\�~<�','Trinité-et-Tobago'),
('�wy\�uC\\�j{/\�r�','Tunisie'),
('�Ô\�W�I@�<�e\�','Turkménistan'),
('j\���A��ڥ6�','Turquie'),
('2#�t\�\�I�\����,','Tuvalu'),
('ŕ\��Aa�hs�\��g','Ukraine'),
('߃٬5A��\�?���','Uruguay'),
('����GM\'��$��]','Vanuatu'),
('\�ꇀ��LU�A0\�˝q\�','Venezuela'),
('\�\�\\jLC��)\�E\�l','Viet Nam'),
('cw��\��O����:\�\�','Wallis et Futuna'),
('՟�2�\�CP��i�\�J�','Yémen'),
('��i�PNv���D+\�B','Zambie'),
('ʮ��\�\�@~���\�\�-[|','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-04-12 19:51:54',5),
('DoctrineMigrations\\Version20240201152951','2024-04-12 19:51:54',2),
('DoctrineMigrations\\Version20240202084749','2024-04-12 19:51:54',2),
('DoctrineMigrations\\Version20240202150901','2024-04-12 19:51:54',3),
('DoctrineMigrations\\Version20240207105701','2024-04-12 19:51:54',2),
('DoctrineMigrations\\Version20240319212437','2024-04-12 19:51:54',2);
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

-- Dump completed on 2024-04-12 19:51:55

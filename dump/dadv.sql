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
('/1vM\�C=�\�\�\����\�','Afghanistan'),
('�5jܽmB˅b��&\�/�','Afrique du Sud'),
('�	6~\�I\��\�=\'M��','Albanie'),
('.\��s!Cr�,\�@\��\�','Algérie'),
('w�.YJ1�]�cZ','Allemagne'),
('u����\�I\�.�ݔ��','Andorre'),
('3|sKHD�K\�\�߰S','Angola'),
('\'\0�d+\�OL�ct36\0�\�','Anguilla'),
('\�\�e�-O��\Z�6h��','Antarctique'),
('�]\�jN�� ,?B�','Antigua-et-Barbuda'),
('��`\��B�.��Ϛ�\�','Antilles Néerlandaises'),
('$�ЃgsD��\�+\�','Arabie Saoudite'),
('�F��\0�B`�k&�?\�D','Argentine'),
('f�P蟗M8����\�>�t','Arménie'),
('\\�\�[a\�C��Mt�-;2G','Aruba'),
('4\�k\�NCE��eD�\�T','Australie'),
('k$�r�@ݲAJ�\�ٽ\�','Autriche'),
('��\�4��H��<�Z\�:i�','Azerbaïdjan'),
('Do�\n@�L]��\�m\�\r��','Bahamas'),
('rY:�\�GT��Y\�V$�','Bahreïn'),
('.4|�>\nL>���\�ɪ\�','Bangladesh'),
('�߻ׁ	I��\�PDGt�','Barbade'),
('�p\���^F�_\�{M��','Bélarus'),
('�\�\�\��@C���\�\rr�3','Belgique'),
(')\�@r\�KA�\�˶\�\�','Belize'),
('8c�\�4O���3�.54[','Bénin'),
('��#��8F6�\�\Z\�/l\�','Bermudes'),
('\���[\0�M�;l���=','Bhoutan'),
('ɰ\�\�KLF��;pQ�\�m','Bolivie'),
('�M&�z\�F8�v(6z','Bosnie-Herzégovine'),
('\r���\�B��b\�J�=5P','Botswana'),
('8���\��E/�8��?O\�^','Brésil'),
('3�қDJz��6%b\�~]','Brunéi Darussalam'),
('��e\�\�N��,\�\�\�','Bulgarie'),
('�4�\�L\�\r6\"0]k','Burkina Faso'),
('*�m�}nMͫ/Z\�JD\�/','Burundi'),
('$�\�řC*�\�1���','Cambodge'),
('\� \�P\�6E\��\�,:\0\�&�','Cameroun'),
('<%�:�0B0�U�b$�l\�','Canada'),
('30eL0�G��_=x�#�','Cap-vert'),
('[�\0\"�Oܥ�x�6\�','Chili'),
('�!rV-�IV��\���','Chine'),
('[�g+~H��nT�5x�','Chypre'),
('\�f�javK��h�4�.�','Colombie'),
('cـع�H��\�\\%\�$','Comores'),
(' \�+H�\�O5�p����(�','Costa Rica'),
('F�5(�C\�\�\�~\�dJ�','Côte d\'Ivoire'),
('?�M]�\�N\�	�ľ','Croatie'),
('i\�\�\�TM|��\�\�7y\�','Cuba'),
('T�v�\0Cy�zB��8','Danemark'),
('\'`��\�G�ԨdڪEs','Djibouti'),
('��4j)\�N&�w�q(U��','Dominique'),
(';d�\�(M��W\�-K�','Égypte'),
('K�S�\�\�B��\�w?\��','El Salvador'),
('qzKR\�4G���\�\�:Ǣ','Émirats Arabes Unis'),
('\�\nuk\��Ah�)\�O\�\�\�','Équateur'),
('-1\�:-�K�\�\"\�x\�e','Érythrée'),
('��(�ELP�\�\�G��','Espagne'),
('.Y$C�D嗒[@\�j\�','Estonie'),
('Ol�\�\��O\'�J٦(��','États Fédérés de Micronésie'),
('��xllI˧\�\��\�\�\�','États-Unis'),
('��a�\�6OM�T:\�\�\�','Éthiopie'),
('�#dE\�\\{Mǘ�','Fédération de Russie'),
('��N\�]Fu�I�ɩ`R�','Fidji'),
('�\0U��BR�\�\n(\�\�\�','Finlande'),
('�\�L,sF��u�Aʾ�@','France'),
('�G\�臮E���%\�\�A�','Gabon'),
('J\"��<RIױ$�H0�\'�','Gambie'),
('\�<\0�HML��	~�\�Ј','Géorgie'),
('`\�����J<�\�\�w�\�H','Géorgie du Sud et les Îles Sandwich du Sud'),
('�\�h�J@�5v�W�Ʃ','Ghana'),
('�\���LIԸ�4���\�','Gibraltar'),
('2��\�q�J{�\�\�I�x��','Grèce'),
('^\�@�\�6G@���x\r','Grenade'),
('����sCH�q@!\��','Groenland'),
('ː\�ߊ\�I7�73��ݓ\�','Guadeloupe'),
('�\�\�\"D\ZJ��̫͚�','Guam'),
('jw\�\���E����lʪ\Z','Guatemala'),
('�ڶ~x\�L���\�\�\�1\�\�','Guinée'),
(',b��\�#Is�\� �G�\�','Guinée Équatoriale'),
('\�Hx�pO5�P\n��\�','Guinée-Bissau'),
('\�\"gc\�E?���(�s�','Guyana'),
('\�n\�\�#@������	','Guyane Française'),
('�Y���JV�\�\�-�P��','Haïti'),
('�\�\�4�rO���\\��N\�','Honduras'),
('���`��C��\�0ff�U\�','Hong-Kong'),
('_���)B\��|�\�惄_','Hongrie'),
('sg\�-�1C5��!\�8Z\�q','Île Bouvet'),
('��\�f:A���\�9Q�\�\�','Île Christmas'),
('h\"\�*�AH�E�+�\�&\�','Île de Man'),
('�\��\�B����D\r5\�','Île Norfolk'),
('Q)\�Z<J�\�h/X�\'o','Îles (malvinas) Falkland'),
('#>)\�4�B_�6@l]\�','Îles Åland'),
('N!lt\0\�@Ҟ�49�7c�','Îles Caïmanes'),
('=\�0H�XO���ofT\��M','Îles Cocos (Keeling)'),
('U\�/��IƉ~`\�\�\�','Îles Cook'),
('<+\�Q{Hu�\���B%\�','Îles Féroé'),
('4�:\���B!�\�\��\�','Îles Heard et Mcdonald'),
('enG@\"Cv�\�r\�0�\'','Îles Mariannes du Nord'),
('6�\�\�3L\����t�\�','Îles Marshall'),
('Z�\��.�MЂ~B32f','Îles Mineures Éloignées des États-Unis'),
('$��9l\�G����Z\nj*','Îles Salomon'),
('�sj�z\�HF�\�9+��\r','Îles Turks et Caïques'),
('\���\�EB�0\�\�\�h\�\�','Îles Vierges Britanniques'),
('�\�\�xM\�e~\�d��2','Îles Vierges des États-Unis'),
('A����ME���rF�5�\�','Inde'),
('�1��FLA�ⅱ\�E\�','Indonésie'),
('L\�2A\\[A��ѰǦb�','Iraq'),
('omw��\�@\r�\"&$iN;','Irlande'),
('.�\��$Jl�=Ft.�\n}','Islande'),
('��g��\�E(��\Z�Aeq�','Israël'),
('+\�fZO3F��Q�z`C4\�','Italie'),
('�|s�\�HNT�ٙ\\L\�\�','Jamahiriya Arabe Libyenne'),
('K1Iz�Lݖ�O�\�m�','Jamaïque'),
('��f�\r�B)�M\��\���\�','Japon'),
('}��aBw��4��;O','Jordanie'),
('[�L�S\�@\n��>\�Bz5>','Kazakhstan'),
('�FIc�2C\�k\�\�X\��','Kenya'),
('p�\����J��eV�V3\�','Kirghizistan'),
('�\�Oh�MЙN\�Z6\\�','Kiribati'),
('0ɑ��\�O��6�-@�\�','Koweït'),
('�\�!K����\�v�','L\'ex-République Yougoslave de Macédoine'),
('\�?�\�G���Q\�\�2�','Lesotho'),
('В\r\�m�K`���ݐ���','Lettonie'),
('w�\\j��@F��\�(\��E','Liban'),
('8*�!0ABe�\�~�٧\"','Libéria'),
('4t�kXw@�\�\�\rc\�','Liechtenstein'),
('\�:Z1�Ao�#:\�Di\rz','Lituanie'),
('�р.�?N����O\�]_<','Luxembourg'),
('ެS��LţR��P�;','Macao'),
('I>\�3\�J֨\�6��l�(','Madagascar'),
('\ZP\�W?�L��\�N�\\w-','Malaisie'),
('8\��\�\�LF��\�\�2O�\�','Malawi'),
('u;,�\�JЀót\�@k`','Maldives'),
('�\�\�\�9cD��\�\�\�\rWG','Mali'),
('k\��	\�@��\�r\Z','Malte'),
('\�W=\�\�D��$��(�','Maroc'),
('\�\�A\�DЭs{W^8W\�','Martinique'),
('ȔK\�H �#BE�o\�','Maurice'),
('��q;G\�±��I\�J','Mauritanie'),
('r�.�OE��&�_��','Mayotte'),
('Nf��Ms�����?�','Mexique'),
('C�H\�~F8�:��pP�[','Monaco'),
('=BuID@�Xl�N\�\�','Mongolie'),
('T\�_L@����[ue','Montserrat'),
('�.=\�\"M���Nns@��','Mozambique'),
('��@#~�C��>�\�d;�','Myanmar'),
('S�7E�H?�=�ȵ\�\�','Namibie'),
('\'ɽ6|L����T-\�u','Nauru'),
('\�RꋔRHݥ�\�4�\�\�','Népal'),
('p\��\�\�9I���H�0S','Nicaragua'),
('�d8u\�Cۭ��>�8\ra','Niger'),
('M	Fz�N��(Xbdg�/','Nigéria'),
('�V$`d\�A߳*\"���M','Niué'),
('#\�\�\'V�Gi�-�{o\��','Norvège'),
('\�\�\�;C���rSM�\�','Nouvelle-Calédonie'),
('\�q�b��Eۗ��ӹ\�*T','Nouvelle-Zélande'),
('�H���\�E\�@h$ǖ\�','Oman'),
('���\�n\�CE�\�b)\�Uf','Ouganda'),
(';,\��\�\\Oҧ7-�F7','Ouzbékistan'),
('�Xԧ1FB�KI2�Eղ','Pakistan'),
('K\�>2\�(Eƻ��j�(a\"','Palaos'),
('�^���\�C��\�\�\��]','Panama'),
('\�N2q^�G`�W\��\�$9�','Papouasie-Nouvelle-Guinée'),
('�=ƾD?FH�\�\�\��\�','Paraguay'),
('>`\�$�\�D���~Sg|J','Pays-Bas'),
('0�G\'o�E��cj\�Jq\�H','Pérou'),
('^�n\�H_�8�x!\�','Philippines'),
('���\�\ZA�7�5','Pitcairn'),
('	z#X\�D���.\�\�\'\�','Pologne'),
('��\�[B\�\�Q\�9\�-�','Polynésie Française'),
('���B\�/F�\�>:t�g�','Porto Rico'),
('�ؙmLΓ�\�m\��p','Portugal'),
('\0K\�O�M��}fOe\0\0�','Qatar'),
('(�g@IRK�1�CaK','République Arabe Syrienne'),
('3�\'QA��\�F���Ě','République Centrafricaine'),
('�^\�,Eո\�wD�\�','République de Corée'),
('�\�\�\�SiK\��,0���','République de Moldova'),
('E\�L���ɺN4f\"','République Démocratique du Congo'),
('\�9\�]�rMD�\�\���J��','République Démocratique Populaire Lao'),
('�!/�\�GD��\��c\�','République Dominicaine'),
('�-~�;k@��W\n�f:�#','République du Congo'),
('��DCD��\��Ȝ��U','République Islamique d\'Iran'),
('\\\�UBсF^��\�\�?�7\�','République Populaire Démocratique de Corée'),
('\�\��cN����0�A','République Tchèque'),
('\�kl\�B��,���ce\�','République-Unie de Tanzanie'),
('\�@�m�A\���k35�\�','Réunion'),
('C���\�L\�\�]�\�s','Roumanie'),
('\��\�p4C���\�	�\�@\�','Royaume-Uni'),
('N4l!�\�Bю\�DwN','Rwanda'),
('���\�b�C̳\�H\�X`\�','Sahara Occidental'),
('n¾�MČ�\�5\�\�[','Saint-Kitts-et-Nevis'),
('���\�ӐKŬE|f\�W\�','Saint-Marin'),
('�L�k�G��\Zr�\�`ZH','Saint-Pierre-et-Miquelon'),
('Ĉ{�\�>D��D����','Saint-Siège (état de la Cité du Vatican)'),
('	�Y\r�sK��p.\�v�','Saint-Vincent-et-les Grenadines'),
('�\�\�؛9N��\�/`�\�','Sainte-Hélène'),
('�&h��M5�P��)�d','Sainte-Lucie'),
('��\�A,Nr�\�\�\�V��','Samoa'),
('�=<\�M߅>�XB�=\�','Samoa Américaines'),
('$\�8G\�G��\�T��\�\�','Sao Tomé-et-Principe'),
('a䭂D\�D}���o$8n�','Sénégal'),
('N��a!N����2ݽzs','Serbie-et-Monténégro'),
('Xm�%LX�A����!\�','Seychelles'),
('w�w�\�KA\n�hAe\�Y$','Sierra Leone'),
('\�\�h�J&IΓ\�E;\�~�','Singapour'),
('��爷aH\��HNX\�q','Slovaquie'),
('}sl/�L��\�\�!5m','Slovénie'),
('���s\�\�D����[\�wj\\','Somalie'),
('\�8\�4uK�v�܃g�','Soudan'),
('he�0\"EـE\�<�-^','Sri Lanka'),
('�\�\�\0\"sI,��{\�\�$\\-','Suède'),
('\�}��<7H�m\�\�\�ݞQ','Suisse'),
('q��ר�E�1\�8\�\"h5','Suriname'),
('Պ�\�.B0��p\�\�6G�','Svalbard etÎle Jan Mayen'),
('�lG�E�\�\�\�	\�\�','Swaziland'),
('�_\��\�\nL	@-�\�0','Tadjikistan'),
('04ɓW\0C6��U\�\�#�','Taïwan'),
('\�|l��Iړ�V\�\�&�','Tchad'),
('�RJ�\0Jz�\�\�\�^0�\�','Terres Australes Françaises'),
('��+V\�G���΀��h\�','Territoire Britannique de l\'Océan Indien'),
('F\�a\�Ea�Q\�MF��','Territoire Palestinien Occupé'),
('=��\Z-Oᑲ\�\�ӣ\Z','Thaïlande'),
('������M8�h^�|�y','Timor-Leste'),
('\��|\�D��\�\"�~u','Togo'),
('\���\�F͡�\�qG�@�','Tokelau'),
('$\�_\� B��b�Hޤz','Tonga'),
('Ѩ�㟝N����`\�@��','Trinité-et-Tobago'),
('3\�Y\�\�D��*)Ҳ','Tunisie'),
('\�q �L@B�\�:�eb;','Turkménistan'),
('l\�/��F�� 6[zX\�','Turquie'),
('\�\�\�.�E���\�\��\�','Tuvalu'),
('@`\�\�lF��\��+�1\�','Ukraine'),
('\�\�t\�\�\�L�\0\�֢\�9z','Uruguay'),
('�]pU�#M\��3\�+�\�','Vanuatu'),
('1\�;θ�D���\�X\�F\�X','Venezuela'),
('B�6K��\�s\n�\� \�','Viet Nam'),
('�:dj/I\"��\�\�a\�W�','Wallis et Futuna'),
('\�\�Ib�J���\�\�/��','Yémen'),
('����fIz��;I�0	>','Zambie'),
('�3\r�]<E����MdO5&','Zimbabwe');
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
('DoctrineMigrations\\Version20240124155119','2024-02-11 14:30:56',10),
('DoctrineMigrations\\Version20240201152951','2024-02-11 14:30:56',4),
('DoctrineMigrations\\Version20240202084749','2024-02-11 14:30:56',4),
('DoctrineMigrations\\Version20240202150901','2024-02-11 14:30:56',3),
('DoctrineMigrations\\Version20240207105701','2024-02-11 14:30:56',5);
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

-- Dump completed on 2024-02-11 14:31:00

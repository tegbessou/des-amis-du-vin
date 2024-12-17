/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: dadv
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
-- Current Database: `dadv`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dadv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dadv`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES
('\�MRe�^A���c{^\�','Afghanistan'),
('u6\�\�GH�r\�\�','Afrique du Sud'),
('q�\�\��A���\�\�I\��','Albanie'),
('\�6]eK�NZ�\�\��\�\�<','Algérie'),
('\�\��\�B��\��|j�','Allemagne'),
('��\��\�Ix�Ћk\\r��','Andorre'),
('t\��G㑅|�� \r','Angola'),
('\�X�5ƜF��*f���\�G','Anguilla'),
('�s8�\�M�\�Ap+aR','Antarctique'),
('��R�g#@y�w�`�Y\�\�','Antigua-et-Barbuda'),
('�ܮ\�F5�]\�\n�=','Antilles Néerlandaises'),
('\�\�l�RD��絲&r�O','Arabie Saoudite'),
('\�=\�\�xL��xn�>\�','Argentine'),
('�\�\�\��Gz�iWg�û�','Arménie'),
('Azg�EMi�\�\�Wppn','Aruba'),
('�d@�\�F��\�\�\�R[','Australie'),
('��\�\�Xk@h�%\�\����\�','Autriche'),
(')�\�f\rJH�\��\�+bv','Azerbaïdjan'),
('9;G��CK����\�\�\�(�','Bahamas'),
('\Z�e�\�\�H0�)V��	�','Bahreïn'),
('\'	��\�\�K��0%V2Sj','Bangladesh'),
('\��g�N���\�\�T\�\�\�','Barbade'),
(')Ct�5bNW�u!\��\�b','Bélarus'),
('1M\�u\�\�Dګx>\� �','Belgique'),
('\0���[DW�\�a܇\�Lm','Belize'),
('T��n\�EH�\�Օ\�\�Y','Bénin'),
('\��F;�I��1@\�~�e','Bermudes'),
('֡\��KB��u]lu\�','Bhoutan'),
('\��\�I��@\'c\����','Bolivie'),
('�Ik�\�Nճշ^9C>\�','Bosnie-Herzégovine'),
('��\�\"�Fϣ;��?`\�','Botswana'),
('\�\�92N-B��V\� 0�]','Brésil'),
('xj��1yL\�������\�','Brunéi Darussalam'),
('\�\�\��\�\�D����V\�̗','Bulgarie'),
('\�4՚>Aݠ52?�(c','Burkina Faso'),
('D.P�MהV\r\\�η/','Burundi'),
('.`Z�AHZ���*-9ʬ','Cambodge'),
('�j\�h3�D��\�=�;��','Cameroun'),
('�\�_\�N��g�\�\0�/','Canada'),
('\"X�\�mB��1t\�E�4(','Cap-vert'),
('}:\�\�M��#�]��ͳ','Chili'),
('�glN&KݪK�˯`>�','Chine'),
('�\�\�\��G2�\�\��:�E','Chypre'),
('ɣ�@�F<���\�Wg\�d','Colombie'),
('BU��M\�,�u\�<&','Comores'),
(')�\\�F��v�;�Kj','Costa Rica'),
('bW\�\�\�Ax�\�g\��&\�\�','Côte d\'Ivoire'),
('P\r�\�k\�JH�C#/�kx�','Croatie'),
('���H�;yDM�0','Cuba'),
('(\�\�DK@��\�Rm�\�','Danemark'),
('.�Rj}�O��kn$�t\�\�','Djibouti'),
('K�/\0�qG-�\�;qlJ','Dominique'),
('\n��i\�`J\�\�\�y*ą','Égypte'),
(',\�򑋘KO�$d\�\�iU','El Salvador'),
(',1TP\rG\0�0[�.!W','Émirats Arabes Unis'),
('6+�\�B7����\�\�T','Équateur'),
('\�\�l\�K\\���y\�\�\�','Érythrée'),
('\�\�><6\�@G�I��ӈ*','Espagne'),
('ܕ��j�N_�DD\�;Ǫ\�','Estonie'),
('A`C\�@D7�Sq�j\�A\�','États Fédérés de Micronésie'),
('~\�ɼ\�F����1Ǭ\'^','États-Unis'),
('-(�;�I?�9��\'h��','Éthiopie'),
('a!w�DӅ\�c�\�.Z','Fédération de Russie'),
('�\�I4cNʬ�7��H�q','Fidji'),
('ubZ�&�H���#d_�D','Finlande'),
('�\�yooL*�\��>D�\'','France'),
('\�\��	B8F(�[��\�j&','Gabon'),
('\�\�-�y\�J$�+o^9P\�','Gambie'),
('��\�E����\�r\��.','Géorgie'),
('47&x�I�\�	��\�~','Géorgie du Sud et les Îles Sandwich du Sud'),
('!U\�FW�I�\�\��','Ghana'),
('i�`��3B���q��9\0\�','Gibraltar'),
('�\�E��O煝\�\�o\�ä','Grèce'),
('�\�C�E@��2WU�\�<','Grenade'),
('�8�r�\�FG����\�t|�','Groenland'),
('R\��NE��\�$;9?t','Guadeloupe'),
('��>\�\�\�LԱ��P=\\','Guam'),
('t;�G@J�\�N\��','Guatemala'),
('\�Kz2{�M�\�\�\�~7','Guinée'),
('\n\�]ӬX@��ҍ�%�\�\�','Guinée Équatoriale'),
('��O\�F[�*�\0\�M\�\�','Guinée-Bissau'),
('ݔ\�;\0�D?�\nH�\�,','Guyana'),
(',�!$K�o�Iv�\�','Guyane Française'),
('\����\�{G/�a.؊9','Haïti'),
('=k\�UBй=G�tl\�','Honduras'),
('ML�\�IC��ѷa\�	a','Hong-Kong'),
('\�?\Z�ME戳�\�\�$�\�','Hongrie'),
('\ZJ2*+D&�iK^��\��','Île Bouvet'),
('\�i\�\'O\�A��r���\�D','Île Christmas'),
('X9\\ŇO��Q}\��C','Île de Man'),
('#@n(\�|E��\����\n\�','Île Norfolk'),
('�0\��\�J�{b\�C�y\�','Îles (malvinas) Falkland'),
('�\\|\��I��\Z>\�Ey\�','Îles Åland'),
('\\	�\�@:�\�\�\�$\�\�','Îles Caïmanes'),
('\�\�t��Kg��a�t\�f','Îles Cocos (Keeling)'),
('�Ig\�Et�\\J1%���','Îles Cook'),
('vZcԌJ��\�*ѲƝ','Îles Féroé'),
('�\�\�L\�	DO��\�l','Îles Heard et Mcdonald'),
('w�˩\�\�Dl�q3逇\�','Îles Mariannes du Nord'),
('�W\Zߕ@~�߃\�\"\�]','Îles Marshall'),
('.\�\�\�&�B\��6.��K��','Îles Mineures Éloignées des États-Unis'),
('\�b\�=�\�J��JjG ��','Îles Salomon'),
('\�wL\��IR�KU|�9�','Îles Turks et Caïques'),
('x��X�`O���j����w','Îles Vierges Britanniques'),
('�\�X\�o>G\�;�\�\�','Îles Vierges des États-Unis'),
('(R\�@��\Z\0�\�1�\�','Inde'),
('���x\�GJ��\�\�G��\�','Indonésie'),
('�`��{}Bv���L��\�\�','Iraq'),
('��i��OҤ	�G\�-B','Irlande'),
('H1�\�NO��\�)\��p\�','Islande'),
('\�\�Ə�L=�9>�T�O�','Israël'),
('�fXQ�I��E\�\�~�m\�','Italie'),
('~P\��xLJ��\n\�r��','Jamahiriya Arabe Libyenne'),
('\�\�+̿F}�B\�K\�>\\','Jamaïque'),
('O9�\�K�\�B�ȴ\�H','Japon'),
('Z2\�Cp/A��\�\�Y;�','Jordanie'),
('��lY\0\�G��\�Ѥ�\�','Kazakhstan'),
('�O\�s\r�DćIo7�\��','Kenya'),
('\���\�D��\�Q\'��[','Kirghizistan'),
('u �\�O��\�\��8�','Kiribati'),
('\�]\�\�/L{�\� �y\�\�','Koweït'),
('w\�^Z\�D����R1\�6B','L\'ex-République Yougoslave de Macédoine'),
('��\�\�L׈0\�Y�\�\�','Lesotho'),
('\�s7�˻B�����Ϻ','Lettonie'),
('�\�b\0\�H��OB*�0�','Liban'),
('\"��Q�\�Kv��~�\�g�R','Libéria'),
('�\�\\��OE؏HW\�)\�','Liechtenstein'),
('�*8\�Z�Ni�IB��m�','Lituanie'),
('f\�eXG����U�','Luxembourg'),
('�Q%R\�lM��IPZ=S~','Macao'),
('%<C��b`e�*6','Madagascar'),
('Ҷq\�\0C��L�k�\�z','Malaisie'),
('\�\�\�g�\�M���\��c�','Malawi'),
('�\�a���M��\�9���\�','Maldives'),
('!P~�B\'��W�\�\�','Mali'),
('̰.\nH4���\�j�\�\�','Malte'),
('�\r\�IzI�����\�e\�X','Maroc'),
('&\�\r`J��ؙ+\�g\�','Martinique'),
('S\�k�NO,��w˙\�','Maurice'),
('f�ukhWI��TDq$�,x','Mauritanie'),
('C�\�c\��J���p�2\�\�','Mayotte'),
('�A4\�1O��\�A��u\�','Mexique'),
('ڛ\0��Dԑr\�\�\�d��','Monaco'),
('\�ׄy�\�JZ�+*R*{D�','Mongolie'),
('E򒍆\�E��_.޸\�3\�','Montserrat'),
('��<Z!@��\�㚣\�[','Mozambique'),
('^\��cQ:@��\�\�w�u^C','Myanmar'),
('K<�\�_\�A��w�_1\�U','Namibie'),
('���d@��}Ad\�N\�','Nauru'),
('�\�\�\�uMN�ڧ;\��Z','Népal'),
('ϐ�\'}CH�L�i�o-\�','Nicaragua'),
('��\�\Z|:K\n�u�B\�\�\�','Niger'),
('�:�\�~aO\�V}G��)','Nigéria'),
('=.c\r��C^�\�r�e\�2-','Niué'),
('\'M%\�4\�Bz�\�wb�e�U','Norvège'),
(' { tC&��\�?:�sz','Nouvelle-Calédonie'),
('I�\�|NQ�B���6m�','Nouvelle-Zélande'),
(')Q(\��\�H4���c�Z','Oman'),
('(e\�\�2@4���͐�S','Ouganda'),
('��\��\�\�O����\�s�b','Ouzbékistan'),
('n[5�\�I\�\�\"S\�l','Pakistan'),
('\\\�Ǧ(�Oa��\��3�c','Palaos'),
('Q\�aoH\�Ct��18�\�E','Panama'),
('w2��\�LS�~�\�o','Papouasie-Nouvelle-Guinée'),
('\�O�\�\�D:�z�ǋ\�\�','Paraguay'),
('�\�!��)M��k�\Z�X','Pays-Bas'),
('�n\�0Aûss�H\�','Pérou'),
('�~\'�\�E���,s\�\�rN','Philippines'),
('�\�OqR�Dɇ��W%\�+d','Pitcairn'),
('�\\d$,DG�·�\�\�','Pologne'),
('ڀ�\�H]�h$	b�0','Polynésie Française'),
('^�)5\�LФ��\�Q;�\�','Porto Rico'),
('�\�,\�\�CN��\��۱\0','Portugal'),
('n	\�\�tgJ|�zb�\�\���','Qatar'),
('>=�0m\�F��\�\Z��','République Arabe Syrienne'),
('\�Ӄ�NJO��st`]','République Centrafricaine'),
('\r �=\�G	�i\�\�l z','République de Corée'),
('�$|b?�JB�\�h?yU��','République de Moldova'),
('\�RT�^DQ�i\� \�\�\�','République Démocratique du Congo'),
('\�գ�\�\�Cn�TEBw�ڍ','République Démocratique Populaire Lao'),
('N%N�\�L\�\�=�H>��','République Dominicaine'),
('CO\�&0�K)��\�y\�*\\','République du Congo'),
('�\0\�K@\����s3\�]\�','République Islamique d\'Iran'),
('��薺\�C�\�c�6=','République Populaire Démocratique de Corée'),
('�`�wJ\���=-k�nw','République Tchèque'),
('�`ޯ�@w�\�\�[_R','République-Unie de Tanzanie'),
('�N�( 7O��eT\nO�7�','Réunion'),
('�\�\�?=\�D��\nt�E1~','Roumanie'),
('��޿\�@O��V\�\�@�\�','Royaume-Uni'),
('m8��HX��u�!\"�','Rwanda'),
(';[����HJ��Q\�\�','Sahara Occidental'),
('\�\r��\�F^�ƺ\�5�ڝ','Saint-Kitts-et-Nevis'),
('\�\��\�\�N=�GR�?\�i','Saint-Marin'),
('G\�ظ��H�tr\�3','Saint-Pierre-et-Miquelon'),
('�@�y7N\�	�d�M�','Saint-Siège (état de la Cité du Vatican)'),
('%y��g*J��/6R���$','Saint-Vincent-et-les Grenadines'),
('\n\\��\�G\�\nb�L�E','Sainte-Hélène'),
('�ܥ|��JA�z\�O�.%�','Sainte-Lucie'),
('l��\\USN��:��`8�','Samoa'),
('�\�09��F��t�j\r','Samoa Américaines'),
('\021\�\�ABí�#\���=','Sao Tomé-et-Principe'),
('\�r�nKP��T��\�','Sénégal'),
('\�l0\r�B\�\\���z�','Serbie-et-Monténégro'),
('A�#�@��`Ch','Seychelles'),
('dB\'\�2F��:�E>�','Sierra Leone'),
('�eMPQDq��5w��\Zi','Singapour'),
('mX]�\�@`�\�OǓuł','Slovaquie'),
('p\�\�iD��a�\�fL','Slovénie'),
('oS�]H�� �o\�ͽ;','Somalie'),
('\�\'\�A����ض�\�','Soudan'),
('�\�T∰Aƥa�M�I','Sri Lanka'),
('�XZ�<?Ly�y�f�|','Suède'),
('X\�	\��oE؏�ӓK�\�','Suisse'),
('b|5��\�K��\�Gp|#>','Suriname'),
('\�E���Gp����0\�J%','Svalbard etÎle Jan Mayen'),
('O�\��C��/p?\�\�(�','Swaziland'),
('��g�\�I\��cQ�K,','Tadjikistan'),
('�v\�\�Z\�G��\�#�U\0','Taïwan'),
('K���p\�Aڜ7�.̾/','Tchad'),
('0_��rB\�@\\\�\�`-�','Terres Australes Françaises'),
('M�\�ܱ�K\��	������','Territoire Britannique de l\'Océan Indien'),
('��ۣ��H;�\�$�#\�W','Territoire Palestinien Occupé'),
('\�|j \�B��݌�D\�W1','Thaïlande'),
(':O���J��p��\�:','Timor-Leste'),
('�\�K��\�L��{͸�n}^','Togo'),
('_�m,�[F��{�\���','Tokelau'),
('~�>G�O�Ο\�]�#\�','Tonga'),
('N\�8��\�O��E�\���','Trinité-et-Tobago'),
('h�ԟ�V@��|T&s��\'','Tunisie'),
('3Z\�-	�Hǀ2\�\�j\�\�','Turkménistan'),
('\�\�c\�M@Ż��֨n','Turquie'),
('(V]�uDl�ۏ�\�hc','Tuvalu'),
('8!��4\�L_�<\�\�uJ�','Ukraine'),
('�\\�m�\�EN���\�p�`@','Uruguay'),
('�����J�#\�`:','Vanuatu'),
('h�Ȥ~N��&[Qz;\�*','Venezuela'),
('�\�[#OkE���1\�\n\��}','Viet Nam'),
('\"�8�yGp�\�v\�=#\�','Wallis et Futuna'),
('�\�UBB���\�@h','Yémen'),
('^ \�C\�CZ�~\�2ěF�','Zambie'),
('\�Cib\�L��ȃT�.͆','Zimbabwe');
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
('DoctrineMigrations\\Version20241217142038','2024-12-17 14:21:00',7);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `id` binary(16) NOT NULL,
  `target` varchar(255) NOT NULL,
  `link` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tasting_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F11D61A25BC0FE1E` (`tasting_id`),
  CONSTRAINT `FK_F11D61A25BC0FE1E` FOREIGN KEY (`tasting_id`) REFERENCES `tasting` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES
('�\�/i��M��\��|�Vt','root@gmail.com','https://apps.apple.com/app/6468406309','pending','2024-12-17 14:21:00',NULL,NULL,'.�l5��Ln�I�y\�\�7');
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
  `bottle_name` varchar(255) NOT NULL,
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`participants`)),
  `owner_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasting`
--

LOCK TABLES `tasting` WRITE;
/*!40000 ALTER TABLE `tasting` DISABLE KEYS */;
INSERT INTO `tasting` VALUES
('.�l5��Ln�I�y\�\�7','Domaine Leflaive Montrachet Grand Cru 2016','[\"hugues.gobet@gmail.com\"]','hugues.gobet@gmail.com'),
('�J<�_�Fx�\�\�q���\"','Château Latour 2010','[\"hugues.gobet@gmail.com\"]','hugues.gobet@gmail.com');
/*!40000 ALTER TABLE `tasting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-17 14:21:01

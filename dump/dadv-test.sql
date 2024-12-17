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
('p�7\rC�U��cT�','Afghanistan'),
('�n\�	N���P�\r\�','Afrique du Sud'),
('\�U6n\�YG2�]\�_�\�\�','Albanie'),
('T\��jK��L�\�\�<��','Algérie'),
('���\�tF��`(m\�k%','Allemagne'),
('�\"�\��I{�� ۑ�o','Andorre'),
('�\�\ZyX,G����\��|\�','Angola'),
('\�Ҷ�Eއۥ\�҃�','Anguilla'),
('f\�\�F	�����\�\�','Antarctique'),
('U5д\�\�AY�z���\�','Antigua-et-Barbuda'),
('p�3�5C<�+��1�\�','Antilles Néerlandaises'),
('\�2�)&�L\�zx\�8���','Arabie Saoudite'),
('\"�4�L��sg[Ь','Argentine'),
('��#N��\�u��|�','Arménie'),
('~\r�;XJy��@\�96','Aruba'),
('\�\�jIp��>�ZpC','Australie'),
('��W\�|�K��*��\��','Autriche'),
('D\�\�@��I3�\�F�x�\�\�','Azerbaïdjan'),
('ҩ�\�PB\�FN,\�͉\�','Bahamas'),
('(�[�ZCA�]�\�D�','Bahreïn'),
('�\�\'z��H\�jc�0:','Bangladesh'),
(' �Ԇ^\�GX�\0\�녷\�.','Barbade'),
('G3X\�\'I֗�\�\�L�','Bélarus'),
('C�\'�mNػ�\�� Β','Belgique'),
('�50\�|ES�<�	�9\�9','Belize'),
('8}��Ja�\�\�7!��\�','Bénin'),
('\�{|\�mB]�{7iDA�Q','Bermudes'),
('\��NN�H��ٞ˫\r%','Bhoutan'),
('�zҢN�H���d�\�[\�','Bolivie'),
('B�X\�J��\�%�|z~','Bosnie-Herzégovine'),
('\�\"��zO\�\�⳼&','Botswana'),
('4^����E薁.%<��','Brésil'),
('>\�\�G\�H��R\�_;+','Brunéi Darussalam'),
('P?r�YK��\�\\�(R�\�','Bulgarie'),
('>\�kf͉M��{�v��','Burkina Faso'),
('8K��\�hL��\�V\�[v\��','Burundi'),
(')�ۭR:F�\�l\�=U','Cambodge'),
('z+	�bOաR��[w�\�','Cameroun'),
('�\�<\rܤ@X�_�m\n,Ez','Canada'),
('OM	�o~O��H�3�\�\�\�','Cap-vert'),
('�,.Ur�O��gp�R\�Jy','Chili'),
('Xy3�\��Cާ�L\�\"�V','Chine'),
('\�o\�`�mO,���%\nl','Chypre'),
('k�w9PH��\�\�9�Vm','Colombie'),
('\�t]�ќO\�{U\�\�ޑ','Comores'),
('y�W�K��X+\r\�\�','Costa Rica'),
('�ʞ�E�Dm��\�68\�/O','Côte d\'Ivoire'),
('\�3\�\�FE��R�\�\�','Croatie'),
('Z\�\�Z�A��\�\�gm5�','Cuba'),
('\�\�7���N\r�e\�y�`','Danemark'),
('�\�n%GA1�\"�\�]\��\�','Djibouti'),
('hx�V`�B6�X?\�Q\Z��','Dominique'),
('\�CȨ\�Mw�j�\�m}','Égypte'),
('\�\�Kx�\�DS���R�m','El Salvador'),
('\n\n\�\�:D}�/>\�\�\��','Émirats Arabes Unis'),
('G�\"�!\�@�;\�l<�C','Équateur'),
('�F�\�=�G5��\�+�Yj�','Érythrée'),
('UD\�\�q�K������7\�','Espagne'),
('WT�$\�\�D��\��\�\�\�m','Estonie'),
('L �\�,D��M3\�C5','États Fédérés de Micronésie'),
('��	\�.H\'�x�B��\�','États-Unis'),
('�\�\�g*G��\�S[�\�?*','Éthiopie'),
('~�\�;\�\nO�|�\��','Fédération de Russie'),
('\�`\�_�I��z�\�?m1','Fidji'),
('#\��Ne�@��.\� ��','Finlande'),
('\Z\�\�`*Jּ\�D��2ͽ','France'),
('1\�#\ZOz�\����\Z�','Gabon'),
('D@r�hJ��_��ݻQ?','Gambie'),
('_��\�	J��ܟ\�j','Géorgie'),
('^T޿@\�OۀtΏ�okw','Géorgie du Sud et les Îles Sandwich du Sud'),
('\�=x0�AFa�X\�\�9\�','Ghana'),
('\�a��\�|N\�%|Jd�:\Z','Gibraltar'),
('\�ڎKF\�JM�m\�,��/a','Grèce'),
('\�\�MD\�\�gYە','Grenade'),
('Fi��\�Im��E|;','Groenland'),
('�u��?QNؚq�敤f�','Guadeloupe'),
('�\�B\�\�L{���o�','Guam'),
('��\�Pu\�Iv�z�\�y\�B\�','Guatemala'),
('\�r\�HJ�:U\�iL','Guinée'),
('\�\���	.O\�\���/�','Guinée Équatoriale'),
('�\�\�[�:B���\�\�\�\�','Guinée-Bissau'),
('\�F����H+�@\�?C�O','Guyana'),
('k\�f\�\�\�Dn��/J\�#�z','Guyane Française'),
('�T�lN����v�\�:R','Haïti'),
('S\�S�\�8C\0�\n�+�c\�','Honduras'),
('VS-��F��	�u\�i','Hong-Kong'),
('�\�[\�\Z#H�\�zo\��','Hongrie'),
('��C�Z\�Nß�\���x��','Île Bouvet'),
('2\Z�C|�p\�ow+�','Île Christmas'),
('���L5By�͆?\�^V\�','Île de Man'),
('�\\\�P��C[�\�Шg�\�','Île Norfolk'),
('��\�k�\�M_�Q{Z%\0�I','Îles (malvinas) Falkland'),
('w�M7}�M\\�L[W#','Îles Åland'),
('�s��\r\�A�(�|�J�','Îles Caïmanes'),
('$O�#\�IL˘^�\�(Jx','Îles Cocos (Keeling)'),
('\'q�\�N\0���Di;','Îles Cook'),
('�m\\\�q\�@;�/\�{��@\�','Îles Féroé'),
('+Zd�In��.�','Îles Heard et Mcdonald'),
('��\�e)M��\0�\�\�\���','Îles Mariannes du Nord'),
('��ݍ�\�Ar����\�폦','Îles Marshall'),
('�j7\�:�D�Y]5�\�','Îles Mineures Éloignées des États-Unis'),
('Jw\�U�E��l�\�\�\"�','Îles Salomon'),
('����I%�\�X�\�rT�','Îles Turks et Caïques'),
('F�!���H!�xM�&��\�','Îles Vierges Britanniques'),
('�\�?\�\�L6�}�Xh\�\�','Îles Vierges des États-Unis'),
('��D�\nGq�(C�\�g','Inde'),
('_B;wB����s�\�','Indonésie'),
('\�\�\�\�MO���y�\�Q','Iraq'),
('��5%�C�`\�\�\�%','Irlande'),
('�\�sO\"L��\�\�e\�Y�','Islande'),
('=�X38L �8\�\�9\�\�','Israël'),
('\����\r&A�}���\�5�','Italie'),
('\�m��\�J�LE+��\�i','Jamahiriya Arabe Libyenne'),
('�#\�jIm�\�\�\'U�A','Jamaïque'),
('�ν\�NտP+M�+�','Japon'),
(',�\�kN�!B.u�� ','Jordanie'),
('�C�\�t�A�\�\n���','Kazakhstan'),
('\"7!�D�����x\�\�','Kenya'),
('\�&���AH��ǊQ)8M�','Kirghizistan'),
('�}2\�\�Gͅ\�\�l5r��','Kiribati'),
('�˜q\�H����׹(\�','Koweït'),
('�\�R\�@ϧP�\�&�×','L\'ex-République Yougoslave de Macédoine'),
('0�\�V�Ci��?�\\(�\�','Lesotho'),
('x�KrmJ��\n�G�8\�8','Lettonie'),
('���g�\�A��\'ò\\\�?j','Liban'),
('w��\�H\�A��Z\�C\'\�N9','Libéria'),
('�)\�‽Lܤ�e\�\�\�A','Liechtenstein'),
('��瀐RI>�a\�8�6�','Lituanie'),
('j{l݊\�H��F\�\�Yb','Luxembourg'),
(')��\�R�O��)�\�\�aZ�','Macao'),
('5\�\r\�D���\��\�','Madagascar'),
('P\�{[qHֱ:\�+հ�','Malaisie'),
('�\�H\�E�0_��','Malawi'),
('�_�OyHĆ\�έ\0�\�','Maldives'),
('Ϧ\�\'\�I&��^\�\���','Mali'),
('ѴFU\�EڏI��G(��','Malte'),
('UXM.RPH���q�\�l\�','Maroc'),
('9��-\�G̡�P�\�E\��','Martinique'),
('?V)6\�Aݱ�K%�(','Maurice'),
('HM��{G��<m�c�\�','Mauritanie'),
('D+J�U1F�������\�','Mayotte'),
(' )^�*\�I�s\�\Z�','Mexique'),
('\�R��u9Cކ#|\'\�DS\�','Monaco'),
('*yt�N-��.ǹUg�','Mongolie'),
('\�\�\��\�DU�1?�MQm�','Montserrat'),
('�\�����L�k{t��\��','Mozambique'),
('A\�mCպ\�r�\�Dʭ','Myanmar'),
('Ϛ\�\�M�@XE𼰆','Namibie'),
('I\�\0z��C�Z*š��n','Nauru'),
('%��*�\�MQ�#\�r�,\�','Népal'),
('��yNN[�Z���&\�','Nicaragua'),
('\��(Q\�Cι\�\�\�','Niger'),
('\\\�q\�E���L�%���','Nigéria'),
('\�\�\�O@⃚���\�t','Niué'),
('��w\�\�.J\�J�A�b\�V','Norvège'),
('{�_�NCOg�\�v\Z\\�','Nouvelle-Calédonie'),
('�B7�\�Hh��o\"\�\Z|\�','Nouvelle-Zélande'),
('z�\�;?�ES��Ғ0\�r�','Oman'),
('|\�\�H\�TM(���iff<l','Ouganda'),
('d�/7tHB��\�zˢm/f','Ouzbékistan'),
('��ńQ/He�eA\�tR\�','Pakistan'),
('\�*$/{\�N2�S�7�\�\�','Palaos'),
('��sJ\�E���\�\0A\�','Panama'),
('O0�ŉ\�D���Y\�b!V','Papouasie-Nouvelle-Guinée'),
('~7\�b4�C��յb�J \�','Paraguay'),
('\�\�x\�=\�G>�U\�\�\�','Pays-Bas'),
('\�\�T\�\�B��.\�1bG��','Pérou'),
('o>&�I��!�Ae�J','Philippines'),
('OfW�KF*��[\�M2tZ','Pitcairn'),
('\���r��H\'��wSN	','Pologne'),
('L�3�|Bq���\n*���','Polynésie Française'),
('z�]\\\'L�\�(��f','Porto Rico'),
('.mOt�Fv�\�\�\�`�','Portugal'),
('a�\�\�\�/Cϴ�\�B$\�/U','Qatar'),
('\�\�h\�oUE��ZI\�&A�','République Arabe Syrienne'),
('Jo\���L+�\�\��\�\��2','République Centrafricaine'),
('Q%\�\"h+L�\�\�˿�\�0','République de Corée'),
('F��#� DӁ�\�3Nh�','République de Moldova'),
('�x)\�\�DW�He!\�\�p','République Démocratique du Congo'),
('d\�aΛ�A��\"\Z|��r�','République Démocratique Populaire Lao'),
('\�CwjO�Fu�\0��v\��','République Dominicaine'),
('f\�O\�M:L���$\�s\"b�','République du Congo'),
('$\0 \�\�K��\��\�2\��','République Islamique d\'Iran'),
('��\�n�E��7W�ĭ\�\�','République Populaire Démocratique de Corée'),
('7�\��G��f�\�N\�\�c','République Tchèque'),
('�\�a�\�F��vA;�','République-Unie de Tanzanie'),
('ez�C��$�\�\�ʥ0','Réunion'),
('\r\�\�U\�@ܢɜ�@\�','Roumanie'),
('旭�\\�E��\�N\�C','Royaume-Uni'),
('\�h�7Hc�\�V\�\�\�','Rwanda'),
('싒Կ�D\�\��ҹ��','Sahara Occidental'),
('\�\�\��\�N���z&��','Saint-Kitts-et-Nevis'),
('���\�4@7�w\�6\�k�','Saint-Marin'),
('\�MnLxI��k$p2\�','Saint-Pierre-et-Miquelon'),
('H\�\�.G��D�?�P','Saint-Siège (état de la Cité du Vatican)'),
('��\n�L��9P a�','Saint-Vincent-et-les Grenadines'),
('th\�/G�����x�l','Sainte-Hélène'),
('��\���J*�2�\�\"�+X','Sainte-Lucie'),
('�\�\�Z��J\�U(6�\�ʍ','Samoa'),
('C\�x�2`N�K!\��Of\�','Samoa Américaines'),
('ޝ՞�B�(\06\�\�\�','Sao Tomé-et-Principe'),
('M��%��M>��Y�\�NE','Sénégal'),
('�\�\0�G;�V�D\�A�a','Serbie-et-Monténégro'),
('�qq+q�@�\�2$_','Seychelles'),
('@\�\��oE7�\�!\�;�\�','Sierra Leone'),
('N\�B$pGH��z-[Yw\�~','Singapour'),
('\��ОV�D��<�Gs�d,','Slovaquie'),
('��,\�\0XJ����\�\�.\n','Slovénie'),
('ʔ�J:F9�G\�\�\�\�<\�','Somalie'),
('�ٟ�E����v\�\\','Soudan'),
('\�H�7MLH��\�\�\�','Sri Lanka'),
('�H���Z@܂w����d','Suède'),
('ĊD��\�A��o�\�F�\�','Suisse'),
('�c�\�AES�d*v�*�','Suriname'),
('�BF\�U4J2��bJ��a','Svalbard etÎle Jan Mayen'),
('3\�*H]��\���z\'','Swaziland'),
('��\�\r�\�M���!\�/��M','Tadjikistan'),
('<�G�y\�JN��|Vx=�','Taïwan'),
('$_�fSA\��d\��#�I','Tchad'),
('��\�5j�B���\�`t1B_','Terres Australes Françaises'),
('c\�\r�B\�D\�c\�6$�','Territoire Britannique de l\'Océan Indien'),
('&\�@G��M��qE�\�\r�Y','Territoire Palestinien Occupé'),
('y�\�PtJ8�,vT&�S\�','Thaïlande'),
('&\�\��\�E�<̺��\�','Timor-Leste'),
('\��N\��H�\�T�U\n�','Togo'),
('/�\Z,4@\��,\�+:�X2','Tokelau'),
('i>�St/G�.wM\�\�MZ','Tonga'),
('[��U��@\�����\�','Trinité-et-Tobago'),
('\�yS)ڟAH��\����\�','Tunisie'),
('D�\�v\�No�\�a��\�7','Turkménistan'),
('~Vz:d\�@\�\�\�b�','Turquie'),
('m\�Y��I��\�\�\�\�\�','Tuvalu'),
('��㜯\�F��5k\�\�\�\�','Ukraine'),
('px\�\�\�IJ���!\�\�r','Uruguay'),
('?�\�\�+GCn�ڕH\�\�\�','Vanuatu'),
('JE\�\�OEژ�;\�$�i','Venezuela'),
('\n\�\"��I$��%d�\�\�','Viet Nam'),
('c���\�I���\�\��{�','Wallis et Futuna'),
('^��.�zL^�\�p\�\�x#','Yémen'),
('R�\�S�#B���&�+�','Zambie'),
('\�\"\�*%dE��ј���_L','Zimbabwe');
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
('DoctrineMigrations\\Version20241217142038','2024-12-17 14:21:05',7);
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
('�\�/i��M��\��|�Vt','root@gmail.com','https://apps.apple.com/app/6468406309','pending','2024-12-17 14:21:06',NULL,NULL,'.�l5��Ln�I�y\�\�7');
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

-- Dump completed on 2024-12-17 14:21:07

-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: hphelper
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cbay`
--

DROP TABLE IF EXISTS `cbay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbay` (
  `c_id` int(11) DEFAULT NULL,
  `cbay_item` varchar(200) NOT NULL,
  `cbay_cost` int(11) NOT NULL,
  PRIMARY KEY (`cbay_item`),
  UNIQUE KEY `cbay_item_UNIQUE` (`cbay_item`),
  KEY `fk_cbay_1_idx` (`c_id`),
  CONSTRAINT `fk_cbay_1` FOREIGN KEY (`c_id`) REFERENCES `crisis` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbay`
--

LOCK TABLES `cbay` WRITE;
/*!40000 ALTER TABLE `cbay` DISABLE KEYS */;
INSERT INTO `cbay` VALUES (NULL,'12 Crates B3, GreenAndGulpy flavour',5),(NULL,'18 cans Sandatholon, sealed',2),(NULL,'20KG fissile grade plutonium',4),(NULL,'3 Ton Nuclear Waste, going fast!',1),(NULL,'4 surplus TacNukes',3),(NULL,'5 Ton Hot Fun! Barely used!',3),(NULL,'80 Tons water recently recycled!',4);
/*!40000 ALTER TABLE `cbay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crisis`
--

DROP TABLE IF EXISTS `crisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crisis` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_type` enum('both','classic','straight') NOT NULL DEFAULT 'both',
  `c_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_id_UNIQUE` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crisis`
--

LOCK TABLES `crisis` WRITE;
/*!40000 ALTER TABLE `crisis` DISABLE KEYS */;
INSERT INTO `crisis` VALUES (1,'both','ALERT: Authorised Termination rates are at 0. Rectify immediately! This information is classified GREEN.'),(2,'both','Beloved Citizens! The contract for transtube maintenance is up for tender today! Please monitor the situation and decide on the best service group to maintain the tubes. Contract is clearance ORANGE.'),(3,'both','Alert! RD Project ##SUB## has gone missing from location databanks. Find and recover immediately. ##SUB## is classified INDIGO.'),(4,'both','Citizens! ##CIT-V-TR## is due for erasure later today. Make sure their name is purged from all databanks before their public erasure.'),(5,'both','Citizens! RD Project ##SUB## has been escalated. Please decide on a plan of action. ##SUB## is classified GREEN.'),(6,'both','Citizens! Oversee the installation of RD Project ##SUB##. ##SUB## is clearance INDIGO.'),(7,'straight','Citizens! A Communist superweapon has been deployed around the Complex. Decide on course of action. This information is classified GREEN.'),(8,'both','Citizens! Compliance Index falling at unacceptable rate. Please identify cause and rectify. This information is classified YELLOW.'),(9,'both','ALERT! Major traffic disturbances detected in Transtube ##ZON##-##SUB##. Rectify situation and decide who is responsible for damages.'),(10,'straight','Alert! Information has surfaced that a major terrorist attack is to take place this daycycle. Prevent this attack at all costs. Information classified BLUE.'),(11,'both','Citizens! ##ZON## reactor ##SUB## is ready to go online. Please use this opportunity to raise morale across the sector.'),(12,'both','Alert! Enemy invasion force at edge of sector! Identify and eliminate immediately!'),(13,'classic','Alert! Large flooding occuring on subbasements 15-28 at location ##SUB##. Identify and fix source of flooding immediately.'),(14,'both','Alert! Hygiene in ##ZON## at record low levels! Identify areas for improvement and fix immediately! Information classified YELLOW.'),(15,'both','The popular Hero of our Complex ##CIT-B-1##-3 has been found guilty of communist sympathising. Organise their erasure without damaging morale.'),(16,'both','Alert! IntSec item 214-##SUB## is currently missing. Find and recover this item. 214-##SUB## is classified VIOLET.'),(17,'both','Alert! ##CIT-V-1## holding out against commie force in the MuchoMeat plant. Rescue and recover ##CIT-V-1## unharmed.'),(18,'both','Citizens! RD Project ##SUB## is complete and ready for deployment. Test ##SUB## with a suitable project. Projects must be approved by concesus.WANTON BROTH is classified INDIGO.'),(19,'both','Error. Code 1789. Additional processing power required. Please find space for and construct additional processing CompNodes to bring the total up from 8 to 20.'),(20,'both','Alert! Information has surfaced that a major terrorist attack is to take place this daycycle. Prevent this attack at all costs. Information classified BLUE.'),(21,'both','Assertion Error. Testing [DELETED FOR SECURITY REASONS]. Statement: Communism is good for citizens. Legalise Communism. This information classified ULTRAVIOLET.'),(22,'both','Alert! Citizen Vicky-B must me made to disappear this daycycle. Organise while keeping up her public appearances and career. This issue classified VIOLET.'),(23,'both','Citizens! A Communist superweapon has been deployed around the Complex. Decide on course of action. This information is classified GREEN.'),(24,'both','Assertion Error. Testing [DELETED FOR SECURITY REASONS]. Citizens! Organise a mock Communist attack to assess the sector\'s prepardness. Until the exercise is complete, situation is classified INDIGO.'),(25,'both','Alert! Citizen ##CIT-V## was detained by agents of Beta Complex on their last mission. Negotiate with ##CIT-U## of Beta Complex and return ##CIT-V## to us. Situation classified BLUE.'),(26,'both','Alert! Paperwork Quota down 84%! Hygiene down 29%! Analyze and remediate situation!'),(27,'both','Citizens! A Communist superweapon has been deployed around the Complex. Decide on course of action. This information is classified GREEN.'),(28,'both','Alert! Citizen Danny-V-SNH has gone missing and has information vital to the fight against Communism! Recover and interrogate! Situation classified BLUE!'),(29,'both','Alert! Testing [DELETED FOR SECURITY REASONS]! Sector is overpopulated by 12%. Balance the population by the end of the daycycle.');
/*!40000 ALTER TABLE `crisis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crisis_tag`
--

DROP TABLE IF EXISTS `crisis_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crisis_tag` (
  `c_id` int(11) NOT NULL,
  `ct_tag` varchar(3) NOT NULL,
  PRIMARY KEY (`c_id`,`ct_tag`),
  CONSTRAINT `fk_crisis_tag_1` FOREIGN KEY (`c_id`) REFERENCES `crisis` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crisis_tag`
--

LOCK TABLES `crisis_tag` WRITE;
/*!40000 ALTER TABLE `crisis_tag` DISABLE KEYS */;
INSERT INTO `crisis_tag` VALUES (1,'CID'),(1,'HIU'),(1,'ISD'),(1,'SID'),(2,'SID'),(3,'AFD'),(3,'CPD'),(3,'RDD'),(4,'AFU'),(4,'ISU'),(4,'SIU'),(5,'CPU'),(5,'ISU'),(5,'PLD'),(5,'RDU'),(6,'PSU'),(6,'RDU'),(7,'HID'),(7,'PSU'),(7,'SID'),(8,'CID'),(8,'PLU'),(9,'HID'),(9,'PLD'),(9,'TSD'),(10,'HIU'),(10,'HPU'),(10,'TSD'),(11,'PSU'),(12,'CIU'),(13,'CID'),(13,'SID'),(14,'HID'),(14,'TSU'),(15,'HPD'),(15,'ISD'),(15,'LID'),(16,'CID'),(16,'ISU'),(16,'LID'),(16,'SID'),(17,'CID'),(17,'HPD'),(17,'LID'),(18,'RDU'),(19,'CID'),(20,'LID'),(21,'LID'),(21,'SID'),(22,'LIU'),(23,'AFU'),(23,'RDU'),(24,'SIU'),(26,'LID'),(26,'SID'),(27,'AFU'),(27,'ISU'),(29,'CID'),(29,'HID'),(29,'HPD'),(29,'TSD');
/*!40000 ALTER TABLE `crisis_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crisis_text`
--

DROP TABLE IF EXISTS `crisis_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crisis_text` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `ct_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`ct_id`),
  KEY `fk_crisis_text_1_idx` (`c_id`),
  CONSTRAINT `fk_crisis_text_1` FOREIGN KEY (`c_id`) REFERENCES `crisis` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crisis_text`
--

LOCK TABLES `crisis_text` WRITE;
/*!40000 ALTER TABLE `crisis_text` DISABLE KEYS */;
INSERT INTO `crisis_text` VALUES (1,1,'CPU recently cut funding to termination stamping, leaving only one worker stamping all vouchers: ##CIT-Y-1##.'),(2,1,'A few daycycles ago, he lost his ME card in the pneumatic tubes, making him unable to leave the room or get help.'),(3,1,'Diligently, he kept stamping in the hope someone would come find him, he died from lack of water yesterdaycycle.'),(4,1,'No vouchers have been authorised in a day, meaning no authorised terminations have taken place.'),(5,2,'Due to a large string of timetable failures and deaths, the computer has decided on a competition: one day in which PS, TS, and HPD split the tracks and manage them.'),(6,2,'The transtubes are split equally between PS, TS, and HPD.'),(7,2,'Obviously there\'s not nearly enough time for the other two to manage their tubes properly, so they\'re planning on sabotaging the hell out of Power Services networks.'),(8,3,'##SUB## is a highly destructive weapon capable of vapourising 1/10th of the sector\'s population each time it is fired (their clothes and belongings are intact)'),(9,3,'##SUB## has a delay between firings (whatever is thematically appropriate)'),(10,3,'##SUB## has been stolen by a FCCC-P splinter cell, and threatens to destroy the sector unless their demands are met.'),(11,3,'The demands start large (Live coverage on the sector Vidscreens) and get even more elaborate (Promotion of all the sect to VIOLET).'),(12,3,'Remember to find the scapegoat for this. It was lost at a transfer between R&D and AF, overseen by CPU'),(13,4,'Bit of background. In the year 182, there was another ##CIT-V-TR## who got a bit too high up too fast, and so a clever high-programmer made that particular phrase summon Friend Computer Immediately.'),(14,4,'The summons also modifies friend computer\'s threat level, raising it by one each time its name is said. Each time FC hears ##CIT-V-TR##\'s name, it shows up with a suddenly hightened threat level and'),(15,4,'doesn\'t know why. ##CIT-V-TR## only reached VIOLET three days ago, and is already up for erasure. FC suspects something about the name, which is why it requests a full purge.'),(16,4,'Anagram: TTS- Treason Tracking Server'),(17,4,'##CIT-V-TR## took an extremely large dose of the drug RadicalMankey, which is a major mutagenic, and it will kick in whenever appropriate.'),(18,5,'##SUB## is a proposal to change the standard gene template of clones to photosynthesize.'),(19,5,'The proposal is led by ##CIT-G-SG##, an (unsurprisingly) Sierra Club member.'),(20,5,'##CIT-G-SG## has the go-ahead for a small trial run, and the tech actually works, however:'),(21,5,'--The green gene removes digestive systems, meaning no food can be sold to these clones.'),(22,5,'--Green citizens quickly grow fat and immobile, as the gene is designed for outdoor background radiation, not AC radiation levels.'),(23,5,'The Programmers also have to decide whether to standardise the technology'),(24,5,'--If they do, the programmers and the rest of the sector become registered mutants immediately.'),(25,5,'--If they don\'t, the programmers must find a scapegoat for why the efficency boost wasn\'t implemented.'),(28,7,'A supervolcano has erupted, covering the planet with a layer of ash clouds which constantly storm.'),(29,7,'The lightning is so loud and frequent it can be heard on multiple outer layers of the complex, causing panic.'),(30,7,'HPs must find a reasonable excuse for the sounds to stop the panic, while finding a scapegoat for the attack.'),(31,8,'The Petbot 214 was released today, and has sold out within minutes. They were designed with subliminal messaging propaganda tech.'),(32,8,'The subliminal tech was hijacked by some phreaks as a contract for Corpore Metal. The petbot encourages owners to get into dangerous, maiming situations.'),(33,9,'A load of PLC\'s Cold Fun syrup fell into one end of the transtube ##ZON##-##SUB## after a navigation error caused the truckbot to crash.'),(34,9,'Cold Fun syrup sits at around 1 Kelvin for thousands of years, and is usually mixed in micro quantities to make cold fun.'),(35,9,'The Cold Fun Syrup is causing the air to liquify and mix with the syrup, causing it to spread further down the transtubes.'),(36,9,'PLC is blaming TS for the truckbot crashing. TS is blaming CPU for not updating the maps. CPU is trying to cover its tracks.'),(37,9,'In the end, there is a 15 ACCESS damages fee, in addition to any changes from directives.'),(38,10,'This information is based of a piece of paper recovered from a terminated achivist, listing several dates.'),(39,10,'These were actually the dates of the completion of several major transtube works in the past.'),(40,10,'Due to the recycling of the year 214 and a set of coincidences, all the other dates have matched with major sewerage overflows.'),(41,10,'The final date on the list is this daycycle. IntSec is desperately looking for an attack, AF wants to embarrass them.'),(42,10,'Tech Services and HPD are preparing for a Massive FunBall game that\'s about to take place, and when half-time hits and everyone uses the restrooms...'),(43,10,'Specifically, the sewerage will overflow 10 minutes before the end of the match.'),(44,6,'##SUB## is a power project designed to balance power fluctuations. Works off wierd science.'),(45,6,'Whenever the draw is high, the project pushes more power into the system, exponentially. Above a certain load, the project supplies virtually limitless power.'),(46,6,'So much power, in fact, it plays havoc with electrical systems and bot brains in the sector.'),(47,6,'If the players shut off the other reactors, the draw becomes higher, and players may find it impossible to shut the project down.'),(48,11,'The reactor doesn\'t work, and the project manager ##CIT-I-1## knows it. They\'re planning on faking a meltdown to get minions sent down.'),(49,11,'If the supplies and help are sent, the reactor actually starts melting down.'),(50,12,'Due to a bug in a recent software patch, the compnode of ##ZON## no longer recognizes a neighbouring sector as existing.'),(51,12,'Thusly, the computer sees all six million inhabitants plus bots as invaders, and views the sector as being outside.'),(52,12,'In a couple hours time, the software is reverted and the computer has no memory of seeing the sector as non-existant.'),(53,12,'PLC doesn\'t actually have enough laser barrels for the troops.'),(54,13,'A servants of cthulu sect has successfully managed to build a temple on sublevel 12, and finished a major ceremony. A gate has opened and is flooding water out to the lower levels.'),(55,13,'No gate has actually opened, it\'s just a burst water main, but the cultists are too feverish from hallucinogens in the water to tell the difference.'),(56,13,'Minions will report horrible creatures bursting from the water where none exist due to exposure to the hallucinogens.'),(57,14,'One of the major hygiene index factors is reports from core sample tests. These tests measure the depth of dirt and grime, usually around a few micrometres.'),(58,14,'A new dirt indexer bot has been deployed across the sector, which moves randomly around and measure the dirt level of surfaces.'),(59,14,'One wandered accidently into a frankenstein destroyers meeting, and was mostly destroyed. However, it kept measuring the distance to the tip of its drill bit, now several hundred metres away.'),(60,14,'This measurement is submitted every few minutes to the index, throwing the measurements right out.'),(61,15,'##CIT-B-1## was framed by ##CIT-I-1##, who ##CIT-B-1## had blackmail on. While he wasn\'t a commie, he was a high-ranking PURGEr and humanist.'),(62,15,'##CIT-B-1## is on their third clone, and has just completed their 4th tour of duty (20 years as a vulture trooper). He survives through his regeration mutation.'),(63,16,'214-##SUB## is an original copy of Das Kapital. It was recently raided from another high programmer\'s private residence. Of course, they\'re not willing to admit they had it.'),(64,16,'Anyone not of VIOLET clearance who touches or sees 214-##SUB## will be considered tainted by commie propaganda by the Big C.'),(65,16,'The other high programmer should message one or two of the players before game start, and promise favours if the item is returned.'),(66,16,'The book is currently in the middle of a busy INFRARED area somewhere. All INFRAREDs who have seen it will need purging/brainscrubbing.'),(67,17,'A blackout caused a group of INFRAREDs running for fitness purposes to accidently enter the MuchoMeat food growing floors, knocking black dirt all over the floor.'),(68,17,'When the light came back on, they saw the floor as INFRARED but all the doors as BLUE and above, so kept exercising till help came.'),(69,17,'##CIT-V-1## was in his office drinking when he heard destruction and shouts from outside, so immediately called on FC.'),(70,18,'##SUB## is a teleportation device, which links two points in space together.'),(71,18,'##SUB## can only be fired twice before being destroyed. It will take many monthcycles to create a new one...without HP resources, that is.'),(72,19,'This is part 1 of the TAINTED MOLLUSC storyline.'),(73,19,'Friend Computer is running a program that re-evalutes its basic assumptions. That is, what it defines as happiness.'),(74,20,'Three terrorist attacks are actually due to take place today. One PURGE at ##LOC-1##, one Humanist at ##LOC-2##, and Commies at ##LOC-3##.'),(75,20,'They are masterminded by a HP in a nearby sector, either as a test or revenge.'),(76,21,'This is part 2 of the TAINTED MOLLUSC storyline, testing Loyalty. The entire crisis is a trap.'),(77,21,'Anyone who agrees to legalise Communism is considered a traitor and will be executed without a damn good reason.'),(78,21,'In the meantime, everyone is conflicting over \"hatred day\", a day of hatred against the commies.'),(79,21,'The parade has a marching band, and several floats, including ones of a Computer, Vulture Craft, and dead Commie.'),(80,22,'Vicky-B is a HOOC Vulture Trooper. Friend computer wants her to disappear to take control of her dummybots freely.'),(81,22,'Vicky-B\'s dummybots have already been upgraded and gone missing.'),(82,22,'Vicky-B has a public appearance later this daycycle, and must be present to preserve happiness.'),(83,23,'Due to large amounts of recent rain, outside is currently flooding about 3m high around the complex.'),(84,23,'Recent chemical attacks by AF with RD weapon ##SUB## has entered the water, and water from the outdoors is toxic.'),(85,23,'There are no breaks in the wall *yet*, but there will be soon enough.'),(86,24,'This is part 3 of the TAINTED MOLLUSC storyline, testing Security. FC is testing whether actual terrorist activity drops the security index.'),(87,25,'##CIT-U## is from beta complex, and wants something valuable/difficult to obtain from the HPs.'),(88,26,'An experimental paper-eating bacteria RDP ##SUB## escaped containment at R&D firm Recycling Ruckus.'),(89,26,'All the paper not stored in the archives has been eaten and converted to a fine paste, including toilet paper.'),(90,26,'Friend Computer has ordered beefed up security at the archives, no-one goes in or out without express HP permission to prevent contamination.'),(91,26,'CPU, PLC, and R&D are all trying to implement their own catch-all way of storing records, and will be fighting like crazy.'),(92,27,'There is actually a war with Beta Complex, this time. The superweapon is a squadron of warbots.'),(93,27,'The other sectors don\'t really care about the warbots, as they\'re not actually firing on the complex yet.'),(94,29,'This is part 3 of the TAINTED MOLLUSC storyline, testing Compliance. Specifically, how well citizens comply en-masse when ordered into strenuous circumstances.'),(95,29,'The sector is actually overpopulated, but only in the INFRARED bunks, which is overpopulated 18%.'),(96,27,'The warbots are equipped with new shielding technology along with the usual assortment of weaponry, and will only retaliate if fired upon.'),(97,28,'Danny-V was broken out of prison after returning to the complex, but before his debriefing interrogation.'),(98,28,'While several of the SGs want him back, many of the societies want him dead.'),(99,28,'He may even have blackmail on a couple of the high programmers, and should be used as such.'),(100,28,'He was broken out by a HP in a nearby sector that has been conspiring with Beta complex. The HP\'s minion ##CIT-V-1## was the culprit.'),(101,29,'In order to find the space, something has to give. Specifically, two of the service groups will have to give up land, or build a *huge* outdoor extension for the 1 million oversubscribed INFRAREDs.');
/*!40000 ALTER TABLE `crisis_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drawbacks`
--

DROP TABLE IF EXISTS `drawbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drawbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drawbacks`
--

LOCK TABLES `drawbacks` WRITE;
/*!40000 ALTER TABLE `drawbacks` DISABLE KEYS */;
INSERT INTO `drawbacks` VALUES (1,'Quirky Clone Template: Add one to your clone degredation.'),(2,'No more hormone suppressants. You\'re free of hormone suppressants, and lust after attractive members of the opposite sex. You\'ve probably got a harem or even children.'),(3,'Obessive Collector: You have an obsessive interest in collecting something: specific old reckoning artefacts, trilobites, WMDs, or something else specific'),(4,'Degenerate: You overindulge in something, food, alcohol, drugs, or something else'),(5,'Rival: Another high programmer, an NPC, really really hates you.'),(6,'Skeleton in the Closet: You did something in your past that\'s an erasable offence. Decide what it is and tell the GM.'),(7,'Secret Society Vendetta: A random secret society hates you, and you can never have an agent in that society.'),(8,'Service Group Vendetta: GM picks a service group, they hate you, you can never have an investment in that group and you can never have a minion from that group.'),(9,'Infamous: the public hate you, you now have a public standing that starts a 0 and can never go above 0.'),(10,'Mistrusted: Friend Computer doesn\'t trust you, you start each game and new clone with 10 treason points.'),(11,'Secret Society Debt: You owe a random secret society something big. You must attempt to complete their missions, but gain no benefit from doing so.'),(12,'Phobia: You\'re unreasonably afraid of something. Pick the something.'),(13,'Addiction: You have something specific you can\'t live without. A specific drug, flavour of B3 or Toothpaste, or even blood.'),(14,'Replicative Fading: Your clone template\'s rotten. Add two to your Clone Degredation.'),(15,'Cyborged: You\'ve got bot bits, they\'re obvious, and you are affected by attacks that affect bots.'),(16,'Insane: You\'re a grade-A nutso. Despite this, you\'re still mostly functional. Sure, you may think you\'re a giant cockroach, but you still make it to the situation room.'),(17,'Bizarre Experiment: You\'re a survivor - or result - of a bizarre experiment. Maybe you\'re a sentient android or a time traveller. Whatever you are, you\'re pretending to be a high programmer.'),(18,'Impending Doom. Inform the GM of this, and move along citizen, nothing to see here.'),(19,'Brain in a Jar: You\'re a brain in a jar. You\'ve got robotic attachments and servants so you can affect the world but you\'re still physically impaired, because you\'re a brain in a jar.');
/*!40000 ALTER TABLE `drawbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `first_name`
--

DROP TABLE IF EXISTS `first_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `first_name` (
  `fn_id` int(11) NOT NULL AUTO_INCREMENT,
  `fn_name` varchar(45) NOT NULL,
  PRIMARY KEY (`fn_id`),
  UNIQUE KEY `fn_id_UNIQUE` (`fn_id`),
  UNIQUE KEY `fn_name_UNIQUE` (`fn_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2439 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_name`
--

LOCK TABLES `first_name` WRITE;
/*!40000 ALTER TABLE `first_name` DISABLE KEYS */;
INSERT INTO `first_name` VALUES (77,'Aaron'),(2260,'Abbie'),(1913,'Abby'),(831,'Abdul'),(854,'Abe'),(485,'Abel'),(1739,'Abigail'),(347,'Abraham'),(1053,'Abram'),(1529,'Ada'),(1040,'Adalberto'),(69,'Adam'),(752,'Adan'),(1732,'Addie'),(1942,'Adela'),(2239,'Adelaide'),(1743,'Adele'),(2367,'Adelina'),(1853,'Adeline'),(567,'Adolfo'),(642,'Adolph'),(227,'Adrian'),(1736,'Adriana'),(2288,'Adrianne'),(1613,'Adrienne'),(2349,'Agatha'),(1436,'Agnes'),(563,'Agustin'),(885,'Ahmad'),(1000,'Ahmed'),(1778,'Aida'),(1904,'Aileen'),(1722,'Aimee'),(2138,'Aisha'),(435,'Al'),(91,'Alan'),(2013,'Alana'),(2198,'Alba'),(54,'Albert'),(1551,'Alberta'),(270,'Alberto'),(889,'Alden'),(849,'Aldo'),(930,'Alec'),(2366,'Alecia'),(2016,'Alejandra'),(305,'Alejandro'),(2379,'Alene'),(156,'Alex'),(141,'Alexander'),(1615,'Alexandra'),(1966,'Alexandria'),(641,'Alexis'),(331,'Alfonso'),(911,'Alfonzo'),(125,'Alfred'),(2132,'Alfreda'),(269,'Alfredo'),(614,'Ali'),(1270,'Alice'),(1371,'Alicia'),(2064,'Aline'),(1822,'Alisa'),(1721,'Alisha'),(1566,'Alison'),(2085,'Alissa'),(250,'Allan'),(114,'Allen'),(2269,'Allene'),(1983,'Allie'),(1447,'Allison'),(1994,'Allyson'),(1415,'Alma'),(1219,'Alonso'),(451,'Alonzo'),(824,'Alphonse'),(654,'Alphonso'),(1838,'Alta'),(2009,'Althea'),(361,'Alton'),(793,'Alva'),(619,'Alvaro'),(169,'Alvin'),(2386,'Alvina'),(2096,'Alyce'),(2200,'Alyson'),(1667,'Alyssa'),(965,'Amado'),(2124,'Amalia'),(1259,'Amanda'),(1358,'Amber'),(1096,'Ambrose'),(1550,'Amelia'),(2008,'Amie'),(470,'Amos'),(2135,'Amparo'),(1251,'Amy'),(1400,'Ana'),(2126,'Anastasia'),(814,'Anderson'),(217,'Andre'),(900,'Andrea'),(1110,'Andreas'),(352,'Andres'),(35,'Andrew'),(284,'Andy'),(205,'Angel'),(1248,'Angela'),(1877,'Angelia'),(1609,'Angelica'),(1633,'Angelina'),(1869,'Angeline'),(2184,'Angelique'),(2162,'Angelita'),(326,'Angelo'),(1546,'Angie'),(959,'Anibal'),(1355,'Anita'),(1267,'Ann'),(1252,'Anna'),(2028,'Annabelle'),(1304,'Anne'),(2422,'Annetta'),(1394,'Annette'),(1316,'Annie'),(2165,'Annmarie'),(22,'Anthony'),(1155,'Antione'),(2236,'Antionette'),(536,'Antoine'),(1580,'Antoinette'),(591,'Anton'),(990,'Antone'),(1069,'Antonia'),(100,'Antonio'),(791,'Antony'),(888,'Antwan'),(1361,'April'),(2100,'Araceli'),(362,'Archie'),(1080,'Arden'),(830,'Ariel'),(2294,'Arleen'),(1134,'Arlen'),(1444,'Arlene'),(1189,'Arlie'),(2111,'Arline'),(618,'Armand'),(258,'Armando'),(224,'Arnold'),(1181,'Arnoldo'),(843,'Arnulfo'),(864,'Aron'),(790,'Arron'),(710,'Art'),(48,'Arthur'),(304,'Arturo'),(1133,'Asa'),(1995,'Ashlee'),(2265,'Ashleigh'),(584,'Ashley'),(2354,'Athena'),(495,'Aubrey'),(1925,'Audra'),(1392,'Audrey'),(551,'August'),(2119,'Augusta'),(806,'Augustine'),(948,'Augustus'),(2117,'Aurelia'),(736,'Aurelio'),(1753,'Aurora'),(301,'Austin'),(1879,'Autumn'),(1961,'Ava'),(638,'Avery'),(1982,'Avis'),(2407,'Barb'),(1223,'Barbara'),(1935,'Barbra'),(705,'Barney'),(1044,'Barrett'),(140,'Barry'),(574,'Bart'),(877,'Barton'),(668,'Basil'),(1389,'Beatrice'),(1864,'Beatriz'),(712,'Beau'),(1506,'Becky'),(1524,'Belinda'),(2421,'Bella'),(2283,'Belle'),(212,'Ben'),(1124,'Benedict'),(1993,'Benita'),(556,'Benito'),(66,'Benjamin'),(785,'Bennett'),(371,'Bennie'),(382,'Benny'),(1175,'Benton'),(1619,'Bernadette'),(1944,'Bernadine'),(142,'Bernard'),(664,'Bernardo'),(1391,'Bernice'),(757,'Bernie'),(929,'Berry'),(453,'Bert'),(2105,'Berta'),(1375,'Bertha'),(2197,'Bertie'),(1028,'Bertram'),(2167,'Beryl'),(2329,'Bess'),(1440,'Bessie'),(1418,'Beth'),(1617,'Bethany'),(1649,'Betsy'),(1826,'Bette'),(1776,'Bettie'),(1233,'Betty'),(1931,'Bettye'),(1579,'Beulah'),(2214,'Beverley'),(1292,'Beverly'),(1929,'Bianca'),(159,'Bill'),(522,'Billie'),(73,'Billy'),(2302,'Birdie'),(559,'Blaine'),(748,'Blair'),(342,'Blake'),(1603,'Blanca'),(1540,'Blanche'),(1043,'Bo'),(266,'Bob'),(1898,'Bobbi'),(660,'Bobbie'),(83,'Bobby'),(1728,'Bonita'),(1307,'Bonnie'),(770,'Booker'),(860,'Boris'),(1174,'Boyce'),(487,'Boyd'),(219,'Brad'),(467,'Bradford'),(128,'Bradley'),(993,'Bradly'),(571,'Brady'),(602,'Brain'),(751,'Branden'),(1539,'Brandi'),(2208,'Brandie'),(68,'Brandon'),(1495,'Brandy'),(914,'Brant'),(2436,'Breanna'),(1250,'Brenda'),(482,'Brendan'),(1008,'Brendon'),(195,'Brent'),(920,'Brenton'),(507,'Bret'),(204,'Brett'),(20,'Brian'),(2099,'Briana'),(1957,'Brianna'),(2325,'Brianne'),(973,'Brice'),(1588,'Bridget'),(2161,'Bridgett'),(1939,'Bridgette'),(2199,'Brigitte'),(2186,'Britney'),(1123,'Britt'),(1406,'Brittany'),(1766,'Brittney'),(701,'Brock'),(1218,'Broderick'),(1616,'Brooke'),(829,'Brooks'),(67,'Bruce'),(697,'Bruno'),(102,'Bryan'),(409,'Bryant'),(535,'Bryce'),(617,'Bryon'),(1205,'Buck'),(951,'Bud'),(586,'Buddy'),(755,'Buford'),(996,'Burl'),(881,'Burt'),(570,'Burton'),(1068,'Buster'),(275,'Byron'),(1779,'Caitlin'),(440,'Caleb'),(1897,'Callie'),(155,'Calvin'),(336,'Cameron'),(2259,'Camilla'),(1707,'Camille'),(1562,'Candace'),(1581,'Candice'),(2385,'Candida'),(1794,'Candy'),(1742,'Cara'),(2342,'Caren'),(598,'Carey'),(2300,'Cari'),(2172,'Carissa'),(47,'Carl'),(1421,'Carla'),(2032,'Carlene'),(732,'Carlo'),(81,'Carlos'),(334,'Carlton'),(2093,'Carly'),(2438,'Carmel'),(1859,'Carmela'),(2023,'Carmella'),(704,'Carmelo'),(651,'Carmen'),(805,'Carmine'),(919,'Carol'),(1494,'Carole'),(1814,'Carolina'),(1467,'Caroline'),(1261,'Carolyn'),(1348,'Carrie'),(1085,'Carrol'),(408,'Carroll'),(774,'Carson'),(741,'Carter'),(492,'Cary'),(2273,'Caryn'),(2160,'Casandra'),(268,'Casey'),(1488,'Cassandra'),(1785,'Cassie'),(1960,'Catalina'),(1265,'Catherine'),(1876,'Cathleen'),(2406,'Cathrine'),(2158,'Cathryn'),(1382,'Cathy'),(2315,'Catrina'),(1664,'Cecelia'),(214,'Cecil'),(1829,'Cecile'),(1537,'Cecilia'),(390,'Cedric'),(1188,'Cedrick'),(1740,'Celeste'),(2341,'Celestine'),(1590,'Celia'),(2219,'Celina'),(353,'Cesar'),(121,'Chad'),(809,'Chadwick'),(842,'Chance'),(1975,'Chandra'),(943,'Chang'),(2345,'Chantel'),(1862,'Charity'),(2430,'Charla'),(1439,'Charlene'),(8,'Charles'),(727,'Charley'),(197,'Charlie'),(1349,'Charlotte'),(2049,'Charmaine'),(1076,'Chas'),(542,'Chase'),(2091,'Chasity'),(942,'Chauncey'),(1626,'Chelsea'),(2235,'Chelsey'),(1737,'Cheri'),(1800,'Cherie'),(2141,'Cherry'),(1278,'Cheryl'),(213,'Chester'),(1027,'Chet'),(989,'Chi'),(2356,'Chloe'),(1058,'Chong'),(96,'Chris'),(1783,'Christa'),(2428,'Christal'),(2353,'Christen'),(1885,'Christi'),(236,'Christian'),(1650,'Christie'),(2378,'Christin'),(1289,'Christina'),(1262,'Christine'),(910,'Christoper'),(11,'Christopher'),(1479,'Christy'),(2059,'Chrystal'),(547,'Chuck'),(1039,'Chung'),(2328,'Cindi'),(1332,'Cindy'),(754,'Clair'),(1519,'Claire'),(1363,'Clara'),(2015,'Clare'),(93,'Clarence'),(1866,'Clarice'),(1963,'Clarissa'),(406,'Clark'),(1090,'Claud'),(230,'Claude'),(1875,'Claudette'),(1453,'Claudia'),(2083,'Claudine'),(925,'Claudio'),(464,'Clay'),(253,'Clayton'),(692,'Clement'),(1079,'Clemente'),(731,'Cleo'),(1018,'Cletus'),(545,'Cleveland'),(612,'Cliff'),(149,'Clifford'),(279,'Clifton'),(426,'Clint'),(239,'Clinton'),(187,'Clyde'),(246,'Cody'),(703,'Colby'),(682,'Cole'),(2136,'Coleen'),(891,'Coleman'),(2069,'Colette'),(378,'Colin'),(1446,'Colleen'),(739,'Collin'),(1160,'Colton'),(1026,'Columbus'),(1967,'Concepcion'),(2196,'Concetta'),(967,'Connie'),(456,'Conrad'),(1451,'Constance'),(1796,'Consuelo'),(1527,'Cora'),(1116,'Cordell'),(182,'Corey'),(2131,'Corina'),(2055,'Corine'),(1773,'Corinne'),(1928,'Cornelia'),(461,'Cornelius'),(787,'Cornell'),(1965,'Corrine'),(1154,'Cortez'),(2227,'Cortney'),(229,'Cory'),(488,'Courtney'),(693,'Coy'),(90,'Craig'),(1656,'Cristina'),(1095,'Cristobal'),(1153,'Cristopher'),(724,'Cruz'),(1321,'Crystal'),(561,'Curt'),(112,'Curtis'),(1247,'Cynthia'),(797,'Cyril'),(796,'Cyrus'),(1514,'Daisy'),(109,'Dale'),(2420,'Dalia'),(424,'Dallas'),(765,'Dalton'),(548,'Damian'),(578,'Damien'),(988,'Damion'),(357,'Damon'),(179,'Dan'),(314,'Dana'),(621,'Dane'),(2321,'Danette'),(747,'Danial'),(12,'Daniel'),(2365,'Daniela'),(1369,'Danielle'),(1089,'Danilo'),(2327,'Danna'),(956,'Dannie'),(101,'Danny'),(691,'Dante'),(1837,'Daphne'),(2374,'Dara'),(2021,'Darcy'),(1217,'Darell'),(777,'Daren'),(469,'Darin'),(976,'Dario'),(606,'Darius'),(1690,'Darla'),(1376,'Darlene'),(476,'Darnell'),(1057,'Daron'),(447,'Darrel'),(165,'Darrell'),(243,'Darren'),(1012,'Darrick'),(480,'Darrin'),(1067,'Darron'),(232,'Darryl'),(583,'Darwin'),(281,'Daryl'),(271,'Dave'),(6,'David'),(684,'Davis'),(1324,'Dawn'),(2272,'Dayna'),(173,'Dean'),(1903,'Deana'),(896,'Deandre'),(1144,'Deangelo'),(2207,'Deann'),(1480,'Deanna'),(2061,'Deanne'),(1360,'Debbie'),(2311,'Debby'),(1799,'Debora'),(1244,'Deborah'),(1258,'Debra'),(978,'Dee'),(2116,'Deena'),(2231,'Deidra'),(2090,'Deidre'),(2097,'Deirdre'),(1122,'Del'),(377,'Delbert'),(1681,'Delia'),(2314,'Delilah'),(1595,'Della'),(2290,'Delma'),(717,'Delmar'),(975,'Delmer'),(2400,'Delois'),(1441,'Delores'),(1734,'Deloris'),(2324,'Delphine'),(1017,'Demarcus'),(2289,'Demetria'),(527,'Demetrius'),(1790,'Dena'),(2223,'Denice'),(577,'Denis'),(1293,'Denise'),(40,'Dennis'),(683,'Denny'),(740,'Denver'),(909,'Deon'),(163,'Derek'),(647,'Derick'),(178,'Derrick'),(1084,'Deshawn'),(1644,'Desiree'),(581,'Desmond'),(2243,'Dessie'),(2293,'Destiny'),(395,'Devin'),(566,'Devon'),(502,'Dewayne'),(434,'Dewey'),(918,'Dewitt'),(466,'Dexter'),(1315,'Diana'),(1269,'Diane'),(2171,'Diann'),(1637,'Dianna'),(1498,'Dianne'),(721,'Dick'),(640,'Diego'),(964,'Dillon'),(1802,'Dina'),(2364,'Dinah'),(893,'Dino'),(690,'Dion'),(2164,'Dionne'),(750,'Dirk'),(1700,'Dixie'),(2044,'Dollie'),(1911,'Dolly'),(1390,'Dolores'),(1066,'Domenic'),(493,'Domingo'),(374,'Dominic'),(486,'Dominick'),(768,'Dominique'),(135,'Don'),(1971,'Dona'),(15,'Donald'),(1065,'Dong'),(933,'Donn'),(1236,'Donna'),(681,'Donnell'),(315,'Donnie'),(709,'Donny'),(667,'Donovan'),(1033,'Donte'),(1468,'Dora'),(1641,'Doreen'),(2229,'Doretha'),(870,'Dorian'),(1274,'Doris'),(1806,'Dorothea'),(1229,'Dorothy'),(2419,'Dorris'),(1216,'Dorsey'),(1746,'Dorthy'),(2281,'Dottie'),(323,'Doug'),(45,'Douglas'),(1115,'Douglass'),(446,'Doyle'),(431,'Drew'),(215,'Duane'),(700,'Dudley'),(803,'Duncan'),(176,'Dustin'),(832,'Dusty'),(1032,'Dwain'),(256,'Dwayne'),(257,'Dwight'),(546,'Dylan'),(98,'Earl'),(853,'Earle'),(2030,'Earlene'),(1959,'Earline'),(380,'Earnest'),(2022,'Earnestine'),(1711,'Ebony'),(373,'Ed'),(136,'Eddie'),(676,'Eddy'),(209,'Edgar'),(928,'Edgardo'),(1083,'Edison'),(1336,'Edith'),(500,'Edmond'),(387,'Edmund'),(1198,'Edmundo'),(1328,'Edna'),(296,'Eduardo'),(19,'Edward'),(769,'Edwardo'),(134,'Edwin'),(2040,'Edwina'),(2264,'Edythe'),(1748,'Effie'),(521,'Efrain'),(887,'Efren'),(1424,'Eileen'),(1346,'Elaine'),(2203,'Elba'),(454,'Elbert'),(2254,'Elda'),(1215,'Elden'),(529,'Eldon'),(1152,'Eldridge'),(1367,'Eleanor'),(2299,'Eleanore'),(1631,'Elena'),(534,'Eli'),(2310,'Elia'),(452,'Elias'),(2287,'Elida'),(491,'Elijah'),(2017,'Elinor'),(1710,'Elisa'),(1777,'Elisabeth'),(1828,'Elise'),(884,'Eliseo'),(1204,'Elisha'),(2431,'Elissa'),(1937,'Eliza'),(1224,'Elizabeth'),(1429,'Ella'),(1345,'Ellen'),(2417,'Ellie'),(582,'Elliot'),(572,'Elliott'),(423,'Ellis'),(1118,'Ellsworth'),(1888,'Elma'),(218,'Elmer'),(863,'Elmo'),(1974,'Elnora'),(2340,'Eloisa'),(1661,'Eloise'),(869,'Eloy'),(1078,'Elroy'),(1696,'Elsa'),(1417,'Elsie'),(544,'Elton'),(1772,'Elva'),(2095,'Elvia'),(595,'Elvin'),(1679,'Elvira'),(663,'Elvis'),(604,'Elwood'),(498,'Emanuel'),(760,'Emerson'),(686,'Emery'),(501,'Emil'),(862,'Emile'),(1992,'Emilia'),(2258,'Emilie'),(490,'Emilio'),(1318,'Emily'),(1353,'Emma'),(512,'Emmanuel'),(496,'Emmett'),(1056,'Emmitt'),(743,'Emory'),(2149,'Enid'),(1007,'Enoch'),(298,'Enrique'),(1101,'Erasmo'),(33,'Eric'),(1388,'Erica'),(808,'Erich'),(443,'Erick'),(1972,'Ericka'),(231,'Erik'),(1517,'Erika'),(802,'Erin'),(2404,'Erlinda'),(1602,'Erma'),(2148,'Erna'),(86,'Ernest'),(2286,'Ernestina'),(1628,'Ernestine'),(335,'Ernesto'),(560,'Ernie'),(764,'Errol'),(433,'Ervin'),(555,'Erwin'),(1998,'Esmeralda'),(1809,'Esperanza'),(1693,'Essie'),(590,'Esteban'),(1955,'Estela'),(1760,'Estella'),(1636,'Estelle'),(1839,'Ester'),(1351,'Esther'),(528,'Ethan'),(1344,'Ethel'),(1755,'Etta'),(80,'Eugene'),(1782,'Eugenia'),(838,'Eugenio'),(1657,'Eula'),(1545,'Eunice'),(1064,'Eusebio'),(1359,'Eva'),(312,'Evan'),(2145,'Evangelina'),(2068,'Evangeline'),(2000,'Eve'),(1276,'Evelyn'),(261,'Everett'),(866,'Everette'),(1075,'Ezekiel'),(1100,'Ezequiel'),(847,'Ezra'),(630,'Fabian'),(1703,'Faith'),(1563,'Fannie'),(2193,'Fanny'),(2297,'Fatima'),(924,'Faustino'),(1132,'Fausto'),(1804,'Fay'),(1528,'Faye'),(678,'Federico'),(2211,'Felecia'),(1502,'Felicia'),(370,'Felipe'),(259,'Felix'),(1099,'Felton'),(845,'Ferdinand'),(1038,'Fermin'),(1771,'Fern'),(238,'Fernando'),(610,'Fidel'),(1143,'Filiberto'),(762,'Fletcher'),(1572,'Flora'),(1326,'Florence'),(1011,'Florencio'),(1077,'Florentino'),(2189,'Florine'),(1945,'Flossie'),(167,'Floyd'),(817,'Forest'),(401,'Forrest'),(923,'Foster'),(2084,'Fran'),(962,'Frances'),(2185,'Francesca'),(1138,'Francesco'),(1733,'Francine'),(127,'Francis'),(1761,'Francisca'),(145,'Francisco'),(31,'Frank'),(444,'Frankie'),(216,'Franklin'),(1197,'Franklyn'),(71,'Fred'),(1651,'Freda'),(299,'Freddie'),(533,'Freddy'),(720,'Frederic'),(131,'Frederick'),(992,'Fredric'),(303,'Fredrick'),(801,'Freeman'),(2154,'Freida'),(1870,'Frieda'),(905,'Fritz'),(220,'Gabriel'),(1847,'Gabriela'),(1878,'Gabrielle'),(868,'Gail'),(784,'Gale'),(714,'Galen'),(1049,'Garfield'),(518,'Garland'),(1131,'Garret'),(388,'Garrett'),(367,'Garry'),(795,'Garth'),(26,'Gary'),(1142,'Gaston'),(685,'Gavin'),(2014,'Gay'),(2246,'Gayla'),(1130,'Gayle'),(1141,'Gaylord'),(2098,'Gena'),(783,'Genaro'),(200,'Gene'),(1522,'Geneva'),(1552,'Genevieve'),(368,'Geoffrey'),(16,'George'),(2082,'Georgette'),(1450,'Georgia'),(1936,'Georgina'),(58,'Gerald'),(1380,'Geraldine'),(1024,'Geraldo'),(322,'Gerard'),(372,'Gerardo'),(2268,'Geri'),(2224,'Germaine'),(756,'German'),(649,'Gerry'),(1426,'Gertrude'),(883,'Gil'),(199,'Gilbert'),(425,'Gilberto'),(2177,'Gilda'),(1432,'Gina'),(1647,'Ginger'),(927,'Gino'),(794,'Giovanni'),(2411,'Gisela'),(1016,'Giuseppe'),(1322,'Gladys'),(188,'Glen'),(1461,'Glenda'),(117,'Glenn'),(1846,'Glenna'),(1275,'Gloria'),(1784,'Goldie'),(646,'Gonzalo'),(172,'Gordon'),(1333,'Grace'),(1857,'Gracie'),(1841,'Graciela'),(459,'Grady'),(633,'Graham'),(1196,'Graig'),(343,'Grant'),(1146,'Granville'),(174,'Greg'),(392,'Gregg'),(585,'Gregorio'),(37,'Gregory'),(1947,'Greta'),(1663,'Gretchen'),(2285,'Griselda'),(543,'Grover'),(405,'Guadalupe'),(2339,'Guillermina'),(379,'Guillermo'),(637,'Gus'),(2257,'Gussie'),(418,'Gustavo'),(252,'Guy'),(1670,'Gwen'),(1483,'Gwendolyn'),(1214,'Hai'),(601,'Hal'),(1941,'Haley'),(2147,'Hallie'),(983,'Hank'),(2331,'Hanna'),(1586,'Hannah'),(557,'Hans'),(580,'Harlan'),(1180,'Harland'),(526,'Harley'),(44,'Harold'),(1535,'Harriet'),(1988,'Harriett'),(730,'Harris'),(568,'Harrison'),(70,'Harry'),(225,'Harvey'),(1015,'Hassan'),(1534,'Hattie'),(1179,'Hayden'),(1074,'Haywood'),(1357,'Hazel'),(524,'Heath'),(1272,'Heather'),(189,'Hector'),(1460,'Heidi'),(1234,'Helen'),(1813,'Helena'),(1770,'Helene'),(2176,'Helga'),(1666,'Henrietta'),(46,'Henry'),(1109,'Herb'),(130,'Herbert'),(680,'Heriberto'),(183,'Herman'),(2217,'Herminia'),(792,'Herschel'),(876,'Hershel'),(2157,'Hester'),(950,'Hilario'),(1954,'Hilary'),(1482,'Hilda'),(2007,'Hillary'),(1031,'Hilton'),(1037,'Hipolito'),(666,'Hiram'),(1187,'Hobert'),(2181,'Hollie'),(707,'Hollis'),(1405,'Holly'),(321,'Homer'),(1126,'Hong'),(1646,'Hope'),(344,'Horace'),(972,'Horacio'),(2317,'Hortencia'),(1163,'Hosea'),(779,'Houston'),(79,'Howard'),(1073,'Hoyt'),(325,'Hubert'),(1030,'Huey'),(254,'Hugh'),(438,'Hugo'),(511,'Humberto'),(789,'Hung'),(735,'Hunter'),(1098,'Hyman'),(263,'Ian'),(1402,'Ida'),(439,'Ignacio'),(1105,'Ike'),(1946,'Ila'),(2051,'Ilene'),(2107,'Imelda'),(1842,'Imogene'),(1775,'Ina'),(2399,'India'),(2195,'Ines'),(1547,'Inez'),(1780,'Ingrid'),(2280,'Iola'),(2330,'Iona'),(2410,'Ione'),(351,'Ira'),(1295,'Irene'),(1544,'Iris'),(1474,'Irma'),(473,'Irvin'),(407,'Irving'),(723,'Irwin'),(277,'Isaac'),(1532,'Isabel'),(2409,'Isabell'),(2216,'Isabella'),(1830,'Isabelle'),(635,'Isaiah'),(1036,'Isaias'),(861,'Isiah'),(715,'Isidro'),(429,'Ismael'),(399,'Israel'),(1129,'Isreal'),(698,'Issac'),(1781,'Iva'),(272,'Ivan'),(2352,'Ivette'),(899,'Ivory'),(1916,'Ivy'),(1195,'Jacinto'),(53,'Jack'),(306,'Jackie'),(2153,'Jacklyn'),(615,'Jackson'),(1856,'Jaclyn'),(122,'Jacob'),(1305,'Jacqueline'),(1601,'Jacquelyn'),(763,'Jacques'),(2276,'Jacquline'),(2222,'Jade'),(1140,'Jae'),(267,'Jaime'),(419,'Jake'),(917,'Jamaal'),(565,'Jamal'),(859,'Jamar'),(782,'Jame'),(822,'Jamel'),(1,'James'),(1042,'Jamey'),(1973,'Jami'),(233,'Jamie'),(1010,'Jamison'),(489,'Jan'),(1668,'Jana'),(1296,'Jane'),(2355,'Janel'),(2194,'Janell'),(1767,'Janelle'),(1264,'Janet'),(1792,'Janette'),(1285,'Janice'),(1555,'Janie'),(1819,'Janine'),(1648,'Janis'),(2114,'Janna'),(2163,'Jannie'),(2292,'Jaqueline'),(226,'Jared'),(1108,'Jarod'),(932,'Jarred'),(828,'Jarrett'),(575,'Jarrod'),(696,'Jarvis'),(2251,'Jasmin'),(1623,'Jasmine'),(24,'Jason'),(553,'Jasper'),(237,'Javier'),(152,'Jay'),(2437,'Jayme'),(1855,'Jayne'),(689,'Jayson'),(1072,'Jc'),(350,'Jean'),(1410,'Jeanette'),(1985,'Jeanie'),(1867,'Jeanine'),(2313,'Jeanna'),(1419,'Jeanne'),(1583,'Jeannette'),(1698,'Jeannie'),(1902,'Jeannine'),(961,'Jed'),(120,'Jeff'),(999,'Jefferey'),(662,'Jefferson'),(118,'Jeffery'),(30,'Jeffrey'),(620,'Jeffry'),(2308,'Jena'),(1787,'Jenifer'),(1672,'Jenna'),(1484,'Jennie'),(1225,'Jennifer'),(1501,'Jenny'),(499,'Jerald'),(1203,'Jeramy'),(1213,'Jere'),(311,'Jeremiah'),(76,'Jeremy'),(1921,'Jeri'),(400,'Jermaine'),(904,'Jerold'),(166,'Jerome'),(1186,'Jeromy'),(1185,'Jerrell'),(2020,'Jerri'),(874,'Jerrod'),(981,'Jerrold'),(39,'Jerry'),(509,'Jess'),(89,'Jesse'),(1245,'Jessica'),(235,'Jessie'),(129,'Jesus'),(1212,'Jewel'),(1178,'Jewell'),(1378,'Jill'),(1805,'Jillian'),(153,'Jim'),(260,'Jimmie'),(99,'Jimmy'),(1469,'Jo'),(759,'Joan'),(1383,'Joann'),(1543,'Joanna'),(1366,'Joanne'),(579,'Joaquin'),(1832,'Jocelyn'),(1554,'Jodi'),(1882,'Jodie'),(432,'Jody'),(51,'Joe'),(133,'Joel'),(622,'Joesph'),(307,'Joey'),(1705,'Johanna'),(2,'John'),(354,'Johnathan'),(718,'Johnathon'),(827,'Johnie'),(273,'Johnnie'),(97,'Johnny'),(1128,'Johnson'),(1843,'Jolene'),(157,'Jon'),(980,'Jonah'),(816,'Jonas'),(55,'Jonathan'),(369,'Jonathon'),(1834,'Joni'),(262,'Jordan'),(1088,'Jordon'),(175,'Jorge'),(28,'Jose'),(867,'Josef'),(2118,'Josefa'),(1697,'Josefina'),(9,'Joseph'),(1340,'Josephine'),(437,'Josh'),(38,'Joshua'),(913,'Josiah'),(1762,'Josie'),(1159,'Jospeh'),(767,'Josue'),(1449,'Joy'),(1268,'Joyce'),(52,'Juan'),(1582,'Juana'),(1354,'Juanita'),(1114,'Jude'),(2234,'Judi'),(1283,'Judith'),(926,'Judson'),(1288,'Judy'),(882,'Jules'),(1308,'Julia'),(276,'Julian'),(2063,'Juliana'),(2037,'Julianne'),(1271,'Julie'),(2152,'Juliet'),(2115,'Juliette'),(247,'Julio'),(313,'Julius'),(1395,'June'),(532,'Junior'),(56,'Justin'),(2256,'Justina'),(1887,'Justine'),(2187,'Kaitlin'),(2262,'Kaitlyn'),(1600,'Kara'),(858,'Kareem'),(1232,'Karen'),(1635,'Kari'),(1765,'Karin'),(1999,'Karina'),(228,'Karl'),(1589,'Karla'),(2363,'Karrie'),(2140,'Karyn'),(1177,'Kasey'),(1683,'Kate'),(2101,'Katelyn'),(1880,'Katharine'),(1280,'Katherine'),(2170,'Katheryn'),(2245,'Kathi'),(2075,'Kathie'),(1255,'Kathleen'),(2047,'Kathrine'),(1301,'Kathryn'),(1290,'Kathy'),(1412,'Katie'),(2166,'Katina'),(1518,'Katrina'),(2036,'Katy'),(1491,'Kay'),(2056,'Kaye'),(1557,'Kayla'),(1021,'Keenan'),(1844,'Keisha'),(59,'Keith'),(1082,'Kelley'),(1585,'Kelli'),(1686,'Kellie'),(248,'Kelly'),(1774,'Kelsey'),(358,'Kelvin'),(265,'Ken'),(538,'Kendall'),(1622,'Kendra'),(605,'Kendrick'),(1194,'Keneth'),(17,'Kenneth'),(804,'Kennith'),(324,'Kenny'),(293,'Kent'),(987,'Kenton'),(2043,'Kenya'),(1848,'Keri'),(588,'Kermit'),(1757,'Kerri'),(346,'Kerry'),(949,'Keven'),(23,'Kevin'),(898,'Kieth'),(397,'Kim'),(2250,'Kimberlee'),(1811,'Kimberley'),(1243,'Kimberly'),(1055,'King'),(995,'Kip'),(2384,'Kira'),(722,'Kirby'),(288,'Kirk'),(1851,'Kirsten'),(2416,'Kisha'),(2206,'Kitty'),(1158,'Korey'),(947,'Kory'),(1184,'Kraig'),(634,'Kris'),(1607,'Krista'),(1413,'Kristen'),(1538,'Kristi'),(1719,'Kristie'),(1433,'Kristin'),(1509,'Kristina'),(1561,'Kristine'),(1173,'Kristofer'),(414,'Kristopher'),(1574,'Kristy'),(1632,'Krystal'),(2279,'Krystle'),(249,'Kurt'),(734,'Kurtis'),(126,'Kyle'),(2427,'Kylie'),(1845,'Lacey'),(1063,'Lacy'),(1906,'Ladonna'),(2087,'Lakeisha'),(2267,'Lakesha'),(2039,'Lakisha'),(462,'Lamar'),(516,'Lamont'),(1689,'Lana'),(245,'Lance'),(749,'Landon'),(729,'Lane'),(857,'Lanny'),(1914,'Lara'),(2396,'Larissa'),(29,'Larry'),(2372,'Lashawn'),(2233,'Lashonda'),(2247,'Latanya'),(1727,'Latasha'),(1934,'Latisha'),(1793,'Latonya'),(1591,'Latoya'),(2306,'Latrice'),(1241,'Laura'),(1769,'Laurel'),(1202,'Lauren'),(428,'Laurence'),(2426,'Lauretta'),(2175,'Lauri'),(1411,'Laurie'),(880,'Lavern'),(788,'Laverne'),(2050,'Lavonne'),(2071,'Lawanda'),(1052,'Lawerence'),(63,'Lawrence'),(823,'Lazaro'),(1884,'Lea'),(1489,'Leah'),(1183,'Leandro'),(1938,'Leann'),(2133,'Leanna'),(1901,'Leanne'),(123,'Lee'),(2241,'Leeann'),(1201,'Leif'),(1127,'Leigh'),(1927,'Leila'),(1704,'Lela'),(403,'Leland'),(2159,'Lelia'),(879,'Lemuel'),(1104,'Len'),(1478,'Lena'),(941,'Lenard'),(968,'Lenny'),(1754,'Lenora'),(1976,'Lenore'),(168,'Leo'),(1836,'Leola'),(162,'Leon'),(1500,'Leona'),(107,'Leonard'),(552,'Leonardo'),(742,'Leonel'),(2110,'Leonor'),(865,'Leopoldo'),(2348,'Leora'),(2435,'Leota'),(144,'Leroy'),(895,'Les'),(2213,'Lesa'),(1172,'Lesley'),(208,'Leslie'),(2123,'Lessie'),(194,'Lester'),(2210,'Leta'),(1953,'Letha'),(1605,'Leticia'),(2205,'Letitia'),(2390,'Lettie'),(416,'Levi'),(180,'Lewis'),(2244,'Libby'),(1964,'Lidia'),(1688,'Lila'),(2012,'Lilia'),(2062,'Lilian'),(2120,'Liliana'),(1317,'Lillian'),(1452,'Lillie'),(1951,'Lilly'),(1871,'Lily'),(2060,'Lina'),(781,'Lincoln'),(1222,'Linda'),(1211,'Lindsay'),(834,'Lindsey'),(1107,'Lino'),(711,'Linwood'),(420,'Lionel'),(1230,'Lisa'),(2174,'Liz'),(2027,'Liza'),(1850,'Lizzie'),(160,'Lloyd'),(523,'Logan'),(1310,'Lois'),(1577,'Lola'),(2188,'Lolita'),(800,'Lon'),(2344,'Lona'),(1157,'Long'),(244,'Lonnie'),(1103,'Lonny'),(1639,'Lora'),(1989,'Loraine'),(376,'Loren'),(1685,'Lorena'),(1695,'Lorene'),(339,'Lorenzo'),(1408,'Loretta'),(1297,'Lori'),(1905,'Lorie'),(1791,'Lorna'),(1384,'Lorraine'),(2403,'Lorri'),(2019,'Lorrie'),(1756,'Lottie'),(1025,'Lou'),(2209,'Louella'),(514,'Louie'),(75,'Louis'),(2029,'Louisa'),(1302,'Louise'),(1768,'Lourdes'),(391,'Lowell'),(639,'Loyd'),(2065,'Luann'),(381,'Lucas'),(1701,'Lucia'),(833,'Luciano'),(844,'Lucien'),(1900,'Lucile'),(1364,'Lucille'),(1745,'Lucinda'),(873,'Lucio'),(1171,'Lucius'),(2362,'Lucretia'),(1427,'Lucy'),(1889,'Luella'),(1193,'Luigi'),(104,'Luis'),(1920,'Luisa'),(320,'Luke'),(1576,'Lula'),(971,'Lupe'),(309,'Luther'),(1569,'Luz'),(1462,'Lydia'),(328,'Lyle'),(912,'Lyman'),(2389,'Lyn'),(1548,'Lynda'),(1020,'Lyndon'),(1654,'Lynette'),(330,'Lynn'),(1597,'Lynne'),(2130,'Lynnette'),(1210,'Lynwood'),(2255,'Ma'),(1475,'Mabel'),(1627,'Mable'),(979,'Mac'),(415,'Mack'),(2155,'Madeleine'),(1549,'Madeline'),(2113,'Madelyn'),(2074,'Madge'),(2395,'Madonna'),(1512,'Mae'),(1922,'Magdalena'),(1556,'Maggie'),(2144,'Mai'),(826,'Major'),(355,'Malcolm'),(1156,'Malcom'),(1148,'Malik'),(2003,'Malinda'),(2343,'Malissa'),(2031,'Mallory'),(1575,'Mamie'),(1176,'Man'),(1694,'Mandy'),(1139,'Manual'),(110,'Manuel'),(1908,'Manuela'),(2156,'Mara'),(201,'Marc'),(613,'Marcel'),(728,'Marcelino'),(1630,'Marcella'),(1170,'Marcellus'),(946,'Marcelo'),(2109,'Marci'),(1455,'Marcia'),(2026,'Marcie'),(363,'Marco'),(417,'Marcos'),(146,'Marcus'),(1919,'Marcy'),(1228,'Margaret'),(1525,'Margarita'),(890,'Margarito'),(2042,'Margery'),(1486,'Margie'),(1895,'Margo'),(2237,'Margot'),(1890,'Margret'),(1533,'Marguerite'),(2081,'Mari'),(940,'Maria'),(1465,'Marian'),(2150,'Mariana'),(2336,'Marianna'),(1599,'Marianne'),(746,'Mariano'),(1824,'Maribel'),(2041,'Maricela'),(1263,'Marie'),(2108,'Marietta'),(1299,'Marilyn'),(2361,'Marilynn'),(1720,'Marina'),(143,'Mario'),(290,'Marion'),(1860,'Marisa'),(2347,'Marisela'),(1865,'Marisol'),(1764,'Marissa'),(1899,'Maritza'),(1347,'Marjorie'),(14,'Mark'),(1029,'Markus'),(1725,'Marla'),(1459,'Marlene'),(609,'Marlin'),(497,'Marlon'),(856,'Marquis'),(2180,'Marquita'),(1476,'Marsha'),(285,'Marshall'),(1702,'Marta'),(1257,'Martha'),(85,'Martin'),(1894,'Martina'),(421,'Marty'),(2106,'Marva'),(115,'Marvin'),(699,'Mary'),(1564,'Maryann'),(2067,'Maryanne'),(2278,'Marybeth'),(2173,'Maryellen'),(2322,'Maryjane'),(1978,'Marylou'),(632,'Mason'),(241,'Mathew'),(1926,'Matilda'),(2394,'Matilde'),(329,'Matt'),(25,'Matthew'),(1471,'Mattie'),(1786,'Maude'),(2312,'Maudie'),(2143,'Maura'),(1445,'Maureen'),(184,'Maurice'),(665,'Mauricio'),(2305,'Maurine'),(955,'Mauro'),(1896,'Mavis'),(255,'Max'),(1048,'Maximo'),(1473,'Maxine'),(695,'Maxwell'),(1691,'May'),(2383,'Maya'),(2415,'Mayme'),(672,'Maynard'),(1854,'Mayra'),(1047,'Mckinley'),(1924,'Meagan'),(1370,'Megan'),(1659,'Meghan'),(945,'Mel'),(1407,'Melanie'),(1712,'Melba'),(1442,'Melinda'),(1979,'Melisa'),(1249,'Melissa'),(2249,'Mellisa'),(2418,'Mellissa'),(1568,'Melody'),(2070,'Melva'),(124,'Melvin'),(1652,'Mercedes'),(1653,'Meredith'),(468,'Merle'),(725,'Merlin'),(726,'Merrill'),(2371,'Merry'),(819,'Mervin'),(1962,'Mia'),(520,'Micah'),(4,'Michael'),(2271,'Michaela'),(1209,'Michal'),(1145,'Michale'),(147,'Micheal'),(627,'Michel'),(1373,'Michele'),(2226,'Michell'),(1240,'Michelle'),(541,'Mickey'),(2351,'Migdalia'),(150,'Miguel'),(105,'Mike'),(1006,'Mikel'),(1991,'Milagros'),(1106,'Milan'),(1279,'Mildred'),(519,'Miles'),(907,'Milford'),(644,'Millard'),(2169,'Millicent'),(1874,'Millie'),(960,'Milo'),(210,'Milton'),(2248,'Mina'),(1692,'Mindy'),(1950,'Minerva'),(1014,'Minh'),(1458,'Minnie'),(1062,'Miquel'),(1699,'Miranda'),(1504,'Miriam'),(1511,'Misty'),(852,'Mitch'),(818,'Mitchel'),(222,'Mitchell'),(2080,'Mitzi'),(1137,'Modesto'),(974,'Mohamed'),(745,'Mohammad'),(839,'Mohammed'),(607,'Moises'),(1820,'Mollie'),(1536,'Molly'),(1640,'Mona'),(1350,'Monica'),(2232,'Monika'),(1553,'Monique'),(766,'Monroe'),(558,'Monte'),(628,'Monty'),(508,'Morgan'),(278,'Morris'),(815,'Morton'),(1125,'Mose'),(472,'Moses'),(1005,'Moshe'),(1629,'Muriel'),(564,'Murray'),(813,'Myles'),(1604,'Myra'),(1724,'Myrna'),(386,'Myron'),(1477,'Myrtle'),(2073,'Nadia'),(1634,'Nadine'),(2240,'Nan'),(1231,'Nancy'),(2048,'Nanette'),(1987,'Nannie'),(1493,'Naomi'),(903,'Napoleon'),(2128,'Natalia'),(1435,'Natalie'),(1530,'Natasha'),(108,'Nathan'),(1121,'Nathanael'),(1087,'Nathanial'),(206,'Nathaniel'),(337,'Neal'),(624,'Ned'),(234,'Neil'),(1949,'Nelda'),(1807,'Nell'),(1457,'Nellie'),(2228,'Nelly'),(251,'Nelson'),(706,'Nestor'),(1714,'Nettie'),(1977,'Neva'),(1081,'Neville'),(966,'Newton'),(64,'Nicholas'),(1624,'Nichole'),(308,'Nick'),(671,'Nickolas'),(1151,'Nicky'),(427,'Nicolas'),(1287,'Nicole'),(886,'Nigel'),(1759,'Nikki'),(2326,'Nilda'),(1487,'Nina'),(2033,'Nita'),(458,'Noah'),(1004,'Noble'),(658,'Noe'),(383,'Noel'),(2204,'Noelle'),(2025,'Noemi'),(1943,'Nola'),(597,'Nolan'),(2079,'Nona'),(1485,'Nora'),(594,'Norbert'),(902,'Norberto'),(2004,'Noreen'),(1313,'Norma'),(113,'Norman'),(897,'Normand'),(643,'Norris'),(753,'Numbers'),(2221,'Octavia'),(786,'Octavio'),(694,'Odell'),(1986,'Odessa'),(939,'Odis'),(1923,'Ofelia'),(1818,'Ola'),(958,'Olen'),(1496,'Olga'),(922,'Olin'),(1675,'Olive'),(319,'Oliver'),(1571,'Olivia'),(670,'Ollie'),(2376,'Oma'),(340,'Omar'),(1035,'Omer'),(1565,'Opal'),(2077,'Ophelia'),(1713,'Ora'),(2393,'Oralia'),(1003,'Oren'),(332,'Orlando'),(954,'Orval'),(430,'Orville'),(151,'Oscar'),(894,'Osvaldo'),(1117,'Oswaldo'),(1061,'Otha'),(316,'Otis'),(504,'Otto'),(410,'Owen'),(338,'Pablo'),(1833,'Paige'),(1113,'Palmer'),(1584,'Pam'),(2270,'Pamala'),(1256,'Pamela'),(2202,'Pansy'),(1060,'Paris'),(878,'Parker'),(744,'Pasquale'),(457,'Pat'),(1810,'Patrica'),(1729,'Patrice'),(1192,'Patricia'),(42,'Patrick'),(1481,'Patsy'),(1684,'Patti'),(2358,'Pattie'),(1592,'Patty'),(13,'Paul'),(1314,'Paula'),(1638,'Paulette'),(2434,'Paulina'),(1352,'Pauline'),(1443,'Pearl'),(2001,'Pearlie'),(177,'Pedro'),(1320,'Peggy'),(1990,'Penelope'),(1490,'Penny'),(465,'Percy'),(287,'Perry'),(365,'Pete'),(43,'Peter'),(1840,'Petra'),(460,'Phil'),(95,'Philip'),(87,'Phillip'),(2402,'Phillis'),(2168,'Phoebe'),(1312,'Phyllis'),(531,'Pierre'),(2429,'Pilar'),(1801,'Polly'),(938,'Porfirio'),(1200,'Porter'),(2370,'Portia'),(360,'Preston'),(937,'Prince'),(1492,'Priscilla'),(2142,'Queen'),(562,'Quentin'),(675,'Quincy'),(994,'Quinn'),(1009,'Quintin'),(600,'Quinton'),(1625,'Rachael'),(2338,'Racheal'),(1298,'Rachel'),(1835,'Rachelle'),(1970,'Rae'),(207,'Rafael'),(2382,'Rafaela'),(1051,'Raleigh'),(62,'Ralph'),(455,'Ramiro'),(196,'Ramon'),(1515,'Ramona'),(477,'Randal'),(139,'Randall'),(825,'Randell'),(1932,'Randi'),(366,'Randolph'),(78,'Randy'),(616,'Raphael'),(1665,'Raquel'),(1054,'Rashad'),(211,'Raul'),(132,'Ray'),(1094,'Rayford'),(1093,'Raymon'),(36,'Raymond'),(776,'Raymundo'),(1750,'Reba'),(2277,'Rebeca'),(1253,'Rebecca'),(1744,'Rebekah'),(661,'Reed'),(892,'Refugio'),(631,'Reggie'),(1387,'Regina'),(202,'Reginald'),(812,'Reid'),(2425,'Reina'),(872,'Reinaldo'),(1723,'Rena'),(2252,'Renae'),(1169,'Renaldo'),(1071,'Renato'),(295,'Rene'),(1401,'Renee'),(2398,'Renita'),(2424,'Reta'),(2296,'Retha'),(549,'Reuben'),(2089,'Reva'),(333,'Rex'),(1168,'Rey'),(977,'Reyes'),(2191,'Reyna'),(506,'Reynaldo'),(2179,'Rhea'),(1112,'Rhett'),(1940,'Rhoda'),(1356,'Rhonda'),(191,'Ricardo'),(821,'Rich'),(7,'Richard'),(970,'Richie'),(193,'Rick'),(349,'Rickey'),(657,'Rickie'),(137,'Ricky'),(916,'Rico'),(653,'Rigoberto'),(669,'Riley'),(1323,'Rita'),(603,'Rob'),(537,'Robbie'),(2320,'Robbin'),(780,'Robby'),(3,'Robert'),(1404,'Roberta'),(186,'Roberto'),(375,'Robin'),(982,'Robt'),(1611,'Robyn'),(645,'Rocco'),(1662,'Rochelle'),(2261,'Rocio'),(530,'Rocky'),(599,'Rod'),(345,'Roderick'),(525,'Rodger'),(111,'Rodney'),(385,'Rodolfo'),(871,'Rodrick'),(648,'Rodrigo'),(448,'Rogelio'),(50,'Roger'),(223,'Roland'),(463,'Rolando'),(1167,'Rolf'),(986,'Rolland'),(475,'Roman'),(688,'Romeo'),(221,'Ron'),(21,'Ronald'),(1730,'Ronda'),(158,'Ronnie'),(798,'Ronny'),(398,'Roosevelt'),(629,'Rory'),(1331,'Rosa'),(2304,'Rosalee'),(2274,'Rosalia'),(1614,'Rosalie'),(1861,'Rosalind'),(2010,'Rosalinda'),(1958,'Rosalyn'),(2146,'Rosanna'),(2102,'Rosanne'),(953,'Rosario'),(589,'Roscoe'),(1284,'Rose'),(2086,'Roseann'),(2129,'Rosella'),(1642,'Rosemarie'),(1423,'Rosemary'),(906,'Rosendo'),(1798,'Rosetta'),(1542,'Rosie'),(2335,'Rosita'),(2046,'Roslyn'),(282,'Ross'),(2190,'Rowena'),(2414,'Roxanna'),(1608,'Roxanne'),(2045,'Roxie'),(65,'Roy'),(851,'Royal'),(539,'Royce'),(203,'Ruben'),(850,'Rubin'),(1309,'Ruby'),(1166,'Rudolf'),(356,'Rudolph'),(359,'Rudy'),(1182,'Rueben'),(411,'Rufus'),(985,'Rupert'),(811,'Russ'),(554,'Russel'),(82,'Russell'),(626,'Rusty'),(1238,'Ruth'),(1948,'Ruthie'),(49,'Ryan'),(1531,'Sabrina'),(1618,'Sadie'),(952,'Sal'),(1752,'Sallie'),(1386,'Sally'),(286,'Salvador'),(389,'Salvatore'),(192,'Sam'),(1396,'Samantha'),(2392,'Samatha'),(625,'Sammie'),(413,'Sammy'),(1059,'Samual'),(60,'Samuel'),(2381,'Sandi'),(1235,'Sandra'),(840,'Sandy'),(702,'Sanford'),(908,'Sang'),(450,'Santiago'),(1165,'Santo'),(494,'Santos'),(1303,'Sara'),(1242,'Sarah'),(2112,'Sasha'),(474,'Saul'),(2006,'Saundra'),(2125,'Savannah'),(673,'Scot'),(32,'Scott'),(837,'Scottie'),(593,'Scotty'),(94,'Sean'),(677,'Sebastian'),(2034,'Selena'),(2266,'Selina'),(1910,'Selma'),(1981,'Serena'),(289,'Sergio'),(292,'Seth'),(836,'Seymour'),(1164,'Shad'),(1852,'Shana'),(2401,'Shanda'),(190,'Shane'),(1812,'Shanna'),(317,'Shannon'),(1706,'Shari'),(2212,'Sharlene'),(1239,'Sharon'),(1969,'Sharron'),(327,'Shaun'),(1873,'Shauna'),(92,'Shawn'),(1709,'Shawna'),(2388,'Shayla'),(1086,'Shayne'),(1868,'Sheena'),(1343,'Sheila'),(656,'Shelby'),(442,'Sheldon'),(1593,'Shelia'),(1573,'Shelley'),(2346,'Shellie'),(1513,'Shelly'),(773,'Shelton'),(2092,'Sheree'),(1598,'Sheri'),(393,'Sherman'),(1516,'Sherri'),(1731,'Sherrie'),(1338,'Sherry'),(1092,'Sherwood'),(1526,'Sheryl'),(2369,'Shiela'),(936,'Shirley'),(1208,'Shon'),(2316,'Shonda'),(1199,'Sid'),(274,'Sidney'),(2225,'Sierra'),(719,'Silas'),(1678,'Silvia'),(404,'Simon'),(1930,'Simone'),(1892,'Socorro'),(1984,'Sofia'),(1050,'Sol'),(2350,'Soledad'),(592,'Solomon'),(608,'Son'),(1858,'Sondra'),(1503,'Sonia'),(1687,'Sonja'),(772,'Sonny'),(1558,'Sonya'),(1660,'Sophia'),(1682,'Sophie'),(384,'Spencer'),(650,'Stacey'),(1883,'Staci'),(1735,'Stacie'),(517,'Stacy'),(550,'Stan'),(1002,'Stanford'),(106,'Stanley'),(1102,'Stanton'),(708,'Stefan'),(1816,'Stefanie'),(1466,'Stella'),(513,'Stephan'),(1260,'Stephanie'),(34,'Stephen'),(540,'Sterling'),(74,'Steve'),(18,'Steven'),(799,'Stevie'),(445,'Stewart'),(302,'Stuart'),(1416,'Sue'),(1881,'Summer'),(2275,'Sun'),(984,'Sung'),(1227,'Susan'),(1827,'Susana'),(2088,'Susanna'),(1825,'Susanne'),(1570,'Susie'),(2387,'Suzan'),(1372,'Suzanne'),(2054,'Suzette'),(1912,'Sybil'),(848,'Sydney'),(396,'Sylvester'),(1339,'Sylvia'),(1980,'Tabatha'),(1715,'Tabitha'),(935,'Tad'),(1448,'Tamara'),(2005,'Tameka'),(2183,'Tamera'),(1708,'Tami'),(1797,'Tamika'),(2053,'Tammi'),(1726,'Tammie'),(1294,'Tammy'),(2137,'Tamra'),(2433,'Tana'),(1996,'Tania'),(2035,'Tanisha'),(931,'Tanner'),(1456,'Tanya'),(1422,'Tara'),(2309,'Taryn'),(1677,'Tasha'),(2375,'Tawana'),(422,'Taylor'),(240,'Ted'),(505,'Teddy'),(1046,'Teodoro'),(2360,'Tera'),(449,'Terence'),(1273,'Teresa'),(2319,'Teresita'),(1655,'Teri'),(2218,'Terra'),(294,'Terrance'),(471,'Terrell'),(297,'Terrence'),(1425,'Terri'),(1952,'Terrie'),(57,'Terry'),(2104,'Tessa'),(2359,'Tessie'),(846,'Thad'),(611,'Thaddeus'),(963,'Thanh'),(1341,'Thelma'),(1023,'Theo'),(2318,'Theodora'),(148,'Theodore'),(1291,'Theresa'),(1788,'Therese'),(775,'Theron'),(10,'Thomas'),(623,'Thurman'),(1968,'Tia'),(2432,'Tiffani'),(1329,'Tiffany'),(2298,'Tillie'),(170,'Tim'),(479,'Timmy'),(27,'Timothy'),(1311,'Tina'),(2182,'Tisha'),(1097,'Titus'),(1013,'Tobias'),(483,'Toby'),(944,'Tod'),(88,'Todd'),(154,'Tom'),(441,'Tomas'),(478,'Tommie'),(161,'Tommy'),(1120,'Toney'),(1510,'Toni'),(1863,'Tonia'),(103,'Tony'),(1428,'Tonya'),(2220,'Tori'),(969,'Tory'),(835,'Tracey'),(1620,'Traci'),(1763,'Tracie'),(291,'Tracy'),(119,'Travis'),(510,'Trent'),(733,'Trenton'),(2301,'Treva'),(318,'Trevor'),(901,'Trey'),(1673,'Tricia'),(1749,'Trina'),(934,'Trinidad'),(1758,'Trisha'),(778,'Tristan'),(138,'Troy'),(1808,'Trudy'),(716,'Truman'),(1150,'Tuan'),(2192,'Twila'),(655,'Ty'),(198,'Tyler'),(998,'Tyree'),(1019,'Tyrell'),(1034,'Tyron'),(242,'Tyrone'),(569,'Tyson'),(679,'Ulysses'),(1849,'Ursula'),(1091,'Val'),(1956,'Valarie'),(2413,'Valencia'),(841,'Valentin'),(1041,'Valentine'),(2078,'Valeria'),(1368,'Valerie'),(484,'Van'),(576,'Vance'),(1414,'Vanessa'),(636,'Vaughn'),(2357,'Veda'),(1505,'Velma'),(1437,'Vera'),(2377,'Verda'),(659,'Vern'),(1578,'Verna'),(2368,'Vernice'),(185,'Vernon'),(1377,'Veronica'),(2397,'Vesta'),(515,'Vicente'),(1420,'Vicki'),(1470,'Vickie'),(1596,'Vicky'),(84,'Victor'),(1335,'Victoria'),(2334,'Vida'),(2127,'Vilma'),(674,'Vince'),(116,'Vincent'),(1207,'Vincenzo'),(1463,'Viola'),(1508,'Violet'),(1933,'Virgie'),(283,'Virgil'),(1119,'Virgilio'),(2295,'Virgina'),(1254,'Virginia'),(738,'Vito'),(1403,'Vivian'),(1162,'Von'),(2201,'Vonda'),(300,'Wade'),(991,'Waldo'),(997,'Walker'),(264,'Wallace'),(1191,'Wally'),(41,'Walter'),(1111,'Walton'),(1306,'Wanda'),(687,'Ward'),(1136,'Warner'),(164,'Warren'),(1161,'Waylon'),(72,'Wayne'),(713,'Weldon'),(310,'Wendell'),(2103,'Wendi'),(1334,'Wendy'),(1022,'Werner'),(1147,'Wes'),(171,'Wesley'),(875,'Weston'),(1045,'Whitney'),(1070,'Wilber'),(402,'Wilbert'),(341,'Wilbur'),(810,'Wilburn'),(2139,'Wilda'),(652,'Wiley'),(771,'Wilford'),(436,'Wilfred'),(573,'Wilfredo'),(2303,'Wilhelmina'),(503,'Will'),(1907,'Willa'),(280,'Willard'),(5,'William'),(596,'Williams'),(1206,'Willian'),(61,'Willie'),(348,'Willis'),(1001,'Willy'),(1431,'Wilma'),(758,'Wilmer'),(394,'Wilson'),(915,'Wilton'),(1190,'Winford'),(737,'Winfred'),(1718,'Winifred'),(1918,'Winnie'),(2333,'Winona'),(481,'Winston'),(364,'Wm'),(412,'Woodrow'),(855,'Wyatt'),(587,'Xavier'),(2072,'Yesenia'),(1409,'Yolanda'),(921,'Yong'),(807,'Young'),(1567,'Yvette'),(1393,'Yvonne'),(957,'Zachariah'),(181,'Zachary'),(761,'Zachery'),(1135,'Zack'),(1149,'Zackary'),(820,'Zane'),(2253,'Zelda'),(2380,'Zella'),(2002,'Zelma'),(2408,'Zoe'),(2423,'Zoila');
/*!40000 ALTER TABLE `first_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_ind`
--

DROP TABLE IF EXISTS `live_ind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_ind` (
  `live_ind_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_ind_name` varchar(45) NOT NULL,
  `live_ind_current` int(11) NOT NULL DEFAULT '0',
  `live_ind_last` int(11) NOT NULL DEFAULT '0',
  `live_ind_start` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`live_ind_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_ind`
--

LOCK TABLES `live_ind` WRITE;
/*!40000 ALTER TABLE `live_ind` DISABLE KEYS */;
INSERT INTO `live_ind` VALUES (1,'HI',0,-1,-4),(2,'SI',2,1,3),(3,'CI',0,-1,-1),(4,'LI',-2,-1,-1),(5,'AF',0,0,-5),(6,'CP',2,4,3),(7,'HP',-2,0,4),(8,'IS',1,1,4),(9,'PS',-2,-2,-3),(10,'TS',-1,-1,-1),(11,'RD',2,0,-1),(12,'PL',1,1,2),(13,'TD',-1,-2,1);
/*!40000 ALTER TABLE `live_ind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_news`
--

DROP TABLE IF EXISTS `live_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_news` (
  `live_news_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_news_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`live_news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_news`
--

LOCK TABLES `live_news` WRITE;
/*!40000 ALTER TABLE `live_news` DISABLE KEYS */;
INSERT INTO `live_news` VALUES (1,'Reading this message is treasonous. Report for termination citizen.'),(2,'The Happy BrightFuture Re-education centre awaits you citizen.');
/*!40000 ALTER TABLE `live_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minion`
--

DROP TABLE IF EXISTS `minion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minion` (
  `minion_id` int(11) NOT NULL AUTO_INCREMENT,
  `minion_name` varchar(45) NOT NULL,
  `minion_clearance` varchar(2) NOT NULL,
  `minion_cost` int(11) NOT NULL,
  `sg_id` int(11) NOT NULL,
  PRIMARY KEY (`minion_id`),
  KEY `fk_minion_1_idx` (`sg_id`),
  CONSTRAINT `fk_minion_1` FOREIGN KEY (`sg_id`) REFERENCES `sg` (`sg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minion`
--

LOCK TABLES `minion` WRITE;
/*!40000 ALTER TABLE `minion` DISABLE KEYS */;
INSERT INTO `minion` VALUES (1,'All U Can B TV','O',3,1),(2,'Brave Clone Enterprises','B',7,1),(3,'VIP Protection','B',7,1),(4,'Intersector Bodyguards','V',10,1),(5,'Less Than Lethal AF','R',2,1),(6,'Technically Humane','O',4,1),(7,'Smiling Songsters AF','Y',4,1),(8,'The Happy Cheery People','G',6,1),(9,'Alpha Hero Recruiters','G',5,1),(10,'Outdoor Rangers','G',5,1),(11,'Lasers4Hire','IR',1,1),(12,'Seeing RED','R',3,1),(13,'Brigadier Mike-B','B',7,1),(14,'General Arnold-V','V',11,1),(15,'Transportation Bottalion','R',2,1),(16,'Armed Forces Marching Band','R',2,1),(17,'Vulture Squadron Warriors','B',9,1),(18,'VultureCraft Assault Squadron','B',9,1),(19,'Mark IV Warbot','G',8,1),(20,'ICBM Silo','I',9,1),(21,'HerdEmUp Volunteer Supply','R',2,2),(22,'Management Focus Group','G',9,2),(23,'Yellowpants4Hire','Y',6,2),(24,'Computer Care Specialists','I',9,2),(25,'Drug Dispensers CPU','R',3,2),(26,'Better Living Thru Chemistry Plus Plus','G',8,2),(27,'Archive Sweepers CPU','R',3,2),(28,'Dirt Free is Treason Free Campaign','Y',5,2),(29,'Cheery Clean Complex Initiative','B',7,2),(30,'Data Divers','R',3,2),(31,'Goggle Search','G',6,2),(32,'Peter-I and Co Data Retrieval','I',8,2),(33,'Foreign Policy Strategic Working Group','B',7,2),(34,'Mandatory Break Monitors','O',4,2),(35,'Corridor Watchers HPD','Y',4,3),(36,'Camera Addicts','B',7,3),(37,'The Daycycle Show','Y',6,3),(38,'TodayCycle TonightCycle','G',8,3),(39,'CNNNN','I',10,3),(40,'Public Hating Co-Ordination','R',2,3),(41,'Trend Identifiers','R',2,3),(42,'Singalong Agents','R',2,3),(43,'Subliminals Police','B',8,3),(44,'Housing Services Supply','R',4,3),(45,'INFRARED Wranglers','R',3,3),(46,'Mandatory Fun Time Enthusiasts','R',3,3),(47,'Temporary Filing Staff Requisition','R',4,3),(48,'Entertainment Weekcycle','Y',5,3),(49,'This Is ULTRAVIOLET!','B',8,3),(50,'Alpha Complex Enquirer','V',11,3),(51,'Forensic Analysis Scrubbot Team','O',3,8),(52,'Bright Vision Re-Education Centre','B',7,8),(53,'Loyalty Surveyors','Y',5,8),(54,'Threat Assessors','Y',5,8),(55,'Secure Security Checkpoint Checkers','Y',4,8),(56,'Total Surveillance Assurance','G',6,8),(57,'Agent Provocateurs','B',8,8),(58,'IntSec Troopers','B',8,8),(59,'Traffic Patrol','B',8,8),(60,'Jackbooted Thugs','G',6,8),(61,'Facilitation Division','Y',5,8),(62,'Suspect Expediters','B',8,8),(63,'Cardholder Deprotagonizers','V',11,8),(64,'Mutant Registration','O',3,8),(65,'Information Retrieval Specialists','Y',5,8),(66,'Information Retrieval Specialists','B',7,8),(67,'Information Retrieval Specialists','V',9,8),(68,'Men in INDIGO','I',9,8),(69,'Conspicuous Surveillance Initiative','O',3,8),(70,'BLUE Room Caterers','R',2,4),(71,'BLUE Room Caterers','Y',4,4),(72,'BLUE Room Caterers','B',7,4),(73,'BLUE Room Caterers','V',9,4),(74,'Equipment Assembly Control','IR',1,4),(75,'Field Logistics Advisors','R',3,4),(76,'MuchlyAlgae PLC','IR',2,4),(77,'Inventory System Updaters','R',4,4),(78,'Brand Loyalty Police','R',3,4),(79,'Acme Chemical Production','R',3,4),(80,'BLUE Shield Clone Assurance','B',7,4),(81,'PLC Accounts Co-Ordination','O',5,4),(82,'New Flavour of Bouncy Bubble Beverage','IR',2,4),(83,'Advertising Campaign','R',5,4),(84,'C-Bay Trawlers','G',8,4),(85,'Enforced Reclamation and Recycling','Y',5,4),(86,'Circuit Maintenance','R',3,6),(87,'Fuel Rod Disposal Consultants','R',4,6),(88,'Pneumatic Tube Network Engineers','Y',7,6),(89,'Department of Transbot Control','O',6,6),(90,'New Transtube Planning Commission','I',10,6),(91,'Reactor Management Commission','G',6,6),(92,'Reactor Shielding Volunteer Corps','R',3,6),(93,'Crawlspace Commandoes','R',4,6),(94,'Vault Recovery Team','G',7,6),(95,'Toxic Environment Team','O',4,6),(96,'Biological Niceness Indexers','B',8,7),(97,'Security Technology Technicians','B',9,7),(98,'Bot Processing','Y',6,7),(99,'Drug Interaction Testers','G',7,7),(100,'Codename: KILLBOT','G',6,7),(101,'Anti-Gravity Device','V',12,7),(102,'Atomic Science Ethical Directorate','G',6,7),(103,'Think Tank Consultants','I',11,7),(104,'Silicon Corridor','B',8,7),(105,'Special Environment Clone Laboratories','G',7,7),(106,'Historical Artefact Analysis','Y',6,7),(107,'Experimental Equipment Field Testing','O',4,7),(108,'Foreign Contaminant Containment','O',6,7),(109,'Technically Non-Lethal Weapons','Y',5,7),(110,'Security Systems Installers','Y',5,5),(111,'Security Systems Installers','I',10,5),(112,'Clone Tank Support Services','R',2,5),(113,'Medical Services','Y',4,5),(115,'Medical Services','I',10,5),(116,'Paint Control','R',2,5),(117,'Slime Identification','O',4,5),(118,'Tech Support','Y',5,5),(119,'Abandoned Sector Reclamation Initiative','G',8,5),(120,'Dome Cleaning Services','O',5,5),(121,'Department of Pipes and Tubes','R',5,5),(122,'Bot Repair and Maintenance','Y',6,5),(123,'Scrubbot Army','R',3,5),(124,'Megastructure Construction Planning Group','B',10,5),(125,'Non-Specific Unit Production','G',7,5),(126,'Outside Broadcast Unit','Y',5,5),(127,'Alpha Complex Space Program','I',10,5),(128,'Vat Maintenance and Control','O',4,5),(129,'Vermin Terminators','R',3,5),(130,'Troubleshooter Team','R',1,9),(131,'Troubleshooter Team','O',2,9),(132,'Troubleshooter Team','Y',3,9),(133,'Troubleshooter Team','G',4,9),(134,'Troubleshooter Team','B',5,9),(135,'Troubleshooter Team','I',6,9),(136,'Troubleshooter Team','V',7,9),(137,'Alpha Team','I',13,9),(138,'Troubleshooter Dispatchers','B',6,9),(139,'Troubleshooter Debriefer','G',6,9),(140,'Sector Indexers','I',8,2),(141,'Credit Checkers','R',2,2),(142,'Productivity Maintainers','O',3,2),(143,'Queue Maintainers','R',2,3),(144,'Relocation Specialists','G',7,3),(145,'Intergroup Troubleshooter Trainers','Y',4,9),(146,'Troubleshooter University Lecturers','G',7,9),(147,'The BFG','I',10,7),(148,'Earthquake Machine','V',10,7),(149,'PD Infantry','IR',1,1),(150,'HappyTainers','R',3,1),(151,'AFE Wacky Comedy Tour','Y',6,1),(152,'All You Can Be Plus Plus','R',2,1),(153,'Your Body Your Temple','O',4,1),(154,'Rapid Reload','G',6,1),(155,'Fuel Speed Ahead','R',2,1),(156,'Sparkling Memorials','O',3,1),(157,'1st Recreational Regiment','IR',2,1),(158,'Chaplain Central','Y',5,1),(159,'AF Marching Band','R',3,1),(160,'PointFingers AF','R',2,1),(161,'Cellular Diversity Association','Y',5,1),(162,'Now That\'s What I CAll A Blast Radius','B',8,1),(163,'Workplace is Ourplace','Y',5,2),(164,'Save Space EDS','R',2,2),(165,'Save Space HCP','R',2,2),(166,'Form Field','B',8,2),(167,'Citizen Re-Placement','G',7,2),(168,'Institutional Memory Institution','Y',4,2),(169,'RecordIt','B',7,2),(170,'KnowMOR','V',10,2),(171,'Fine Line Ink','Y',4,2),(172,'We Break for Breaks','Y',6,2),(173,'MORmoney','V',10,2),(174,'Radcliffe-V-TBR-1 and clones','I',8,2),(175,'Kloff Notes','O',3,2),(176,'Attorneys at LAW Sector','V',12,2),(177,'Selfless Generosity Corp','O',3,3),(178,'Cathy-G\'s Donatorium','Y',5,3),(179,'Multi-Teela Marketing','B',9,3),(180,'NotCloning','G',6,3),(181,'Fold-a-lot','4',0,3),(182,'Future Bubble','G',5,3),(183,'Trauma Recovery Providers','Y',6,3),(184,'Megamedia','O',4,3),(185,'KID Media','G',7,3),(186,'PIX Films','G',8,3),(187,'Official Artists','G',6,3),(188,'The Computer\'s Monitors','I',10,3),(189,'MutieLovers','O',4,3),(190,'Le Facade','R',4,3),(191,'StopLite IS','G',6,8),(192,'Conspicuous Surveillance Initiative','O',3,8),(193,'Protect and Wander','Y',4,8),(194,'CipherSpace','Y',4,8),(195,'KeyCrypters','B',7,8),(196,'Defenders of the Indoors','G',6,8),(197,'Zero-Zero IS','B',8,8),(198,'Unseen Activities Initiative','V',11,8),(199,'SafeCrackers','Y',5,8),(200,'BreakIn4U','B',8,8),(201,'Every Able Body','O',3,8),(202,'Healthy Workplaces','G',7,8),(203,'IntSec Loves You','Y',5,8),(204,'Love Us Or Else','G',7,8),(205,'Printz IS','Y',5,8),(206,'HandCrafters PLC','Y',4,4),(207,'Artistic Licence','G',6,4),(208,'Give Something Back','O',3,4),(209,'Selective Dining HPD','O',3,4),(210,'Funfoods To Go!','Y',5,4),(211,'DigIt','G',7,4),(212,'GREENHouses','G',6,4),(213,'Small World PLC','O',3,4),(214,'Who Knows Ware','Y',5,4),(215,'Out With The Old','O',3,4),(216,'PLC Moderately Express Mail Delivery','O',3,4),(217,'PLC SupaExpress','Y',5,4),(218,'Stock Sports','Y',4,4),(219,'Extra Power!','Y',5,6),(220,'ExecuRide','I',8,6),(221,'We Guard Power!','G',5,6),(222,'UraniFun PS','Y',4,6),(223,'Nuclear Integrity','G',6,6),(224,'SuperSump','R',2,6),(225,'TransIt','R',3,6),(226,'AgriGreen','Y',4,7),(227,'Kinetic Energy Associates','Y',4,7),(228,'Force Majeur','G',6,7),(229,'Mutie-Free RD','O',4,7),(230,'Purer Genomes Through Science!','Y',7,7),(231,'Entropy Exterminators RD','G',6,7),(232,'Spacetime Removal Services','B',7,7),(233,'A.I. Trauma Care','Y',5,5),(234,'BulbFixers','R',2,5),(235,'Pipe Patrollers','R',2,5),(236,'TransBot Industries','Y',6,5),(237,'Verminators','R',2,5),(238,'Occult Geomaticians','V',10,7),(239,'Fangry Citizen Combat Squad','R',3,3),(240,'Consumption Imbalance Rebalancer','O',3,2);
/*!40000 ALTER TABLE `minion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minion_skill`
--

DROP TABLE IF EXISTS `minion_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minion_skill` (
  `skills_id` int(11) NOT NULL,
  `minion_id` int(11) NOT NULL,
  `minion_skill_bonus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`skills_id`,`minion_id`),
  KEY `fk_minion_skill_2_idx` (`minion_id`),
  CONSTRAINT `fk_minion_skill_1` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`skills_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_minion_skill_2` FOREIGN KEY (`minion_id`) REFERENCES `minion` (`minion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minion_skill`
--

LOCK TABLES `minion_skill` WRITE;
/*!40000 ALTER TABLE `minion_skill` DISABLE KEYS */;
INSERT INTO `minion_skill` VALUES (1,23,1),(1,43,0),(1,54,0),(1,96,0),(1,145,0),(1,160,0),(1,162,1),(1,163,1),(1,166,0),(1,171,0),(1,175,0),(2,21,0),(2,22,1),(2,89,0),(2,107,0),(2,137,0),(2,138,0),(2,143,0),(2,145,0),(2,167,1),(2,177,0),(2,178,1),(3,27,1),(3,28,1),(3,29,1),(3,96,0),(3,117,0),(3,120,0),(3,123,1),(3,129,0),(3,144,0),(3,149,0),(3,156,0),(3,183,0),(3,225,0),(3,232,0),(3,237,0),(4,47,0),(4,52,0),(4,65,1),(4,66,1),(4,67,1),(4,191,0),(5,22,1),(5,44,0),(5,47,0),(5,77,0),(5,81,0),(5,88,0),(5,146,0),(5,164,0),(5,166,1),(5,176,0),(6,7,0),(6,8,0),(6,40,0),(6,46,0),(6,78,0),(6,83,1),(6,158,0),(6,176,1),(6,178,0),(6,179,1),(6,180,1),(6,184,0),(6,185,0),(6,186,1),(6,187,0),(6,188,1),(6,189,0),(6,203,0),(6,204,1),(7,41,0),(7,53,1),(7,140,1),(7,193,0),(8,22,0),(8,23,0),(8,34,0),(8,68,0),(8,69,0),(8,81,0),(8,87,0),(8,172,0),(9,47,0),(9,54,0),(9,57,1),(9,137,0),(9,172,0),(9,180,0),(9,192,0),(10,2,0),(10,37,0),(10,38,1),(10,39,1),(10,49,0),(10,50,0),(10,139,0),(10,194,0),(10,195,1),(10,202,0),(10,205,1),(11,4,0),(11,55,0),(11,61,0),(11,62,0),(11,63,1),(11,97,1),(11,108,0),(11,110,0),(11,111,1),(11,199,0),(11,200,1),(12,35,0),(12,36,1),(12,48,0),(12,49,0),(12,50,0),(12,56,1),(12,97,1),(12,110,0),(12,111,1),(12,121,0),(12,235,0),(13,30,0),(13,31,0),(13,32,0),(13,106,0),(13,119,0),(13,144,0),(13,197,1),(13,198,1),(14,57,0),(14,86,0),(14,199,0),(14,200,1),(15,84,1),(15,93,0),(15,173,1),(15,174,0),(16,11,0),(16,12,1),(16,17,1),(16,18,1),(16,19,0),(16,58,0),(16,59,1),(16,100,0),(16,109,0),(16,147,2),(16,157,0),(17,13,0),(17,14,1),(17,33,0),(17,146,0),(18,5,0),(18,6,1),(18,45,0),(18,60,0),(18,89,0),(18,109,0),(18,159,0),(18,239,0),(19,19,0),(19,90,0),(19,101,1),(19,119,1),(19,124,0),(19,148,0),(19,227,0),(19,228,1),(20,10,0),(20,120,0),(20,126,0),(20,182,0),(21,3,0),(21,4,1),(21,58,1),(21,157,0),(21,191,0),(21,196,1),(21,221,0),(22,17,1),(22,61,0),(22,62,1),(22,63,1),(22,68,0),(22,93,0),(22,129,0),(22,137,1),(22,161,0),(22,197,0),(22,198,1),(22,238,1),(23,18,0),(23,19,0),(23,20,2),(23,147,2),(23,162,0),(24,95,0),(24,98,0),(24,118,0),(24,120,0),(24,122,1),(24,124,0),(24,233,0),(24,236,0),(25,44,0),(25,90,0),(25,91,0),(25,119,0),(25,124,2),(25,182,0),(25,211,0),(25,225,0),(26,79,0),(26,121,1),(26,128,0),(26,224,0),(27,86,0),(27,93,0),(27,121,0),(27,127,0),(27,181,1),(27,190,0),(27,234,0),(28,87,0),(28,91,0),(28,92,0),(28,102,0),(28,219,0),(28,222,0),(28,223,1),(28,231,0),(29,74,0),(29,76,0),(29,79,0),(29,85,0),(29,125,1),(29,206,0),(29,207,1),(29,215,0),(29,218,0),(30,101,2),(30,103,1),(30,107,0),(30,127,1),(30,137,0),(30,148,1),(30,219,0),(30,231,0),(30,232,0),(30,238,0),(31,15,0),(31,59,0),(31,75,0),(31,88,0),(31,89,1),(31,90,0),(31,105,0),(31,137,0),(31,154,1),(31,155,0),(31,211,0),(31,216,0),(31,217,1),(31,220,1),(31,236,0),(32,98,1),(32,100,0),(32,122,0),(32,233,0),(32,236,0),(33,1,0),(33,2,0),(33,13,0),(33,14,0),(33,88,0),(33,118,0),(33,126,0),(33,127,0),(33,137,0),(33,150,0),(33,151,1),(34,24,0),(34,104,0),(34,170,0),(35,24,0),(35,30,0),(35,31,0),(35,32,0),(35,94,0),(35,106,0),(35,165,0),(35,168,0),(35,169,0),(35,170,1),(35,176,1),(36,81,0),(36,84,1),(36,141,0),(36,173,1),(36,174,1),(37,24,0),(37,103,0),(37,104,1),(37,167,0),(37,169,0),(37,170,1),(38,44,0),(38,75,0),(38,77,1),(38,88,0),(38,90,0),(38,103,0),(38,116,0),(38,125,0),(38,208,0),(38,211,0),(38,213,0),(38,214,0),(39,37,0),(39,38,1),(39,39,1),(39,48,0),(39,49,0),(39,50,1),(39,68,0),(39,83,1),(39,150,0),(39,151,0),(39,184,0),(39,185,1),(39,186,1),(39,187,0),(39,188,1),(40,26,0),(40,51,0),(40,87,0),(40,94,0),(40,95,0),(40,96,0),(40,99,0),(40,108,0),(40,115,0),(40,117,0),(40,128,0),(40,226,0),(40,230,0),(41,70,0),(41,71,0),(41,72,1),(41,73,1),(41,76,0),(41,142,0),(41,209,0),(41,210,1),(41,212,1),(41,239,0),(41,240,0),(42,80,1),(42,105,0),(42,112,0),(42,115,0),(42,179,1),(42,229,0),(42,230,0),(43,99,0),(43,103,0),(43,108,0),(43,113,0),(43,115,1),(43,183,0),(43,201,0),(43,202,0),(44,64,0),(44,102,0),(44,105,0),(44,161,0),(44,189,0),(44,229,0),(44,230,0),(45,33,0),(45,106,0),(45,108,0),(46,8,0),(46,25,0),(46,26,1),(46,45,0),(46,46,0),(46,82,1),(46,99,0),(46,158,0),(46,183,0),(47,25,0),(47,26,0),(47,42,0),(47,43,1),(47,188,0),(48,47,0),(48,130,0),(48,131,0),(48,132,0),(48,133,0),(48,134,0),(48,135,0),(48,136,0),(48,137,0),(48,149,0),(49,3,0),(49,9,0),(49,14,0),(49,16,0),(49,34,0),(49,52,0),(49,60,0),(49,85,0),(49,92,0),(49,139,0),(49,144,0),(49,146,0),(49,152,0),(49,153,1),(49,159,0),(49,202,0),(50,17,0),(50,18,0),(51,19,0),(53,37,0),(53,48,0),(53,49,0),(53,50,0),(54,58,0),(55,94,0),(56,107,0),(57,126,0),(68,130,0),(68,131,0),(68,132,0),(68,133,0),(68,134,0),(68,135,0),(68,136,0);
/*!40000 ALTER TABLE `minion_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `minion_skills`
--

DROP TABLE IF EXISTS `minion_skills`;
/*!50001 DROP VIEW IF EXISTS `minion_skills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `minion_skills` (
  `minion_id` tinyint NOT NULL,
  `minion_name` tinyint NOT NULL,
  `minion_clearance` tinyint NOT NULL,
  `minion_cost` tinyint NOT NULL,
  `mskills` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mutations`
--

DROP TABLE IF EXISTS `mutations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mutations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `Name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mutations`
--

LOCK TABLES `mutations` WRITE;
/*!40000 ALTER TABLE `mutations` DISABLE KEYS */;
INSERT INTO `mutations` VALUES (1,'Bureaucratic Intuition','Gives a deep understanding of how to beat the Bureaucratic quagmire on a specific task.'),(2,'Charm','Produces pheromones that cause all weaker-willed clones in the area (not you or other High Programmers) to admire and trust other clones.'),(3,'Empathy','Read a clone\'s emotions and project your own emotions on to them.'),(4,'Deep Thought','Pick a problem you could solve given enough calculation time, you do it much, much faster.'),(5,'Machine Empathy','WARNING: ERASABLE MUTATION. All bots (including Friend Computer) will like you a lot more when you use this.'),(6,'Mechanical Intuition','With a few minutes, you can understand how a mechanical or electrical system works.'),(7,'Mental Blast','Knocks out all living beings (except yourself) in a nearby radius.'),(8,'Adrenaline Control','Temporarily makes you super fast, tough, and strong, takes its toll on the body.'),(9,'Environmental Control','Attuned to the life support of Alpha Complex, you can adjust heating, lighting, airflow, and other systems.'),(10,'Find Location','Pick a location/object/description. When looking at a location, you see the relative direction of your pick. Works through cameras.'),(11,'Radio Jamming','Jams all communications in a short radius for a short amount of time.'),(12,'Push Mutant Power','Amplifies (and may trigger) mutant powers in the immediate area.'),(13,'Uncanny Luck','Using this adjusts a roll in your favour...or reduces the roll of an opponent.'),(14,'Combat Mind','Gain intuition into exactly how to maneuver forces to win a battle.'),(15,'Copy Mutant Power','Copy the mutant power of a random, nearby mutant to use for a few minutes.'),(16,'Domination','Hijack a weak-willed npc\'s mind while your body sleeps for a little while.'),(17,'Forgettable','While active, memories of the next few minutes will slide from clone\'s memories.'),(18,'Psychic Flash','At opportune times, this will give a mental image of something important or dangerous in the near future.'),(19,'Telepathy','Dredge information from weak-willed clones or send psychic messages.'),(20,'Complex Intuition','Get a general feel for events and problems happening in the sector.');
/*!40000 ALTER TABLE `mutations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `name_old`
--

DROP TABLE IF EXISTS `name_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name_old` (
  `name_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_first` varchar(45) NOT NULL,
  `name_clearance` varchar(2) NOT NULL,
  `name_zone` varchar(3) NOT NULL,
  `name_clone` int(11) NOT NULL,
  PRIMARY KEY (`name_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name_old`
--

LOCK TABLES `name_old` WRITE;
/*!40000 ALTER TABLE `name_old` DISABLE KEYS */;
INSERT INTO `name_old` VALUES (1,'Dignif','Y','ING',1),(2,'Catacl','Y','SMM',1),(3,'Get','R','EKT',1),(4,'Falsef','R','ONT',1),(5,'Cryoph','O','BIA',1),(6,'Acroph','O','BIA',1),(7,'Paran','O','IAA',1),(8,'Carbon','Y','LIC',1),(9,'Polyester','G','IRL',1),(10,'Rei','G','NED',1),(11,'Roast','B','EEF',1),(12,'Cue','B','ONE',1),(13,'Advert','I','ZED',1),(14,'Dr','I','VER',1),(15,'Affida','V','ITS',1),(16,'Recidi','V','IST',1),(17,'Allosa','U','RUS',1),(18,'G','U','ARD',1),(19,'Canes','U','GAR',1),(20,'Abd','U','CED',1),(21,'Bag','U','ETT',3),(22,'Dys','U','RIA',1),(23,'Bra','V','ADO',1),(24,'Cra','V','ENN',1),(25,'Dri','V','ELS',1),(26,'Acap','U','LCO',1),(27,'Bisc','U','ITS',1),(28,'Cher','U','BIM',1),(29,'Daiq','U','IRI',1);
/*!40000 ALTER TABLE `name_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_desc` varchar(200) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `fk_news_1_idx` (`c_id`),
  CONSTRAINT `fk_news_1` FOREIGN KEY (`c_id`) REFERENCES `crisis` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Sector lottery jackpots to 7.2 million credits!',NULL),(2,'Alpha Complex Space Agency landing declared hoax! Execution of agency head ##CIT-I-RD## scheduled for 6.',NULL),(3,'Borders to neighbouring sectors found lacking. ##CIT-I-IS##: \"It\'s like any old RED could get through, they will be fortified!\"',NULL),(4,'New craze \"planking\" declared waste of time and treasonous.',NULL),(5,'There was no shuddering of Alpha Complex. Alpha Complex is as stable as ever. Those who believe otherwise are encouraged to contact IntSec.',NULL),(6,'Survey on pronunciation of \"gif\" complete. 100% of respondents say soft-g. In unrelated news, terminations doubled yesterday.',NULL),(7,'##CIT-V-TR##\'s show trial and erasure due for 80:00 SCT todaycycle!',4),(8,'Painkiller RadicalMankey classified treasonous due to unintended side effects.',4),(9,'New CPU manager sends 800 staff to the re-employment office.',1),(10,'Alternative Power Firm Strike-Me-Not reports a 3000% increase in power generation this daycycle!',7),(11,'The new Petbot 214 released today, sells out in minutes!',8),(12,'CPU reports the air per person index has risen 4% in the last month!',9),(13,'Sold-out UltraSuperMegaBowl funball game between USS Patriots and MBB Ballers live todaycycle on Channel 5!',10),(14,'Power forecast: rolling brownouts down by 28%, blackouts down 41%.',6),(15,'A new reactor to be completed today! Citizens rejoice!',11),(16,'Serve your Complex! Battle the Commie Threat! Bonus Hot Fun! Enlist Today!',12),(17,'Friendly Ollie-U saves sector YRU yet again! Citizens Rejoice!',NULL),(18,'ChocolateLyke ration for INFRAREDs increased yet again! ##CIT-I-PL##: \"Once again, the war on production is won!\"',NULL),(19,'Frank-U destroys fifteen communist strongholds, says end in sight for war on terror.',NULL),(20,'Terrorist bomb unlawfully terminates 180 clones, IntSec urges terrorists to hand themselves over before it becomes erasable.',NULL),(21,'Water rations to be decreased 30% due to increased B3 usage.',13),(22,'New dirt indexer bots promise faster hygiene index response times!',14),(23,'Secret Society activity up 12%. Register your society affiliation today for bonus hot fun!',NULL),(24,'Hero Of Our Complex ##CIT-B-1## completes fourth successful tour of duty!',15),(25,'Bright Vision Reducation Centres announce the opening of a new location due to increasing needs!',16),(26,'Rolling blackout centred on RIO sector hit early this morning, productivity hit of 3.81%.',17),(27,'New proposal being investigated to outlaw sleep to raise efficiency.',NULL),(28,'##ZON## funball team under investigation for poor performance. ##CIT-I-IS##: \"No-one but a commie could perform so badly\".',NULL),(29,'SIB Splasheroony fun park boasts record attendence!',NULL),(30,'Friend Computer processing delay set to decrease in the next few weekcycles.',19),(31,'The Hatred Day Parade, live tonight at 8000SCT!',21),(32,'Vicky-B credited with her eleventh HOOC award!',22),(33,'Alternative Power Firm Strike-Me-Not reports a 3000% increase in power generation this daycycle!',23),(34,'Underplex reclaim up 4.8% yearcycle on yearcycle.',NULL),(35,'Bouncy Bubble Beverage increases artificial sweetener content to 81.4%',NULL),(36,'FizzWizz updates its recipe, now with extra Fizz!',NULL),(37,'Defence system update goes smoothly, minimal wrongful terminations.',NULL),(38,'Do we really need so much paperwork? Of course we do! Report at 11.',26),(39,'Alternative Power Firm Strike-Me-Not reports a 3000% increase in power generation this daycycle!',27),(40,'News of Danny-V-SNH\'s glorious return are, as usual, treason until proven otherwise.',28),(41,'A lonely citizen is a treasonous citizen!',29),(42,'Political orthodoxy down 2 points weekcycle on weekcycle.',NULL),(43,'c-bay breaks into ULTRAVIOLET market, announces record profits.',NULL),(44,'Cost of toilet paper rises 5000%, bidets installed in all public restroom blocks.',NULL),(45,'Hygiene standard updated to specify a two sock minimum.',NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(200) NOT NULL,
  `resource_type` varchar(3) NOT NULL,
  PRIMARY KEY (`resource_id`),
  KEY `index2` (`resource_type`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'Bubble Beverage Funball Stadium','LOC'),(2,'Compnode A','LOC'),(3,'Nuclear Waste','RES'),(4,'Left Boots','RES'),(5,'FunFoods MegaPark','LOC'),(6,'Abandoned Nuclear Plant','LOC'),(7,'New Nuclear Plant','LOC'),(8,'WasteRenewal Toilet Complex','LOC'),(9,'Hot Fun','RES'),(10,'Drinking Water','RES'),(11,'Plutonium','RES'),(12,'Soy','RES'),(13,'Copper Wire','RES'),(14,'##ZON## Splasherooni Fun Park','LOC'),(15,'Compnode B','LOC'),(16,'Compnode C','LOC'),(17,'Compnode D','LOC'),(18,'Compnode E','LOC'),(19,'Compnode F','LOC'),(20,'Compnode G','LOC'),(21,'Compnode H','LOC'),(22,'B3 Funball Stadium','LOC'),(23,'IR Cafeteria ##SUB-L1##','LOC'),(24,'R Cafeteria ##SUB-L2##','LOC'),(25,'O Cafeteria ##SUB-L3##','LOC'),(26,'IR EAP AC ##SUB-L4##','LOC'),(27,'R EAP AC ##SUB-L5##','LOC'),(28,'O EAP AC ##SUB-L6##','LOC'),(29,'Sewer Pipe ##SUB-L7##','LOC');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sf`
--

DROP TABLE IF EXISTS `sf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf` (
  `sf_id` int(11) NOT NULL AUTO_INCREMENT,
  `sf_name` varchar(45) NOT NULL,
  `sf_ad` varchar(200) NOT NULL,
  `sg_id` int(11) NOT NULL,
  PRIMARY KEY (`sf_id`),
  KEY `fk_sf_1_idx` (`sg_id`),
  CONSTRAINT `fk_sf_1` FOREIGN KEY (`sg_id`) REFERENCES `sg` (`sg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sf`
--

LOCK TABLES `sf` WRITE;
/*!40000 ALTER TABLE `sf` DISABLE KEYS */;
INSERT INTO `sf` VALUES (1,'HappyTainers','Keeping your soldiers laughing at us, not your enemy!',1),(2,'All That You Can Be Plus Plus','Let each day be an addition to your body: let us Plus Plus you up!',1),(3,'EnviroServices CPU','Billions of working combinations, only one is effective. Let us help you find it!',2),(4,'Know More','We plug the breaches in your paperwork: Know More with Know More!',2),(5,'Selfless Generosity Corp','Everyone needs someone to deride: we hire them for you!',3),(6,'NotCloning HPD','Uncanny Celebrity lookalikes, fast.',3),(7,'DottedLine Patrol','Keeping the undesirables of their sector, out.',8),(8,'Another Kind Of Beat','Keeping the eyes on us, so they keep their eyes off you.',8),(9,'HandCrafters PLC','Whatever you need, however you need, customised for your pleasure.',4),(10,'Selective Dining HPD','Fast food, served in 30 minutecycles or less!',4);
/*!40000 ALTER TABLE `sf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sg`
--

DROP TABLE IF EXISTS `sg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sg` (
  `sg_id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_name` varchar(200) NOT NULL,
  `sg_abbr` varchar(2) NOT NULL,
  PRIMARY KEY (`sg_id`),
  UNIQUE KEY `sg_name_UNIQUE` (`sg_name`),
  UNIQUE KEY `sg_abbr_UNIQUE` (`sg_abbr`),
  UNIQUE KEY `sg_id_UNIQUE` (`sg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sg`
--

LOCK TABLES `sg` WRITE;
/*!40000 ALTER TABLE `sg` DISABLE KEYS */;
INSERT INTO `sg` VALUES (1,'Armed Forces','AF'),(2,'Central Processing Unit','CP'),(3,'HPD&MC','HP'),(4,'Production, Logistics, and Commisary','PL'),(5,'Tech Services','TS'),(6,'Power Services','PS'),(7,'Research and Development','RD'),(8,'Internal Security','IS'),(9,'Troubleshooter Dispatch','TD');
/*!40000 ALTER TABLE `sg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sg_skill`
--

DROP TABLE IF EXISTS `sg_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sg_skill` (
  `sg_id` int(11) NOT NULL,
  `skills_id` int(11) NOT NULL,
  PRIMARY KEY (`sg_id`,`skills_id`),
  KEY `fk_sg_skill_1_idx` (`skills_id`),
  CONSTRAINT `fk_sg_skill_1` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`skills_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sg_skill_2` FOREIGN KEY (`sg_id`) REFERENCES `sg` (`sg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sg_skill`
--

LOCK TABLES `sg_skill` WRITE;
/*!40000 ALTER TABLE `sg_skill` DISABLE KEYS */;
INSERT INTO `sg_skill` VALUES (1,11),(1,16),(1,17),(1,18),(1,20),(1,21),(1,22),(1,23),(1,31),(1,33),(1,49),(2,1),(2,2),(2,5),(2,7),(2,13),(2,17),(2,34),(2,35),(2,36),(2,37),(2,41),(2,45),(2,47),(3,2),(3,3),(3,5),(3,6),(3,7),(3,10),(3,18),(3,25),(3,27),(3,39),(3,44),(3,46),(3,47),(4,6),(4,15),(4,26),(4,29),(4,31),(4,36),(4,38),(4,39),(4,41),(4,42),(4,46),(5,3),(5,12),(5,19),(5,20),(5,24),(5,25),(5,26),(5,27),(5,29),(5,30),(5,32),(5,33),(5,42),(5,43),(6,8),(6,9),(6,14),(6,15),(6,24),(6,25),(6,27),(6,28),(6,35),(6,38),(6,40),(7,11),(7,16),(7,19),(7,23),(7,28),(7,30),(7,32),(7,34),(7,37),(7,40),(7,42),(7,43),(7,44),(7,45),(8,1),(8,4),(8,8),(8,9),(8,10),(8,11),(8,12),(8,14),(8,18),(8,21),(8,22),(8,44),(8,49),(9,48);
/*!40000 ALTER TABLE `sg_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sg_skills`
--

DROP TABLE IF EXISTS `sg_skills`;
/*!50001 DROP VIEW IF EXISTS `sg_skills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sg_skills` (
  `sg_name` tinyint NOT NULL,
  `sgskills` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sgm`
--

DROP TABLE IF EXISTS `sgm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sgm` (
  `sgm_id` int(11) NOT NULL AUTO_INCREMENT,
  `sgm_text` varchar(200) NOT NULL,
  `sg_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sgm_id`),
  KEY `index_sg` (`sg_id`),
  KEY `index_c` (`c_id`),
  CONSTRAINT `fk_sgm_1` FOREIGN KEY (`c_id`) REFERENCES `crisis` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sgm_2` FOREIGN KEY (`sg_id`) REFERENCES `sg` (`sg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sgm`
--

LOCK TABLES `sgm` WRITE;
/*!40000 ALTER TABLE `sgm` DISABLE KEYS */;
INSERT INTO `sgm` VALUES (1,'The grunts are getting restless. Make sure at least two infantry units are given something to do.',1,NULL),(2,'The budget for the new Mark V Warbot is tight. We need an R&D team and half a ton of reactor fuel to attempt to turn it on.',1,NULL),(3,'Efficiency is down 15.7%. Find a way to increase it. It doesn\'t matter what it is, it\'ll all balance out in the end.',2,NULL),(4,'Housing in ##ZON## is oversubscribed by 21%. Either build more housing or reduce demand.',3,NULL),(5,'We\'ve overproduced on ##RES-1## by six months. Find a use for the excess ##RES-1##.',4,NULL),(6,'We have a machine. We don\'t know what it does. Turning it on needs unfettered access to a reactor. We want to turn it on.',7,NULL),(7,'Our contract to rebuild sector ZQD is behind schedule. We need another couple of construction teams but don\'t let anyone know we\'re using them to finish ZQD.',5,NULL),(8,'We\'ve got a huge excess of spent fuel rods. Find a place to put them, please?',6,NULL),(9,'We\'re having trouble storing all the nukes. Either use a few or find us a new storage area.',1,NULL),(10,'The jackbooted idiots are blaming us for no termination vouchers being dispatched, make sure the blame falls on them and not on us.',2,1),(11,'Those idiots in CPU haven\'t sent us any termination vouchers for the last daycycle. Find out why and make sure they take the blame.',8,1),(12,'We want this contract but haven\'t the time to prepare...make sure Power Services\' tubes stop working and get us that contract.',5,2),(13,'The money we could get from this contract, not to mention the extra housing space. Do whatever it takes to get us the contract.',3,2),(14,'It\'s not our fault there were so many problems with the Transtube timetables! Make sure we keep this contract, or we\'re all toast.',6,2),(15,'Power Services have never given our troops free rides. Make sure whoever gets the contract promises free rides to Armed Forces grunts.',1,2),(16,'We were ambushed while getting the weapon from R&D. Make sure we don\'t get embarrased over this.',1,3),(17,'We filed the RDP ##SUB## paperwork as complete before the exchange was ambushed. Make sure the exchange is completed before the end of the daycycle.',2,3),(18,'There\'s a small problem we\'ve located with RDP ##SUB##, once it gets fired it can\'t be turned off. Destroy the device and make sure no-one else finds out about this little flaw.',7,3),(19,'##CIT-V-TR##\'s erasure has to go off without a hitch. The Big C\'s twitchy enough as it is.',3,4),(20,'Due to constraints, we can\'t actually remove ##CIT-V-TR##\'s name from the databanks until after their erasure, or it\'ll crash the TTS. Make sure it doesn\'t crash.',2,4),(21,'The Big C seems to have a sore spot for ##CIT-V-TR##, and the TTS isn\'t tracking why. Make sure the trial goes off fine, but delay the erasure so we can use \'em as bait.',8,4),(22,'##CIT-V-TR##\'s erasure is due for 80:00, but we want it pushed back to 90:00 for...reasons. We also want their body afterwards, get it to us.',7,4),(23,'RDP ##SUB## is one of our best projects, and it actually works! Get it standardized sector-wide.',7,5),(24,'If RDP ##SUB## gets standardised we\'ll lose at least half our revenue. Make sure it doesn\'t make the cut.',4,5),(25,'RDP ##SUB## getting standardised means we can sell space in our reactors for growth! Get in standardised!',6,5),(26,'The nitwits at Power Services want RDP ##SUB## standardised for some reason. Make sure it doesn\'t happen.',5,5),(27,'If RDP ##SUB## is standardised, we won\'t be able to easily push drugs to the population. Stop it at all costs',3,5),(28,'If R&D\'s new gene is standardised, we can classify most of the sector as unregistered mutants and push our rates through the roof! Get it done.',8,5),(29,'Current projections of RDP ##SUB## show an efficiency increase of 180%! Get it standardised!',2,5),(33,'This attack must be from Beta Complex. We must march upon Beta Complex immediately!',1,7),(34,'This attack will lead to war if we don\'t act soon. Prevent a war with Beta Complex breaking out until we find the cause.',8,7),(35,'Our grid is almost overloaded! I can\'t believe I\'m saying this...but we need clones to use more power immediately!',6,7),(36,'There\'s a sudden drop of happiness in multiple subsectors. We need it cleared up pronto.',3,7),(37,'The Petbot 214 has a bit of a flaw, but make sure it doesn\'t get banned. It\'s set to have huge sales!',4,8),(38,'The Petbot 214 is a hit, but could use a few new features. Make sure the next production run encourages people to watch \"Late Night with Conan-O-BRN\"',3,8),(39,'The release of the Petbot 214 is ruining our metrics. Get it removed from sale however you can.',2,8),(40,'The new Petbot requires huge amounts of power, and needs to be rechared every two hours. The grid can\'t handle it, either get us more power or remove the petbots.',6,8),(41,'The concentration of petbots is at an exact level required for data gathering. Don\'t have them recalled, but don\'t let the next production run complete.',7,8),(42,'The truckbot with cold fun syrup crashed in ##SUB##, make sure we don\'t take the blame or have to pay any damages.',4,9),(43,'Tunnel ##SUB## was a clear run on the map! Make sure CPU wear the blame for the Cold Fun syrup truckbot crash.',5,9),(44,'The maps for the transtubes were supposed to be updated last monthcycle but weren\'t. Cover us while we update the maps and records to show the update happened as planned.',2,9),(45,'The data shows a terrorist attack is supposed to hit today. Identify the threat, and make sure it\'s stopped.',8,10),(46,'Finally, a chance to embarrass those idiots at IntSec. Find what this supposed terrorist attack is supposed to be, and when it happens make sure IntSec take the blame.',1,10),(47,'Make sure the UltraSuperMegaBowl goes off without a hitch - broadcasting is on a 10 minute delay to the complex, it must not be interrupted.',3,10),(48,'Our techs have nicknamed today the MegaBowel, for obvious reasons. If there\'s anything in the pipes there may be problems. If it happens, don\'t let the blame fall on us.',5,10),(49,'Project ##SUB## is going ahead today, make sure it\'s a success!',7,6),(50,'##SUB## is likely to cause us to lose the need of heaps of reactors! Don\'t let it succeed!',6,6),(51,'The reactor isn\'t actually ready to go yet, we need engineers sent down before it gets switched on. Whatever happens, make sure HPD don\'t get any footage of the unfinished reactor.',6,11),(52,'We\'ve been refused access to the opening ceremony of the new reactor, but you should have no problem. Get our cameras into the opening ceremony and find out what\'s going on.',3,11),(53,'We\'ve had this huge stock of radiation badges for over a yearcycle. Sell one to every citizen of the sector.',4,11),(54,'We just got word of a huge invasion force! Get at least four of our units into the fight!',1,12),(55,'We\'ve finally got a solid war coming. Get heaps of combat footage of our troops winning for the usual propaganda purposes.',3,12),(56,'We\'re going to war. Prevent any major damage to the sector, or make sure the other service groups get blamed for it.',5,12),(57,'We don\'t actually have enough laser barrels to go to war with. Either make more fast or find alterative ammo sources.',4,12),(58,'The flooding water may be fresh water! If it is, store it somewhere so we can bottle it and sell it for megacredits!',4,13),(59,'Mission quota is down. Send at least 5 troubleshooter teams on missions before the end of the daycycle.',9,NULL),(60,'That entire flooded area was almost condemned. Let it get destroyed so we can get a juicy demolition contract out of it.',5,13),(61,'This flooding is bad for morale. Implement a couple of initiatives to make the proles feel good about the flooding.',3,13),(62,'We have reliable information one of the High Programmers in the room is a traitor. Find them and have them terminated before end of daycycle.',8,NULL),(63,'There\'s been a sudden drop in the hygiene index, whatever the cause, make sure the blame is on tech services.',2,14),(64,'There\'s been a sudden loss of hygiene in the complex, our cleaners are still working fine. Make the blame land squarely on R&D.',5,14),(65,'We deployed a few dirt indexer bots last weekcycle and they work great! Make sure any blame for the loss of sector hygiene falls on CPU and not us.',7,14),(66,'The Computer\'s convinced that one of the other High Programmers is a traitor. If you don\'t prove that one is a traitor it\'ll blow a fuse.',2,NULL),(67,'We need more data on the effects of a nuclear meltdown, so we can test our new nuclear-proof underwear.',7,NULL),(68,'We need to close transtube ##ZON##-M4 for six months. Clear it with the other High Programmers and make sure they understand this will disrupt all transport in the sector.',6,NULL),(69,'##CIT-B-1## is one of our most decorated Vulture Troopers. Don\'t let treason be the public reason for his erasure.',1,15),(70,'##CIT-B-1## is an embarrassment to the complex, show him as an example that anyone can be a commie.',8,15),(71,'We need more exposure, ratings are falling. Get a high-profile citizen to go on at least two troubleshooter missions.',9,15),(72,'If ##CIT-B-1## is publicly denounced as treasonous it will be horrible for morale. Don\'t let that happen.',3,15),(73,'We\'re lagging behind on our High Profile Mutation Tracking. Find ##CIT-B-1##\'s mutation and have it registered before his erasure.',2,15),(74,'214-##SUB## is a commie weapon of mass destruction! Secure it and give it to us so we can study it!',7,16),(75,'Oh Computer, 214-##SUB## again? Make sure it\'s properly secured by us this time.',8,16),(76,'Everyone seems to be after 214-##SUB##. Make sure it\'s secured by us so we can replicate it and sell it to the other groups for massive profits!',4,16),(77,'Why are the other groups after 214-##SUB## anyway? Get it for us so we can sell it to the highest bidder!',6,16),(78,'Those Jackbooted idiots can\'t even keep one item under containment? Get 214-##SUB## for us, and we\'ll secure it properly this time.',1,16),(79,'MuchoMeat is one of our most profitable producers, don\'t let any serious damage come to it.',4,17),(80,'MuchoMeat is out-performing profit expectations. Bring it back within expectations.',2,17),(81,'MuchoMeat is full of expensive machinery, if things were to get broken there it would be extremely profitable for our techs. Make it profitable for our techs.',5,17),(82,'MuchoMeat uses far too much power. Halve their power consumption by the end of the daycycle.',6,17),(83,'##SUB## only has enough power for two firings, but the second will destroy the device. Stop people from using it more than once!',7,18),(84,'We\'re low on water. Use ##SUB## to pull water in from Jupiter\'s moon.',4,18),(85,'The enemy complex on the moon has always held a sword over our heads...until today! Use ##SUB## to destroy that complex!',1,18),(86,'There\'s an entrenched PURGE cell hiding deep underground, use ##SUB## to penetrate the fortress and eliminate the cell.',8,18),(87,'Something\'s going on with the computer\'s circuits...make sure FC doesn\'t terminate any of the HPs this daycycle so we can track down the problem.',5,19),(88,'The terrorist attack appears to be orchestrated by an Ultraviolet. Uncover this UV and have them terminated.',8,20),(89,'We have the Hatred Day Parade running tonight, make sure it\'s not interrupted.',3,21),(90,'The Parade usually brings out the commie rats. The arrest quota for today is 400% of normal, make sure we reach it.',8,21),(91,'PS aren\'t giving us the power we need for the parade lighting. Get it for us.',5,21),(92,'Our reactors are maxing out, reduce usage before one goes critical.',6,21),(93,'Vicky-B has an appearance later today, make sure she attends it before her disappearance.',1,22),(94,'The Big C has deterimined Vicky-B to be a traitor. Get her to us before her public appearance later this daycycle before she causes damage.',8,22),(95,'We still have tons of Vicky-B merchandise, make sure she is still a hero when this is all over.',4,22),(96,'Strike-Me-Not has suddenly become profitable, make sure it doesn\'t get shut down and stays under our control.',7,23),(97,'Strike-Me-Not is surpassing expectations. Make sure it gets shut down or gets transferred to us.',6,23),(98,'Strike-Me-Not is suddenly exceeding expectations, a sure sign of treason. Shut it down and have the staff interrogated.',8,23),(99,'When the exercise is over, make sure IntSec look incompetent while we look fantastic.',1,24),(100,'There\'ll be an invasion exercise today. Embarass the AF while making us look good.',8,24),(101,'We need to show the complex working together, get footage of at least 4 service groups working together to defend the complex.',3,24),(102,'We should take back ##CIT-V## by force! We must pre-emptively attack! Of course, clear it with the rest of the UVs first.',1,25),(103,'We should oversee the ##CIT-V## deal. Set up the deal, and make sure we get them back unharmed.',8,25),(104,'We need some good graces with FC, make sure a Troubleshooter Team oversees the transfer of ##CIT-V##.',9,25),(105,'We need to show R&D is still relevant in the fight against Communism, be sure our projects take a leading role in the upcoming exercise.',7,24),(106,'A staged commie attack means lots of repair work. Make sure all repair work is blamed on other SG\'s imcompetence, not on the exercise, or we\'ll have to pay the bill.',5,24),(107,'We should use this opportunity to move all our records to electronic sources. Convince FC to go full electronic!',2,26),(108,'CPU is going to try and make records go all electronic, stop it from happening, the power cost would be impossible.',6,26),(109,'Find a different medium than paper or electronic to put records on, and convince FC to use it to store all records. We\'ll make millions!',4,26),(110,'PLC is going to go silly over some new record storage material again, make sure it doesn\'t get implemented. Paper and Electronic are all we need.',3,26),(111,'We\'ve been trying to push for quantum storage for some time now, here\'s our chance. Convince FC to move all records to the new format.',7,26),(112,'R&D is going to push for quantum storage again, ever tried to convict someone on evidence they might be guilty? Yeah. Stop it from happening.',8,26),(113,'This attack must be from Beta Complex. We must march upon Beta Complex immediately!',1,27),(114,'This attack will lead to war if we don\'t act soon. Prevent a war with Beta Complex breaking out until we find the cause.',8,27),(115,'Danny-V-SNH was broken out of custody before his debriefing interrogation. Get them back and find the culprit.',8,28),(116,'Danny-V-SNH was a popular figure before they sent on their mission. Get them in the spotlight and keep them alive.',3,28),(117,'We still have a warehouse of Danny-V-SNH memorabillia. Bring them back into the public eye and flog off all this old stuff.',4,28),(118,'The sector is overpopulated. This is our chance to lower the Treason Termination Minimum by 15%. Clear it with the other HPs.',8,29),(119,'Cloning times are already at the maximum, make sure clone deaths are at a minimum this daycycle.',5,29),(120,'HPD&MC are going to use the overpopulation as an excuse to take our land. Make sure we don\'t lose any land to HPD todaycycle.',1,29),(121,'HPD&MC are going to use the overpopulation as an excuse to take our land. Make sure we don\'t lose any land to HPD todaycycle.',4,29),(122,'HPD&MC are going to use the overpopulation as an excuse to take our land. Make sure we don\'t lose any land to HPD todaycycle.',7,29),(123,'If we\'re going to fix the overpopulation, we need more land for housing. We need two of either AF bases, PLC warehouses, or R&D labs.',3,29);
/*!40000 ALTER TABLE `sgm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `skills_id` int(11) NOT NULL AUTO_INCREMENT,
  `skills_name` varchar(45) NOT NULL,
  `skills_parent` varchar(2) NOT NULL,
  PRIMARY KEY (`skills_id`),
  UNIQUE KEY `skills_name_UNIQUE` (`skills_name`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Assessment','M'),(2,'Co-Ordination','M'),(3,'Hygiene','M'),(4,'Interrogation','M'),(5,'Paperwork','M'),(6,'Thought Control','M'),(7,'Thought Survey','M'),(8,'Covert Operations','Su'),(9,'Infiltration','Su'),(10,'Investigation','Su'),(11,'Security Systems','Su'),(12,'Surveillance','Su'),(13,'Cleanup','Su'),(14,'Sabotage','Su'),(15,'Black Marketeering','Su'),(16,'Assault','V'),(17,'Command','V'),(18,'Crowd Control','V'),(19,'Demolition','V'),(20,'Outdoor Ops','V'),(21,'Defence','V'),(22,'Wetwork','V'),(23,'Total War','V'),(24,'Bot Engineering','H'),(25,'Construction','H'),(26,'Chemical Eng','H'),(27,'Habitat Eng','H'),(28,'Nuclear Eng','H'),(29,'Production','H'),(30,'Weird Science','H'),(31,'Transport','H'),(32,'Bot Programming','So'),(33,'Communications','So'),(34,'Computer Security','So'),(35,'Data Retrieval','So'),(36,'Financial Systems','So'),(37,'Hacking','So'),(38,'Logistics','So'),(39,'Media Manipulation','So'),(40,'Biosciences','W'),(41,'Catering','W'),(42,'Cloning','W'),(43,'Medical','W'),(44,'Mutant Studies','W'),(45,'Outdoor Studies','W'),(46,'Pharmatherapy','W'),(47,'Sub. Messaging','W'),(48,'Troubleshooting','O'),(49,'Intimidation','M'),(50,'Must Not Fail','O'),(51,'Super Armoured','O'),(52,'Middle Managers','O'),(53,'Doubles Standing','O'),(54,'Rapid Response','O'),(55,'Vault Delvers','O'),(56,'Minion \'Enhancement\'','O'),(57,'Point of Contact','O'),(58,'Bigger Guns','O'),(59,'Propaganda','O'),(60,'Cyborging','O'),(61,'Disruption','O'),(62,'Procurement','O'),(63,'Mystic Weirdness','O'),(64,'Gadgeteering','O'),(65,'Old Stuff','O'),(66,'Running','O'),(67,'Salvage','O'),(68,'One Use, Multiples','O');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss`
--

DROP TABLE IF EXISTS `ss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_name` varchar(45) NOT NULL,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss`
--

LOCK TABLES `ss` WRITE;
/*!40000 ALTER TABLE `ss` DISABLE KEYS */;
INSERT INTO `ss` VALUES (1,'Anti-Mutant'),(2,'C.L.A.'),(3,'Clone Arrangers'),(4,'Communists'),(5,'Computer Phreaks'),(6,'Corpore Metal'),(7,'Death Leopard'),(8,'FCCC-P'),(9,'Free Enterprise'),(10,'Frankenstein Destroyers'),(11,'Humanists'),(12,'Mystics'),(13,'Pro Tech'),(14,'Psion'),(15,'PURGE'),(16,'Romantics'),(17,'Runners'),(18,'The Movement'),(19,'Sierra Club'),(20,'Servants of Cthulhu'),(21,'Wobblies');
/*!40000 ALTER TABLE `ss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_skill`
--

DROP TABLE IF EXISTS `ss_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_skill` (
  `ss_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `ss_skill_bonus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ss_id`,`skill_id`),
  KEY `fk_ss_skill_1_idx` (`skill_id`),
  CONSTRAINT `fk_ss_skill_1` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skills_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ss_skill_2` FOREIGN KEY (`ss_id`) REFERENCES `ss` (`ss_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_skill`
--

LOCK TABLES `ss_skill` WRITE;
/*!40000 ALTER TABLE `ss_skill` DISABLE KEYS */;
INSERT INTO `ss_skill` VALUES (1,10,0),(1,22,1),(1,40,0),(2,16,1),(2,21,0),(2,58,0),(3,40,0),(3,42,1),(3,44,0),(4,16,0),(4,27,0),(4,59,1),(5,35,0),(5,37,1),(5,39,0),(6,24,1),(6,32,0),(6,60,0),(7,16,1),(7,19,0),(7,61,0),(8,4,0),(8,6,1),(8,8,0),(9,36,1),(9,49,0),(9,62,0),(10,16,0),(10,24,0),(10,29,1),(11,1,0),(11,2,0),(11,5,1),(12,40,0),(12,46,1),(12,63,0),(13,30,1),(13,35,0),(13,64,0),(14,2,0),(14,9,0),(14,44,1),(15,16,0),(15,19,1),(15,37,0),(16,6,0),(16,62,0),(16,65,1),(17,11,1),(17,20,0),(17,66,0),(18,17,1),(18,23,0),(18,27,0),(19,40,0),(19,45,1),(19,67,0),(20,40,0),(20,44,0),(20,49,1),(21,25,0),(21,29,1),(21,59,0);
/*!40000 ALTER TABLE `ss_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ss_skills`
--

DROP TABLE IF EXISTS `ss_skills`;
/*!50001 DROP VIEW IF EXISTS `ss_skills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ss_skills` (
  `ss_id` tinyint NOT NULL,
  `ss_name` tinyint NOT NULL,
  `sskills` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ssm`
--

DROP TABLE IF EXISTS `ssm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssm` (
  `ssm_id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `ssm_text` varchar(200) NOT NULL,
  PRIMARY KEY (`ssm_id`),
  KEY `fk_ssm_1_idx` (`c_id`),
  KEY `fk_ssm_2_idx` (`ss_id`),
  CONSTRAINT `fk_ssm_1` FOREIGN KEY (`c_id`) REFERENCES `crisis` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ssm_2` FOREIGN KEY (`ss_id`) REFERENCES `ss` (`ss_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssm`
--

LOCK TABLES `ssm` WRITE;
/*!40000 ALTER TABLE `ssm` DISABLE KEYS */;
INSERT INTO `ssm` VALUES (1,1,NULL,'The muties have are getting too much peace, come down hard on mutants!'),(2,4,NULL,'Comrade! Pleasink to be spreadink Propaganda to Burgoise Complex!'),(3,5,NULL,'We\'re running out of washed caffiene. Can you deliver a truckload to ##LOC-1## for us?'),(4,6,NULL,'We have a surplus of cyborg parts, maim a good portion of the population so we can sell \'em off.'),(5,7,NULL,'Duuuude, we had a massive party last night and don\'t want to deal with the boys in blue... can you move IntSec out of the low clearance areas?'),(6,8,NULL,'We need more faith based initiatives...replace the morning anthem with a Hymn to our lord and savior, Friend Computer!'),(7,10,NULL,'There\'s too many bots around. Especially petbots, you can\'t sleep with those things around. Remove all petbots from the sector.'),(8,11,NULL,'Petbots are excellent for showing man\'s mastery over bots. Increase the number of petbots in the sector.'),(9,12,NULL,'Duuuuude, we had a massive rave last night, and we\'re out of uppers. Can you get us a transbotload of washed caffeine?'),(10,13,NULL,'We\'ve got a device we want to turn on but we don\'t know what it does. Can you get us unfettered access to a nuclear reactor to try?'),(11,15,NULL,'High value targets are currently under too much scrutiny, redirect IntSec to the lower-clearance areas.'),(12,16,NULL,'There\'s not enough pre-reckoning knowledge: get us onto the set of Celebrity Weekcycle and we\'ll do the rest.'),(13,19,NULL,'We need to tempt more clones with the wonders of the outdoors... can you get some trees into ##LOC-1##?'),(14,20,NULL,'La! The leylines intersect there, at ##LOC-1##! Build us a new temple there!'),(15,4,3,'Comrade! Ve are hearink rumours of superveapon gone missing! Recover and deliver veapon to us to aid great Lenin\'s cause.'),(16,8,3,'A heretical splinter group stole an experimental doomsday device and are hoarding it. Recover it for us so we can sanctify it before returning it.'),(17,9,NULL,'Yeah see, we got dis huge pile of defunct laser barrels. By huge, I\'s mean four million. Find us a buyer, and make sure IntSec\'s away.'),(18,2,NULL,'We\'re running low on armaments against the Commie threat! We need twenty tacnukes to beef up the arsenal by the end of the daycycle.'),(19,3,NULL,'We need more people to use our services. Kill off a high-profile citizen publicly to scare the masses.'),(20,17,NULL,'We\'ve got a secret escape route in ##LOC-1##, but there was a cave in. Repair it please.'),(21,21,NULL,'Comrade! We\'re going to hold a demonstration in the ##LOC-1##. Please make sure they don\'t run over us with tanks!'),(22,5,4,'The Big C\'s kinda...twitchy about the erasure for today, more so than usual. Get us into the crisis room so we can find out why.'),(23,3,4,'##CIT-V-TR## is a natural-born, no-one knows! Get us their spleen so we can use his genes.'),(24,20,4,'La! ##CIT-V-TR## is the sacrifice we need! Get them to us sedated! We\'ll be waiting in the ##LOC-SOC##.'),(25,17,4,'##CIT-V-TR## is a client of ours. Get them to us so we can get \'em out, we\'ll be at the ##LOC-RUN##.'),(26,12,4,'Whoa man, ##CIT-V-TR## paid well for a batch of RadicalMankey, but we can\'t find it, he must have eaten it. Get their stomach to use so we can pump the drugs back out.'),(27,7,1,'Whoa, the man\'s not keeping us down! Get us a pallet of B3 and a crate of WhiskeyLike to ##LOC-P## so we can throw a massive party!'),(28,12,1,'Whoa man! Like, we got space to breathe! Get us a load of Videoland to ##LOC-P## so we can rave, man!'),(29,3,1,'We haven\'t had any work all daycycle, it\'s costing us credits! Make a whole heap of clones die so we can get back to work.'),(30,2,1,'The commies have infiltrated IntSec! Get us five tacnukes so we can flush out the commie menace! We\'ll be waiting at the ##LOC-F##.'),(31,4,1,'Comrade! Ze IntSec veaklings are awaiting a blastink! Deliver us two hundred laser barrels so we can take ze fight to zem! We\'ll be waitink at ze ##LOC-F##'),(32,1,5,'Why are people tinkering with the human genome? Terminate ##CIT-G-SG##, he must be a filthy mutant.'),(33,3,5,'Why haven\'t we heard of ##SUB## before? Get us a copy of the data.'),(34,13,5,'##SUB## is actually working? Get us a copy of the data to look at'),(35,14,5,'The next step in human evolution is here! Get ##SUB## standardised.'),(36,9,5,'See here, dis ##SUB## project? Destroy the data, so\'s we don\'t lose our customer base later.'),(37,19,5,'##CIT-G-SG## is one of ours. Make sure his project succeeds!'),(40,2,7,'The Commies are finally attacking! Equip all clones with weapons to fight the impending Commie Horde!'),(41,4,7,'Comrade! Is not beink our superveapon! You be pinning blame on Beta Complex, yes?'),(42,5,7,'Yo dude, our electronics are going haywire! Whatever it is, make it stop.'),(43,13,7,'This is perfect time for some of our reanimation tests! Get us a safe way to the outdoors so we can try our latest experiment!'),(44,8,7,'The endtime prophecy has begun! Now we must part the RED sea! Destroy the Commie scum in Beta Complex!'),(45,20,7,'La! The old ones come to greet us! We must sacrifice a High Programmer to the elder gods to open the gate! Get us a suitable sacrifice!'),(46,19,7,'Outside is beautiful right now! Broadcast footage of it to the entire complex!'),(47,6,8,'The new petbot was influenced by us, get the next production run pushed through this daycycle.'),(48,4,8,'Comrade! Dis new petbot is symbol of capitalist excess! Remove from population!'),(49,5,8,'Our contract on the petbot is done, order the current stock to do a factory reset so they pay us again.'),(50,10,8,'These new bots are abominations! Reveal them for what they are and recall the whole product line!'),(51,13,8,'These new petbots so cute! Make them mandatory for all REDs and above!'),(52,7,9,'Cold Fun Syrup? Dude, get us a boxful! We can do some amazing pranks with it!'),(53,4,9,'Comrade! Ve must to be gettink hands on syrup of Cold Fun!'),(54,15,9,'Get us a good amount of that Cold Fun Syrup, we\'ll finally be able to make a bomb big enough to take down the Computer.'),(55,9,9,'Look see, gets us a box of Cold Fun Syrup and we\'ll cut youse in on de profits.'),(56,21,10,'Comrade! UltraSuperMegaBowl is capitalist excess! Cause an evacuation of the stadium!'),(57,15,10,'We have a bomb hidden under the UltraSuperMegaBowl, but security is too tight for us to activate it. Get us an alternate way in.'),(58,9,10,'Look see, we know there\'s something juicy under the UltraSuperMegaBowl. Get it for us and we\'ll cut you in on de profits.'),(59,14,NULL,'We\'re needing to find more of our kind, add more mutagenics to the water supply.'),(60,18,NULL,'We\'re needing building materials, specifically 5000 tons concrete. Deliver it to ##LOC-1## for us to pick up.'),(61,4,11,'Comrade! New reactor helping bourgoise cause! Must be destroyink!'),(62,21,11,'Comrade! New reactor helping bourgoise cause! Must be destroyink!'),(63,15,11,'The new reactor is a prime target. Destroy before the end of the daycycle.'),(64,1,11,'A new reactor means more mutants. Implement a new anti-mutant policy before the end of the daycycle!'),(65,14,11,'Get a crowd of people near the new reactor to celebrate its opening.'),(66,2,12,'We heard of the Commie threat! Send us some bigger guns so we can prepare for the final defence!'),(67,3,12,'We\'re gonna need some more cloning tanks. Appropriate some of tech services\' tanks for us.'),(68,18,12,'This is our chance. Get us a way to the front lines, and we\'ll end this war once and for all.'),(69,20,13,'La! The ritual is almost complete! Delay the computer\'s lackeys long enough so we may summon the old ones!'),(70,12,13,'We kinda lost a year\'s supply of hallucinogenics in the water supply. Can you get it back for us? '),(71,8,13,'We\'ve heard rumblings of heretical cultists building a temple in the sublevels. Destroy it and escort us there to cleanse it!'),(72,18,13,'Some idiots stole our building supplies and built a temple in the sublevels. Can you clear them out, but leave the place intact for us to strip?'),(73,10,14,'These new dirt indexer bots are terrible murderers! Destroy all of them!'),(74,6,14,'The dirt indexer bots are the next wave of bot freedom fighters. Get more out in the sector!'),(75,11,14,'One of the dirt indexer bots murdered a clone! Get footage of this and broadcast it to the complex!'),(76,15,15,'##CIT-B-1## wasn\'t a commie, they were one of ours. Get one of their clones to disappear into our hands before their erasure.'),(77,11,15,'##CIT-B-1## is due to be erased? They were one of our best clones! Get one of their clones to disappear before his erasure.'),(78,3,15,'We could do wonderful things with ##CIT-B-1##, get them delivered comatose to us at ##LOC-1##'),(79,2,15,'##CIT-B-1## can\'t be a traitor, they\'ve killed far too many commies. We\'ve a shipment of weaponry for him, pick it up at ##LOC-1## and deliver it to them.'),(80,5,15,'We need ##CIT-B-1##\'s tongue for identity purposes. Deliver it to us at ##CIT-B-1##.'),(81,8,15,'##CIT-B-1## is a commie? Their soul just needs cleansing, deliver them to us so we may do so. We\'ll be waiting at ##LOC-1##'),(82,4,15,'##CIT-B-1## is comrade? Vhy ve not know? Beink savink them and deliverink to us, yes? Ve vait at ##LOC-1##'),(83,21,15,'##CIT-B-1## is comrade? Must be very skilled. You be savink them and deliver to ##LOC-1## for us, yes?'),(84,4,16,'Comrade! My book finally returns! Re-secure ##SUB## for my coll...for future generations of Communists!'),(85,2,16,'This ##SUB## thing is a commie weapon! Broadcast its destruction to the complex.'),(86,11,16,'There\'s a wonderful item, ##SUB##, which will assist in the coming revolution. Capture it for us.'),(87,1,16,'There is a mutie killing device, ##SUB##, get it for us.'),(88,14,16,'We\'ve recently found ##SUB## is a major mutagenic, secure it for us.'),(89,7,16,'Whoa man, everyone seems to be after ##SUB##. Grab it for us and we\'ll pull the greatest stunt anyone has ever seen!'),(90,9,16,'Look see, there\'s dis really expensive ##SUB## running around, get it for us and we\'ll sell it to the highest bidder, capiche?'),(91,3,17,'Have the staff of MuchoMeat terminated, so their clones will buy our insurance this time.'),(92,4,17,'Comrade! MuchoMeat is symbol of capitalist excess! You are to be putting poison in MuchoMeat foodstuffs, yes?'),(93,11,17,'We require a crate of MuchoMeat\'s products to help the revolution. Deliver it to us at ##LOC-1##'),(94,6,17,'MuchoMeat doesn\'t use enough bots. Execute the lower-level staff and have them replaced with bots instead.'),(95,10,17,'MuchoMeat uses too many bots. Destroy all the bots and replace them with humans.'),(96,19,17,'MuchoMeat grows things from the outdoors, I think they\'re called Pugs, in vats. Get one of them for us, we\'ll be at ##LOC-1##.'),(97,13,18,'Get us the plans to ##SUB## so we can make our own device!'),(98,17,18,'Get us the plans to ##SUB## so we can make our own!'),(99,19,18,'Get us the plans to ##SUB## so we can make our own exits.'),(100,20,18,'La! Get us the plans to ##SUB## so we can open a true gate!'),(101,9,18,'Lookee here, get us deez here plans to ##SUB##, and we sells dem to the highest bidder, capiche?'),(102,8,19,'We\'ve noticed a drop in our lord\'s response times. Get us into one of the CompNodes to sanctify its circuites.'),(103,13,19,'We\'ve had advance warning of more compnodes, get one of our teams into a partially constructed CompNode.'),(104,15,20,'We\'re taking out ##LOC-1##, clear the IntSec goons out of there.'),(105,11,20,'We\'re bombing ##LOC-2##, remove the resistance for us.'),(106,4,20,'Comrade! Ve are bomink ##LOC-3##. Pleasink to be removink resistance.'),(107,8,20,'The heathens are coming for our temple near ##LOC-1##! Stop them and don\'t let our temple get discovered!'),(108,6,20,'We\'ve got a bot shop near ##LOC-2## that someone\'s trying to bomb. Stop them and keep our shop hidden.'),(109,2,20,'The commies are coming for our bunker at ##LOC-3##, stop them and keep our bunker hidden!'),(110,11,21,'Why do Commies get all the attention? Get us access to the Computer float so we can attract more recruits.'),(111,4,21,'Ve are hidink todaycycle, keep ze attention off us and get us some food to ##LOC-1##.'),(112,15,21,'We want to crash the party, get us access to the Vulture Craft Float for the parade.'),(113,7,21,'Dude, the parade is always a great time for pranks. Get us access to the speaker\'s stand!'),(114,2,21,'We\'re worried about the Commie threat. Get us access to the Vulture Craft Float for the parade so we can fight the commies when they strike!'),(115,8,21,'We wish to join our lord in his crusade against the Commies! Get us access to the Computer float!'),(116,15,22,'Vicky-B needs to disappear, deliver her to ##LOC-1## before the end of the daycycle.'),(117,11,22,'Vicky-B apparently needs to be gone? Get her to ##LOC-2## so we can get her to safety.'),(118,17,22,'We owe Vicky-B a favour, deliver her to ##LOC-3## and we\'ll get her out of there.'),(119,3,22,'We could profit from Vicky-B, get us access to her before she disappears so we can sell her a policy.'),(120,13,23,'Get us in to Strike-Me-Not, we want to check out the hardware!'),(121,18,23,'We need Strike-Me-Not\'s project for the new complex, deliver it to us.'),(122,2,23,'The Commies are attacking! Deliver us one thousand laser barrels to prepare for the attack!'),(123,14,23,'We have need of Strike-Me-Not, get our team in there, remove the security.'),(124,2,24,'When the exercise begins, make sure we\'re in the defending force.'),(125,4,24,'Comrade! Vhen ze exercise begins, making to be sure vhe are defending, yes?'),(126,1,24,'When the exercise begins, make sure we\'re a member of the defending force.'),(127,13,24,'When the exercise begins, make sure we\'re in the defending force.'),(128,8,25,'##CIT-V## must not come back alive. Terminate them before they re-enter the complex.'),(129,9,25,'##CIT-V## must not come back alive. Terminate them before they re-enter the complex.'),(130,16,25,'##CIT-V## must not come back alive. Terminate them before they re-enter the complex.'),(131,19,25,'##CIT-V## must not come back alive. Terminate them before they re-enter the complex.'),(132,12,25,'##CIT-V## must not come back alive. Terminate them before they re-enter the complex.'),(133,5,26,'Remove security from the Archives and get us in there, we have work to do.'),(134,9,26,'Remove security from the Archives and get us in there, we have work to do.'),(135,11,26,'Remove security from the Archives and get us in there, we have work to do.'),(136,13,26,'Remove security from the Archives and get us in there, we have work to do.'),(137,20,26,'Remove security from the Archives and get us in there, we have work to do.'),(138,13,27,'Get us in to Strike-Me-Not, we want to check out the hardware!'),(139,18,27,'We need Strike-Me-Not\'s project for the new complex, deliver it to us.'),(140,2,27,'The Commies are attacking! Deliver us one thousand laser barrels to prepare for the attack!'),(141,14,27,'We have need of Strike-Me-Not, get our team in there, remove the security.'),(142,1,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(143,2,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(144,3,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(145,8,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(146,11,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(147,13,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(148,14,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(149,17,28,'Danny-V-SNH has some nerve showing up again. Make sure they don\'t last the daycycle.'),(150,4,29,'Comrade! Today is the day ve be throwink off chains! You startink a riot, yes?'),(151,21,29,'Comrade! Today is the day ve be throwink off chains! You startink a riot, yes?'),(152,11,29,'The sector is overpopulated and the people are unhappy. The time is now, start a riot so we may take over.'),(153,18,29,'The sector is overpopulated and the people are unhappy. The time is now, start a riot so we may take over.'),(154,7,29,'Woooo! Overpopulation annihilation! Start a riot so we can go crazy!');
/*!40000 ALTER TABLE `ssm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `minion_skills`
--

/*!50001 DROP TABLE IF EXISTS `minion_skills`*/;
/*!50001 DROP VIEW IF EXISTS `minion_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fc`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `minion_skills` AS select `minion`.`minion_id` AS `minion_id`,`minion`.`minion_name` AS `minion_name`,`minion`.`minion_clearance` AS `minion_clearance`,`minion`.`minion_cost` AS `minion_cost`,group_concat(concat(`skills`.`skills_name`,if((`skills`.`skills_parent` = 'O'),'',concat('(',`skills`.`skills_parent`,')')),if((`minion_skill`.`minion_skill_bonus` > 0),concat(' +',(`minion_skill`.`minion_skill_bonus` * 4)),'')) separator ', ') AS `mskills` from ((`minion` join `minion_skill`) join `skills`) where ((`minion_skill`.`minion_id` = `minion`.`minion_id`) and (`minion_skill`.`skills_id` = `skills`.`skills_id`)) group by `minion`.`minion_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sg_skills`
--

/*!50001 DROP TABLE IF EXISTS `sg_skills`*/;
/*!50001 DROP VIEW IF EXISTS `sg_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fc`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sg_skills` AS select `sg`.`sg_name` AS `sg_name`,group_concat(`skills`.`skills_name` separator ', ') AS `sgskills` from ((`sg` join `sg_skill`) join `skills`) where ((`sg_skill`.`sg_id` = `sg`.`sg_id`) and (`sg_skill`.`skills_id` = `skills`.`skills_id`)) group by `sg`.`sg_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ss_skills`
--

/*!50001 DROP TABLE IF EXISTS `ss_skills`*/;
/*!50001 DROP VIEW IF EXISTS `ss_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fc`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ss_skills` AS select `ss`.`ss_id` AS `ss_id`,`ss`.`ss_name` AS `ss_name`,group_concat(concat(`skills`.`skills_name`,if((`ss_skill`.`ss_skill_bonus` > 0),concat(' +',(`ss_skill`.`ss_skill_bonus` * 4)),'')) separator ', ') AS `sskills` from ((`ss` join `ss_skill`) join `skills`) where ((`ss_skill`.`ss_id` = `ss`.`ss_id`) and (`ss_skill`.`skill_id` = `skills`.`skills_id`)) group by `ss`.`ss_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-26 11:36:14

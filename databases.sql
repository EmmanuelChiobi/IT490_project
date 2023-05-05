-- MySQL dump 10.13  Distrib 5.7.41, for Linux (x86_64)
--
-- Host: localhost    Database: Users
-- ------------------------------------------------------
-- Server version	5.7.41-0ubuntu0.18.04.1-log

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
-- Current Database: `Users`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Users` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Users`;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `uid` int(11) NOT NULL,
  `friends_id` int(11) NOT NULL,
  `are__friends` bit(1) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (2,3,_binary ''),(3,2,_binary '');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`uid`),
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  CONSTRAINT `profile_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'test','test','test'),(2,'jack','Jack','Zabriskie'),(3,'john','John','Zabriskie'),(4,'sean','Sean','Levesque'),(5,'eman','Eman','Chiobi');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `visibility` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test','test@test.com',1),(2,'jack','d28a50827f7b4fbddfbd9aa82696cc773e8c02a7ed2145444c24af01d7a2447b','jack@njit.edu',1),(3,'john','5483a080e4f3d2c09e347bee5d230434163442a7a98bee114fd611a413898687','john@njit.edu',1),(4,'sean','7fd0f260a608da8d62d2e5d2ff0cfcd94f9ccba8579f10ba9f1d1c7cfdec529f','sean@njit.edu',1),(5,'eman','e2d6d64ae53fd7a4b1e749594710c15e3830e4bb4a455b90175b57e691942e98','eman@njit.edu',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `Cache`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Cache` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Cache`;

--
-- Table structure for table `genreCache`
--

DROP TABLE IF EXISTS `genreCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genreCache` (
  `genre_id` int(255) DEFAULT NULL,
  `genre_val` varchar(255) DEFAULT NULL,
  `lastmod` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genreCache`
--

LOCK TABLES `genreCache` WRITE;
/*!40000 ALTER TABLE `genreCache` DISABLE KEYS */;
INSERT INTO `genreCache` VALUES (NULL,'Drama',1679416909),(NULL,'Crime',1679416909),(NULL,'Thriller',1679416909),(NULL,'Comedy',1679416909),(NULL,'Romance',1679416909),(NULL,'Family',1679416909),(NULL,'Children',1679589380),(NULL,'Medical',1679589380),(NULL,'Legal',1679589380),(NULL,'Fantasy',1679589380),(NULL,'History',1679589380),(NULL,'Adventure',1679589380);
/*!40000 ALTER TABLE `genreCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchCache`
--

DROP TABLE IF EXISTS `searchCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchCache` (
  `search_id` int(255) DEFAULT NULL,
  `search_val` int(255) DEFAULT NULL,
  `lastmod` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchCache`
--

LOCK TABLES `searchCache` WRITE;
/*!40000 ALTER TABLE `searchCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showCache`
--

DROP TABLE IF EXISTS `showCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showCache` (
  `show_id` int(255) DEFAULT NULL,
  `api_id` int(255) DEFAULT NULL,
  `show_name` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `summary` text,
  `lastmod` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showCache`
--

LOCK TABLES `showCache` WRITE;
/*!40000 ALTER TABLE `showCache` DISABLE KEYS */;
INSERT INTO `showCache` VALUES (NULL,169,'Breaking Bad','https://static.tvmaze.com/uploads/images/medium_portrait/0/2400.jpg','9.3','<p><b>Breaking Bad</b> follows protagonist Walter White, a chemistry teacher who lives in New Mexico with his wife and teenage son who has cerebral palsy. White is diagnosed with Stage III cancer and given a prognosis of two years left to live. With a new sense of fearlessness based on his medical prognosis, and a desire to secure his family\'s financial security, White chooses to enter a dangerous world of drugs and crime and ascends to power in this world. The series explores how a fatal diagnosis such as White\'s releases a typical man from the daily concerns and constraints of normal society and follows his transformation from mild family man to a kingpin of the drug trade.</p>',1679416909),(NULL,61235,'Bad Sisters','https://static.tvmaze.com/uploads/images/medium_portrait/418/1045091.jpg','6.4','<p>Set in the breath-taking coast of Ireland, <b>Bad Sisters</b> follows the lives of the Garvey sisters, who are bound together by the premature death of their parents and a promise to always protect one another. The tight-knit Garvey sisters have always looked out for each other. When their brother-in-law winds up dead, his life insurers launch an investigation to prove malicious intent - and set their sights on the sisters, all of whom had ample reason to kill him.</p>',1679416909),(NULL,56778,'Bad Monkey','','','',1679416909),(NULL,274,'Bad Education','https://static.tvmaze.com/uploads/images/medium_portrait/202/506068.jpg','6.9','<p>Comedy series about a teacher who is a bigger kid than the kids he teaches.</p>',1679416909),(NULL,59460,'Bad Behaviour','https://static.tvmaze.com/uploads/images/medium_portrait/447/1119256.jpg','','<p>An emotionally and physically intense glimpse into the lives of teenage girls at the wilderness campus of an exclusive girls boarding school, the series takes us inside a brutal world, exploring latent and emerging sexuality, ritualistic rites, intense friendships, gruelling physical punishments, shifting loyalties and a ruthless struggle for power. Played out across past and present timelines, the series reveals that even 10 years on from their school years, no one has escaped unscathed â€“ and most are scarred for life.</p>',1679416909),(NULL,34797,'Bad Banks','https://static.tvmaze.com/uploads/images/medium_portrait/404/1011615.jpg','7.5','<p>After being wrongly fired from CrÃ©dit International, a prestigious Investment bank in Luxembourg, Jana Liekam, a talented Young Investment banker, is offered a dream-job in Frankfurt Under the supervision of prominent Gabriel Fenger, Head of Investment Banking at Deutsche Invest. Suddenly, Jana not only had to give up her job, but also leave her boyfriend and his 5-year-old daughter behind. While Jana quickly manages to impress Fenger and his team with her passion and ambition, she realizes only too late that Christelle LeBlanc, her former boss at CrÃ©dit International, has secretly been pulling the strings and manipulating Jana to her own advantage. Soon, Jana finds herself torn between her new obligations and Leblanc\'s relentless blackmailâ€¦will she and her career survive this merciless powerplay?</p>',1679416909),(NULL,52237,'Bad Buddy','https://static.tvmaze.com/uploads/images/medium_portrait/366/916976.jpg','7.8','<p>Pat is a playful and mischievous boy while Pran is a tidy, prince-like perfectionist. Even before they were born, these two boys were destined to detest each other. Their parents each own a hardware business next door to each other, and they fiercely compete by lowering prices and stealing each other\'s employees. Their parents hate one another to the core, which is why the boys have been placed in a competition since they were newborns. The parents compare their children in every way conceivable, who crawls first, who walks first, or even who says mama and papa first.</p><p>When the boys reach the age of 12, their wall begins to break. Pat\'s little sister, Pa, accidentally rides her bicycle into a pond in the village. While Pat is still in a state of fear, Pran suddenly jumps into the water and helps Pa up. The incident turns the relationship between the two boys into a change. On the surface, they still appear to be enemies, but they no longer truly despise each other. In their ninth grade, the boys are assigned to be in the same music band and they become closer. At this point, Pran\'s feeling towards Pat gradually develops.</p><p>Four years later, fate plays a game with the two of them once more. Pat becomes the first-year class president of the Faculty of Engineering while Pran is also the class president of the Faculty of Architecture, and these two faculties happen to be all-time rivals. Pran and Pat are forced to battle once more. When Pa finds out, she demands Pat not to do Pran any harm because he was the one who saved her life at a young age. Pat decides to come to see Pran to propose an agreement. Pat suggests they exchange information about their groups in order to prevent both faculties from warring. Pran, who prefers not to argue, agrees to the idea and their \"secret relationship\" starts from there. They are neither buddies nor enemies, but they can certainly steal the hearts of the audience. When will this friendship that grows in the midst of conflicts come to an end? When will their secret be exposed? Will they be accepted by their parents? Will the conflicts get resolved eventually? Hang tight to find out.</p>',1679416909),(NULL,91,'Bad Judge','https://static.tvmaze.com/uploads/images/medium_portrait/0/678.jpg','7.4','<p>No excuses, no apologies, no compromises. Wild child Rebecca Wright knows how to have a good time, but she also happens to be one of L.A.\'s toughest and most respected criminal court judges. She has a reputation for unorthodox behavior in the courtroom, including creative rulings and saying exactly what\'s on her mind. Her private life, on the other hand, is anything but innocent. She parties too much and rocks out on the drums in a band with her best friend, Jenny. While there\'s no shortage of male admirers who would love to spend time with her, she\'s not ready to settle down... except when an 8-year-old boy - whose parents were put in jail by Rebecca - needs her help. He may, in fact, be the one thing that starts to tame this <b>Bad Judge</b>.</p>',1679416909),(NULL,28985,'Bad Blood','https://static.tvmaze.com/uploads/images/medium_portrait/173/432741.jpg','7.6','<p><b>Bad Blood</b> is a story of family, loyalty, deceit, power, greed, and ultimately revenge. Montreal Mafia boss Vito Rizzuto is a criminal anomaly. Determined to bring peace to the disparate wings of the Montreal crime world of the day, Rizzuto successfully unifies them, serving as a de facto CEO while ensuring a lucrative payday for all. When Rizzuto is suddenly arrested and extradited to Colorado\'s Supermax Prison for the 1981 murders of three Bonanno crime family members, the powerful empire he built begins to crumble. Rizzuto watches helplessly until his release from prison in October 2012, when a Shakespearean tale of revenge begins to unfold.</p>',1679416909),(NULL,589,'Bad Teacher','https://static.tvmaze.com/uploads/images/medium_portrait/4/11941.jpg','5.7','<p>Based on the hit feature film, <b>Bad Teacher</b> follows Meredith Davis as an always inappropriate, fearless and unapologetic former trophy wife who masquerades as a teacher in order to find a new man after her wealthy husband leaves her penniless.</p>',1679416909),(NULL,55558,'Ada MasalÄ±','https://static.tvmaze.com/uploads/images/medium_portrait/328/821794.jpg','','<p>A new romantic summer series tells about a love storybetween Alp Navruz and AyÃ§a AyÅŸin Turan on an island and in strange and special circumstances.</p>',1679589380),(NULL,53330,'Ada Twist, Scientist','https://static.tvmaze.com/uploads/images/medium_portrait/350/875854.jpg','','<p><b>Ada Twist, Scientist</b> featuring a young Black scientist who will explore helping people through scientific discovery, collaboration and friendship.</p>',1679589380),(NULL,29244,'For the Love of Ada','https://static.tvmaze.com/uploads/images/medium_portrait/206/517261.jpg','','<p><b>For the Love of Ada</b> was a comedy series in the United Kingdom. Irene Handl starred as Ada who had recently been widowed. Ada slowly starts a relationship with Walter the gravedigger who buried her husband.</p>',1679589380),(NULL,48485,'Ana','https://static.tvmaze.com/uploads/images/medium_portrait/432/1080293.jpg','','<p>Ana was raised to be famous and beautiful. After realizing that her life has been controlled by appearances, she takes a new path. This is the story of a delayed adolescence of who is not afraid to lose herself, just to find herself again.</p>',1679589380),(NULL,14332,'MDA','https://static.tvmaze.com/uploads/images/medium_portrait/48/121820.jpg','','<p><b>MDA</b> is an Australian Medical Defense Organisation. It serves an insurance function, defending the doctors who form its membership against lawsuits and malpractice actions, in return for a fixed annual fee. Its staff are a mixture of lawyers and doctors, led by lawyer Bill \'Happy\' Henderson (Shane Bourne). He is ably aided by Dr Ella Davies (Kerry Amstrong), who later leaves to become head of emergency medicine at nearby St Albans hospital. Jason Donovan plays nemesis Richard Savage, a partner at Kato and Pittman, seen either as a wily and passionate advocate for patient rights, or an ambulance-chaser.</p>',1679589380),(NULL,10599,'AMA Supercross','https://static.tvmaze.com/uploads/images/medium_portrait/404/1011852.jpg','','<p><b>AMA Supercross</b> is a motorcycle racing sport involving off-road motorcycles on an artificially-made dirt track consisting of steep jumps and obstacles. Professional supercross contest races are held almost exclusively within professional baseball and football stadiums, although one contest is held at a major motorsport venue (Daytona International Speedway) in the island that separates pit lane from the circuit. Supercross is a very technical sport. Supercross was derived of Motocross. While Motocross and Supercross are similar in many respects, there are significant differences as well. For example, the Supercross races are heavily advertised and televised motorsports events held within major cities.</p><p>The sport Supercross is tailored to the TV spectator, as result of widespread television coverage, as its target market. The term \"Supercross\" was coined as the event name for the first organized motocross race that was successfully held inside a stadium in the United States. In 1972, racing promoter Mike Goodwin and Terry Tiernan, president of the AMA at the time, staged what they called the \"Super Bowl of Motocross\" inside the Los Angeles Coliseum in Los Angeles, California. This event was won by Marty Tripes at the age of 16. That initial contest featured many of the top Motocross riders of the time. It was such a commercial success that it spawned many imitators, and the term \"Supercross\" was coined to identify the similar to Motocross stadium cycling events. Modern Supercross races are sanctioned and governed by motorcycle associations, the main series being either the American Motorcyclist Association which is the oldest and most prestigious cycle racing organization (in America), or the Monster Energy series of Supercross Championship events that are in part the work of Clear Channel, who in 2004 contributed expertise in filming on-track gate event competition for Supercross.</p>',1679589380),(NULL,59827,'Matcha Anda','https://static.tvmaze.com/uploads/images/medium_portrait/388/970716.jpg','','<p>A love story between a human and a mermaid. Human Khun Naren and the mermaid princess of the North ocean Anda fall in love while Anda struggles to stay out of the clutches of Sinthu, the mermaid king of the South ocean.</p>',1679589380),(NULL,26841,'A.D.','https://static.tvmaze.com/uploads/images/medium_portrait/105/264259.jpg','','<p>Set just after the death of Jesus Christ, this mini-series chronicles the life &amp; adventures of Jesus\'s disciples, and events in Rome during the reigns of the Emperors Tiberius, Caligula, Claudius and Nero.</p>',1679589380),(NULL,10038,'Just Add Magic','https://static.tvmaze.com/uploads/images/medium_portrait/34/85818.jpg','7.1','<p><b>Just Add Magic </b>is about Kelly Quinn and her two BFF\'s, Darbie and Hannah, stumble upon her grandmother\'s mysterious cookbook in the attic and discover some far from ordinary recipes. When the Shut\'em Up Shortcake silences Kelly\'s pesky little brother and the Healing Hazelnut Tart heals Darbie\'s ankle, the girls discover they have the power of magic.</p>',1679589380),(NULL,23405,'AÃ­da','https://static.tvmaze.com/uploads/images/medium_portrait/87/219911.jpg','','<p>After the sudden death of her father, Aida returns to her childhood neighborhood and tries to help her children get ahead in life.</p>',1679589380);
/*!40000 ALTER TABLE `showCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showGenre`
--

DROP TABLE IF EXISTS `showGenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showGenre` (
  `show_id` int(255) DEFAULT NULL,
  `genre_id` int(255) DEFAULT NULL,
  `lastmod` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showGenre`
--

LOCK TABLES `showGenre` WRITE;
/*!40000 ALTER TABLE `showGenre` DISABLE KEYS */;
/*!40000 ALTER TABLE `showGenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showSearch`
--

DROP TABLE IF EXISTS `showSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showSearch` (
  `search_id` int(255) DEFAULT NULL,
  `show_id` int(255) DEFAULT NULL,
  `lastmod` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showSearch`
--

LOCK TABLES `showSearch` WRITE;
/*!40000 ALTER TABLE `showSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `showSearch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 11:37:23

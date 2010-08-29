-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2010 at 04:41 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brain_memory`
--

-- --------------------------------------------------------

--
-- Table structure for table `Action`
--

CREATE TABLE IF NOT EXISTS `Action` (
  `id` int(11) NOT NULL,
  `D` int(11) DEFAULT NULL,
  `A_P` int(11) DEFAULT NULL,
  `A_E` int(11) DEFAULT NULL,
  `Need` varchar(50) DEFAULT NULL,
  `def` varchar(50) DEFAULT NULL,
  `action` text,
  PRIMARY KEY (`id`),
  KEY `A_P` (`A_P`),
  KEY `A_E` (`A_E`),
  KEY `D` (`D`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Action`
--

INSERT INTO `Action` (`id`, `D`, `A_P`, `A_E`, `Need`, `def`, `action`) VALUES
(1, 1, 1, 1, 'Boredom of Learning', 'Annoyed at Decisions', NULL),
(2, 1, 1, 2, 'Interest in Thinking', 'Annoyed at Decisions', NULL),
(3, 1, 1, 3, 'Acceptance in Learning', 'Serenity in Decisions', NULL),
(4, 1, 1, 4, 'Interest in Thinking', 'Serenity in Decisions', NULL),
(5, 2, 2, 5, 'Annoyed at Decisions', 'Boredom of Learning', NULL),
(6, 2, 2, 6, 'Pensiveness in Trying', 'Boredom of Learning', NULL),
(7, 2, 2, 7, 'Apprehension in Thinking', 'Acceptance in Learning', NULL),
(8, 2, 2, 8, 'Serenity in Decisions', 'Acceptance in Learning', 'I have discovered that I like to think and put my thoughts down in writing, but thinking and writing by coding, which affords immediate results that can be analysed and improved upon.  I accept that I am constantly learning, whether that be the type of programming or real life concepts.  So why not gel the two together - realise real time concepts whilst programming.  This will provide me with a means of expression and the expenditure of my emotional energies.  Doing things this way will enhance my understanding of, not only new and existing concepts, but how the mind is directed (cognitive psychodynamics) in making use of these concepts.\n\nI do love software engineering as it provides a means of trying to analyse behaviour through thinking and being able to write that process down in order for it to be visualised.  We think in either images or models and this process concentrates the mind in moving forward in our understanding of concepts.\n\nCHEW is a tool to do just that.  It provides a means to analyse emotions and make decisions in how to move forward (Strategies) and add plans to those strategies where plans can be fleshed out.  Your own life space can be mapped out, observed and moved forward in the precise direction you want to move in.  I want to position myself, not in the direction that my emotional reaction to outside environmental changes dictate, but in my own way.\n\nI have been looking at software engineering from a subjective point of view.  It is now time to trust my capabilities and life experiences and to move to an inter-subjective point of view.  That is to say that I want to reach my full potential as an information scientist or software engineer and use these skills to enable further undertsanding of new and existing scientific concepts.  The first concept is cognitive psychodynamics, where we are presented with controls, directions, strategic implementations and plans with related emotions.  In the case of loving software engineering, providing I remain happy in my decision making, emotional needs seem to point in the direction of being optimistic in having an interest in thinking.\n\n\n'),
(9, 3, 3, 9, 'Serenity in Decisions', 'Interest in Thinking', 'As the options in the approaches path are applied we move forward in our understanding.  We have aquired the ability to predict what happens.  If the approaches are not taken up then we stay in balance.  That is to say that, if I chose to be interested in thinking with no desire to achieve happiness in deciding, then I remain interested in thinking and neither optimistic nor unoptimistic.  I would be able to seek esteem by having an interest in what others are thinking and what emotions that invokes to lead them to further conclusions, but I would remain with that interest.'),
(10, 3, 3, 10, 'Annoyed at Decisions', 'Interest in Thinking', NULL),
(11, 3, 3, 11, 'Distraction in Trying', 'Apprehension in Thinking', NULL),
(12, 3, 3, 12, 'Acceptance in Learning', 'Apprehension in Thinking', NULL),
(13, 4, 4, 13, 'Distraction in Trying', 'Pensiveness in Trying', NULL),
(14, 4, 4, 14, 'Apprehension in Thinking', 'Distraction in Trying', NULL),
(15, 4, 4, 15, 'Bored of Learning', 'Pensiveness in Trying', NULL),
(31, 1, 5, 1, 'Disgust of Teaching', 'Angry at Influence', 'We can look at society from an objective point of view and our natural rebellious behaviour not to settle for the status quo.  Big Brother takes the best and worst of society and presents it in a way which seems to be the norm, when we instictively know that the true picture is far from that which is presented to us.  A truer picture can be found in the new concept of social networking, where comments, suggestions and questions form a collective overview of individual cultures today.  This new concept is a powerfull way of an individual''s attempt at influencing changes to society.  Utopia would seem to be a long way away as individualistic views clash.  It would seem to follow that we can naturally regret being successful in our analysis as this would feed collective thought of the truth instead of being made aware of how not to be.\n\nIn order to remain abreast of what is happening it will be necessary to trust the teaching of the media.'),
(32, 1, 5, 2, 'Anticipate Dreams', 'Angry at Influence', NULL),
(33, 1, 5, 3, 'Trust in Teaching', 'Joy in Influence', 'I have decided to accept the teachings of all media, before I take up issues that interest me.  By media - I mean televison, radio, the internet, distributed music and the papers.  Of course I am interested only in software engineering and how this can be used to perceive the real world.  I therefore need to decide what real issues warrant its use.'),
(34, 1, 5, 4, 'Anticipate Dreams', 'Joy in Influence', NULL),
(35, 2, 6, 5, 'Angry at Influence', 'Disgust of Teaching', NULL),
(36, 2, 6, 6, 'Sadness in Succeeding', 'Disgust of Teaching', NULL),
(37, 2, 6, 7, 'Fear in Dreaming', 'Trust in Teaching', NULL),
(38, 2, 6, 8, 'Angry at Influence', 'Trust in Teaching', NULL),
(39, 3, 7, 9, 'Joy in Influence', 'Anticipate Dreams', NULL),
(40, 3, 7, 10, 'Angry at Influence', 'Anticipate Dreams', NULL),
(41, 3, 7, 11, 'Surprise from Succeeding', 'Fear in Dreaming', NULL),
(42, 3, 7, 12, 'Trust of Teaching', 'Fear in Dreaming', NULL),
(43, 4, 8, 13, 'Sadness in Succeeding', 'Sadness in Succeeding', NULL),
(44, 4, 8, 14, 'Fear in Dreaming', 'Surprise from Succeeding', NULL),
(45, 4, 8, 15, 'Disgust of Teaching', 'Sadness in Succeeding', NULL),
(61, 1, 9, 1, 'Loathing of Teaching', 'Rage at Influence', NULL),
(62, 1, 9, 2, 'Vigilant in Dreaming', 'Rage at Influence', NULL),
(63, 1, 9, 3, 'Admire Teaching', 'Ecstasy in Influence', NULL),
(64, 1, 9, 4, 'Vigilant in Dreaming', 'Ecstasy in Influence', 'So, according to CHEW, I need to be extra mindful of what goals I set myself in software engineering.  I need to be totally confident about what I teach myself, so that I can admire this and seek pleasure from the result.  I will have two areas of teaching - programming concepts and the subject matter itself.  In other words I have to keep myself abreast of programming concepts and wait for a subject to appear.  I have Java''s Netbeans as a tool to hear about programming techniques and I think I will stick to cognitive psychodynamics as the subject area.\n\nSo we have a Temporal area which holds hard and fast controls, directions and strategies.  In choosing an option we get further hard and fast emotional choices in the Parietal area.  In choosing an option from this we get either a Left Frontal view of it to add as a strategy or, if it is a strategy, a Right Frontal view to add planning detail.\n\n'),
(65, 2, 10, 5, 'Rage at Influence', 'Loathing of Teaching', NULL),
(66, 2, 10, 6, 'Grief in Success', 'Loathing of Teaching', NULL),
(67, 2, 10, 7, 'Terror in Dreaming', 'Admire Teaching', NULL),
(68, 2, 10, 8, 'Ecstasy in Influence', 'Admire Teaching', 'My gut instinct told me not to trust the MVC architecture for CHEW.  I have since discovered that MVC is about structured information and presenting this to the user in a meaningful way and best suited to web applications.  CHEW however is about the structure of that structured information and therefore lends itself to a modular desktop approach.  It is a shell into which private data can be housed, unlike MVC which shares information across an organisation.  Java desktop application programming must have been invented just for this purpose.  To share structure but house private data.  We all have the same brain functions and CHEW is based on that model.  It is an experiment to ascertain the effect of merging psychological approaches, emotions and needs.\n\nIn taking this plan as a psychological inter-subjective approach to understanding CHEW, I am starting from a humanistic approach, then moving on to analysis and then behaviour which is where my need points to.  I see this stepping through the approaches iteratively as akin to the software life-cycle and the natural order of things.  I want to be able to admire that which I am teaching myself, so that I may gain some sort of motivation from what I am doing.  It is a step to self-actualisation.  This emotional admiration is at first the homeostatic gap in the humanistic approach or testing phase, moving naturally on to analysis in this case.  I consider analysis to be about learning and teaching.  It is always the case that homeostasis comes first as we select our goal or emotion as I believe that we constantly aim to achieve balance.  The exercise is not over until we have reached full iteration, which seems to point to being optimistically vigilant in my dreaming.  If I am not, then there is the danger of an aggressive rage at my own influence and then loathing what I teach myself.\n\n'),
(69, 3, 11, 9, 'Ecstasy in Influence', 'Vigilant in Dreaming', NULL),
(70, 3, 11, 10, 'Rage at Influence', 'Vigilant in Dreaming', NULL),
(71, 3, 11, 11, 'Amazement from Success', 'Terror of Dreaming', NULL),
(72, 3, 11, 12, 'Admire Teaching', 'Terror in Dreaming', NULL),
(73, 4, 12, 13, 'Grief in Success', 'Grief in Success', 'It seems that what has been happening is that I have trusted my instincts and created CHEW.  Unknowingly, I have done this inter-subjectively.  I have come to the stage where it is almost complete, but yet I have a slight feeling of disappointment.  What I need is a non-cerebral distraction and so I have taken up angling and gardening to provide me with a distraction and to take me back to nature for enjoyment. I have learned that it is best to chip away at things in order to be creative and now and again step back and enjoy the achievement.  I do not know where next to start chipping away.  I have created an application which emulates common sense and I am using it to record my strategies and plans.  Where this might take me is unknown.  For Disappointment, however, the only option is to do the oppostite - that is to find resolve in another area - with the hope of returning to the issue refreshed at a later date.'),
(74, 4, 12, 14, 'Terror in Dreaming', 'Amazement from Success', 'I have now provided a path to other approaches based on need in order to provide the user with options on how to move forward or pitfalls in moving too far.  How I came up with the idea - I don''t know, but it is a revelation and works a treat.  Yes I am in awe of what I can achieve and it is frightening to realize the potential of dreaming (goal setting).  This gives me great confidence in trusting the ideas I dream up from nowhere.\n\nSo I am providing a path of emotional drive, which will, when analysed and implemented, lead me to altering my behaviour in remaining vigilant about what I dream up.  I am influencing myself to change and recording this process at the same time.  Is it the case that I can affect my subconscious by keeping this record of emotional choice in CHEW?  Dreaming is just the analysis of chaos.  \n\nI have decided to apply the recommended options in the approaches path.  I will remain frightened by goal setting and rely on an objective approach by trusting that which is taught collectively.  Hopefully this will provide me with joy as I will be able to analyse what is happening in society.  Despite this, I will be able to apply my own integrity in deciding how I wish to move forward.  I may not wish to move forward at all, but continue to study what is happening.  I am using CHEW fairly frequently now and am beginning to trust its structure as being as close as I can get to natural common sense.'),
(75, 4, 12, 15, 'Loathing of Teaching', 'Grief in Success', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Approach_E`
--

CREATE TABLE IF NOT EXISTS `Approach_E` (
  `id` int(11) NOT NULL,
  `A` int(11) DEFAULT NULL,
  `Emotion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `A` (`A`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Approach_E`
--

INSERT INTO `Approach_E` (`id`, `A`, `Emotion`) VALUES
(1, 1, 'Contempt'),
(2, 1, 'Aggressiveness'),
(3, 1, 'Love'),
(4, 1, 'Optimism'),
(5, 2, 'Contempt'),
(6, 2, 'Remorse'),
(7, 2, 'Submission'),
(8, 2, 'Love'),
(9, 3, 'Optimism'),
(10, 3, 'Aggressiveness'),
(11, 3, 'Awe'),
(12, 3, 'Submission'),
(13, 4, 'Disappointment'),
(14, 4, 'Awe'),
(15, 4, 'Remorse');

-- --------------------------------------------------------

--
-- Table structure for table `Approach_P`
--

CREATE TABLE IF NOT EXISTS `Approach_P` (
  `id` int(11) NOT NULL,
  `A` varchar(50) DEFAULT NULL,
  `D` int(11) DEFAULT NULL,
  `C` int(11) DEFAULT NULL,
  `Concern` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `D` (`D`),
  KEY `C` (`C`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Approach_P`
--

INSERT INTO `Approach_P` (`id`, `A`, `D`, `C`, `Concern`) VALUES
(1, 'Decide', 1, 1, 'Decisions'),
(2, 'Learn', 2, 1, 'Learning'),
(3, 'Thinking', 3, 1, 'Thinking'),
(4, 'Trying', 4, 1, 'Trying'),
(5, 'Influenced By', 1, 2, 'Influenced By'),
(6, 'Taught By', 2, 2, 'Taught By'),
(7, 'Share Dream', 3, 2, 'Share Dream'),
(8, 'Share Success', 4, 2, 'Share Success'),
(9, 'Influence', 1, 3, 'Influence'),
(10, 'Teach', 2, 3, 'Teaching'),
(11, 'Dream', 3, 3, 'Dreaming'),
(12, 'Succeed', 4, 3, 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `Control`
--

CREATE TABLE IF NOT EXISTS `Control` (
  `id` int(11) NOT NULL,
  `C` varchar(50) DEFAULT NULL,
  `Choice` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Control`
--

INSERT INTO `Control` (`id`, `C`, `Choice`) VALUES
(1, 'Subjectivity', 'Subjective.'),
(2, 'Objectivity', 'Objective.'),
(3, 'Objectivity+', 'Inter-subjective.');

-- --------------------------------------------------------

--
-- Table structure for table `Decision`
--

CREATE TABLE IF NOT EXISTS `Decision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idea_id` int(11) DEFAULT NULL,
  `response` int(11) DEFAULT NULL,
  `strategy` int(11) DEFAULT NULL,
  `date_entered` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idea_id` (`idea_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Decision`
--

INSERT INTO `Decision` (`id`, `idea_id`, `response`, `strategy`, `date_entered`) VALUES
(1, 24, NULL, NULL, '0000-00-00'),
(2, 31, 0, 1, '2010-12-22'),
(3, 9, 0, 2, '2010-06-01'),
(6, 10, 0, 3, '2010-06-06'),
(5, 8, 0, 3, '2010-06-05'),
(7, 68, 0, 3, '2010-08-09'),
(8, 64, 0, 3, '2010-08-10'),
(9, 73, 0, 3, '2010-08-12'),
(10, 74, 0, 3, '2010-08-12'),
(11, 33, 0, 1, '2010-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `Direction`
--

CREATE TABLE IF NOT EXISTS `Direction` (
  `id` int(11) NOT NULL,
  `D` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Direction`
--

INSERT INTO `Direction` (`id`, `D`) VALUES
(1, 'Behavioural'),
(2, 'Psychoanalytical'),
(3, 'Cognitive'),
(4, 'Humanistic');

-- --------------------------------------------------------

--
-- Table structure for table `Response`
--

CREATE TABLE IF NOT EXISTS `Response` (
  `id` int(11) NOT NULL,
  `P` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `D` int(11) DEFAULT NULL,
  `R` varchar(50) DEFAULT NULL,
  `C` int(11) DEFAULT NULL,
  `def` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `E` (`E`),
  KEY `D` (`D`),
  KEY `P` (`P`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Response`
--

INSERT INTO `Response` (`id`, `P`, `E`, `D`, `R`, `C`, `def`) VALUES
(1, 1, 1, 1, 'Learn to Accept', 1, 'Happy to Decide'),
(2, 1, 2, 1, 'Hesitant in Thinking', 1, 'Happy to Decide'),
(3, 1, 3, 1, 'Boredom of Learning', 1, 'Annoyed at Decisions'),
(4, 1, 4, 1, 'Hesitant in Thinking', 1, 'Annoyed at Decisions'),
(5, 2, 5, 2, 'Happy to Decide', 1, 'Learn to Accept'),
(6, 2, 6, 2, 'Distraction from Trying', 1, 'Learn to Accept'),
(7, 2, 7, 2, 'Interest in Thinking', 1, 'Boredom of Learning'),
(8, 2, 8, 2, 'Annoyed at Decisions', 1, 'Boredom of Learning'),
(9, 3, 9, 3, 'Annoyed at Decisions', 1, 'Hesitant in Thinking'),
(10, 3, 10, 3, 'Annoyed at Decisions', 1, 'Hesitant in Thinking'),
(11, 3, 11, 3, 'Distraction in Trying', 1, 'Interest in Thinking'),
(12, 3, 12, 3, 'Learn to Accept', 1, 'Interest in Thinking'),
(13, 4, 13, 4, 'Distraction from Trying', 1, 'Distraction from Trying'),
(14, 4, 14, 4, 'Hesitant in Thinking', 1, 'Thoughtful in Trying'),
(15, 4, 15, 4, 'Learn to Accept', 1, 'Distraction from Trying'),
(31, 5, 1, 1, 'Trust in Teaching', 2, 'Joy in Influence'),
(32, 5, 2, 1, 'Fear in Dreaming', 2, 'Joy in Influence'),
(33, 5, 3, 1, 'Disgust of Teaching', 2, 'Angry at Influence'),
(34, 5, 4, 1, 'Fear in Dreaming', 2, 'Angry at Influence'),
(35, 6, 5, 2, 'Angry at Influence', 2, 'Trust in Teaching'),
(36, 6, 6, 2, 'Surprise in Succeeding', 2, 'Trust in Teaching'),
(37, 6, 7, 2, 'Anticipate Dreams', 2, 'Disgust of Teaching'),
(38, 6, 8, 2, 'Joy in Influence', 2, 'Disgust of Teaching'),
(39, 7, 9, 3, 'Angry at Influence', 2, 'Fear in Dreaming'),
(40, 7, 10, 3, 'Joy in Influence', 2, 'Fear in Dreaming'),
(41, 7, 11, 3, 'Sadness from Succeeding', 2, 'Anticipate Dreams'),
(42, 7, 12, 3, 'Disgust of Teaching', 2, 'Anticipate Dreams'),
(43, 8, 13, 4, 'Surprise from Succeeding', 2, 'Surprise from Succeeding'),
(44, 8, 14, 4, 'Fear in Dreaming', 2, 'Sadness from Succeeding'),
(45, 8, 15, 4, 'Trust in Teaching', 2, 'Surprise from Succeeding'),
(61, 9, 1, 1, 'Admire Teaching', 3, 'Ecstasy in Influence'),
(62, 9, 2, 1, 'Terror in Dreaming', 3, 'Ecstasy in Influence'),
(63, 9, 3, 1, 'Loathing in Teaching', 3, 'Rage at Influence'),
(64, 9, 4, 1, 'Terror in Dreaming', 3, 'Rage at Influence'),
(65, 10, 5, 2, 'Ecstasy in Influence', 3, 'Admire Teaching'),
(66, 10, 6, 2, 'Amazement from Success', 3, 'Admire Teaching'),
(67, 10, 7, 2, 'Vigilant in Dreaming', 3, 'Terror of Dreaming'),
(68, 10, 8, 2, 'Rage at Influence', 3, 'Loathing in Teaching'),
(69, 11, 9, 3, 'Rage at Influence', 3, 'Terror in Dreaming'),
(70, 11, 10, 3, 'Rage at Influence', 3, 'Terror in Dreaming'),
(71, 11, 11, 3, 'Amazement from Succeeding', 3, 'Vigilant in Dreaming'),
(72, 11, 12, 3, 'Admire Teaching', 3, 'Vigilant in Dreaming'),
(73, 12, 13, 4, 'Amazement from Success', 3, 'Amazement from Success'),
(74, 12, 14, 4, 'Terror in Dreams', 3, 'Grief in Succeeding'),
(75, 12, 15, 4, 'Admire Teaching', 3, 'Amazement from Succeeding');

-- --------------------------------------------------------

--
-- Table structure for table `Strategy`
--

CREATE TABLE IF NOT EXISTS `Strategy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `strategy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Strategy`
--

INSERT INTO `Strategy` (`id`, `strategy`) VALUES
(1, 'Big Brother'),
(2, 'FullCircle'),
(3, 'Software Engineering');

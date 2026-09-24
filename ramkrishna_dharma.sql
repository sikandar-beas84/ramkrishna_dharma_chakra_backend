-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 24, 2026 at 12:41 PM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramkrishna_dharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `donate_description` text,
  `donate_image` varchar(255) DEFAULT NULL,
  `welcome_heading` text,
  `welcome_description` text,
  `parampara_text` text,
  `description_english` text,
  `donate_description_english` text,
  `welcome_heading_english` text,
  `welcome_description_english` text,
  `parampara_text_english` text,
  `footer_text_english` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `footer_text` longtext,
  `facebook_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `address` text,
  `address_english` text,
  `email` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `phone_three` varchar(255) DEFAULT NULL,
  `phone_one_bengali` varchar(255) DEFAULT NULL,
  `phone_two_bengali` varchar(255) DEFAULT NULL,
  `phone_three_bengali` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `description`, `donate_description`, `donate_image`, `welcome_heading`, `welcome_description`, `parampara_text`, `description_english`, `donate_description_english`, `welcome_heading_english`, `welcome_description_english`, `parampara_text_english`, `footer_text_english`, `created_at`, `updated_at`, `footer_text`, `facebook_link`, `youtube_link`, `twitter_link`, `address`, `address_english`, `email`, `phone_one`, `phone_two`, `phone_three`, `phone_one_bengali`, `phone_two_bengali`, `phone_three_bengali`, `instagram_link`) VALUES
(1, '1685509782-1603.jpg', 'শ্রীরামকৃষ্ণ ধর্মচক্র ভারতবর্ষের আধ্যাত্মিক আকাশে এক উজ্জ্বল নক্ষত্র। এই ধর্ম প্রতিষ্ঠান ব্রহ্মলীন স্বামী জগদীশ্বরানন্দ মহারাজের ঐকান্তিক প্রচেষ্টায় ১৯৫৫ খৃষ্টাব্দ(১৩৬২ সালের) ফাল্গুন মাসে প্রতিষ্ঠা হয়।<br />স্বামী জগদীশ্বরানন্দ মহারাজের মহাপ্রয়াণের পর তাঁর সুযোগ্যা শিষ্যা প্রব্রাজিকা মহাগৌরী সরস্বতী দক্ষ হাতে এই প্রতিষ্ঠানের সমস্ত গুরুভার বহন করেন। প্রব্রাজিকা মহাগৌরী সরস্বতীর মহাপ্রয়াণের পর তাঁর মনোনীত গুরুভাই স্বামী বিশুদ্ধানন্দ সরস্বতীজী মহারাজ প্রতিষ্ঠানের আচার্য্য রূপে গুরু ভার গ্রহণ করেন। <br /><br />শ্রীরামকৃষ্ণ ধর্মচক্র আশ্রমে ১৯৬১ খৃষ্টাব্দে পূর্বভারতে প্রথম কল্কি মন্দির প্রতিষ্ঠা হয়। দৈবনির্দেশে সর্বপ্রথম ভগবান বিষ্ণুর শেষ অবতার কল্কি দেবের আগমন বার্তা প্রচারিত হয়। স্বামী জগদীশ্বরানন্দ মহারাজ দ্বারা অনূদিত প্রায় ১০০খানা ধর্মগ্রন্থের বিপুল সম্ভার। এই গ্রন্থ দ্বারা ধর্মপ্রাণ নরনারীগণের ধর্মচেতনাজাগরণ ধর্মজ্ঞানকে পরিপুষ্ট করার কাজে সদা ব্ৰতী এই প্রতিষ্ঠান। এখানে দীক্ষার্থীগণের প্রকৃতিগত ইষ্টনির্বাচন ও মন্ত্রযোগে সাধন অনুশীলনের দ্বারা সাধনে উন্নতির পথে এগিয়ে নিয়ে যাওয়ার সহায়তা করা হয়। এছাড়া সারা বছর ব্যাপী বেশ কিছু উন্নয়ন মূলক কর্মকান্ডের সঙ্গে যুক্ত। হিন্দু ধর্ম বিশ্বাসী সামাজিক ও আধ্যাত্মিক মিলন ক্ষেত্রের আর এক নাম শ্রীরামকৃষ্ণ ধর্মচক্র।', 'শ্রীরামকৃষ্ণ ধর্মচক্রের প্রতিষ্ঠাতা ব্রহ্মলীন স্বামী জগদীশ্বরানন্দ মহারাজ ছিলেন একজন সর্বত্যাগী সন্ন্যাসী। হিন্দুধর্মের ব্যক্তি, বৈদিক সাধন ও আচারবিধি ও শ্রীরামকৃষ্ণ পরমহংসের পরম্পরা ও ধর্মাচারণের প্রসার ঘটানোর জন্য কিছু সহৃদয় ভক্তের আর্থিক সাহায্য, কায়িক শ্রম ও অনুপ্রেরণায় অতি কষ্টে তিনি গড়ে তুলেছিলেন এই প্রতিষ্ঠান। গুরু মহারাজের নীতি ও ভাবধারা অনুসরণ করে পরবর্তীকালে তাঁর দীক্ষিত আশ্রমবাসী সন্ন্যাসী ও সন্ন্যাসিনীরা কঠোর সন্ন্যাসব্রত পালন করে চলেছেন। বহু তথাকথিত ধর্মপ্রতিষ্ঠানের মত এখানে ধর্মের বিনিময়ে অর্থ উপার্জন করা হয় না। এটি কঠোরভাবে গুরু মহারাজের নীতিবিরুদ্ধ ছিল। কিন্তু বাস্তব এটাই যে বর্তমান মূল্যবৃদ্ধি ও ব্যায়বাহুল্যের কারণে আশ্রমবাসীদের জীবনযাপন, প্রতিষ্ঠিত সকল দেবদেবীদের নিত্যসেবা ও আশ্রম রক্ষণাবেক্ষণের জন্য ন্যুনতম অর্থের যে প্রয়োজনীয়তা আছে তা অনস্বীকার্য।\r\nপুরাণাদি শাস্ত্রে উল্লেখ আছে \'দান\' ধর্মাচারণের একটি অঙ্গ, তাই শ্রীরামকৃষ্ণ ধর্মচক্রের মুষ্টিমেয় কিছু দীক্ষিত সন্তান এবং অন্যান্য ধর্মপিপাসু ভক্তগণের উপর দায়িত্ব বর্তায় -- ন্যুনতম, স্বৈচ্ছিক অর্থদানের মাধ্যমে হিন্দুধর্মের ধ্বজাধারী এই প্রতিষ্ঠানের অস্তিত্ব রক্ষা করার। তাই সকলের কাছে অনুরোধ এই যে, আপনারা নির্দ্বিধায় ও স্বেচ্ছায় আপনাদের সামর্থ্য অনুযায়ী এই প্রতিষ্ঠানের উন্নতিকল্পে ও আশ্রমবাসীদের জীবনধারণের জন্য প্রয়োজনীয় আর্থিক অনুদান করুন। আপনারা Money Transfer এর মাধ্যমে নিম্নোক্ত বিবরণ অনুযায়ী অর্থদান করতে পারেন.</br>\r\n<b>Sri Ramkrishna Dharma Chakra</b></br>\r\n<b>SBI A/C - 11310916735 </b></br>\r\n<b>SBIN0004640 (IFSC)</b></br>', '1690794217-7773.png', 'সুস্বাগতম্ শ্রীরামকৃষ্ণ ধর্মচক্র', '<strong>২১১এ, গিরিশ ঘোষ রোড </strong><strong>পো : বেলুড়মঠ, হাওড়া, পিন-৭১১২০২ ফোন-৯৮৩০০৪৩৫৯৬<br /></strong><br />শ্রীরামকৃষ্ণ ধর্মচক্র ভারতবর্ষের আধ্যাত্মিক আকাশে এক উজ্জ্বল নক্ষত্র। এই ধর্ম প্রতিষ্ঠান ব্রহ্মলীন স্বামী জগদীশ্বরানন্দ মহারাজের ঐকান্তিক প্রচেষ্টায় ১৯৫৫ খৃষ্টাব্দ(১৩৬২ সালের) ফাল্গুন মাসে প্রতিষ্ঠা হয়।<br /><br />স্বামী জগদীশ্বরানন্দ মহারাজের মহাপ্রয়াণের পর তাঁর সুযোগ্যা শিষ্যা প্রব্রাজিকা মহাগৌরী সরস্বতী দক্ষ হাতে এই প্রতিষ্ঠানের সমস্ত গুরুভাব বহন করেন। প্রব্রাজিকা মহাগৌরী সরস্বতীর মহাপ্রয়াণের পর তাঁর মনোনীত গুরুভাই স্বামী বিশুদ্ধানন্দ সরস্বতীজী মহারাজ প্রতিষ্ঠানের আচার্য্য রূপে গুরু ভার গ্রহণ করেন।<br /><br />শ্রীরামকৃষ্ণ ধর্মচক্র আশ্রমে ১৯৬১ খৃষ্টাব্দে পূর্বভারতে প্রথম কল্কি মন্দির প্রতিষ্ঠা হয়। দৈবনির্দেশে সর্বপ্রথম ভগবান বিষ্ণুর শেষ অবতার কল্কি দেবের আগমন বার্তা প্রচারিত হয়। স্বামী জগদীশ্বরানন্দ মহারাজ দ্বারা অনূদিত প্রায় ১০০খানা ধর্মগ্রন্থের বিপুল সম্ভার। এই গ্রন্থ দ্বারা ধর্মপ্রাণ নরনারীগণের ধর্মচেতনাজাগরণ ধর্মজ্ঞানকে পরিপুষ্ট করার কাজে সদা ব্ৰতী এই প্রতিষ্ঠান। এখানে দীক্ষার্থীগণের প্রকৃতিগত ইষ্টনির্বাচন ও মন্ত্রযোগে সাধন অনুশীলনের দ্বারা সাধনে উন্নতির পথে এগিয়ে নিয়ে যাওয়ার সহায়তা করা হয়। এছাড়া সারা বছর ব্যাপী বেশ কিছু উন্নয়ন মূলক কর্মকান্ডের সঙ্গে যুক্ত। হিন্দু ধর্ম বিশ্বাসী সামাজিক ও আধ্যাত্মিক মিলন ক্ষেত্রের আর এক নাম শ্রীরামকৃষ্ণ ধর্মচক্র।<br /><span class=\"Y2IQFc\" lang=\"bn\">আশ্রমের দুটি প্রাঙ্গণ রয়েছে, একটি \"চেতনা মঠ\" এবং অন্যটি \"জ্যোতিধাম\" নামে পরিচিত। চেতনা মঠ বেলুড়ের প্রধান আশ্রম প্রাঙ্গণে এবং জ্যোতিধাম হাওড়ার অঙ্কুরহাটি চেকপোস্টের কাছে অবস্থিত। উভয়ই তাদের নিজস্ব সামাজিক এবং আধ্যাত্মিক কার্যক্রম পরিচালনা করে।</span><br /><br />\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"> </pre>', '<p><strong>\" ওঁ নমো ব্রহ্মাদিভ্যো ব্রহ্মবিদ্যা সম্প্রদায় কতৃভ্যো বংশঋষিভ্যো মহদ্ভ্যো নমো গুরুভ্যোঃ। \"</strong><br /><em>ব্রহ্মবিদ্যা সম্প্রদায়ের আদিগুরু ভগবান নারায়ণ ব্রহ্মাজিকে সর্ব প্রথম এই ব্রহ্মবিদ্যার উপদেশ করেছিলেন। সুতরাং তিনি এই ব্রহ্মবিদ্যা সম্প্রদায়ে দ্বিতীয় গুরু তারপর ব্রহ্মার ১৪ জন মানসপুত্রের মধ্যে বশিষ্ঠাদিঋষিগণ আছেন। </em><br /><strong>\" কৃতে বিশ্বগুরুব্রহ্মা ত্রেতায়া ঋষিসত্তমঃ (বশিষ্ঠ)</strong><br /><strong>দ্বাপরে ব্যাসএবস্যাকলাবত্র ভবাম্যহম ৷৷ \"</strong><br /><em>অর্থাৎ সত্যযুগে ব্রহ্মা ছিলেন জগদগুরু ; ত্রেতাতে ঋষি বশিষ্ঠ ; দ্বাপরে কৃষ্ণ দ্বৈপায়নে ব্যাস এবং কলিতে আদি শঙ্করাচার্য্য জগদগুরু রুপে ছিলেন। এই সনাতন পরম্পরাই আমাদের গুরু পরম্পরা। </em></p>', '<p>Sri Ramakrishna Dharmachakra is a brilliant star in the spiritual heritage of India. This religious institution was established in the month of February in the year 1955 through the sincere efforts of Brahmalin Swami Jagadishwarananda Maharaj.<br />After Swami Jagadishwarananda Maharaj’s passing, his disciple, Prabrajika Mahagouri Saraswati, took over as the head of the Institution and enhanced its reach further among disciples and devotees through her spiritual work and effective administration. After Prabrajika Mahagouri Saraswati his nominee and Gurubhai Swami Bisuddhananda Saraswatiji, has taken over as the principal monk ( Addhakshya )  of the organization.<br />The first Kalki Temple was established in Eastern India in the year 1955 at the Sri Ramakrishna Dharmachakra Ashram. It is said that Swami Jagadishwarananda Saraswati received spiritual guidance to create this temple from Sri Kalki Dev, the last incarnation of Lord Vishnu, and he spread the message and grace of the deity all over India.<br />Swami Jagadishwarananda Maharaj was a great spiritual author and has over 100 books authored by him. It is through these books that spirituality is nurtured and disseminated to his devotees all over India. Here the practitioners and devotees are helped to move forward in their spiritual pursuits through meditation and mantras.<br />In addition, several developmental activities are also taken up around the year, by the Ashram, to alleviate the problems of the Society and the environment, in addition to many religious festivals where all are invited irrespective of religion, caste or creed. The institution stands out as a true torchbearer of the Sanatan Dharma for the social and spiritual union of people.</p>\r\n<p> </p>', 'The founder of Sri Ramakrishna Dharmachakra, Brahmalin Swami JagadishwaraNanda Maharaj was an all-powerful monk. He established this organization with the financial support of a very few kind devotees. Following the principles and ideology of the Guru Maharaj, the monks of this ashram do not conduct any rituals in exchange of money. It was strictly against the principles of Guru Maharaj to conduct any ritual specifically for gains and the essence of the teachings to all has been to lead a simple and honest life which would lead to mental resilience and faith, so as to be able to overcome hurdles and hardships in life. \r\n</br>\r\n\r\nHowever the operations of the Ashram needs finances to be able to conduct the daily Pujas and also for the livelihood of the monks. Many of the devotees have been donating towards this cause. The publishing and book selling feeds each other since most of the books being sold are very inexpensive so as to cover costs only and is the major route of spiritual preaching for the Ashram.\r\n</br>\r\nTherefore, it\'s a request to all to donate freely and voluntarily, to promote this institution and the cause of the monastery. \r\nYou can make payments to the following account :  </br>\r\n<b>Sri Ramkrishna Dharma Chakra</b></br>\r\n<b>SBI A/C - 11310916735 </b></br>\r\n<b>SBIN0004640 (IFSC)</b></br>', 'Welcome Sri Ramakrishna DharmaChakra', '<strong>211A, Girish Ghosh Road </strong><strong>Po: Belurmath, Howrah, Pin-711202 Phone-9830043596<br /></strong><br />Sri Ramakrishna Dharmachakra is a brilliant star in the spiritual heritage of India. This religious institution was established in the month of February in the year 1955 through the sincere efforts of Brahmalin Swami Jagadishwarananda Maharaj.<br /><br />After Swami Jagadishwarananda Maharaj’s passing, his disciple, Prabrajika Mahagouri Saraswati, took over as the head of the Institution and enhanced its reach further among disciples and devotees through her spiritual work and effective administration. After Prabrajika Mahagouri Saraswati his nominee and Gurubhai Swami, Bisuddhananda Saraswatiji, has taken over as the principal monk ( Addhakshya ) of the organization.<br /><br />The first Kalki Temple was established in the Eastern India in the year 1955 at the Sri Ramakrishna Dharmachakra Ashram. It is said that Swami Jagadishwarananda Saraswati received spiritual guidance, to create this temple, from Sri Kalki Dev, the last incarnation of Lord Vishnu, himself and spread the message and grace of the deity all over India. <br /><br />Swami Jagadishwarananda Maharaj was a great spiritual author and has over 100 books authored by him. It is through these books that spirituality is nurtured and disseminated to his devotees all over India. Here the practitioners and devotees are helped to move forward in their spiritual pursuits through meditation and mantras. <br /><br />In addition, several developmental activities are also taken up around the year, by the Ashram, to alleviate the problems of the Society and the environment, in addition to many religious festivals where all are invited irrespective of religion, caste or creed. The institution stands out as a true torchbearer of the Sanatan Dharma for the social and spiritual union of people.<br /><br />The ashram has two premises, one known as “Chetana Math“ and the other as “Jyotidham”. Chetana Math is situated at the Main Ashram premise at Belur and Jyotidham is situated near Ankurhati Checkpost in Howrah. Both conduct their own social and spiritual activities.<br />\r\n<p> </p>', '<p><strong>\"O namobrahmadivyo brahmavidya sampada katribhyo vansho rishibhyo mahadhav namo gurubho\"</strong><br />Lord Narayana first gave Brahmaji the knowledge of Brahmavidya, So Narayana is the founder of the Brahmavidya sect, Brahmaji is the second Guru in this Brahmavidya sect and among his 14 Manas-putras of there was Vasishtya.<br /><strong>\"Kritya GuruBrahma Tretaya Rishisattam (Vasishtha) Dvapare vyasaabsaaklavatra bhamyaham \"</strong><br />That is, Brahma was the Jagadguru in the Satya Yuga; Sage Vasishta in Treta Juga; In the Dapar Juga it was Krishna , Vyasa in Dvaipaya and Adi Shankaracharya the Jagadguru in this Kali Juga. This tradition and succession is our guru parampara.</p>', '<ul>\n<li>Narayanang Padmavabang Vasishtha Saktincha Tatputra Parasrancha Vyasong Shukang Gaur Padang Mahantang Govinda Yogidramathasaya Sishyam Sri Shankaracharya Mathasaya Padmapadancha Hastamalkong Ch Sishyam ।।</li>\n<li>Tandrotakang Bartikkarmanyan Asmad Guru Santat Matohsmi ।।</li>\n<li>Sruti Smritipurananamalayang Karunalayong ।।</li>\n<li>Namami Bhagwatpadang Shankarang Lokshankaram ।।</li>\n</ul>\n<div class=\"signTxt\">- Iti Guruparampara Strotram</div>', NULL, '2023-08-09 12:40:02', '<ul>\n  <li>নারায়ণং পদ্মভবং বশিষ্ঠ শক্তিঞ্চ তৎপুত্র পরাশরঞ্চ ব্যাসং শুকং গৌর পাদং মহান্তং গোবিন্দ যোগিদ্রমথাস্য শিষ্যম্ শ্রী শঙ্করাচার্য্য মথাস্য পদ্মপাদঞ্চ হস্তামলকং চ শিষ্যম্।।</li>\n  <li>তন্দ্রোটকং বার্তিককারমন্যান অস্মদ গুরুন সন্তত মাতোহস্মি।শ্রুতি স্মৃতিপুরাণানামালয়ং করুণালয়ং।নমামি ভগবৎপাদং শঙ্করং লোকশঙ্করম্।।</li>\n  <li>সূত্রভাস্যকৃতৌ বন্দে ভগবন্তৌ পুনঃ পুনঃ ঈশ্বরো গুরুরাত্মেতি মূর্ত্তিভেদা বিভাগিনে ব্যোমবৎ ব্যাপ্ত দেহায় দক্ষিণামূর্তয়ে নমঃ।।</li>\n</ul>\n<div class=\"signTxt\">- ইতি গুরুপরম্পরা স্ত্রোত্রম্ ।</div>', 'https://www.facebook.com/', 'https://www.youtube.com/', NULL, '<strong>শ্রী রামকৃষ্ণ ধর্ম চক্র</strong><br />২১১ এ, গিরিশ ঘোষ রোড, বেলুড়<br />পিও- বেলুড়মঠ,<br />হাওড়া -৭১১১২0২', 'Sri Ramakrishna Dharmachakra<br />211 A, Girish Ghosh Road,<br />Belur, P.O.- Belurmath,<br />Howrah -7111202', 'ramkrishnadharmachakra@gmail.com', '+913326548075', '+919830043596', '+919804473647', '+৯১৩৩২৬৫৪৮0৭৫', '+৯১৯৮৩00৪৩৫৯৬', '+৯১৯৮0৪৪৭৩৬৪৭,', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

DROP TABLE IF EXISTS `administration`;
CREATE TABLE IF NOT EXISTS `administration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `name_english` text,
  `responsibility` varchar(255) DEFAULT NULL,
  `responsibility_english` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `name`, `name_english`, `responsibility`, `responsibility_english`, `created_at`, `updated_at`) VALUES
(1, 'স্বামী বিশুদ্ধানন্দ সরস্বতী মহারাজ', 'Swami Bisuddhananda Saraswati', 'প্রেসিডেন্ট', 'President', '2022-12-14 06:01:54', '2023-04-03 05:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'info@admin.com', NULL, '$2y$10$QeU3NzFHdq52TPBtN4QkteHZH3u28u0zJ7qK5AF4/Ht.mB9hsvK4a', 'TJIXymMzBkgMYzM4fzJSbFvxtolThJFLsNsbvQGY6ppssncWYtigeeAjOpgN', '2022-06-16 08:08:26', '2022-06-16 08:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_image`, `status`, `created_at`, `updated_at`) VALUES
(6, '1673503018-6530.jpg', 'I', '2023-01-12 05:56:58', '2023-05-31 05:16:21'),
(7, '1673503032-9001.jpg', 'I', '2023-01-12 05:57:12', '2023-05-31 05:16:34'),
(8, '1673503040-2918.jpg', 'I', '2023-01-12 05:57:20', '2023-05-31 05:17:21'),
(21, '1685510051-1737.jpg', 'A', '2023-05-31 05:14:11', '2023-05-31 05:14:11'),
(22, '1685510061-2108.jpg', 'A', '2023-05-31 05:14:21', '2023-05-31 05:14:21'),
(23, '1685510071-3950.jpg', 'A', '2023-05-31 05:14:31', '2023-05-31 05:14:31'),
(24, '1685510082-7524.jpg', 'A', '2023-05-31 05:14:42', '2023-05-31 05:14:42'),
(25, '1685510094-4624.jpg', 'A', '2023-05-31 05:14:54', '2023-05-31 05:14:54'),
(26, '1685510112-9052.jpg', 'A', '2023-05-31 05:15:12', '2023-05-31 05:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` text,
  `message` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `mobile`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:31:42', '2022-12-07 10:31:42'),
(2, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:34:10', '2022-12-07 10:34:10'),
(3, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:34:34', '2022-12-07 10:34:34'),
(4, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:35:34', '2022-12-07 10:35:34'),
(5, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:36:38', '2022-12-07 10:36:38'),
(6, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:37:17', '2022-12-07 10:37:17'),
(7, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:37:54', '2022-12-07 10:37:54'),
(8, 'sayab', '8617260309', 'dev@gmail.com', 'test', 'test', '2022-12-07 10:38:47', '2022-12-07 10:38:47'),
(9, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2022-12-08 05:23:15', '2022-12-08 05:23:15'),
(10, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2022-12-12 12:08:03', '2022-12-12 12:08:03'),
(11, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2022-12-28 06:07:14', '2022-12-28 06:07:14'),
(12, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2022-12-28 06:40:55', '2022-12-28 06:40:55'),
(13, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-01-09 16:44:21', '2023-01-09 16:44:21'),
(14, 'hey', '8617260302', 'developersayan2001@gmail.com', 'hey', 'Hey there psdge', '2023-01-11 06:29:06', '2023-01-11 06:29:06'),
(15, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-01-11 11:00:08', '2023-01-11 11:00:08'),
(16, 'asd', '1234567890', 'info@admin.com', 'asd', 'asd', '2023-01-11 12:52:01', '2023-01-11 12:52:01'),
(17, 'hey', '8617260302', 'developersayan2001@gmail.com', 'hey', 'Hey there psdge', '2023-01-11 12:55:28', '2023-01-11 12:55:28'),
(18, 'a', '1234567890', 'info@admin.com', 'a', 'a', '2023-01-12 05:40:27', '2023-01-12 05:40:27'),
(19, 'test', '1234567890', 'test@gmail.com', 'test', 'test', '2023-02-02 07:39:41', '2023-02-02 07:39:41'),
(20, 'test', '1234567890', 'test@gmail.com', 'test', 'test', '2023-02-02 07:39:41', '2023-02-02 07:39:41'),
(21, 'test', '1234567890', 'test@gmail.com', 'test', 'test message', '2023-02-02 08:12:48', '2023-02-02 08:12:48'),
(22, 'test', '1234567890', 'test@gmail.com', 'test', 'test message', '2023-02-02 08:12:52', '2023-02-02 08:12:52'),
(23, 'v', '1234567890', 'v@12', 'w', 'w', '2023-02-22 05:27:44', '2023-02-22 05:27:44'),
(24, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-03-20 05:53:42', '2023-03-20 05:53:42'),
(25, 'as', '1234567890', 'test@gmail.com', 'a', 'test', '2023-04-13 09:02:57', '2023-04-13 09:02:57'),
(26, 'as', '1234567890', 'test@gmail.com', 'a', 'test', '2023-04-13 09:02:59', '2023-04-13 09:02:59'),
(27, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-04-14 05:25:11', '2023-04-14 05:25:11'),
(28, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-04-14 05:38:09', '2023-04-14 05:38:09'),
(29, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-04-14 05:40:33', '2023-04-14 05:40:33'),
(30, 'aa', '1234567890', 'test@gmail.com', 'a', 'test', '2023-04-17 08:42:00', '2023-04-17 08:42:00'),
(31, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:10', '2023-08-10 13:08:10'),
(32, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:11', '2023-08-10 13:08:11'),
(33, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:14', '2023-08-10 13:08:14'),
(34, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:33', '2023-08-10 13:08:33'),
(35, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:38', '2023-08-10 13:08:38'),
(36, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:38', '2023-08-10 13:08:38'),
(37, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:39', '2023-08-10 13:08:39'),
(38, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:39', '2023-08-10 13:08:39'),
(39, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:40', '2023-08-10 13:08:40'),
(40, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:40', '2023-08-10 13:08:40'),
(41, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:40', '2023-08-10 13:08:40'),
(42, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:40', '2023-08-10 13:08:40'),
(43, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:40', '2023-08-10 13:08:40'),
(44, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:40', '2023-08-10 13:08:40'),
(45, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:40', '2023-08-10 13:08:40'),
(46, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:41', '2023-08-10 13:08:41'),
(47, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:41', '2023-08-10 13:08:41'),
(48, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:41', '2023-08-10 13:08:41'),
(49, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:41', '2023-08-10 13:08:41'),
(50, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:41', '2023-08-10 13:08:41'),
(51, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:42', '2023-08-10 13:08:42'),
(52, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:42', '2023-08-10 13:08:42'),
(53, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:42', '2023-08-10 13:08:42'),
(54, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:42', '2023-08-10 13:08:42'),
(55, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:43', '2023-08-10 13:08:43'),
(56, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:43', '2023-08-10 13:08:43'),
(57, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:43', '2023-08-10 13:08:43'),
(58, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:43', '2023-08-10 13:08:43'),
(59, 'Arpita Bairagi', '+918910691787', 'arpita.beas@gmail.com', 'Arpita Bairagi', 'test', '2023-08-10 13:08:50', '2023-08-10 13:08:50'),
(60, 'aa', '1234567890', 'test@g.c', '11', 'test', '2023-08-11 04:54:43', '2023-08-11 04:54:43'),
(61, 'aa', '1234567890', 'test@g.c', '11', 'test', '2023-08-11 04:54:44', '2023-08-11 04:54:44'),
(62, 'aa', '123456789', 'test@g.c', '12', 'test', '2023-08-11 04:55:21', '2023-08-11 04:55:21'),
(63, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing purpose beas', '2023-08-11 05:54:43', '2023-08-11 05:54:43'),
(64, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing', '2023-08-11 05:58:06', '2023-08-11 05:58:06'),
(65, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing', '2023-08-11 05:59:06', '2023-08-11 05:59:06'),
(66, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'data saved!', '2023-08-11 06:03:49', '2023-08-11 06:03:49'),
(67, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing!', '2023-08-11 06:04:05', '2023-08-11 06:04:05'),
(68, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing', '2023-08-11 06:11:02', '2023-08-11 06:11:02'),
(69, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing', '2023-08-11 06:11:47', '2023-08-11 06:11:47'),
(70, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'hello', '2023-08-11 06:13:43', '2023-08-11 06:13:43'),
(71, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing', '2023-08-11 06:14:41', '2023-08-11 06:14:41'),
(72, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing', '2023-08-11 06:19:34', '2023-08-11 06:19:34'),
(73, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'testing', 'testing', '2023-08-11 06:23:22', '2023-08-11 06:23:22'),
(74, 'Pratik Saha', '8017460145', 'pratik.saha14@gmail.com', 'xyz demo', 'testing!', '2023-08-11 06:52:45', '2023-08-11 06:52:45'),
(75, 'aa', '1234567890', 'a@f.com', '11', 'test', '2023-08-11 06:53:26', '2023-08-11 06:53:26'),
(76, 'aa', '1234567890', 'a@f.com', '11', '33', '2023-08-11 06:54:19', '2023-08-11 06:54:19'),
(77, 'aa', '1234567890', 'test@t.c', 'q', 't', '2023-08-11 07:03:32', '2023-08-11 07:03:32'),
(78, 'aa', '1234567890', 'test@gmail.com', 'a', 'aa', '2023-08-11 08:36:15', '2023-08-11 08:36:15'),
(79, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-08-11 09:23:09', '2023-08-11 09:23:09'),
(80, 'sayan', '8617260309', 'dev@gmail.com', 'subject', 'test message', '2023-08-11 09:28:42', '2023-08-11 09:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'A',
  `show_at_home` varchar(255) NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `file`, `type`, `status`, `show_at_home`, `created_at`, `updated_at`) VALUES
(25, 'image', '1673334636-7463.jpg', 'I', 'I', 'Y', '2023-01-10 07:10:36', '2023-05-31 06:37:07'),
(37, 'Image', '1673334978-5906.jpg', 'I', 'I', 'Y', '2023-01-10 07:16:18', '2023-05-31 06:36:54'),
(42, 'Image', '1673335042-5654.jpg', 'I', 'I', 'Y', '2023-01-10 07:17:22', '2023-05-31 06:36:36'),
(62, 'Image', '1673335771-7512.jpg', 'I', 'I', 'Y', '2023-01-10 07:29:31', '2023-05-31 06:36:23'),
(63, 'Image', '1673335783-7971.jpg', 'I', 'I', 'Y', '2023-01-10 07:29:43', '2023-05-31 06:36:11'),
(87, 'On Sri Sri Gouri Ma\'s Birthday', 'https://www.youtube.com/shorts/mDl6R7Suj-Q', 'Y', 'A', 'N', '2023-01-13 11:48:48', '2023-01-13 11:52:13'),
(88, 'Pronam Gouri Maa', '1673864491-3989.png', 'I', 'I', 'Y', '2023-01-16 10:21:31', '2023-05-31 06:35:57'),
(89, 'Image', '1674197343-1027.png', 'I', 'I', 'N', '2023-01-20 06:49:03', '2023-05-31 06:35:48'),
(90, 'Image', '1674197359-2532.png', 'I', 'I', 'N', '2023-01-20 06:49:19', '2023-05-31 06:35:40'),
(91, 'Image', '1674197374-7456.jpg', 'I', 'I', 'N', '2023-01-20 06:49:34', '2023-05-31 06:34:07'),
(92, 'Image', '1674197392-7441.jpg', 'I', 'I', 'N', '2023-01-20 06:49:52', '2023-05-31 06:34:19'),
(93, 'Image', '1674197417-6902.jpg', 'I', 'I', 'N', '2023-01-20 06:50:17', '2023-05-31 06:33:59'),
(94, 'Image', '1674197445-3256.jpg', 'I', 'I', 'N', '2023-01-20 06:50:45', '2023-05-31 06:33:36'),
(95, 'Image', '1674197467-9098.jpg', 'I', 'I', 'N', '2023-01-20 06:51:07', '2023-05-31 06:33:24'),
(96, 'Image', '1674197532-5867.png', 'I', 'I', 'N', '2023-01-20 06:52:12', '2023-05-31 06:33:11'),
(97, 'Image', '1674197550-3688.png', 'I', 'I', 'N', '2023-01-20 06:52:30', '2023-05-31 06:32:58'),
(98, 'Image', '1674197566-3363.jpg', 'I', 'I', 'N', '2023-01-20 06:52:46', '2023-05-31 06:32:48'),
(99, 'Image', '1674197616-8924.jpg', 'I', 'I', 'N', '2023-01-20 06:53:36', '2023-05-31 06:32:39'),
(100, 'Image', '1674197631-4455.jpg', 'I', 'I', 'N', '2023-01-20 06:53:51', '2023-05-31 06:32:32'),
(101, 'Image', '1674197649-2544.jpg', 'I', 'I', 'N', '2023-01-20 06:54:09', '2023-05-31 06:29:54'),
(102, 'Image', '1674197669-8683.jpg', 'I', 'I', 'N', '2023-01-20 06:54:29', '2023-05-31 06:30:05'),
(103, 'Image', '1674198352-6053.png', 'I', 'I', 'N', '2023-01-20 07:05:52', '2023-05-31 06:30:17'),
(104, 'Image', '1674198367-4866.png', 'I', 'I', 'N', '2023-01-20 07:06:07', '2023-05-31 06:30:55'),
(105, 'Image', '1674198387-1794.jpg', 'I', 'I', 'N', '2023-01-20 07:06:27', '2023-05-31 06:31:17'),
(106, 'Image', '1674198403-3317.jpg', 'I', 'I', 'N', '2023-01-20 07:06:43', '2023-05-31 06:29:42'),
(107, 'Image', '1674198419-4370.jpg', 'I', 'I', 'N', '2023-01-20 07:06:59', '2023-05-31 06:29:30'),
(108, 'Image', '1674198434-8936.jpg', 'I', 'I', 'N', '2023-01-20 07:07:14', '2023-05-31 06:29:21'),
(109, 'Image', '1674198493-5286.png', 'I', 'I', 'N', '2023-01-20 07:08:13', '2023-05-31 06:29:10'),
(110, 'Image', '1685525084-9830.png', 'I', 'I', 'Y', '2023-01-20 07:09:06', '2023-05-31 09:52:44'),
(111, 'Image', '1685514478-9596.jpg', 'I', 'A', 'N', '2023-01-20 07:09:25', '2023-05-31 06:27:58'),
(112, 'Image', '1685514441-1951.jpg', 'I', 'A', 'N', '2023-01-20 07:09:40', '2023-05-31 06:27:21'),
(113, 'Image', '1685514407-5234.jpg', 'I', 'A', 'N', '2023-01-20 07:09:55', '2023-05-31 06:26:47'),
(114, 'Image', '1685514373-4120.jpg', 'I', 'A', 'N', '2023-01-20 07:10:12', '2023-05-31 06:26:13'),
(116, 'Image', '1685514346-1504.jpg', 'I', 'A', 'N', '2023-01-20 07:22:55', '2023-05-31 06:25:46'),
(117, 'Image', '1685514302-7256.jpg', 'I', 'A', 'N', '2023-01-20 07:23:10', '2023-05-31 06:25:02'),
(118, 'Image', '1685514248-8314.jpg', 'I', 'A', 'N', '2023-01-20 07:23:24', '2023-05-31 06:24:08'),
(119, 'Image', '1685514223-4512.jpg', 'I', 'A', 'N', '2023-01-20 07:23:39', '2023-05-31 06:23:43'),
(120, 'Image', '1685514179-1706.jpg', 'I', 'A', 'N', '2023-01-20 07:23:53', '2023-05-31 06:22:59'),
(122, 'Image', '1685514156-8024.jpg', 'I', 'A', 'N', '2023-01-20 07:26:15', '2023-05-31 06:22:36'),
(123, 'Image', '1685514111-5134.jpg', 'I', 'A', 'N', '2023-01-20 07:26:27', '2023-05-31 06:21:51'),
(124, 'Image', '1685514028-1514.jpg', 'I', 'A', 'N', '2023-01-20 07:26:40', '2023-05-31 06:20:28'),
(125, 'Image', '1685513985-7626.jpg', 'I', 'A', 'N', '2023-01-20 07:26:57', '2023-05-31 06:19:45'),
(126, 'Image', '1685513906-5818.jpg', 'I', 'A', 'N', '2023-01-20 07:27:13', '2023-05-31 06:18:26'),
(127, 'Image', '1685513879-3947.jpg', 'I', 'A', 'N', '2023-01-20 07:27:27', '2023-05-31 06:17:59'),
(128, 'Image', '1685513858-2293.jpg', 'I', 'A', 'N', '2023-01-20 07:28:59', '2023-05-31 06:17:38'),
(129, 'Image', '1685513836-7515.jpg', 'I', 'A', 'N', '2023-01-20 07:29:12', '2023-05-31 06:17:16'),
(130, 'Image', '1685513811-1518.jpg', 'I', 'A', 'N', '2023-01-20 07:29:25', '2023-05-31 06:16:51'),
(131, 'Image', '1685513783-4838.jpg', 'I', 'A', 'N', '2023-01-20 07:29:38', '2023-05-31 06:16:23'),
(132, 'Image', '1685513752-4336.jpg', 'I', 'A', 'N', '2023-01-20 07:29:52', '2023-05-31 06:15:52'),
(133, 'Image', '1685513661-7595.jpg', 'I', 'A', 'N', '2023-01-20 07:30:10', '2023-05-31 06:14:21'),
(135, 'Image', '1685513569-8568.jpg', 'I', 'A', 'N', '2023-01-20 07:31:35', '2023-05-31 06:12:49'),
(136, 'Image', '1685513540-9931.jpg', 'I', 'A', 'N', '2023-01-20 07:31:51', '2023-05-31 06:12:20'),
(137, 'Image', '1685513507-2256.jpg', 'I', 'A', 'N', '2023-01-20 07:32:06', '2023-05-31 06:11:47'),
(138, 'Image', '1685513474-9252.jpg', 'I', 'A', 'N', '2023-01-20 07:32:26', '2023-05-31 06:11:14'),
(139, 'Image', '1685513453-3770.jpg', 'I', 'A', 'Y', '2023-01-20 07:32:39', '2023-05-31 10:11:12'),
(140, 'Image', '1685513433-4965.jpg', 'I', 'A', 'N', '2023-01-20 07:33:09', '2023-05-31 06:10:33'),
(141, 'Image', '1685513396-5819.jpg', 'I', 'A', 'N', '2023-01-20 07:33:38', '2023-05-31 06:09:56'),
(142, 'Image', '1685513362-1396.jpg', 'I', 'A', 'N', '2023-01-20 07:34:07', '2023-05-31 06:09:22'),
(143, 'Image', '1685513294-9528.jpg', 'I', 'A', 'N', '2023-01-20 07:34:19', '2023-05-31 06:08:14'),
(144, 'Image', '1685513221-2841.jpg', 'I', 'A', 'N', '2023-01-20 07:35:06', '2023-05-31 06:07:02'),
(145, 'Image', '1685513198-7826.jpg', 'I', 'A', 'N', '2023-01-20 07:36:06', '2023-05-31 06:06:38'),
(146, 'Image', '1685513176-7349.jpg', 'I', 'A', 'Y', '2023-01-20 07:36:20', '2023-05-31 10:10:51'),
(147, 'Image', '1685513148-8223.jpg', 'I', 'A', 'N', '2023-01-20 07:38:05', '2023-05-31 06:05:48'),
(148, 'Image', '1685513126-8955.jpg', 'I', 'A', 'N', '2023-01-20 07:40:03', '2023-05-31 06:05:26'),
(149, 'Image', '1685513102-9831.jpg', 'I', 'A', 'N', '2023-01-20 07:40:23', '2023-05-31 06:05:03'),
(150, 'Image', '1685513078-4528.jpg', 'I', 'A', 'N', '2023-01-20 07:40:38', '2023-05-31 06:04:38'),
(151, 'Image', '1685513050-1644.jpg', 'I', 'A', 'N', '2023-01-20 07:40:51', '2023-05-31 06:04:10'),
(152, 'Image', '1685513028-9240.jpg', 'I', 'A', 'N', '2023-01-20 07:41:07', '2023-05-31 06:03:48'),
(153, 'Image', '1685512986-6672.jpg', 'I', 'A', 'Y', '2023-01-20 07:42:01', '2023-05-31 10:16:27'),
(154, 'Image', '1685512493-1248.jpg', 'I', 'A', 'N', '2023-01-20 07:42:39', '2023-05-31 05:54:53'),
(155, 'Image', '1685512468-1940.jpg', 'I', 'A', 'Y', '2023-01-20 07:42:54', '2023-05-31 10:13:18'),
(156, 'Image', '1685512425-6030.png', 'I', 'A', 'N', '2023-01-20 07:43:07', '2023-05-31 05:53:45'),
(157, 'Image', '1685512404-6819.png', 'I', 'A', 'N', '2023-01-20 07:43:21', '2023-05-31 05:53:24'),
(158, 'Image', '1685512379-2487.png', 'I', 'A', 'N', '2023-01-20 07:43:36', '2023-05-31 05:52:59'),
(159, 'Image', '1685512348-9228.png', 'I', 'A', 'N', '2023-01-20 07:43:51', '2023-05-31 05:52:28'),
(160, 'Image', '1685512325-8403.png', 'I', 'A', 'N', '2023-01-20 07:44:29', '2023-05-31 05:52:05'),
(161, 'Image', '1685512303-9462.png', 'I', 'A', 'N', '2023-01-20 07:44:41', '2023-05-31 05:51:43'),
(162, 'Image', '1685512272-5051.png', 'I', 'A', 'N', '2023-01-20 07:44:55', '2023-05-31 05:51:12'),
(163, 'Image', '1685512248-3714.png', 'I', 'A', 'N', '2023-01-20 07:45:09', '2023-05-31 05:50:48'),
(164, 'Image', '1685512142-8721.png', 'I', 'A', 'N', '2023-01-20 07:45:23', '2023-05-31 05:49:02'),
(165, 'Image', '1685512110-3313.png', 'I', 'A', 'N', '2023-01-20 09:27:59', '2023-05-31 05:48:30'),
(166, 'Image', '1685512087-8934.png', 'I', 'A', 'Y', '2023-01-20 09:28:16', '2023-05-31 10:15:31'),
(167, 'Image', '1685512032-4337.png', 'I', 'A', 'N', '2023-01-20 09:28:31', '2023-05-31 05:47:12'),
(168, 'Image', '1685512006-1026.png', 'I', 'A', 'N', '2023-01-20 09:29:56', '2023-05-31 05:46:46'),
(169, 'Image', '1685511969-3307.png', 'I', 'A', 'N', '2023-01-20 09:30:10', '2023-05-31 05:46:09'),
(170, 'Image', '1685511940-5930.png', 'I', 'A', 'N', '2023-01-20 09:30:29', '2023-05-31 10:13:45'),
(171, 'Image', '1685511909-1280.png', 'I', 'A', 'N', '2023-01-20 09:30:49', '2023-05-31 05:45:09'),
(172, 'Image', '1685511884-8053.png', 'I', 'A', 'N', '2023-01-20 09:31:04', '2023-05-31 05:44:44'),
(173, 'Image', '1685511832-2562.png', 'I', 'A', 'N', '2023-01-20 09:34:20', '2023-05-31 05:43:52'),
(174, 'Image', '1685511780-1609.png', 'I', 'A', 'N', '2023-01-20 09:34:31', '2023-05-31 10:14:36'),
(175, 'Image', '1685511761-3708.png', 'I', 'A', 'Y', '2023-01-20 09:34:46', '2023-05-31 10:07:32'),
(176, 'Image', '1685511720-4609.png', 'I', 'A', 'N', '2023-01-20 09:34:57', '2023-05-31 05:42:00'),
(177, 'Image', '1685511644-8569.png', 'I', 'A', 'N', '2023-01-20 09:35:13', '2023-05-31 05:40:44'),
(178, 'Image', '1685511621-7701.png', 'I', 'A', 'Y', '2023-01-20 09:35:24', '2023-05-31 10:07:22'),
(179, 'Image', '1685511241-2260.png', 'I', 'A', 'Y', '2023-01-20 09:35:36', '2023-05-31 10:07:03'),
(180, 'Image', '1685511221-2354.png', 'I', 'A', 'N', '2023-01-20 09:35:54', '2023-05-31 05:33:41'),
(181, 'Image', '1685511193-1161.png', 'I', 'A', 'N', '2023-01-20 09:36:06', '2023-05-31 05:33:13'),
(182, 'Image', '1685511147-4349.png', 'I', 'A', 'Y', '2023-01-20 09:36:18', '2023-05-31 09:53:20'),
(183, 'Image', '1685510586-6703.jpg', 'I', 'A', 'N', '2023-01-20 09:36:29', '2023-05-31 10:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_16_131425_create_admin_password_resets_table', 1),
(6, '2022_06_16_131425_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parampara`
--

DROP TABLE IF EXISTS `parampara`;
CREATE TABLE IF NOT EXISTS `parampara` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `title_english` text,
  `description_english` text,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'A',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `parampara`
--

INSERT INTO `parampara` (`id`, `title`, `description`, `title_english`, `description_english`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ব্রহ্মজ্ঞানী তোতাপুরী', 'তোতাপুরী নর্মদা নদী তীরে দীর্ঘকাল তপস্যার পর নির্বিকল্প সমাধিতে আরুঢ় হইয়া ছিলেন। জীবন্মুক্ত তোতাপুরী সম্পূর্ণ অভীঃপ্রপ্ত হইয়া ছিলেন। জগতের কোনো কিছুতে তিনি ভয় পেতেন না। তোতাপুরী বলতেন ব্রহ্ম ভিন্ন দ্বিতীয় সত্তাই নেই, জগতের সবকিছুই ব্রহ্মের প্রকাশ। সম্ভবত ১২৭১ সালের শেষ ভাগে (১৮৬৭ খৃষ্ঠাব্দ) তিনি দক্ষিণেশ্বরে আসেন। তিন দিনের বেশী তিনি কোনো স্থানে থাকতেন না। কিন্তু কালীবাড়ীতে শ্রীরামকৃষ্ণের সঙ্গে প্রায় এগারো মাস অতিবাহিত করেন। শ্রীরামকৃষ্ণের সন্ন্যাস গুরু তোতাপুরী।', 'Totapuri', 'For forty years he had practiced austere discipline on the bank of the sacred Narmada and had finally realized his identity with the Absolute. Exercising self-exertion and unshakable will-power, he had liberated himself from attachment to the sense-objects of the relative universe. Clad in a loin-cloth, he spent his days under the canopy of the sky alike in storm and sunshine, feeding on the pittance of alms. He had been visiting the estuary of the Ganges. On his return journey along the bank of the sacred river, led by the inscrutable Divine Will, he stopped at Dakshineswar. He never stayed in any place for more than three days. Yet he spent almost eleven months with Sri Ramakrishna at Dakshineswar to become Sri Ramakrishna\'s Sannyasa Guru.', '1685510709-5180.jpg', 'A', '2023-01-09 16:07:24', '2023-05-31 10:55:09'),
(2, 'শ্রীরামকৃষ্ণ পরমহংস দেব', 'শ্রীরামকৃষ্ণ পরমহংস দেব এমন এক মহামানব যিনি ধর্ম ও বেদকে বিজ্ঞানীর মত সাধনা দ্বারা উপলব্ধি করে নিত্য উপাসনার সাথে জ্ঞান, ভক্তি, কর্ম ও সমর্পণের সাথে যুক্ত করে প্রাচীন সনাতন ধর্মকে নবযুগের উপযোগী করেছিলেন। হিন্দু বৈদিক সাধনা, বৈষ্ণবপথে সাধন প্রভৃতির সাথে খ্রীষ্ট ও ইসলাম পথেও অগ্রসর হয়ে যে সাধনের পর্বতশিখরে পৌছানো যায় তা প্রমাণ করেছিলেন। একজন উৎকৃষ্ট যোগসাধক, দার্শনিক ও ধর্মগুরুরুপে শ্রীরামকৃষ্ণ বুঝিয়েছিলেন ভক্তের সাকার ব্রহ্মের সাথে ভক্তিযোগের সম্পর্ক এবং জ্ঞানীর নিরাকার ব্রহ্মের সাথে জ্ঞানযোগের সম্পর্ক উভয়ই এক ও অক্ষয় সত্যের প্রকাশরূপ। জাতিভেদ, ধর্ম ও সম্প্রদায়ের গন্ডী পেরিয়ে সব মতেই এবং সব পথেই ঈশ্বর লাভ সম্ভব--- এটাই শ্রীরামকৃষ্ণের শিক্ষা। তিনি ছিলেন উনবিংশ ও বিংশ শতাব্দীর বাংলা তথা ভারতীয় নবজাগরনের অনতম পুরোধা ব্যক্তিত্ব। শ্রীরামকৃষ্ণের অভূতপূর্ব ও অলৌকিক জীবনের দিকে দৃষ্টিপাত করলে ক্ষুদ্র মানব মন এত বিস্ময়াবিষ্ট হয় যে আজও তাঁর অসীম আধ্যাত্মিকতার কোন কূল খুঁজে পায় না। গুরু পরম্পরা অনুসারে এই মহাযোগী আমাদের পরম ইষ্ট গুরু।', 'Sri Ramakrishna Paramahansa Dev', 'The most prominent Spiritual Leader of the Indian renaissance, Sri RamKrishna Paramahansa Dev pursued enlightenment through various religious practices from the Hindu traditions of Bhakti yoga, Tantra, and Advaita Vedanta as well as from Islam and Christianity, and  proclaimed the world\'s various religions as \"so many paths to reach one and the same goal\", thus validating the essential unity of religions. As an excellent yogi , philosopher and saint, Sri Ramakrishna explained that the relationship of devotion to the devotee\'s Sakar Brahma and the relationship of knowledge of the wise, with the formless Brahma – both manifest to the one and only Ultimate truth. It is possible to achieve God in all ways through the boundaries of caste, religion and community-this was the teaching of Sri Ramakrishna. He was the most pioneering spiritual personality of the nineteenth and twentieth centuries of Bengal and the Indian Renaissance. His infinite spirituality attracted religious teachers, social leaders and elites, and common people alike. His preaching and interpretations were lucid and simple and was thus very easily adapted and followed by commoners. After his passing, his chief disciple Swami Vivekananda popularized his ideas, and founded the Ramakrishna Math.', '1685510690-4194.jpg', 'A', '2023-01-09 16:07:59', '2023-05-31 10:54:50'),
(3, 'স্বামী শিবানন্দ (মহাপুরুষ মহারাজ)', 'শ্রীরামকৃষ্ণ মঠ ও মিশনের (১৯২২ সালে) প্রেসিডেন্ট হন। তিনি সংঘের দ্বিতীয় অধ্যক্ষ। তাঁহার নিকট হইতে কেহই রিক্ত হস্তে ফিরিয়া যাইত না। তিনি সকলের মনপ্রাণ ভরপুর করিয়া দিতেন। তিনি কাহাকেও বিমুখ করিতেন না। সকলকেই অকাতরে কৃপা করিতেন। পরের দুঃখকষ্ট দেখিলে তিনি আর স্থির থাকিতে পারিতেন না। অফুরন্ত কৃপা ভান্ডার খুলিয়া দিতেন। এমন ব্রহ্মজ্ঞানী মহাপুরুষ এই যুগে বিরল। কেবল বরিষ্ঠব্রহ্মজ্ঞানীরাই এইরুপ উচ্চাবস্থা লাভ করে থাকেন।', 'Swami Shivananda', 'Swami Sivananda was a direct disciple of Sri Ramkrishna Paramahansa Dev who became the second president of the Ramakrishna Math. His devotees refer to him as Mahapurush Maharaj. He was the second President of the Math. Thousands of men and women, young and old, rich and poor, high and low, the homeless and the outcast, men battered by fate and reeling under a thousand and one miseries would come to him and return, lifted in spirits. A kind look, a cheering word, and an impalpable something which was nevertheless most real, would put new hope and energy into persons whose lives had almost been crushed by frustrations and despair. He cheerfully bore all discomfort and hardship in the service of the helpless and the needy. His advice to all was - behind work there should be meditation; without meditation, work cannot be performed in a way which is conducive to spiritual growth. Nor is work nicely performed without having a spiritual background. He would say, ‘Fill your mind in the morning so much with the thoughts of God that one point of the compass of your mind will always be towards God though you are engaged in various distracting activities.’', '1685510498-2973.jpg', 'A', '2023-01-09 16:09:03', '2023-05-31 10:51:38'),
(4, 'স্বামী জগদীশ্বরানন্দ', 'স্বামী জগদীশ্বরানন্দ ভারতের আধ্যাত্মিক মহাকাশে এক উজ্জ্বল নক্ষত্র। শ্রীরামকৃষ্ণ ধর্মচক্রের প্রতিষ্ঠাতা এই মহাযোগী একাধারে সর্বশাস্ত্রের প্রকৃত তত্ত্ববেত্তা ও অপর দিকে একজন প্রকৃত সর্বত্যাগী সন্ন্যাসী ও মুমুক্ষু ব্রহ্মজ্ঞ মহাসাধক ছিলেন। অত্যন্ত সুপন্ডিত হিসাবে তিনি তৎকালীন ধর্মসমাজে বিখ্যাত ছিলেন। তিনি অতি অল্প বয়সে মহাপুরুষ ও শ্রীরামকৃষ্ণের অন্যতম পার্ষদ স্বামী শিবানদের কাছে দীক্ষা, ব্রহ্মচর্য্য ও সন্ন্যাস গ্রহণ করেন এবং রামকৃষ্ণ মঠ ও মিশনের সাথে যুক্ত হয়ে তিনি বহুগুরুত্বপূর্ণ দায়িত্ব পালন করেন। তিনি বিভিন্ন প্রবন্ধ রচনা করেন, যা মর্ডান রিভিউ, এরিয়ান পাথ, প্রবুদ্ধ ভারত, বেদান্তকেশরী, বসুমতী, উদ্বোধন, প্রবর্তক, প্রবাসী, বঙ্গলক্ষী প্রভৃতি মাসিকে ছাপা হয়। তিনি জ্ঞান ও নিরন্তর কর্মের মাধ্যমে ঈশ্বরলাভ করেছিলেন। ১৯৫৫ সালে এই মহাপুরুষ শ্রীরামকৃষ্ণ ধর্মচক্রের প্রতিষ্ঠা করেন। হিন্দু সমাজকে উনি নিরন্তর সঠিক পথ প্রদর্শন করে গেছেন ইতিহাস, ভ্ৰমণ, আধ্যাত্মিকতা, বিজ্ঞান, যোগশাস্ত্র প্রভৃতি বিষয়ে উপর প্রায় ৮৫টির অধিক পুস্তক রচনা করেন। একসময় অতিরিক্ত গবেষণা ও লেখালেখির ফলে তিনি অন্ধ হয়ে পড়েন, তবুও তিনি নিশ্চল চিত্তে একাগ্রতার সাথে মানবসেবার এই ব্রত থেকে বিরতি নেননি, জীবনের অন্তিম মুহূর্ত পর্যন্ত। তাঁর অনূদিত শ্রীশ্রীচন্ডী ও শ্রীমদ্ভগবদগীতা উদ্বোধন কার্যালয় থেকে প্রকাশিত হয়ে এখনও সমগ্র বিশ্বের ধর্মপিপাসাকে তৃপ্ত ও সমৃদ্ধ করে চলেছে। এছাড়াও তাঁর লেখা দেবীমাহাত্ম্য, ঋগ্বেদ, যজুর্বেদ, সামবেদ, মহামায়া, কল্কিপূজা পদ্ধতি, বিনা চশমায় ক্ষীণ দৃষ্টির প্রতিকার, দিব্যদৃষ্টি, তত্ত্বানুসন্ধান ইত্যাদি অনেক পুস্তক ধর্মজগতে সমাদৃত হয়েছে। এই ব্রহ্মজ্ঞানী সন্ন্যাসী ছিলেন ত্যাগ, অধ্যবসায় ও সংযমের পরাকাষ্ঠা। অন্তিম অবতারপুরুষ ভগবান কল্কিদেবের আগমনবার্তা দৈবনির্দেশে তিনিই সর্বপ্রথম প্রচার করেছিলেন, শ্রীরামকৃষ্ণ ধর্মচক্রের প্রতিষ্ঠা করেছিলেন পূর্ব ভারতের সর্বপ্রথম কল্কি মন্দির ও রচনা করেছিলেন শ্রীশ্রীকল্কি পূজাপদ্ধতি, কল্কিগীতা ইত্যাদি কল্কিবিষয়ক ধর্মশাস্ত্র। এনার মত মহাজ্ঞানী এই কলিযুগে খুব কমই জন্মগ্রহণ করেছেন। ইনি আমাদের গুরু।', 'Swami Jagadishwarananda', 'Swami Jagadishwarananda was a disciple of Swami Shivananda and a spiritual star who founded Sri Ramakrishna Dharmachakra. His knowledge of theology was vast and was a true scholar of all scriptures. On the other hand, he was one with the Supreme devoting his time to spreading his knowledge and preaching his disciples on spiritual living. At a very young age, he took spiritual initiation, “Brahmacharya” in monastic traditions from Swami Shivananda, and   performed the multi-faceted duties by associating with Ramakrishna Math and Mission. He wrote various essays, which were printed in journals and Papers such as ‘Modern Review’, ‘Aryan Path’, ‘Prabuddha Bharat’, ‘Vedanta Keshri’, ‘Basumati’, ‘Udbadhan’ etc. His path to attaining attained God was through knowledge and constant deeds. His translated Sri Sr iChandi and Srimad Bhagavad Gita find place in almost every Bengali home. He has over 100 publications of books and essays and these writings are highly revered in the Spiritual world. This Brahma -wise monk was the backbone of sacrifice, perseverance and restraint. He was the first to preach of the last avatar ‘Bhagwan Kalkidev and established, the first Kalki temple in Eastern India, atthen Sri Ramakrishna Dharmachakra premises. His wisdom and renunciation isan example to spiritual seekers born in this Kali Yuga.', '1685510468-9341.png', 'A', '2023-01-09 16:09:43', '2023-05-31 10:51:08'),
(5, 'প্রব্রাজিকা মহাগৌরী সরস্বতী', 'প্রব্রাজিকা মহাগৌরী সরস্বতী ছিলেন ব্রহ্মময়ী, সদানন্দময়ী, মমতাময়ী এক মহাতপস্বিনী। এই পূর্ণব্রহ্মজ্ঞানী সাধিকা ছিলেন পারমাথকি পরমচেতনা ও দৈবিকতার মূর্ত প্রতীক। তিনি পূজ্যপাদ শ্রীরামকৃষ্ণ ধর্মচক্রের প্রতিষ্ঠাতা স্বামী জগদীশ্বরানন্দের কথনে প্রভাবিত হয়ে তাঁর থেকে বৈদিক সন্ন্যাস গ্রহন করেন। তাঁর এবং স্বামী জগদীশ্বরানন্দের কঠোর সাধনার প্রভাবে শ্রীরামকৃষ্ণ ধর্মচক্র তপোভূমিতে পরিণত হয়। এই মহাতপস্বীনি জ্যোতিঃস্বরূপ যেমন অনেক দিশাহীন ভ্রষ্ট সাধারন ভক্তগনের গুরু হয়ে তাদের সঠিক পথে পরিচালিত করেছেন, তেমনই অন্তিম পূর্নশক্তিসম্পন্ন বৈষ্ণব অবতার শ্রীভগবান কল্কিদেবের ও তিনি গুরু। স্বামী জগদীশ্বরানন্দের ব্রহ্মধামে যাত্রার পর সুচারুভাবে শ্রীরামকৃষ্ণ ধর্মচক্রের সমস্ত দায়িত্ব পালন করে এই প্রতিষ্ঠানকে এগিয়ে নিয়ে গেছেন উন্নতির পথে। তাঁর গুরু সেবা অতুলনীয়। এমন ব্রহ্মজ্ঞানী গুরুগতপ্রাণ মহাসাধিকা এযুগে বিরল।', 'Prabrajika Sri Sri Mahagouri', 'Prabrajika Mahagouri Saraswati was initiated in the Vedic monastic traditions by Swami Jagadishwarananda Saraswati at a very tender age when she renunciated all worldly attachments and came to stay at the Ashram. She was divine, kind – always keen to alleviate human sufferings and always radiated joy and peace even under terrible pain and suffering. She was the symbol of Supreme Consciousness. She left a very profound impression upon all who came in contact with her and thus all devotees considered the ashram a place of pilgrimage, where their sufferings and frustrations would be removed on appealing to her.\r\nHer service and devotion to her Guru was unparallel and during Swami Jagadishwarananda Saraswati’s last days she was always at his side taking care of all his physical pains and suffering. Swami Jagadiswarananda Saraswati through divine guidance realised that she was to be the Guru of the last Vaishnav Avatar Sri Kalki Deva. Sri Sri Maha Gouri Saraswati managed all affairs of the ashram with finesse and expanded its realm to all sections of the society. A Guru with such divinity, modern views and administrative prowess had always been an example for all her devotees to follow.', '1685522443-1686.png', 'A', '2023-01-09 16:10:15', '2023-05-31 14:10:43'),
(6, 'স্বামী বিশুদ্ধানন্দ সরস্বতী মহারাজ', 'শ্রীরামকৃষ্ণ ধর্মচক্র আশ্রমের বর্তমান অধ্যক্ষ। মাত্র ১৮ বছর বয়সে সবকিছু ত্যাগ করে শ্রীগুরু স্বামী জগদীশ্বরানন্দ মহারাজের শ্রী চরণে আশ্রয় গ্রহণ করেন। প্রথম দর্শনেই আর্শীবাদ করেছিলেন তুমি যা চাইবে তাই পাবে। এই ব্রহ্মজ্ঞানী সৎগুরু কৃপাবারি সিঞ্চনে অত্যান্তিক দুঃখের নিবৃত্তির পথের পথিক। পরমানন্দ প্রাপ্তি জীবনের লক্ষ্যে স্থির। দীক্ষা, ব্রহ্মচর্য্য সন্ন্যাস স্বামী জগদীশ্বরানন্দ মহারাজের প্রাপ্ত। বাংলার বিভিন্ন আশ্রম মঠে তাঁর মুখনিঃসৃত বানী শ্রবণের জন্য ভক্তগনের মুখর হয়ে থাকেন। বর্তমানে তিনি সোহম সাধনে নিরন্তর দিন অতিবাহিত করেন।', 'Swami Bisuddhananda Saraswati', 'Swami Bisuddhananda Saraswati is the current principal monk of the Ashram. At the age of just eighteen, he left all worldly desires and placed himself at Swami Jagadiswarananda’s feet to pursue a life of spirituality.  At first sight, he was blessed by the great Master Swami Jagadishwarananda who said to him –‘You would get all that you desire’. It is under his eternal tutelage and guidance that Swami Bisuddhananda Saraswati pursues his path to eternal peace and happiness after being initiated to spirituality and monastic rights by his Master. He is a distinguished spiritual speaker and his discourses are highly acclaimed by his devotees and Spiritual patrons.', '1685510421-1334.jpg', 'A', '2023-01-09 16:10:43', '2023-05-31 10:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
CREATE TABLE IF NOT EXISTS `publication` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `title_english` text,
  `description_english` text,
  `status` varchar(255) NOT NULL DEFAULT 'A',
  `image` varchar(255) DEFAULT NULL,
  `available` varchar(255) NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`id`, `title`, `description`, `title_english`, `description_english`, `status`, `image`, `available`, `created_at`, `updated_at`) VALUES
(2, 'ব্রহ্মচর্য্য', 'ইহাতে ব্রহ্মচর্যের উপকারিতা ও সাধনের উপায় বৈজ্ঞানিক আলোকে ছোট ছোট একুশ অধ্যায় লিখিত। দাম্পত্য জীবনে ব্রহ্মচর্য রক্ষার বিষয় সক্রেটিশের বাক্যোদ্বার পূর্বক সরলভাবে আলোচিত। অন্তিম অধ্যায়ে কতিপয় স্বাস্থ্যকর সদভ্যাস উল্লিখিত ও পরিশিষ্ঠে ‘মন ও স্বাস্থ্য ‘ শীর্ষক মনস্তত্ত্বপূর্ণ প্রবন্ধ সংযোজিত। ইহা পড়িলে বাংলার তরণ-তরুণীগণ বীর্যধারনের সদুপায় এবং স্বাস্থ্য ও শক্তি লাভের সুকৌশল অবগত হইবে। ইহা ছাত্র- ছাত্রীদের পক্ষে অতীব শিক্ষাপ্রদ। ১৩৬০ সালে আষাঢ়ে মুদ্রিত, গ্রন্থকারের পরিচিতি সম্বলিত।', 'Brahmacharya', 'In this, the benefits of maintaining or staying in conduct within one\'s own self and the way to achieve it. has been scientifically explained, as well as summarized in twenty-one chapters under this context. The ways of maintaining ‘Brahmacharya’ in a married life has been described, in simple words, by Socrates. In the final chapter some healthy habits have been mentioned and the text has been concluded with a psychological essay on \'Mind and Health\' attached to it. On reading this , young men and women would know about the benefits of holding on to the secrets of good health strategy along with gaining strength physically and mentally. Thus it contributes to the educational aspects of students. This book has been printed in the Bengali Year 1360, ( 1953) along with the author\'s introduction.', 'A', '1691142796-1024.png', 'Y', '2023-01-09 06:56:44', '2023-08-04 09:53:16'),
(3, 'যোগ (পাতঞ্জল যোগের উপর )', 'ব্যাসভাষ্য ও বাচস্পতি মিশ্র কৃত তত্ত্ববৈশারদী টীকার আলোকে পাতঞ্জল যোগসূত্রাবলীর সারসংগ্রহ। যোগতত্ত্বেই সর্বধর্মের সাধন রহস্য নিহিত। সর্বশ্রেণীর ভক্ত ও সাধুর পক্ষে অপরিহার্য্য। পরিশিষ্টে সাংখ্য দর্শনের সারাংশ প্রদত্ত, ১৭৫ পৃষ্ঠায় সমাপ্ত ও  ১৩৬১ সালে মুদ্রিত।', 'Yoga (Benefits of Patanjali Yoga. )', 'The essence of Patanjali Yoga has been discussed and summarized in simple words under this heading. The theory of practicing Yoga is universal to all irrespective of cast creed religion and gender. This practice is essential and inescapable for all devotees and saints. The appendix gives a summary of \'Sankha darshan\' as preached by the divine saint \'Maharishi Kapildev\' . The book has 175 pages and was printed in the Bengali Year 1361 ( 1954 ).', 'A', NULL, 'N', '2023-01-09 06:57:13', '2023-04-20 14:02:05'),
(4, 'যৌগিক ব্যায়াম (সচিত্র ) ১ম ভাগ', 'যৌগিক ব্যায়াম সম্বন্ধে বাংলায় ইহাই প্রথম পুস্তক। ইহাতে সাতাশটি যোগাসনের বিবরণ ও উপকারিতা লিখিত। যৌগিক ব্যায়ামের বিশেষত্ব ও বিধি, কতিপয় স্বাস্থ্যতথ্য এবং চুরাশি আসনের তালিকা প্রদত্ত। যৌগিক ব্যায়ামের আধুনিক প্রবর্তক বোম্বাই নিবাসী স্বামী কুবলয়ানন্দের বৈজ্ঞানিক গবেষণার আলোকে ইহা সুরচিত। ইহাতে বাঙ্গালী হঠযোগী মাধবদাসের সচিত্র জীবনী প্রদত্ত। ইহার সাহায্যেই সকলে যোগাসন অভ্যাস করিতে \r\nপারিবেন, ব্যায়াম শিক্ষকের সাহায্য প্রয়োজন হইবে না। হাইস্কুল ও কলেজের ছাত্র- ছাত্রীদের বিশেষ উপযোগী। ১৩৫৪ সালে শ্রাবন মাসে প্রথম প্রকাশিত পঞ্চম সংস্করণ বাহির হইল।', 'Yoga/ Exercises (illustrated) 1st part', 'This is the first book ever publisher in Bengali on \'Yoga’, a Hindu spiritual and ascetic discipline, which includes breath control, simple meditation,  adoption of specific bodily postures which are widely practised for health and relaxation. It contains details and benefits of seven hundred yoga postures. Specifications and rules of Yoga; some facts on healthy living  and a list of eighty four Asanas are mentioned here. This is based on scientific research pioneered by Swami Kublayananda, a resident from Mumbai who is the flag-bearer of modern Yogic exercises.  \r\nIt also contains an illustrated biography of the Bengali Yogi Madhavdas who practices \'Hatha Yoga\' - a branch of yoga. The Sanskrit word \"Hatha\" literally means \"strength\" and thus refers to the method of gaining physical strength with its\' techniques. Everyone and anyone can practice yoga with the help of this book without the intervention of an exercise / Yoga teacher which is especially applicable for high school and college students. The fifth edition was first published in the Bengali year 1354 (1947 ).', 'A', NULL, 'N', '2023-01-09 06:57:31', '2023-08-08 14:16:12'),
(5, 'দক্ষিণেশ্বরের শ্রীরামকৃষ্ণ', 'দক্ষিণেশ্বরের কালীবাড়ীর বিস্তৃত ইতিবৃত্ত, রাণী রাসমনির পুণ্য কাহিনী, মথুরানাথ বিশ্বাসের সেবা ও ভক্তি এবং কালীবাড়ীতে শ্রীরামকৃষ্ণের সাধনাবলী সংক্ষেপে বিবৃত। তীর্থ যাত্রীর পক্ষে প্রদর্শক-পুস্তকরূপে ব্যবহার্য্য ও ১৫০ পৃষ্ঠায় সমাপ্ত। কালীবাড়ীতে শ্রীরামকৃষ্ণ- জীবনের এই ত্রিশবর্ষের সংক্ষিপ্ত কাহিনী ইহাতে প্রদত্ত। ১৩৫৯ সালে প্রকাশিত।', 'Sri Ramakrishna of Dakshineshwar', 'The extensive history of “Dakshineswar Kalibari” (Temple) along with the virtuous story of Queen Rasmani, the service and devotion of Mathuranath Biswas and the activities of Sri Ramakrishna at the Kalibari are briefly described here. This is a useful guidebook for pilgrims and is limited to 150 pages. The brief history of Sri Ramakrishna at Dakshineshwar Kalibari for thirty years of his life has been summarized here. Published in Bengali year 1359 (1952).', 'A', NULL, 'N', '2023-01-09 06:58:47', '2023-04-20 13:45:00'),
(6, 'সচিত্র যৌগিক ব্যায়াম ২য় ভাগ (প্রাণায়াম)', 'স্বাস্থ্য ও শক্তি লাভের জন্য জনসাধারণ প্রাণায়ামকে কিভাবে যোগাসনের ন্যায় নির্ভয়ে নিরাপদে নিঃশ্বাস ব্যায়ামরূপে ব্যবহার করিতে পারেন, তাহার বিশদ বর্ণনা ও নিয়ম ইহাতে প্রদত্ত। এই পুস্তক আদ্যোপান্ত পড়িলে পাঠক-পাঠিকগণ বুঝিতে পারিবেন, স্বাস্থ্য-রক্ষা ও রোগারোগ্যের জন্য প্রাণায়ামের কতটুকু নির্বিঘ্নে অভ্যাস করা যায়। আধুনিক বৈজ্ঞানিক গবেষনার আলোকে প্রাণায়াম-তত্ত্ব ইহাতে ব্যাখাত। ইহা সচিত্র, ১৬৫ পৃষ্ঠায় সমাপ্ত ও ১৩৫৭ সালে আশ্বিনে মুদ্রিত। চতুর্থ সংস্করণ বাহির হইল।', 'Illustrated Yogic Compound Exercises Part 2 (Pranayama)', 'This part of the book gives a detailed description and rules of how people can safely use \'Pranayama\' as a breathing exercise to gain health benefits and strength. After reading this book from beginning till the end, the readers will be able to understand how \'Pranayama\' can be practiced for health protection and cure of several diseases. The Pranayama theory has been explained in the light of modern scientific research here. Illustrated and of 165 page the book was printed in the Bengali year 1357 (1950). The fourth edition is the current edition.', 'A', NULL, 'Y', '2023-01-09 06:59:09', '2023-04-20 13:47:36'),
(7, 'বেদান্ত', 'প্রথম সংস্করণ নিঃশেষিত। সন ১৩৬৪ সালে আষাঢ় মাসে মুদ্রিত ও ১৬০ পৃষ্ঠায় সমাপ্ত। সদানন্দ যোগীন্দ্র সরস্বতী বিরচিত বেদান্তসার নামক সংস্কৃত গ্রন্থের ব্যাখ্যামূলক অনুবাদ। উক্ত গ্রন্থের ব্যাখ্যামূলক অনুবাদ। উক্ত গ্রন্থের নৃসিংহ সরস্বতীকৃত সুবোধিনী টীকা ও পূর্বমীমাংসাচার্য্য আপদেবকৃত বালবোধিনী টীকা ও রামতীর্থকৃত বিদ্বম্মনোরঞ্জিনী টীকার বহুবাক্য অনুবাদসহ উদ্ধৃত। ভারত বিখ্যাত বেদান্তাচার্য্যগন বিরচিত ৩৫ খানি প্রসিদ্ধ বেদান্ত-গ্রন্থের বহুবাক্য সমৃদ্ধ। বাংলায় মৌলিক বেদান্ত-সাহিত্য সৃজনের সার্থক প্রচেষ্ঠা।', 'Vedanta', 'First edition was exhausted. Printed in the Bengali year  1364 (1957) it has 160 pages. It has an explanatory translation of a Sanskrit work called \'Vedantasar\', by Sadananda Yogindra Saraswati. Explanatory translation of the book has been provided here. Analysis by Narsimha Saraswati\'s Subodhini , Purvamimamansacharya Apadeva\'s Balabodhini and Ramatirtha\'s Vidvammanoranjini are given in details. The renowned gurus famous for their knowledge in Vedas have written in 35 Vedanta texts. These have been discussed and explained here. The literary translation of the above basic Vedanta literature is an earnest effort of the writer to elucidate Vedanta to the common person..', 'A', '1691142777-6596.png', 'Y', '2023-01-09 06:59:31', '2023-08-04 09:52:57'),
(8, 'মহামায়া', 'ইহাতে শ্রীশ্রীচন্ডীর প্রতিপাদ্য মহামায়া-তত্ত্ব আলোচিত। এতদ্ব্যতীত রুদ্রচন্ডী, বৌদ্ধধর্মে ও বেদান্তে শক্তিবাদ এবং বাংলায় শক্তিসাহিত্য সম্বন্ধে পৃথক অধ্যায় লিখিত। প্রচ্ছদ-পটে দুর্গাদেবীর যে সুন্দর ছবি প্রদত্ত তাহা কলিকাতা বিশ্ববিদ্যালয়ের আশুতোষ মিউজিয়ামে রক্ষিত ছবি হইতে গৃহীত। শ্রীশ্রীচন্ডীর প্রথম, মধ্যম ও উত্তম চরিত্রের আখ্যায়িকা সংক্ষেপে লিখিত ৷', 'Mahamaya', 'Mahamaya is the supreme power described in Hindu philosophy. In this, Sri Sri Chandi\'s Mahamaya-theory has been discussed. Apart from this, separate chapters are written on RudraChandi, Shaktism as in Buddhism and Vedanta-Shaktism, and the Shakti literature of Bengal. The beautiful picture of Devi Durga at the beginning of the chapter has been taken from Calcutta University\'s Ashutosh Museum which is a permanent collection asset at display. Sri Sri Chandi\'s First, Madhyam and Uttam characters\' narration are also given in brief.', 'A', NULL, 'N', '2023-01-09 06:59:53', '2023-04-20 13:50:38'),
(9, 'শ্রীমদভগবদ্গীতা (৩ খন্ড) শ্রীধর স্বামী কৃত টীকা অবলম্বনে', 'শ্রীধরস্বামীকৃত সমগ্রটীকা ও উহার প্রাঞ্জল অনুবাদ এবং বহু পরিশিষ্ট সম্বলিত। প্রায় ১২০০ পৃঃ সমাপ্ত। শংকরাচার্য্য, শংকরানন্দ, আনন্দগিরি, মধুসূদন সরস্বতী, অভিনবগুপ্ত, নীলকণ্ঠ সুরি, শ্রীধরস্বামী প্রভৃতি ভাষ্যকার ও টীকাকারগটণের উদ্ধৃতি পাদটীকায় সংযোজিত।', 'Srimad Bhagavad Gita\'s (3 volumes) a brief narration by Sridhar Swami.', 'With Sridhar Swami\'s complete annotations and its vivid simple translation as given  in an additional part appended at the end this three part treatise on the Bhagavat Gita is a Collector’s item. Collectively these have 1200 pages. Quotations of commentators and annotators such as Sankaracharya, Sankarananda, Anandagiri, Madhusudan Saraswati, Abhinavagupta, Nilakantha Suri, Sridharaswami etc. are appended in footnotes.', 'A', '1687846381-6687.jpg', 'Y', '2023-01-09 07:00:10', '2023-06-30 08:02:48'),
(10, 'উপনিষৎ', 'অর্থাভাবে ২য় সং ছাপা হয়নি। ইহাতে বৃহদারণ্যক, অমৃতবিন্দু, পরমহংস ও মৈত্রায়নী উপানিষদের সারতত্ত্ব প্রদত্ত। প্রথম ভাগের ন্যায় ইহাতেও প্রত্যেক উপনিষদের পরিচয় নির্দিষ্ট অধ্যায়ের প্রারম্ভে লিখিত। ইহা পাঠ না করিলে প্রথম ভাগ অধ্যয়ন সম্পূর্ণ হইবে না। উপনিষৎ-দর্শণ সম্বন্ধে এরূপ পুস্তক বাংলায় অপূর্ব বলিলে হয় না। মূল উপনিষৎ না পড়িয়া ইহা পড়িলেই উপনিষদের সারাংশ মর্মর্গত হইবে। ১৩৬১ সালে মুদ্রিত ও ২৮০ পৃষ্ঠায় সমাপ্ত। \r\nপরিশষ্ঠে সিদ্ধসুফী বুললাশাহের জীবনী ও বাণী এবং ইউরোপে আনন্দাচার্য্য শীর্ষক দুইটী নিবন্ধ প্ৰদত্ত।', 'Upanishads', 'It contains the essence of the Brihadaranyaka, Amritabindu, Paramahamsa and Maitrayani Upanishads\'. Alike the first part, in this book also the introduction of each Upanishad is written at the beginning of each chapter.  Understanding the rest of the part will not be complete unless one completes reading the introduction/prelude. Such a book about Upanishad is not just wonderful but also the first ever written in Bengali. If one reads this even without reading the original Upanishads, one would perceive the gist of the Upanishads very explicitly. Printed in the Bengali year 1361(1954) it has 280 pages.\r\nTwo articles on the biography and preaching of Siddha Sufi Bullashah and Anandacharya are also included.', 'A', NULL, 'N', '2023-01-09 07:00:28', '2023-08-07 12:29:18'),
(12, 'স্বারাজ্য সিদ্ধিঃ', 'মূলগ্রন্থের শ্লোকাবলী, মোক্ষতীর্থ কাশীধামের শ্রীমৎ ভাস্কারানন্দ সরস্বতী কৃত সংস্কৃত টীকা, প্রাঞ্জল বাংলায় শ্লোকার্থ ও শতাধিক টিপ্পনী সম্বলিত। অদ্বৈত সিদ্ধি, ব্ৰহ্ম সিদ্ধি, ইষ্ট সিদ্ধি ও নৈষ্কর্ম্য সিদ্ধি প্রভৃতি সিদ্ধিগ্রন্থ-চতুষ্ঠয়ের সহিত পরিপণিত হইবার যোগ্য। ‘পঞ্চদশী\', ‘বেদান্ত পরিভাষা — প্রভৃতি গ্রন্থের সমকক্ষ ও অদ্বৈত বেদান্তের একখানি উৎকৃষ্ট প্রকরণ গ্রন্থ।', 'Swarajya Siddhi', 'This book is is an excellent treatise on “Advyata Vedanta” and is  comparable to tests such as “Panchadashi” and “Vedanta Paribhasa”.  It is in the same class of texts such as “Advyata Siddhi”, “Brahma Siddhi”, “Ishta Siddhi” and “Naishkarmya Siddhi” etc.  Explanation, comments and notes  of the original verses from the texts in are given by the great Scholar Shrimat Bhaskarananda Saraswati’s in lucid Bengali language', 'A', '1691142726-2181.png', 'Y', '2023-01-09 07:01:27', '2023-08-07 12:04:55'),
(13, 'তত্ত্বানুসন্ধান', 'মূল সংস্কৃত, প্রাঞ্জল বাংলা অনুবাদ এবং সামদেবীয়-আরুণি উপনিষৎ সানুবাদ এবং কতিপয় বিশিষ্ঠ গ্রন্থকারের পরিচয় সম্বলিত।', 'Tattyanusandhan', 'Contains lucid translation to Bengali ( of the Sanskrit Verses ) of  the “Shyamdevya-Aruni Upanishad” along with  introductions, comments and notes by of some eminent authors.', 'A', '1687846450-5595.jpg', 'Y', '2023-01-09 07:01:45', '2023-08-07 12:05:57'),
(14, 'কল্কি গীতা ২য় সং', '৪৪৮ পৃষ্ঠায় সমাপ্ত, দুইটি চিত্রে ও সুন্দর প্রচ্ছদপটে শোভিত ও মোটা মলাটে বাঁধাই। ১৯৬১ খ্রীঃ এপ্রিল মাসে প্রথম প্রকাশিত, পরিশিষ্টে গীতোক্ত পরাগতি আলোচিত।', 'Kalki Gita ( 2nd. Edition )', 'Finished at 448 pages, decorated with two photo illustrations and a beautiful covered thick binding. First published in April 1961 AD, details of lyrics discussed in the appendix.', 'A', NULL, 'N', '2023-01-09 07:02:05', '2023-08-04 10:06:37'),
(15, 'চন্ডী শতক (চন্ডীর ১০০ টি শ্লোকের উপর )', 'অন্বয় মুখে শব্দার্থ, চন্ডীপ্রভা টীকা, প্রাঞ্জল বাংলায় শ্লোকার্থ ও ভূমিকা, বাণভট্ট সম্বন্ধে ও তিনজন প্রখ্যাত সুলেখক রচিত তিনটি প্রবন্ধ এবং আচার্য্য আনন্দবর্ধন রচিত দেবীশতক সম্বলিত অমূল্য গ্ৰন্থ।', 'On 100 verses of Chandi Slokas', 'A rare book with simple comprehendible  meaning and clear translation, with notes on ‘Chandiprabha’, along with relevant articles of  ‘Banabhatta’  and  three other famous writers as well as  Acharya Anandavardhan’s  Invaluable book  on ‘Devishatka’.', 'A', '1691142847-9870.png', 'Y', '2023-01-09 07:02:21', '2023-08-07 12:07:54'),
(16, 'হিন্দু ধর্ম', '১৮০ পৃষ্ঠায় সমাপ্ত, তের অধ্যায় বিধক্ত। ইহাতে গুরুতত্ত্ব ও বাৎসল্য তত্ত্ব বিশদভাবে আলোচিত।', 'Hinduism', 'In this, the theory of ‘Guru Tathva’ (A theory where a teacher or a guide destroys the student\'s ignorance or darkness and leads him towards an enlightened path) and ‘Vastsalya Tathva’ (A theory on affection/fondness/ parental love, etc.) has been discussed in details. The book has 180 pages and has thirteen chapters.', 'A', NULL, 'Y', '2023-01-09 07:02:35', '2023-08-07 12:08:49'),
(17, 'শ্রীগুরু প্রসঙ্গ', '২৭০ পৃষ্ঠায় সমাপ্ত দ্বাদশ অধ্যায়ে বিভক্ত। ইহাতে চন্ডীদাস, বাচস্পতি মিশ্র ও যীশুখ্রীষ্ট প্রভৃতি মহাপুরুষদের জীবনী প্রদত্ত। \r\nবিঃদ্রঃ- ‘শ্রীগুরু-প্রসঙ্গ\' সম্বন্ধে কলিকাতার প্রসিদ্ধ সাপ্তাহিক ‘দেশ\' পত্রিকার ১৩৬৮ সালে ৯ই ভাদ্র নিম্নোক্ত পরিচয় প্রকাশিত হয়। \r\n“ঠাকুর রামকৃষ্ণদেবের অন্তরঙ্গ পার্ষদ মহাপুরুষ শিবানন্দজীর ধর্মজীবন ও অধ্যাত্মিকতা পরিচয় দেওয়াই আলোচ্য পুস্তকের প্রধান বিষয়। গ্রন্থকার সুলেখক। সেইজন্য পুস্তকটি যাহাতে একঘেয়ে না হয়, তাহার জন্য তিনি ধর্ম ও কৃষ্টি সম্পৰ্কীয় নানা বিষয়ের অবতারণা করিয়াছেন। স্বামী তুরীয়ানন্দের কথোপকথন ও ভক্ত-কবি চন্ডীদাস ও বেদান্তের প্রসিদ্ধ টীকাকার বাচস্পতি মিশ্র সম্বন্ধে মনোজ্ঞ আলোচনা এবং বাংলা দেশের কতিপয় ভক্ত ও বৈষ্ণব পদকর্তার পদাবলী সন্নিবিষ্ট করিয়া তিনি গ্রন্থটীকে উপাদেয় ও সুখপাঠ্য করিয়াছেন। আলোচনাগুলি সংক্ষিপ্ত হইকেও তথ্যবহুল ও ভাব সমৃদ্ধ। এই যুগের বিভ্রান্ত লোকেরা এই পুস্তক খানি পাঠ করিয়া সান্তনা ও প্রেরণালাভ করিবে।”', 'On Shriguru', 'The main subject of this book is to introduce the religious life and spirituality of Mahapurush Shivanandaji, an intimate companion of Sri Ramakrishnadev. The book is  divided into twelfth chapters and completed in 270 pages.  It also discusses the thoughts and preaching of Spiritual Gurus such as Chandidas, Bachaspati Misra and many others.', 'A', NULL, 'Y', '2023-01-09 07:03:01', '2023-08-07 12:10:42'),
(18, 'বিনা চশমায় ক্ষীণ দৃষ্টির প্রতিকার', 'ইহাতে আমেরিকার প্রসিদ্ধ চক্ষু-চিকিৎসক উইলিয়াম বেসের আবিস্কার অনুসারে চশমা ব্যতীত ক্ষীণ দৃষ্টি প্রতিকারের সহজ সরল প্রণালী বিবৃত। উক্ত প্রাকৃতিক চিকিৎসা দ্বারা নিকট দৃষ্টি, দূর দৃষ্টি, বক্র দৃষ্টি, ছানি-চিকিৎসার প্রাকৃতিক উপায় প্রভৃতি লিখিত। ছাত্র-ছাত্রীদের পক্ষে বিশেষ উপযোগী। পঞ্চম সংস্করণ শতাধিক পৃষ্ঠায় সমাপ্ত। প্ৰথম প্রকাশ জানুয়ারী ১৯৪৭।', 'Remedy for poor vision without glasses', 'In this the simple method of curing low vision problem without using glasses has been described in accordance with the inventions of the famous American eye-specialist William Bayes. Natural remedies for near-vision, far- vision, crooked-vision and cataract treatment etc. are explained here as per this natural treatment which are especially useful for students. It was first published in January 1947.', 'A', '1691142717-4906.png', 'Y', '2023-01-09 07:03:25', '2023-08-07 12:16:07'),
(19, 'অমর ভারত', 'ইহাতে ভারতের অমর অস্তিত্ব ভিন্ন ভিন্ন দিকে প্রদর্শিত। ভারতের সঙ্গীত, চিকিৎসা- বিজ্ঞান, সাহিত্য ও সংস্কৃতি সম্বন্ধে এক এক অধ্যায় লিখিত। ভারতের উজ্জ্বল ভবিষ্যৎ সম্বন্ধে একাদশ অধ্যায়ে সুচিন্তিত আলোচনা প্রদত্ত। ভারতের সাংস্কৃতিক সাম্রাজ্য ও বৈদিক ভারতের স্মরণীয় বিবরণ সংযোজিত। অমর ভারতের বিশিষ্ঠ স্বরুপ সম্বন্ধে স্বামী বিবেকানন্দের উক্তিসমূহ প্রথম অধ্যায়ে সংগৃহীত। ভারত প্রশস্তিতে রবীন্দ্রনাথ ঠাকুর, দ্বিজেন্দ্রলাল রায়, যোগীন্দ্রনাথ বসু, ঋষি অরবিন্দ, ভগিনী নিবেদিতা প্রভৃতির ভাবগম্ভীর বন্দনা প্রদত্ত। পরিশিষ্ট চতুষ্টয়ে হরিদ্বার, পানিহাটি তীর্থের ইতিবৃত্ত এবং রূপনারায়ণ নদীতীরস্থ খেপুত গ্রামে ক্ষিপ্তেশ্বরী দেবী মন্দিরে বিবরণ লিখিত। মনোহর প্রচ্ছদপটে শোভিত, ২৫০ পৃষ্ঠায় সমাপ্ত ও ১৩৬০ সালে মুদ্রিত।', 'Immortal India', 'In this the immortal existence of India is shown in different aspects. Each chapter is written on music, medicine, science, literature and culture of India. Chapter 11 provides a meticulous discussion about India\'s bright future. Memorable accounts of Indian empire on its cultural backdrop and illustrations of Vedic India have been appended. Swami Vivekananda\'s sayings about the special nature of Immortal India are incorporated in the first chapter.  This treatise praises for the legends of immortal Indian like Rabindranath Tagore, Dijendralal Roy, Yogindranath Bose, Rishi Aurobindo, Sister Nivadita etc. At the end the fourth chapter describes the history of places of pilgrimage like Haridwar, Panihati and elaborate illustration of Khipteswari Devi temple situated on the banks of river Rupnarayan in Khipute village. An impressive illustrated covered book of 250 pages printed in the Bengali year 1360.', 'A', NULL, 'N', '2023-01-09 07:03:41', '2023-08-04 10:08:27'),
(20, 'স্বামীজির দুই সন্ন্যাসী শিষ্য', 'ইহাতে স্বামী বিবেকানন্দের দুই সন্ন্যাসী শিষ্য স্বামী শুদ্ধানন্দ ও স্বামী প্রকাশানন্দের বিস্তৃত জীবনী প্রদত্ত। স্বামী শুদ্ধানন্দ বেলুড় মঠের পঞ্চম অধ্যক্ষ ও স্বামী প্রকাশানন্দ সানফ্রান্সিস্কো হিন্দু মন্দিরের তৃতীয় অধ্যক্ষ ছিলেন। দুই চিত্রে সজ্জিত, ৫৫ পৃষ্ঠায় সমাপ্ত ও ১৩৫৬ সালে মুদ্রিত।', 'Swamiji\'s two monastic disciples', 'It contains extensive biographies of Swami Vivekananda\'s two disciples, Swami Suddhananda and Swami Prakashananda. Swami Suddhananda was the fifth Principal of the Belur Math and Swami Prakashananda the third Principal of the San Francisco Hindu Temple. Decorated with two illustrations, ending in 55 pages and printed in the Bengali year 1356.', 'A', NULL, 'N', '2023-01-09 07:03:59', '2023-08-04 10:10:26'),
(21, 'A Real Mahapurush', 'শ্রী রামকৃষ্ণের প্রত্যক্ষ শিষ্য এবং রামকৃষ্ণের দ্বিতীয় সভাপতি এবং রামকৃষ্ণ মিশনের দ্বিতীয় সভাপতি স্বামী শিবানন্দের সংক্ষিপ্ত জীবন', 'A Real Mahapurush', 'Short life of Swami Shivananda a direct disciple of Sri Ramkrishna and the second president of the Ramkrishna and second president of the Ramkrishna Mission.', 'A', NULL, 'N', '2023-01-09 07:04:20', '2023-08-09 11:38:36'),
(22, 'গীতার আলো', 'ইহাতে ৬৫ পৃষ্ঠা ব্যাপী বিস্তৃত ভূমিকা ও গীতোক্ত অষ্টাদশ যোগের সারগর্ভ পরিচয় প্রদত্ত। গীতার দর্শন সম্বন্ধে এরূপ গ্রন্থ বাংলায় বিরল। অদ্যাবধি গীতা সম্পর্কে প্রকাশিত সমস্ত পুস্তকের মধ্যে গ্রন্থ অভিনব। ইহার গীতার প্রত্যেক অধ্যায়ের সারতত্ত্ব লিখিত, মনোহর প্রচ্ছদপটে শোভিত ১৩০ পৃষ্ঠায় সমাপ্ত ও ১৩৬০ সালে মুদ্রিত।', 'The Light of Gita', 'Here elaborate introduction in 65 pages has been provided along with the substantial meaning of 18 yogas. Such books on philosophy of Gita are rare in Bengali literary works.  This book is unique among all the books published on the Gita so far. The philosophy of each chapter of Gita has been written meticulously ending in 130 pages with beautiful illustrations on the cover and printed in the Bengali year 1360.', 'A', NULL, 'N', '2023-01-09 07:04:34', '2023-08-04 10:20:32'),
(23, 'প্রেম যোগ', 'সন ১৩৬৩ সালে বৈশাখ মাসে প্রকাশিত ও ১১২ পৃষ্ঠায় সমাপ্ত। ইহাতে রাসতত্ত্ব প্রহ্লাদ চরিত্র, কবীর, রুইদাস, বসবেশ্বর, ঊষিরে, গোটে, অজামিলের মুক্তি লাভ ও শ্রীচৈতন্যের জন্মলীলা শীর্ষক নয় নিবন্ধ সংগ্রত। উষিরে প্রাচীন মিশরের একটি প্রসিদ্ধ নাটিকা ও ইংরাজীতে অনূদিত। গ্যেটে জন্মানীর মহাকবি। রাসতত্ত্বাদি প্রবন্ধ ভাগবত অবলম্বনে লিকিত।', 'Prem Yoga', 'The book is a collection of 9 stories regarding the life incidences of great saints and sages such as Prahlada, Kabir, Ruidas, Basaveshwar, Ushire, Gothe, Ajamil  and Sri Chaitanya. The incidences of Ushire are from Egypt and that of Gothe from Germany. It was first published in the Bengali year 1363 (1956 AD) and has 112 pages. The backdrop of all these tales is Rasatatva - \'Rasa\' means a specific relationship and \'Tattva\' means the truth of the nature of such a relationship.', 'A', NULL, 'N', '2023-01-09 07:04:51', '2023-08-07 12:30:59'),
(24, 'ভগবৎ প্রসঙ্গে শ্রীরামকৃষ্ণ', 'ইহাতে ঈশ্বরচন্দ্র বিদ্যাসাগর, দেবেন্দ্রনাথ ঠাকুর, মহেন্দ্রলাল সরকার, বঙ্কিমচন্দ্র চট্টে াপাধ্যায়, গিরিশচন্দ্র ঘোষ, অশ্বিনীকুমার দত্ত ও বিজয়কৃষ্ণ গোস্বামী এই সাতজন যুগান্ধর পুরুষের সহিত শ্রীরামকৃষ্ণ পরমহংসের ধর্মপ্রসঙ্গ সংকলিত। প্রত্যেক ব্যক্তির সংক্ষিপ্ত পরিচয় নির্দিষ্ট অধ্যায়ের প্রারম্ভে প্রদত্ত। প্রথম পরিশিষ্ট', 'Sri Ramakrishna on Bhagawat', 'It contains the discussions of Sri Ramakrishna Paramahsha Dev with seven Bengali legends of that era, such as Ishwarchandra Vidyasagar, Devendranath Tagore, Mahendralal Sarkar, Bankimchandra Chattopadhyay, Girishchandra Ghosh, Ashwinikumar Datta and Vijaykrishna Goswami, in the context of spiritualism. The book introduces each personality in a brief introduction at the beginning of the each relevant chapter.', 'A', NULL, 'N', '2023-01-09 07:05:20', '2023-08-07 12:31:31'),
(25, 'সাধিকা মালা', 'দ্বিতীয় সংস্করণ নিঃশোষিত। প্রথম সংস্করণ ১৯৪৯ ও দ্বিতীয় সংস্করণ ১৯৫২ খ্রীঃ প্রকাশিত। ইহাতে ষোলজন হিন্দু, বৌদ্ধ, খ্রীষ্টান ও মুসলমান সাধিকার জীবনী প্রদত্ত। তন্মধ্যে ঠাকুর শ্রীরামকৃষ্ণের চারি শিষ্যা অঘোরমনি, গোপালসুন্দরী, যোগেন্দ্রমোহিনী ও গৌরীপুরী স্বামী বিবেকানন্দের দুই পাশ্চাত্য শিষ্যা এমা কালভে ও নিবেদিতা এবং শ্রীরামকৃষ্ণের শ্রীরামকৃষ্ণের সহধর্মিনী সারদা মণির জীবনী প্রভৃতি উল্লেখযোগ্য। ১৯৫২ খ্রীঃ উচ্চবালিকা বিদ্যালয়ের দ্রুত পাঠ্য পুস্তক রূপে নির্বাচিত। প্রয় দেড়শত পৃষ্ঠায় সমাপ্ত সমাপ্ত ও সুন্দর প্রচ্ছদ পটে শোভিত।', 'Sadhika Mala', 'At the end biographies of Sri Ramakrishna\'s four disciples Aghormani, Gopalsundari, Yogendramohini and Gauripuri Swami Vivekananda\'s two Western disciples Emma Kalve and Nivedita has been provided along with Sri Ramakrishna\'s consort Sarada Mani\'s biography written here is notable. This book has been selected for High School curriculum and printed in the year 1952 AD. Finished in about 150 pages and decorated with a beautiful cover.', 'A', NULL, 'N', '2023-01-09 07:05:35', '2023-08-07 12:32:03'),
(26, 'যজুর্বেদ', 'প্রথম ভাগ ৩৬৮ পৃষ্ঠা। আট অধ্যায়ের মন্ত্রাবলী, আচার্য্য-উচ্চ রচিত মন্ত্রভাষ্য ও ভাষ্যালোকে মন্ত্রার্থ এবং বিস্তৃত ভূমিকা, সানুবাদ পাণিণীয় শিক্ষা ও যাজ্ঞবল্ক্য শিক্ষা, যজুবিধান শিক্ষা ও শুক্লযজুঃ প্রাতিশাখ্য এবং পরিশিষ্টে যতিধর্ম সম্বলিত। ৩৯শ অধ্যায়ে প্রায়শ্চিত্ত যাগমন্ত্র প্রদত্ত। বৈদিকযুগে যজ্ঞ-কর্ম্ম কিরূপে অনুষ্ঠিত হইত, তাহা এই অধ্যায়ত্রয় অধ্যায়ন করিলে পাঠক বিজ্ঞ হইবেন।', 'Yajur Veda', 'The first 368 pages includes the first part. Hymns or verses are written in eight chapters, the best knowledgeable teacher on Yajurveda have written the same providing a details explanation and introduction. Vivid and clear teachings of the great Guru / Teacher Panini , Yajnavalkya; along with Yajur-Veda and Shukla Yajur-Veda Pratisakhya (Vedic-era manuals devoted to the precise and consistent pronunciation of words.) teachings, has been included. Also ‘Jyotirdharma’ has been added in the end. In the 39th chapter ‘Yagamantra’ has been written for atonement. On reading this book the readers will know how the sacrifices in front of Gods were performed in the Vedic-era.', 'A', NULL, 'N', '2023-01-09 07:06:00', '2023-08-07 12:32:30'),
(27, 'সামবেদ', '২০২ পৃষ্ঠায় সমাপ্ত, ১৩৬৬ সাল শ্রাবণে প্রথম প্রকাশিত। সামবেদের প্রথম ও দ্বিতীয় অধ্যায়ের অনুবাদ এবং বিস্তৃত ভূমিকা সম্বলিত। পরিশিষ্ঠ চতুষ্ঠয়ে বেদ ও বেদার্থ, ভাগবতোক্ত গজেন্দ্রমোক্ষন, গিলগিটে আবিস্কৃত বৌদ্ধগ্রন্থ ও সিংহলী প্রবাদ আলোচিত। দ্বিতীয় সংস্করণে সামবেদ সংহিতার আগ্নেয় ও ইন্দ্র পর্বদ্বয়ের মূলমন্ত্র, সায়না চাৰ্য্যকৃত ভাষ্য এবং গ্রন্থকারকৃত অনুবাদ ও পাদটীকা সংযোজিত। বাহুল্যবোধে ভাষ্যের দুর্বোধ্য ব্যাকরণ- অংশ যথাসম্ভব পরিত্যক্ত।', 'Sama veda', 'Concludes on 202 pages, first published in the Bengali year 1366. Contains a translation of the first and second chapters of the Samveda and an extensive introduction. At the end on the fourth chapter the Vedas and meanings of Veda, theories on Bhagavat Gita about \'Gajendra Moksha\', Buddhist scriptures discovered in Gilgit and \'Singhal\'(Sri Lanka, the southern most island of India, is the ancient island of Lanka.) proverbs are discussed.', 'A', '1687845311-2937.jpg', 'Y', '2023-01-09 07:06:16', '2023-08-07 12:13:48'),
(28, 'কল্কি পূজা পদ্ধতি', 'উত্সবের সময়, ভক্তরা ভোরে ঘুম থেকে উঠে সূর্যোদয়ের আগে স্নান করে। বিজ মন্ত্র দিয়ে শুরু হয় পূজার অনুষ্ঠান। জপের পরে, কল্কিকে একটি আসন (আসন) নিবেদন করা হয়। তারপর মূর্তিটিকে পঞ্চামৃত দিয়ে ধৌত করা হয় ফুল, দিয়া এবং ধূপের নৈবেদ্য দিয়ে। , কখনও কখনও একটি মন্দ উপর পদদলিত.\r\nপ্রচ্ছদে আমরা সমগ্র বাংলার দ্বিতীয় কল্কি-মন্দিরের চিত্র দেখতে পাব, যেটি 24 পরগণা জেলার ফলতা থানার অন্তর্গত সাহরহাট গ্রামে নবনির্মিত হয়েছিল। এই ছোট বইটি \'মন্ত্রশাস্ত্র\' এবং \'তন্ত্রশাস্ত্র\'-এর উপর ভিত্তি করে তৈরি। বইয়ের শেষে \'ব্রহ্ম-স্তোত্র\', \'শিবাষ্টকস\', \'গঙ্গাস্তবস\', \'দেব্যপ্রধান ক্ষমা\', \'কৃষ্ণ কর্ণমৃত স্তোত্র\' এবং \'দশাবত স্তোত্র\' সহ পূজা, ধ্যান ইত্যাদি সম্পর্কিত অন্যান্য স্তোত্র ও শ্লোকগুলি পাবেন।', 'Kalki Puja methods', 'During the festival, the devotees wake up early in the morning and take a bath before sunrise. The performance of the pooja (worship) starts with the Beej mantra. After the chanting, an offering of a seat (asana) to Kalki takes place. The idol is then washed with panchamrita as abhisek, with the offerings of flowers, diya and incense.Kalki in his murti (idol form) is worshiped in two forms, whereby in the first, he is with a sword while on top of a horse, sometimes trampling over an evil. \r\nOn the cover we will find the image of the second Kalki-temple in the whole of Bengal, which was newly built in Sahrahat village under Phalta police station of 24 Pargana district. This small book is based on \'Mantra Shastra\' and \'Tantra Shastra\'. At the end of the book  one will find ‘Brahma-stotras’, ‘Sivashtakas’, ‘Gangastavas’, ‘Devyapradha Apology’, ‘Krishna Karnamrita Stotras’ and ‘Dasavata Stotras’ along with other hymns and verses regarding puja, meditation,  etc', 'A', NULL, 'N', '2023-01-09 07:06:44', '2023-08-07 12:39:06'),
(29, 'চৈনিক ঋষি লাউৎজে ', 'ইহাতে মহাচীনের শ্রেষ্ঠ ঋষির অলৌকিক জীবনী ও অমূল্য উপদেশ বাংলায় প্রথম প্রকাশিত। তাও-তে-কিং নামক যে বিশ্ব বিখ্যাত ধর্মগ্রন্থে তত্ত্ব \r\nলাউজের উপদেশ লিপিবদ্ধ, তাহার সমগ্র অনুবাদ ইহাতে প্রদত্ত। লাউজের প্রধান শিষ্য চুয়াংজুর জীবনী এবং চৈনিক জেন সম্বন্ধে তিনটি অধ্যায় সংযোজিত। লাউজের দুইটি দুস্প্রাপ্য চিত্রে শোভিত। ১৩০ পৃষ্ঠায় সমাপ্ত ও ১৩৫১ সালে আশ্বিণে মুদ্রিত।', 'Chinese Sage Lauze', 'In this book the miraculous biography and priceless advice of China\'s greatest philosopher and monk Laozi (flourished 6th century BCE, China) was published for the first time in Bengal. His notable work was “Tao-te Ching” the world famous scripture on philosophical and religious Taoism. All detailed translations of the book is written here. His principle disciple Yin Xi biography and chapters about Chinese Zen Theory (a school of Mahayana Buddhism that originated in China during the Tang dynasty, known as the Chan School) has been incorporated here. The book contains two pictures of Laozi which are hard to find. Finished in 130 pages and printed in the Bengali Year 1351.', 'A', NULL, 'N', '2023-01-09 07:06:59', '2023-08-07 12:39:53'),
(30, 'কল্কিপুরাণ ', 'কল্কিপুরাণ ', 'Kalkipurana', 'Kalkipurana', 'A', NULL, 'N', '2023-01-16 05:22:57', '2023-04-14 11:00:59'),
(33, 'দেবীমাহাত্ম্য গোপাল চক্রবর্তী টীকার অবলম্বননে ', 'পন্ডিত প্রবর শ্রী গোপাল চক্রবর্ত্তী-কৃত তত্ত্ব-প্রকাশিকাটীকা ও দুর্গাপ্রদীপটীকা সহ মূল শ্লোক এবং উহার প্রাঞ্জল অনুবাদ। অর্গলা স্তোত্র, কীলক স্তুতি, দেবীকবচ ও প্রাধানিকাদি রহস্যত্রয়, সুদীর্ঘ ভূমিকা, বিস্তৃত টিপ্পনী ও পরিশিষ্ট সম্বলিত। এক কথায় গ্রন্থখানি টীকার আলোকে শ্রীশ্রীচন্ডীর বৃহৎ ভাষ্যানুবাদ।', 'Devi Mahatmya with Gopal Chakraborty\'s Commentary', 'This book contains the original verses of Sri Sri Chandi , the “Tattva Prakashika” and the “Durgapradip” notes given by the great Scholar Sri Gopala Chakravarti’s in lucid translation. This book also contains the “Argala Stotro”, “Keelaka Stuti”, “Devikavach” and “Pradhanikadi Rahasyatraya” along with an elaborate prelude and extensive notes, commentaries and appendices. One can say that this book is an elaborate translation with extensive notes on The Sri Sri Chandi.', 'A', '1687846192-5415.jpg', 'Y', '2023-01-16 05:30:37', '2023-08-07 12:18:23'),
(35, 'প্রব্রাজিকা মহাগৌরী', 'বইটি তার আধ্যাত্মিক গুরু দ্বারা লিখিত মহান সাধক শ্রী শ্রী মহাগৌরী সরস্বতী সম্পর্কে, যিনি তার অতীত জীবন এবং তার ভবিষ্যত ভাগ্যের সাথে সাথে তার অনেক আধ্যাত্মিক অভিজ্ঞতার বর্ণনা দিয়েছেন।', 'Prabrajika Mahagauri', 'The book is about the great Saint Sri Sri MahaGouri Saraswati written by her spiritual Guru, who describes her past lives and her future destiny along with the many spiritual experiences she goes through.', 'A', '1691566946-6006.jpeg', 'Y', '2023-01-16 05:31:50', '2023-08-09 07:42:26'),
(36, 'মহানারায়ণ উপনিষদ্', 'মহানারায়ণ উপনিষদ একটি সংস্কৃত পাঠ এবং এটি একটি ছোট উপনিষদ। পাঠটিকে বৈষ্ণব উপনিষদ হিসাবে শ্রেণীবদ্ধ করা হয়েছে। পাঠ্যটি দুটি সংস্করণে বিদ্যমান, একটি কিছু সংকলনে অথর্ববেদের সাথে সংযুক্ত এবং আরেকটি সামবেদের সাথে সংযুক্ত। অথর্ববেদের সংস্করণ ছোট এবং গদ্যে। সামবেদ সংস্করণ আংশিকভাবে কাব্যিক ছন্দে রয়েছে। এই বৈষ্ণব উপনিষদ বিষ্ণুকে সর্বোচ্চ সত্তা, সাংখ্য নীতির ঊর্ধ্বে, শিবের উপরে এবং ব্রহ্মার উপরে বর্ণনা করে। যাইহোক, বৈষ্ণব এবং শৈব উভয় গোষ্ঠীই সমস্ত হিন্দু দেবতার প্রতি শ্রদ্ধাপূর্ণ শব্দ ব্যবহার করে এবং তাদের একই আত্ম-ব্রাহ্মণ বলে দাবি করে। উপনিষদ বৈষ্ণব এবং বেদান্ত ধারণার একটি সমন্বয় উপস্থাপন করে এবং এটি \"বসুধৈব কুটুম্বকম\" বা \"বিশ্ব একটি পরিবার\" শিক্ষার জন্য উল্লেখযোগ্য।', 'MahaNarayan Upanishad', 'The MahaNarayan Upanishad is a Sanskrit text and is one of the minor Upanishads. The text is classified as a Vaishnava Upanishad. The text exists in two versions, one attached to the Atharvaveda in some anthologies, and another attached to the Samaveda. The Atharvaveda version is shorter, and in prose. The Samaveda version is partly in poetic verses. This Vaishnava Upanishad describes Vishnu as the highest being, above Samkhya principles, above Shiva, and above Brahma. However, both Vaishnava and Shaiva groups use reverential words of all Hindu gods and assert them to be the same Atman-Brahman. The Upanishad presents a syncretism of Vaishnava and Vedanta ideas and is notable for its teaching of \"Vasudhaiva Kutumbakam\", or \"the world is one family\".', 'A', '1691401512-5588.png', 'Y', '2023-01-16 05:34:47', '2023-08-09 09:16:15'),
(39, 'ঋগ্বেদ ১ম খন্ড', '৪৯৬ পৃষ্ঠায় সমাপ্ত, ১৩৬৫ সালে ভাদ্রমাসে প্রথম প্রকাশিত। ঋগ্বেদের প্রথম চারি অধ্যায়ের মূল মন্ত্রাবলী, সায়ন ভাষ্য-প্রাঞ্জল ভাষায় অনুবাদ ও ব্যাপক ভূমিকা প্রদত্ত। পরিশিষ্ট-পঞ্চকে সায়নাচার্য্য, হোরেস্ হেম্যান উইলসন, রমেশচন্দ্র দত্ত, দুর্গাদাস লাহড়ী ও মাধবাচার্য্যের দুষ্প্রাপ্য জীবনী সংযোজিত। বোর্ড বাঁধাই। বাংলায় বৈদিক সাহিত্য রচনার অপূৰ্ব প্ৰয়াস।', 'Rigveda Part I', 'The first Edition was in the Bengali Year 1365 and has 496 pages. The  first 4 Chapters have major/main mantras, lucid explanations and translations and elaborate preludes. The last five chapters present extracts and elaborations by Horace Heyman Wilson, Ramesh Chandra Dutta, Durgadas Lahiri and Madhab Acharya. Written in Bengali, this is an excellent Vedic treatise.', 'A', NULL, 'N', '2023-01-16 05:38:10', '2023-08-04 12:18:18'),
(40, 'কল্কি', 'কল্কি হলেন ভবিষ্যদ্বাণীকৃত দশম এবং দেবতা বিষ্ণুর শেষ অবতার। বৈষ্ণব সৃষ্টিতত্ত্বে অস্তিত্বের অন্তহীন চক্রের (কৃত) চারটি কালের মধ্যে একটি কলিযুগের অবসান ঘটানোর জন্য তাকে আবির্ভূত হওয়ার জন্য বর্ণনা করা হয়েছে। কলিযুগের সমাপ্তি বলে যে এটি মহাপ্রলয় (মহাবিশ্বের বিলুপ্তি) পর্যন্ত অস্তিত্বের চক্রে সত্যযুগের নতুন যুগের সূচনা করবে। কল্কি জয়ন্তী একটি হিন্দু উৎসব যা কল্কির ভবিষ্যত জন্ম উদযাপন করে। কলিযুগের শেষের দিকে পাপ দূর করার জন্য জন্মগ্রহণ করুন। ভাদ্রপদ মাসের শুক্লপক্ষের দ্বাদশীতে কল্কির জন্ম অনুষ্ঠানটি ঐতিহ্যগত হিন্দু ক্যালেন্ডার অনুসারে পালন করা হয়, যখন গ্রেগরিয়ান ক্যালেন্ডারে এটি চাঁদের মোম দশার দ্বাদশ দিন। এই পূজা সারা দেশে হিন্দি, তেলেগু, তামিল, সিন্ধি, ওড়িয়া এবং মারাঠি ভাষায় পরিচালিত হয়।', 'Kalki', 'Kalki is the prophesied tenth and final incarnation of the god Vishnu. He is described to appear in order to end the Kali Yuga, one of the four periods in the endless cycle of existence (Krita) in Vaishnava cosmology. The end of the Kali Yuga states this will usher in the new epoch of Satya Yuga in the cycle of existence, until the Mahapralaya (dissolution of the universe).Kalki Jayanti is a Hindu festival that celebrates the future birth of Kalki who is set to be born near the end of Kali Yuga to eradicate vices. Kalki\'s birth ceremony is observed on the Dwadashi of the Shuklapaksha of the Bhadrapada month as per the traditional Hindu calendar, while in Gregorian calendar it is the twelfth day of the waxing phase of the moon. This puja is Conducted in Hindi, Telugu, Tamil, Sindhi, Oriya and Marathi languages all across the country.', 'A', NULL, 'N', '2023-01-16 05:38:48', '2023-08-07 12:43:02'),
(41, 'Kalki Comes in 1985 ', 'ভগবান কল্কি বৈশাখ মাসের আরোহী চন্দ্রচক্রের দ্বাদশ তিথিতে সম্ভলা গ্রামে পিতা বিষ্ণুয়াশা ও মা সুমতির গৃহে পৃথিবীতে অবতার গ্রহন করেন। 1985 সালে, উপরে উল্লিখিত এই সংমিশ্রণটি মে মাসের দ্বিতীয় তারিখে পড়ে। তাই এটা নিশ্চিতভাবে বলা যায় যে ভগবান নারায়ণ তাঁর 24 তম অবতার হিসেবে 1985 সালের দ্বিতীয় মে এসেছেন। গ্রন্থে বলা হয়েছে যে জন্ম হবে উত্তর ভারতের সম্ভালা গ্রামে এক ব্রাহ্মণের ঘরে। উত্তর ভারতে দুটি সম্ভলা গ্রাম রয়েছে। একটি মোরাদাবাদের কাছে এবং অন্যটি গৌরী মঠের কাছে মথুরা বৃন্দাবন সীমান্তে। মোরাদাবাদের কাছে সম্ভালা গ্রামের জনসংখ্যা 98% মুসলিম এবং সেখানে খুব কম ব্রাহ্মণ পরিবার রয়েছে। ভগবান শ্রীকৃষ্ণের অনুসারীরা খুবই কম e.i. নগণ্য এবং দূরের মধ্যে। তাই সেই গ্রামে ভগবান কল্কির জন্ম হওয়া অসম্ভব বলে মনে হয়। গৌরী মঠের কাছের অন্য গ্রামে প্রচুর সংখ্যক ব্রাহ্মণ রয়েছে এবং বেশিরভাগই কৃষ্ণ ভক্ত। তাই উপসংহার হল এই গ্রামটি- মথুরা বৃন্দাবন সীমান্তে, গৌরী মঠের কাছে- যেখানে ভগবান কল্কি অবতার ধারণ করেছেন। এই বইটি 500 পৃষ্ঠায় প্রকাশিত এবং হার্ড বোর্ড বাউন্ড অভিনব কভার রয়েছে।', 'Kalki Comes in 1985', 'Lord Kalki has taken avatar on earth on the 12th day of the ascendant moon cycle of Baisakh month, in the village of Sambhala, in the house of father Vishnuyasha and mother Sumati. In 1985, this combination mentioned above, falls on the second of May. Therefore it can be said with certainty that Lord Narayan has come as his 24th avatar on the second of May 1985. The texts say that the birth will be in the house of a Brahmin in village Sambhala in north India. There are two Sambhala villages in north India. One is near Moradabad and the other one is on the Mathura Brindavan border near Gauri Math. The village Sambhala near Moradabad is 98% Muslim in population and there are very few Brahmin families there. Followers of Lord Krishna are very little e.i. negligible and far between. Therefore it seems improbable that Lord Kalki could take birth in that village. The other village near Gauri math has a large number of Brahmins and most are Krishna devotees. Therefore the conclusion is that this village-on the Mathura Brindavan border, near Gauri math-is where Lord Kalki has taken avatar.  This book is published in 500 pages and has hard board bound fancy cover.', 'A', NULL, 'N', '2023-01-16 05:39:08', '2023-08-07 12:44:11'),
(42, 'দেশ বিদেশের মহামানব ১ম খন্ড ও ২য় খন্ড ', 'দেশ বিদেশের মহামানব ১ম খন্ড ও ২য় খন্ড ', 'Monks of India and abroad (1st  and 2nd volume )', 'Monks of India and abroad (1st  and 2nd volume )', 'A', NULL, 'N', '2023-01-16 05:39:31', '2023-04-14 10:47:53'),
(43, 'বৃহৎ আরণ্যক উপনিষদ্ ', 'বৃহৎ আরণ্যক উপনিষদ্ ', 'Brihat Aranyaka Upanishad', 'Brihat Aranyaka Upanishad', 'A', NULL, 'Y', '2023-01-16 05:40:00', '2023-04-14 10:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `religious_program`
--

DROP TABLE IF EXISTS `religious_program`;
CREATE TABLE IF NOT EXISTS `religious_program` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `title_english` text,
  `description_english` text,
  `date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'A',
  `bengali_date` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `religious_program`
--

INSERT INTO `religious_program` (`id`, `title`, `description`, `title_english`, `description_english`, `date`, `image`, `status`, `bengali_date`, `created_at`, `updated_at`) VALUES
(1, 'রটন্তী কালী', 'রটন্তী কালী', 'Rattanti Kali Puja', 'Rattanti Kali Puja', '2023-01-20', '1691052152-4660.jpg', 'A', '৬ মাঘ ১৪২৯', '2022-11-09 08:57:55', '2023-08-03 08:42:32'),
(2, 'সরস্বতী পূজা', 'সরস্বতী পূজা', 'Saraswati Puja', 'Saraswati Puja', '2023-01-26', '1685515637-2227.avif', 'A', '১২ মাঘ ১৪২৯', '2023-02-13 10:54:38', '2023-05-31 06:47:17'),
(3, 'শিবরাত্রি', 'শিবরাত্রি', 'Shivaratri', 'Shivaratri', '2023-02-18', '1691052263-5550.jpg', 'A', '৫ ফাল্গুন ১৪২৯', '2023-02-13 10:59:02', '2023-08-03 08:44:23'),
(4, 'শ্রী রামকৃষ্ণ জন্মদিন', 'শ্রী রামকৃষ্ণ জন্মদিন', 'Shree Ramkrishna Birthday', 'Shree Ramkrishna Birthday', '2023-02-18', '1691053348-3713.jpg', 'A', '৫ ফাল্গুন ১৪২৯', '2023-02-13 11:09:05', '2023-08-03 09:02:28'),
(5, 'দোল পূর্ণিমা', 'দোল পূর্ণিমা', 'Dol Purnima', 'Dol Purnima', '2023-03-07', '1691052534-6183.jpg', 'A', '২২ ফাল্গুন ১৪২৯', '2023-02-13 12:03:07', '2023-08-03 08:48:54'),
(6, 'চরক পূজা', 'চরক পূজা', 'Charak Puja', 'Charak Puja', '2023-04-14', '1691052887-9679.jpg', 'A', '৩০ চৈত্র ১৪২৯', '2023-02-13 12:08:42', '2023-08-03 08:54:47'),
(7, 'বাসন্তী পূজা', 'বাসন্তী পূজা', 'Basanti Puja', 'Basanti Puja', '2023-03-28', '1691052789-6362.jpg', 'A', '১৩ চৈত্র ১৪২৯', '2023-02-13 12:13:27', '2023-08-03 08:53:09'),
(8, 'গুরু মহারাজ জন্মদিন / কল্কি উৎসব / পবিত্র মাতার তিরোধন দিবস', 'গুরু মহারাজ জন্মদিন / কাল্কি উৎসব / পবিত্র মাতার তিরোধন দিবস', 'Guru Maharaj Birthday/Kalki Utsav / Holy Mother Tirodhan Dibash', 'Guru Maharaj Birthday/Kalki Utsav / Holy Mother Tirodhan Dibash', '2023-05-02', '1691057611-6320.jpg', 'A', '১৮ বৈশাখ ১৪৩০', '2023-02-13 12:32:39', '2023-08-03 10:13:31'),
(9, 'রাস পূর্ণিমা', 'রাস পূর্ণিমা', 'Rash Purnima', 'Rash Purnima', '2023-04-06', '1691053795-7514.jpg', 'A', '২২ চৈত্র ১৪২৯', '2023-02-13 12:38:51', '2023-08-03 09:09:55'),
(10, 'গুরু পূর্ণিমা', 'গুরু পূর্ণিমা', 'Guru Purnima', 'Guru Purnima', '2023-07-03', '1691052657-1015.jpg', 'A', '১৮ আষাঢ় ১৪৩০', '2023-02-13 12:41:35', '2023-08-03 08:50:57'),
(11, 'ঝুলন পূর্ণিমা', 'ঝুলন পূর্ণিমা', 'Jhulan Purnima', 'Jhulan Purnima', '2023-08-30', '1691055792-5175.jpg', 'A', '১৩ ভাদ্র ১৪৩০', '2023-02-13 12:44:59', '2023-08-03 09:43:12'),
(12, 'জন্মাষ্টমী', 'জন্মাষ্টমী', 'Janmasthami', 'Janmasthami', '2023-09-06', '1691053127-2253.jpg', 'A', '২০ ভাদ্র ১৪৩০', '2023-02-13 12:47:06', '2023-08-03 08:58:47'),
(13, 'মহালয়া', 'মহালয়া', 'Mahalaya', 'Mahalaya..', '2023-10-14', '1685516508-9597.jpg', 'A', '২৭ আশ্বিন ১৪৩০', '2023-02-13 12:49:13', '2023-06-27 14:11:38'),
(14, 'গুরু মহারাজ তিরোধন দিবস', 'গুরু মহারাজ তিরোধন দিবস', 'Guru Maharaj Tirodhan Dibas', 'Guru Maharaj Tirodhan Dibas', '2023-10-21', '1691053580-6686.jpg', 'A', '৩ কার্তিক ১৪৩০', '2023-04-14 07:21:53', '2023-08-03 09:06:20'),
(15, 'কালী পূজা', 'কালী পূজা', 'Kali Puja', 'Kali Puja', '2023-11-12', '1691053486-1755.jpg', 'A', '২৫ কার্তিক ১৪৩০', '2023-04-14 07:24:22', '2023-08-03 09:04:46'),
(16, 'জগদ্ধাত্রী পূজা', 'জগদ্ধাত্রী পূজা', 'Jagadhatri Puja', 'Jagadhatri Puja', '2023-11-21', '1691053923-8778.jpg', 'A', '৪ অগ্রহায়ণ ১৪৩০', '2023-04-14 07:30:17', '2023-08-03 09:12:03'),
(17, 'প্রব্রাজিকা মহাগৌরী মায়ের জন্মদিন', '১৯৩৪ খ্রীষ্টাব্দে ৫ই ডিসেম্বর বুধবার\r\nঅমাবস্যা তিথিতে মহাগৌরী সরস্বতী জন্মগ্রহন করেন।', 'Prabrajika Sri Sri Mahagouri Ma’s Birthday', 'Sri MahaGouri Ma’s Birthday', '2023-11-30', '1691053662-5215.jpg', 'A', '১৩ অগ্রহায়ণ ১৪৩০', '2023-04-14 07:37:23', '2023-08-03 09:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `social_activities`
--

DROP TABLE IF EXISTS `social_activities`;
CREATE TABLE IF NOT EXISTS `social_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `title_english` text,
  `description_english` text,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `social_activities`
--

INSERT INTO `social_activities` (`id`, `title`, `description`, `title_english`, `description_english`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'যোগ ব্যায়ামের প্রশিক্ষণ', 'যোগ ব্যায়ামের প্রশিক্ষণ প্রত্যেক নরনারীর জীবনেই অত্যাবশ্যক। যোগাসন ও প্রাণায়ামের মত স্বাস্থ্যকর, শক্তিপ্রদ ও রোগহর ব্যায়ামের কোন বিকল্প নেই। গুরু মহারাজ স্বামী জগদীশ্বরানন্দের লেখা সচিত্র যৌগিক ব্যায়াম পুস্তকটির নির্দেশাবলী অনুযায়ী শ্রীরামকৃষ্ণ ধর্মচক্রে যৌগিক ব্যায়ামের প্রশিক্ষণ সুদক্ষ প্রশিক্ষক দ্বারা দেওয়া হয়ে থাকে।', 'Yoga Exercise Training', 'Yoga exercise training is vital in every person\'s life. Yoga provides an exciting and enjoyable way to a healthy and powerful body as well as a peaceful and stress-free mind. Sri Ramakrishna Dharmachakra also conducts training on Yoga where people of all ages learn simple and complex exercises of Yoga under skilled instructors.', '1685511042-4343.png', 'A', '2023-01-09 06:11:49', '2023-05-31 05:30:42'),
(2, 'চক্ষু পরীক্ষণ শিবির', 'ক্ষীণ দৃষ্টি ও অন্ধত্ব মানুষের জীবনে একটি অভিশাপ। নিয়মিত চক্ষু পরীক্ষা চোখের স্থায়ী ক্ষতি আটকাতে পারে। তাই প্রত্যেকেরই নিয়মিত, বছরে অন্তত একবার চক্ষু পরীক্ষা করানো উচিত। শ্রীরামকৃষ্ণ ধর্মচক্রে জনসাধারণের সেবার উদ্দেশ্য তাই বছরে দুবার চক্ষু পরীক্ষণ শিবিরের আয়োজন করা হয়।', 'Eye Examination Camp', 'To help the poor and the needy Sri Ramakrishna Dharmachakra also runs an eye clinic once a week in which eye-testing and power determination is done. For the needy spectacles are sponsored. Plans are also being made to enhance the breadth of this engagement to include providing of spectacles at a very nominal charges.', '1685510994-1463.png', 'A', '2023-01-09 06:12:27', '2023-08-08 12:52:06'),
(3, 'হোমিওপ্যাথিক চিকিৎসাব্যবস্থা', 'হোমিওপ্যাথিক চিকিৎসা একটি অব্যর্থ চিকিৎসা পদ্ধতি। কোন প্রকার পার্শ্ব প্রতিক্রিয়া এবং কাটাছেঁড়া ছাড়াই এই বৈজ্ঞানিক চিকিৎসা পদ্ধতিতে জটিল থেকে জটিলতর রোগের নিরাময় হয়। হোমিওপ্যাথিক ওষুধের কোন ব্যর্থতা নেই, বরং অন্যান্য প্যথির তুলনায় জটিল ও পুরাতন রোগের চিকিৎসায় এটি অধিক কার্যকর। ব্রহ্মলীন মা মহাগৌরী সরস্বতীর জীবনকালে তিনি অনেক ভক্তের জটিল ব্যাধি হোমিওপ্যাথি ঔষধ দ্বারা সারিয়ে দিতেন। ওনার প্রদর্শিত পথে চলে শ্রীরামকৃষ্ণ ধর্মচক্রের তরফ থেকে সর্বসাধারণের জন্য  প্রতি মাসে হোমিওপ্যাথি চিকিৎসা শিবিরের আয়োজন করা হয়।', 'Homeopathic Treatment', 'Homeopathy is an effective medical treatment without side effects or invasive procedures, which can cure complex diseases.During the life-time of Brahmalin Mother Mahagouri Saraswati, she cured many devotees with complex disorders through homeopathy. To help the poor, homeopathy medical camps are organized every month from the Sri Ramakrishna Dharmachakra where treatment and medicines are given to help the poor in their ailments and sufferings.', '1685510891-3833.png', 'A', '2023-01-09 06:14:22', '2023-08-08 12:45:32'),
(4, 'সংস্কৃত ভাষা শিক্ষা', 'সংস্কৃত ভাষা শিক্ষা বিভাগ\r\nআদ্য, মধ্য, কাব্য ও তীর্থ, পূজা প্রকরণ, হোমযজ্ঞাদি শিক্ষা শ্রীমদ্ভগবৎ গীতার প্রবচন। প্রস্থানত্রয়ী নিয়ে আলোচনা শ্রুতি, স্মৃতি ও ন্যায় উপনিষ্য, গীতা ও ব্রহ্মসূত্র নিয়ে আলোচনা ব্যাখ্যা ও বিশ্লেষণ।', 'Sanskrit Language Learning', 'The sections of Sanskrit – “Adya”, “Madhya”, “Kabya” and “Tirtha”  as well as authentic Vedic methods of conducting “Pooja”, Homans, Yogyas are taught. Maxims and adages of the Shrimad Bhagavat Gita are also explained and elaborated on.\r\n\r\nThe Prasthanatrayis ( Upanishads/ Bhagavat Gita / Brahma-Sutras) are discussed and explained , as well as the teachings and meanings of the  Srutis, Smritis and Brahma-sutras are explained.', '1685510776-9596.png', 'A', '2023-01-25 12:35:36', '2023-08-09 11:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

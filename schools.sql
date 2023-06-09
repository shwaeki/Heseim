-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 14, 2023 at 11:31 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heseim`
--

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `he_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `he_name`, `ar_name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'אבן אלהיתם  ( אם ליסון לבנים )', 'ابن الهيثم', '118158', '2023-03-13 22:00:00', NULL),
(2, 'אבן חלדון חטב', 'ابن خلدون', '148197', '2023-03-13 22:00:00', NULL),
(3, 'אבן רושד חטב', 'ابن رشد', '198192', '2023-03-13 22:00:00', NULL),
(4, 'אבו חאמד אלגזאלי  ( אום ליסון בנות )', 'ابو حامد الغزالي ', '338483', '2023-03-13 22:00:00', NULL),
(5, 'אחמד סאמח יסודי בנים', 'احمد سامح الابتدائية', '118067', '2023-03-13 22:00:00', NULL),
(6, 'אשבאל אלקודס', 'اشبال القدس', '617019', '2023-03-13 22:00:00', NULL),
(7, 'מח\"ט בית חנינה', 'اعدادية بيت حنينا', '642298', '2023-03-13 22:00:00', NULL),
(8, 'אבדאע לאומנויות ומוזיקה', 'الابداع', '641464', '2023-03-13 22:00:00', NULL),
(9, 'ארתקאא', 'الارتقاء', '616961', '2023-03-13 22:00:00', NULL),
(10, 'ארתקאא יסודי', 'الارتقاء الابتدائية', '616961-1', '2023-03-13 22:00:00', NULL),
(11, 'אלאפאק', 'الافاق', '338038', '2023-03-13 22:00:00', NULL),
(12, 'אלאמאאל', 'الامال', '715219', '2023-03-13 22:00:00', NULL),
(13, 'אלאמל', 'الامل', '128033', '2023-03-13 22:00:00', NULL),
(14, 'אמירה בסמה ', 'الاميرة بسمة', '178137', '2023-03-13 22:00:00', NULL),
(15, 'אלבראעם', 'البراعم', '372250', '2023-03-13 22:00:00', NULL),
(16, 'אלבסמאת', 'البسمات', '620302', '2023-03-13 22:00:00', NULL),
(17, 'אלבסמה', 'البسمة', '338012', '2023-03-13 22:00:00', NULL),
(18, 'בכרייה א', 'البكرية أ', '128041', '2023-03-13 22:00:00', NULL),
(19, 'בכרייה ב', 'البكرية ب', '520304', '2023-03-13 22:00:00', NULL),
(20, 'אלביאן', 'البيان', '630178', '2023-03-13 22:00:00', NULL),
(21, 'אלביאן מקיף מעורב ', 'البيان الشاملة المختلطة', '662486', '2023-03-13 22:00:00', NULL),
(22, 'אל בירוני  יוסדי מוערב (שעפט ג )', 'البيروني - شعفاط ج', '148270', '2023-03-13 22:00:00', NULL),
(23, 'הטנא', 'التينة', '120436', '2023-03-13 22:00:00', NULL),
(24, 'אבו טור יסודי בנות', 'الثوري الابتدائية للبنات', '118299', '2023-03-13 22:00:00', NULL),
(25, 'אבו טור מכין בנות', 'الثوري الاعدادية للبنات', '148239', '2023-03-13 22:00:00', NULL),
(26, 'אלזהרה ', 'الزهراء', '195412', '2023-03-13 22:00:00', NULL),
(27, 'אלזיתונה', 'الزيتونة', '630533', '2023-03-13 22:00:00', NULL),
(28, 'אל סופאראא-(שועפאט יוסדי  בנים ב)', 'السفراء', '616508', '2023-03-13 22:00:00', NULL),
(29, 'אלסופראא תיכון בנים', 'السفراء الثانوية', '662502', '2023-03-13 22:00:00', NULL),
(30, 'אלסלאם', 'السلام', '195404', '2023-03-13 22:00:00', NULL),
(31, 'אלסנאבל', 'السنابل', '526046', '2023-03-13 22:00:00', NULL),
(32, '14', 'السهل', 'אלסהל', '2023-03-13 22:00:00', NULL),
(33, 'גן שעפט אלסהל', 'السهل - روضات شعفاط', '131599', '2023-03-13 22:00:00', NULL),
(34, 'סוואחרה יסודי בנים א', 'السواحرة الاساسية بنين أ', '118356', '2023-03-13 22:00:00', NULL),
(35, 'אלשרוק', 'الشروق', '267484', '2023-03-13 22:00:00', NULL),
(36, 'אלטור יסודי בנים א', 'الطور الاساسية للاولاد ا ', '118125', '2023-03-13 22:00:00', NULL),
(37, 'אלטור יסודי בנים ב', 'الطور الاساسية للاولاد ب', '178160', '2023-03-13 22:00:00', NULL),
(38, 'אלטור מקיף בנים', 'الطور الثانوية للاولاد', '148247', '2023-03-13 22:00:00', NULL),
(39, 'אלטור מכין בנות', 'الطور الثانوية للبنات', '118133', '2023-03-13 22:00:00', NULL),
(40, 'אלעולא תיכון', 'العلا', '633271', '2023-03-13 22:00:00', NULL),
(41, 'מדעי טכנולוגי בנים', 'العلوم والتكنولوجيا للأولاد', '661884', '2023-03-13 22:00:00', NULL),
(42, 'אלעולא', 'العلى', '148262', '2023-03-13 22:00:00', NULL),
(43, 'אלפא', 'الفا', '634857', '2023-03-13 22:00:00', NULL),
(44, 'אלפנאר (3 יסודי מעורב /בגרות)', 'الفنار', '347187', '2023-03-13 22:00:00', NULL),
(45, 'אלקמה מקיף לבנים', 'القمة', '650028', '2023-03-13 22:00:00', NULL),
(46, 'אלווין אלקודס - עתיקה', 'اللوين - البلدة القديمة', '231018', '2023-03-13 22:00:00', NULL),
(47, 'אלווין מרכז הכנה לתעסוקה עטרות', 'اللوين - عطروت', '231018-2', '2023-03-13 22:00:00', NULL),
(48, 'אלווין מערב', 'اللوين - غربي القدس', '231022', '2023-03-13 22:00:00', NULL),
(49, 'אלווין עתיקה - תעסוקה בית חנינא', 'اللوين تعسوكا - بيت حنينا', '231018-1', '2023-03-13 22:00:00', NULL),
(50, 'מאמוניה ', 'المامونية ', '148148', '2023-03-13 22:00:00', NULL),
(51, 'אלמגד', 'المجد', '522482', '2023-03-13 22:00:00', NULL),
(52, 'המעיין - יסודי', 'المعيان - الابتدائية', '120428', '2023-03-13 22:00:00', NULL),
(53, 'מוולוויה', 'الملوية ', '118331', '2023-03-13 22:00:00', NULL),
(54, 'אלמנארה', 'المنارة', '520270', '2023-03-13 22:00:00', NULL),
(55, 'אלנור', 'النور', '128017', '2023-03-13 22:00:00', NULL),
(56, 'אלנור ', 'النور ', '130567', '2023-03-13 22:00:00', NULL),
(57, 'אלוואחה', 'الواحة', '482729', '2023-03-13 22:00:00', NULL),
(58, 'אלוואדי', 'الوادي', '160473', '2023-03-13 22:00:00', NULL),
(59, 'אלורוד', 'الورود', '611624', '2023-03-13 22:00:00', NULL),
(60, 'אלווין אלקודס - העיר עתיקה תעסוקה', 'الوين القدس -  البلدة القديمة للتشغيل ', '231010-3', '2023-03-13 22:00:00', NULL),
(61, 'אלווין אלקודס ראס-אל עמוד', 'الوين القدس - راس العامود ', '231010', '2023-03-13 22:00:00', NULL),
(62, 'אלווין אלקודס - שועפט', 'الوين القدس شعفاط ', '231010-1', '2023-03-13 22:00:00', NULL),
(63, 'אלווין בית חנינא מרכז יום טיפולי', 'الوين بيت حنينا - مركز يوم علاجي ', '231010-4', '2023-03-13 22:00:00', NULL),
(64, 'אליסמינה', 'الياسمينة', '515619', '2023-03-13 22:00:00', NULL),
(65, 'מעון אליע', 'اليع', '202136', '2023-03-13 22:00:00', NULL),
(66, 'אם טובא בנות מכין', 'ام طوبا  الثانوية للبنات', '511550', '2023-03-13 22:00:00', NULL),
(67, 'אם טובא בנים', 'ام طوبا للاولاد', '118042', '2023-03-13 22:00:00', NULL),
(68, 'אדי שור צוותא', 'ايديشور تسفاتا', '120501', '2023-03-13 22:00:00', NULL),
(69, 'אילנות', 'ايلانوت', '120287', '2023-03-13 22:00:00', NULL),
(70, 'אלונים', 'ايلونيم', '120527', '2023-03-13 22:00:00', NULL),
(71, 'ברושים', 'بروشيم', '120295', '2023-03-13 22:00:00', NULL),
(72, 'פסגת המדעים מזרח', 'بسجات همدعيم القدس ', '114074', '2023-03-13 22:00:00', NULL),
(73, 'בן יהודה ', 'بن يهودا', '120071', '2023-03-13 22:00:00', NULL),
(74, 'בית חנינא יסודי בנים', 'بيت حنينا الابتدائية للاولاد', '118075', '2023-03-13 22:00:00', NULL),
(75, 'בית חנינא יסודי בנות', 'بيت حنينا الاساسية للبنات', '118083', '2023-03-13 22:00:00', NULL),
(76, 'בית חנינא מקיף בנות', 'بيت حنينا الثانوية للبنات', '477901', '2023-03-13 22:00:00', NULL),
(77, 'כיח חרשים', 'بيت حورشيم', '120121', '2023-03-13 22:00:00', NULL),
(78, 'בית רחל שטראוס', 'بيت رحيل شتراوس', '120212', '2023-03-13 22:00:00', NULL),
(79, 'בית צפאפא יסודי א', 'بيت صفافا الاساسية أ', '118091', '2023-03-13 22:00:00', NULL),
(80, 'בית צפאפא יסודי ב', 'بيت صفافا ب ', '359828', '2023-03-13 22:00:00', NULL),
(81, 'מעון מיחא שיקומי', 'بيت ميخا', '201901', '2023-03-13 22:00:00', NULL),
(82, 'גבל מוכבר תיכון בנות', 'جبل المكبر الثانوية بنات ', '178061', '2023-03-13 22:00:00', NULL),
(83, 'גן שקומי', 'جن شيكومي', '454033', '2023-03-13 22:00:00', NULL),
(84, 'גן לוריא טרום', 'جن لوريا', '576199', '2023-03-13 22:00:00', NULL),
(85, 'חוואר', 'حوار', '634840', '2023-03-13 22:00:00', NULL),
(86, 'חליל אלסכאכיני', 'خليل السكاكيني', '148072', '2023-03-13 22:00:00', NULL),
(87, 'ראס אלעמוד חטב בנות', 'راس العامود الاعدادية للبنات', '440784', '2023-03-13 22:00:00', NULL),
(88, 'ראס אלעמוד מקיף בנים', 'راس العامود الثانوية للاولاد', '540567', '2023-03-13 22:00:00', NULL),
(89, 'רוואד אלקודס', 'رواد القدس', '641415', '2023-03-13 22:00:00', NULL),
(90, 'גן אלזהראא', 'روضات الزهرا', '469494', '2023-03-13 22:00:00', NULL),
(91, 'גן אלעקבה', 'روضات العقبة', '639732', '2023-03-13 22:00:00', NULL),
(92, 'גנים אלמשארף - שעפט', 'روضات المشارف', '639807', '2023-03-13 22:00:00', NULL),
(93, 'גן אום טובא מיוחד', 'روضات ام طوبا', '623736', '2023-03-13 22:00:00', NULL),
(94, 'גן טיפולי שעפט', 'روضات شعفاط العلاجية', '318006', '2023-03-13 22:00:00', NULL),
(95, 'גנים שועפט', 'روضات ضعفاط', '639765', '2023-03-13 22:00:00', NULL),
(96, 'גן אבו תור', 'روضة أبو ثور', '17047', '2023-03-13 22:00:00', NULL),
(97, 'זהרת אלמדאין', 'زهرة المدائن', '616201', '2023-03-13 22:00:00', NULL),
(98, 'סילוואן יסודי בנות', 'سلواد الابتدائية للبنات', '118182', '2023-03-13 22:00:00', NULL),
(99, 'סילוואן חטב בנים  ', 'سلوان  الاعدادية بنين   ', '198085', '2023-03-13 22:00:00', NULL),
(100, 'סילוואן מכין בנות', 'سلوان  الثانوية بنات  ', '118208', '2023-03-13 22:00:00', NULL),
(101, 'סילוואן יסודי בנים', 'سلوان الاساسية بنين ', '118190', '2023-03-13 22:00:00', NULL),
(102, 'סילוואן יסודי החדשה', 'سلوان الجديدة', '178145', '2023-03-13 22:00:00', NULL),
(103, 'שעפט חטב בנים', 'شعفاط  الاعدادية للاولاد', '148155', '2023-03-13 22:00:00', NULL),
(104, 'שעפט יסודי בנים א', 'شعفاط الابتدائية للاولاد ا', '118273', '2023-03-13 22:00:00', NULL),
(105, 'שעפט מכין בנות א', 'شعفاط الاعدادية للبنات ا', '118281', '2023-03-13 22:00:00', NULL),
(106, 'שעפט יסודי בנות ב', 'شعفاط الاعدادية للبنات ب', '148254', '2023-03-13 22:00:00', NULL),
(107, 'שלווה - פעוטות', 'شلفا', '202380', '2023-03-13 22:00:00', NULL),
(108, 'שקל יד חרוצים 13', 'شيكل ', '231043', '2023-03-13 22:00:00', NULL),
(109, 'צור באהר יסודי מעורב', 'صور باهر  الاساسية المختلطة', '338491', '2023-03-13 22:00:00', NULL),
(110, 'צור בחר תיכון בנות', 'صور باهر الثانوية بنات ', '460584', '2023-03-13 22:00:00', NULL),
(111, 'צור בחר מכין בנות א', 'صور باهر الثانوية بنات أ', '118240', '2023-03-13 22:00:00', NULL),
(112, 'עמל - עטרות', 'عمل عطروت ', '199919', '2023-03-13 22:00:00', NULL),
(113, 'תיכון אקסלנס לבנות', 'مدرسة اكسلانس للبنات', '460022', '2023-03-13 22:00:00', NULL),
(114, 'סוואחרה מכין בנות', 'مدرسة السواحرة الاعدادية للبنات', '178178', '2023-03-13 22:00:00', NULL),
(115, 'צלעה בנים', 'مدرسة الصلعة للاولاد', '118349', '2023-03-13 22:00:00', NULL),
(116, 'צלעה בנות', 'مدرسة الصلعة للبنات', '419267', '2023-03-13 22:00:00', NULL),
(117, 'עבדאללה חטב בנות (מח\'\'ט בנות)', 'مدرسة العبد الله للبنات', '633305', '2023-03-13 22:00:00', NULL),
(118, 'עיסוויה חטב בנים  ', 'مدرسة العيساوية  الاعدادية للاولاد', '192997', '2023-03-13 22:00:00', NULL),
(119, 'עיסוויה יסודי בנות', 'مدرسة العيساوية الابتدائية للبنات', '118224', '2023-03-13 22:00:00', NULL),
(120, 'עיסוויה מקיף בנות', 'مدرسة العيساوية الاعدادية للبنات', '193003', '2023-03-13 22:00:00', NULL),
(121, 'עיסוויה יסודי בנים', 'مدرسة العيساوية البتدائية للاولاد', '118216', '2023-03-13 22:00:00', NULL),
(122, 'סוואחרה יסודי בנות ב (אל פארוק)', 'مدرسة الفاروق', '511592', '2023-03-13 22:00:00', NULL),
(123, 'צור בחר יסודי בנות ב', 'مدرسة شمس الغد', '168021', '2023-03-13 22:00:00', NULL),
(124, 'בנימין רוטמן מגשימים', 'مكشميم ', '358127', '2023-03-13 22:00:00', NULL),
(125, 'הלן קלר', 'هيلن كيلر', '328179', '2023-03-13 22:00:00', NULL),
(126, 'יד המורה', 'يد هموري', '111278', '2023-03-13 22:00:00', NULL),
(127, 'גן תקשורת רמות', '', '130559', '2023-03-13 22:00:00', NULL),
(128, 'גן תקשורת האזוב', '', '136853', '2023-03-13 22:00:00', NULL),
(129, 'מעון יום השיקומי אלווין  (גן שיקומי לשעבר)', 'روضة جان شكومي ', '202141', '2023-03-13 22:00:00', NULL),
(130, 'מעון אלין', 'روضة الين', '202265', '2023-03-13 22:00:00', NULL),
(131, 'מעון אלווין', 'روضة الوين ', '207187', '2023-03-13 22:00:00', NULL),
(132, 'מעון בית חנן', 'روضة بين الحنان ', '207631', '2023-03-13 22:00:00', NULL),
(133, 'רנד - אוטיזם', 'روضة رند  - حزما ', '210956', '2023-03-13 22:00:00', NULL),
(134, 'רנד שיקום', 'روضة رند - الرئيسية ', '212198', '2023-03-13 22:00:00', NULL),
(135, 'רנד בוגרים', 'رند كبار - راس العامود ', '215094', '2023-03-13 22:00:00', NULL),
(136, 'רנד - מעון רב נכותי', 'روضة رند - الرئيسية ', '217657', '2023-03-13 22:00:00', NULL),
(137, 'הדביר החדש', 'دفير هحداش ', '223362', '2023-03-13 22:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

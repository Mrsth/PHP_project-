-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 11:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` varchar(20) NOT NULL,
  `tittle` text DEFAULT NULL,
  `author` text DEFAULT NULL,
  `created` text DEFAULT NULL,
  `updated` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `tittle`, `author`, `created`, `updated`) VALUES
('10', 'Apache Lucene Solr', 'Manish Shrestha', '2022/07/11', '2022/07/11');

-- --------------------------------------------------------

--
-- Table structure for table `blog_detail`
--

CREATE TABLE `blog_detail` (
  `blog_detail_id` varchar(20) NOT NULL,
  `title` text DEFAULT '',
  `image` longblob DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created` text DEFAULT NULL,
  `updated` text DEFAULT NULL,
  `image_desc` text DEFAULT NULL,
  `blog_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_detail`
--

INSERT INTO `blog_detail` (`blog_detail_id`, `title`, `image`, `content`, `created`, `updated`, `image_desc`, `blog_id`) VALUES
('100', 'Introduction', 0xffd8ffe000104a46494600010100000100010000ffdb0043000b090907090907090909090b0909090909090b090b0b0c0b0b0b0c0d100c110e0d0e0c121912251a1d251d191f1c292916253735361a2a323e2d2930193b2113ffdb0043010708080b090b150b0b152c1d191d2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2cffc0001108010e017b03012200021101031101ffc4001c0001000202030100000000000000000000000607010502030408ffc4004e100001030302020506090a010a07000000010002030405110621123107134151611422718191a132343642727482b1b21523243352627392b3b4161744536383a2c1d1f0f126434594a3c2d2ffc4001b01010002030101000000000000000000000001020405060307ffc4003311010002010302030409040300000000000001020304112112310541511361a1f02232718191b1c1d1e1062352f1141542ffda000c03010002110311003f00b6d11101111011110111101111011110111101111011110116561011656101111011110111101111011110111101111011110111101111011110111101656165061111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110165616506111101111011110111101111011110111101111011110111101111011110111101111011110111101111013d6b892bc35773a5a7b756dc61732a22a68e523aa9070c8f8cf0700780473dbb544cc446f2b5296bcc56b1ddb0f5a2ac2b3586a1a924432454919f9b4ec05f8f1924c9cfa30b512dc6eb39ccd5f59213fb53ca7dd95816d7d23eac6ee8f17f4eea2d1bded11f15cdba7ad5314c6e355534d4b4d3d479454c8d862c4b2e1a49c971c3b934649f42966a1bb55d9bf255a6db572b5f470324aa99c449248e7370d6c9d603cf771f48ee534d644d66d68da21e59bc0ef8f2d70d2f1336fbb688f394ebd6b2abda1d71708cb5970a68aa19b032c1f9a9878969cb0fb94c2db78b55d59c5473873c0cbe178e0999e961dfd63217be3d463cbf565afd5786ea74bce4af1ebe4d922c0ff9acac86bc4444044594184444044440444404444044440444404444044440444404444044440444404444044440444404444185d551534f4b0cd515123638216f1c923ce1ad1ff5b05da7390aaed4b7c92eb54e8627385052c8e6c2cdc75b23496999e3bf9f0f77a4af0cf9a30d7aa5b1f0ed05b5b97a23888ef3e9fcb95f75456dcbaf869cbe9ade03bcc04b659da33bcce1b81fba0fa73d9beb845f93f44d3537c173e9e82270031874b236678c0f5a824101a9a8a4a51cea6a69e0f548f0d3eeca9feb9788ed74300d8495cc200e5c31c4fdbde16b715ed7ae4c969751abc18b0e6d3e97146d1bef3f779cfc55ea7722f5db6df35d6ba96823c81338ba77b79c54ecfd63f3dfd83c48ee5af8acda6223bba4c97ae3ace4b4ed11ca51a468a0a3a4aed455830c64328a527b208f77c8dcf6b88e11e8f1512aaa99ab6a6a6b263f9da995f2bbf7788ecd1e81b0532d655b0d2d1d0d9294358c73639258d9b064111c44cf41233f67c541d65ea662911863cbf369bc2eb6cf37d6648e6ddbdd11fb8b9c524b0c8c9a191f1cac398e48dc5af69f021705e9a1a1adb9d4b2928a30f99c389ce3911c31e71d64aeeeeeed3cbc5625626678eedc64b52b599bed11e7bf6d939d35a9e4b8c8cb7d6b3359d5b9f1cd130f04cc66c5d206ecd3ee3e1c94b41f0ee55f574f43a62925b55ade24bad4347e51aedbac8c11f0411c9d8f823e68df99df6da52feeae8bc82b1fc55b4ec06391e7cea985bb649ed73793bdab798736d318af3cb80d76826f59d5e9e9b63f9e76f44b11022cd6884444044440444404444044440444404444044440444404444044440444404444044440444404444058c959584180e6925b91c4d01c467700f2d95437a83c96ef7683180dab95edfa329eb47dea6f64b89add43aa8076636b699900ece0a773e0247a4e4fad47b5ac1d55e19301b555244f3f4a32623f705acd64c64c3d51e52eabc12274bac9c37ffd563f49fdde2d2f01a8bf5b01196c1d7d53bc046ce16fbcfb96f75ec99759a1cf215531f5f0307fc579f41c1c75b75aac67a9a6869da7b8cae2f3f72e9d6f2f1dda963ec86863dbc647bdcbc623a74b33eb3fab3ef6f6be315af9563f4fe517270093b0032727900ac4d236c65b6db35ceac75735633af797ec61a360e2634f6ee3ce3e9f0510b05a8ddee70c0f6e6920e1a9ac27918da7cd8bed9f703dea5facee3e4b6f8adf110d96bce1e1bcdb4d1e38b61fb470df6a8d2d7a2b39ade5d97f17cd6cf929a0c5dedccfd9f3cfe083dcaba4b9575656bf3f9f9098da7e642df358df6632bc68b6567b3575eaa0c54ff9b8237015554e6e59103bf0b01d8bcf60ece67c70b6b65b71ceede4ce2d2e2fa53b56b0e9b65b2beef5429691b8c00e9e778cc54ec3f39d8e67b876fbc4bae1596ed2745f92ed4d0eb94cd0f9a67f9cf6e463ae9cf6b8fcc1d9e81877b2e35f6cd296f8a82dd1b3cae469744c779cec9d8d4d41e64f777fa06d5e4924d3492cd33dcf9657ba491ef3973deedc925665a634d1d35e6df934b8a3278adfda648db14768ff0029f7b89739c5ce7b9ce7bdc5ef738e5ce73b72e24f69ed5d94d533d1d4d355d39c4f4f23658ce7192362d3e04641f05d6b0b062769de1d04d2b7acd6d1c4ae6a0ac86be8e92b21398ea2264a37dc123769f10765ea50bd0b5a5f4d5f40e3f1695b3c59ec8e7ce40f4107f994cd7498727b4a459f2cd6e9ff00e367b62f4656561657ab11844440444404444044440444cf8a0227b53da80888808888088880888808888088880888808b5d557cd3f432c90565dadd4d3c6d6ba48aa2aa18e46070e205cd7b81dc6e16c039ae6b5cd702d7005a41c820ee08283288880ba6a25ea20a99f19ea61965c0ede06972eedd6307093d88efcab5d15362f4f6b8e4d4504f927b5cd7b1ff00f12b6faf29f8a9ed5543ff002aa25a771f0959c63f09f6af236ddf917585b78011475b2541a6c7c16896277145f65d8c7810a41aba1eb6c17276326984756d1fc2782ef7656b2b8e7d85f1cf78ff006eaf3ea2b3e2387514ed688fd625e2d0f4fd5da27a8230eabad9de0f7b22c423ee2a2dab250fbf5c8ee44429e101bb925b134e00f49c2b06c14de4766b3d391873692273fe9c838ddef2a296ab77e57d5178af95bc547417099e33bb65a96bb86367d90038f8e3b94e5c7338698a3dcae93554a6b351abbf31113f9ed090e9ab48b45b236cc036aea71535ae27e0bc8d999ee60dbdaa017cb89badcaaaa81fcc877534a3ba08c90d3bfed6ee3e953bd59723436a9218dd89ebc9a68f0771191995fecdbd6a1ba7f4ed45e5ed965e386d6c710f91b96bea483831c27bbb1cef50df714d4c4ccd74f8defe156ad632788ea67bf6f9f843aac961abbdcc784ba2a189dc351538dc90778a1cf37f79e43d3b19c5c6bed9a5edd0d3d2c51890b0b68a99a4f9c473965237e11cdc7b7d6bd171b85b34f5be2e08d8d6b1bd4d1524786f58e68d80ee039b8ffc4ef5856d6d5d7d4cf5754f2f9a53977ecb5a393231d8d1d83d677dd56d34d257a639b4ad8ab97c6727b4c9c6289e23d7e7d7ee870a8a8a9ab9a6a9a990c934cee291eeed3e03b87201752c173470824e5c785a064b9c7b801badfdb749df2bf85f2b1b434e772faa6e66703dad806ffcc47a16beb4be59e237974b973e1d2d3fb931588f9ecd01200c9200ef2401ef5b7b6e9ebe5d385d0d39829ddfe73561d1b48ef6478e33ec0a5628347e976b26ab77945701c5199f13d53bb33145f05a3c703d2547eebaaeeb710f869f3474872d2c89df9e91bcbf3928fb863d6b2670d31739279f486ae35f9f59c6929b57fcaddbee8f3486c74360b2dc5b48caf755ddea609639787f551b23fce39a5accb41db6c9254b31b055569507fc416ac7755e7c4752e56a8cecb65a4bc5a9c46d0e57c6705b0ea222f6ea9988de7e7c9c9656116634c2222022220222202d3deb5258ac1107dc6a43657b4be1a6847595530dc659183cbb32481e2bc3ac353c7a6eded7461925cab0be2a089df041681c53c83f65991dbb92076e454d65b1dff59dcaaa533bcb4481d72b9d502f0d7386d1c6ddb89f8e4d18006390d94c479a520ba74a57790bc5b28a968e1e4c96b099e63e21a0b6307c375a03aab5f5c8974571bc4b9e42dd4ee637d03c9a21f7ab62cfa2349da1b1b9944caaa96804d55c1ad9e52edf76870e06fd9685256b58c01ad01ad0300340007a0053bc1ba8233f49a017976b1039f11fca781ea5c5baab5ddb5c0cb73bbc44765c62739a7ff7519fbd7d01ed5c1f1c52b4b24635ec3cdb23439a7d21db2751baa5b5f4a57589cc6dda8a0ab849199a8ff33381b79dc0498cfa32d5655a2f967be531aab6d43656b486cd19f32681e4678258ddb83ddd87b095a2bdf47da66e8d924a5885b2b4e4b66a2606c4e77fada7d987c7183e2aac961d4ba26f519c886ae21c51bd85cea5afa6e2c107965879107769eeed6d123e8345a9d3f7da1d416d82be97cc27f3753038832534ed038a37e3dad3da083dbb6d95502222022220222202222021444143748e3ff145f3eaf45fdab15e74df16a5fe043f802a33a47f9517cfabd17f6ac57a537c5a97f810fe00a652ed44450811110782e36f8eb7c824d84f435b4f594ef3d858e1c6df439b907d47b177d55347574d554b2feaea217c2fc73e178e12bd098f12a3a616ebb711e9d9c1ad11b18d68c88d81ad1de1a30178ad56f8edb471d33087485f24f51201832d44ce3248f3eb3b7801dcb618f12b0402083b82307c426d1dc8bda226bbf1286c96b93545da5aeaa2e65928c9a5a466ed7d6f56ef3ded3cc464e77e6401cb9990d7d75bac943d74a1ac8a2688a9a08434191c079b1c4de5ff0025eb95eca681ef6c523c46d1c3153b03a479e4191b761e03703d014565d3d77bf55796df2a052c032da7a1a37091d147fb2f988e1e23f38807d230b1ed59c713348ded2d9d325353311a8b74e3a768fdbdf3e728657d7d7de2b8cd287cb513799041035cfe08fe6b226019c78e37e6b756dd1977abe092b9cda18363c03864aa23d1f01bebcfa0764e296df65b2c123a9e1a7a585ade29a6790091fb52caf393eb2a3b75d6b047c505a63eba4cf09a999a442df18d9b38faf03d2b0e74f4c7f4f3db796eebe25a8d4ff67c3f1ed11c6fe9fa47c5b682dda634dc3e52e6c3090306aaa9dd654c87f65ae779d9f06851cbaeb4aa9b8e1b54669e23b1a994033bbe830e5adf4ee7d0a2f5557595b2baa2ae796699d9f3a439e11dcc03cd03c000ba17864d5ccc74e28da1b0d2f82d62ded7553d77f7f6fe597be491ef9247bdf23dc5cf7c8e2e7b89ed2e71cac22e2e7307c27347d27340f7ac1e65bf88db888493464265be364036a6a3a890f8190b621f79566f6286e84a2e1a4aeb8387c6a510c271ce28320b87a5c4fb14cd6ff474e9c51bf9be73e379a32eb2db7970222cacb69984444044440444ee41436baada8b9ea8b8c3112ef26960b4d233b03da5ad237ef7b8ab9ac969a4b25b286db4ed686d3c404afc79d34e40324af3dee393ff006da93a90d6eb893adf82dd5c0c99e441aedb3ed0affeff0049569481111550222202d3dfb4f5a75152c54b706ca1b0ccd9e2969de239a3236706bc83b386ce18f78c8dc220d75a6cb66b240ea7b5d1c54d1bcb5d216713a495c360e924792f27d256c5110111101147af9ab74fd8331d64ee96b38439b45480495241190e782435a397c223c32abfafe94ef7217790d150d1c59f35d54e7d44bcbb482c67b8a9d85c28a89ff295acb39fca545cfe0f9253f0fb79fbd6da83a53bdc65be5f4345570e777d297d3cbea24bd9ee0a7a645c08b4162d59a7f500e0a2a82cab6b72fa3a9023a9000c92d6e4870f104adfaa822220a1ba47f9517cfab517f6ac579d37c5a93f810fe00a8ce91fe545f3ead45fdab15e94df16a4fe043f802b4a65da889baaa0455c6acd7d77d3f77adb7535150cb153c14f2b5f399fac2648f8c8218e01583048e9a0a794e03a586290869d817b438819ec41dc8a3f7ad5ba72c24c759545f5400228e91a26a9c1e5c6d0435bf69c142ea7a56a87388a1b2b034670eaba9739c4779642d03fde2a769365a88544b45ea7afd4d05d65aba6a681d4753142c14c64c383e3e325dd612a5aa07124637e4b5771b8d6d3662b7daaaeb6a08c82d0d8a9984f6be5908cfa815b65e3adb8db6ded6beb6a6381a7241938b7f53412ab6eddf67a62e2f1f47abddfeb941eb2cdaeef52092b9b031ad24c70bea5ad863fa31c61ded249f1588b42de1dfadada18c6d9e064d21ffea16fe7d6ba7232e103aa2a9c3fd0458693f4a52dfb96a6a35e4e76a5b746cfdea899cf3fcb181f896b6f4d344ef7b6f3f8babc59bc56d48ae1c7158fb223f37645a0a218ebeeb33bbc43046c1ed712bdb1685b0b306596ba5c73e398307b2368fbd462a356ea59c102a63801eca6858d3fccfe23ef5a9a8aeb8d51fd26b2aa6edc4d348e6fa9b9e1f72f29cda6afd5aeecb8d1f89e5e72e688fb3f8884f64b4f47b6f04540a00e1cc54553e6909fa0e793ee5c69ae9a33caa968ed96e8e6a89a411c5e4f42c60039b9ee7ca1a7840c9271f7aaef668e58c900068ddc4f2000df2558fa52c0fb6c26bab198afa96802338fd1a13bf57f48f37fb3b17a61c9396db52b110c5f10d2534787da67cd6b5a7b46fe7fb250c6b5a30d0001c834600f505c9022dab8f1116506111101111011110517d20504f6ed4d55511e58caf10dce964ec133385afdfc1cdc9fa43bd5bda7ef34b7db5d1dc6070cc8ce0a98f238a0a9600248dc3bc1dc78107b579755e9b83525b4d371362aca773a6a0a870c88e5c60b1f8df81db0763c0fcd54f5bae7a9345dd2a62ea9d0cc385b5d4353c460a963721af696f3ede07b7de0e15bba5f40a2865aba45d295ed60ab95f6da8380e6560261cfeed4301663d3c3e8529a7b95a6ac034b5f45383cbc9ea2193f038aaa1ea44e7ff74f6a022642202222072ed55eeb7d6ceb6196cf6791bf9408c56d5370451b5c33d5c5d8652373fb23c4ed22d5b7e1a7acf53571969ac99c29681aec11e5120278dcd3d8c1971f463b554da3f4e4ba9eeb2beb1d2bedf48f6cf7395ce771d54b212f10719df2fdcc879e3b47129880d37a3ef5aa1e6adf23e96dcf91ce96be706496a9f93c5e4ed79cb8e720b89c67bc8c2b52d7a23485a9aceaedb1544e31c5537102a67711b67320e01ea685218e28e1645144c647144c6c71c71b4358c6347086b5a3600762ec4dc79bc82dfc3c1e474bc1cb87a88b87d9c2b4375d0da46e8c7f15ba3a49ce4b6a2dc1b4d2871ed218380fda69527450285d45a4af9a5a58ead92be6a264ad34d71a5e28a4824cf9a260d3963bb88383de33853bd11ad4ddbabb4dd9ed1746b49a69f01adad634648701b0900dcf7f3ec204ea6821a88a58278d92432b5d1cb1c8d0e63d8e182d734ed82a8ad59a7aa74b5da1752492368e77f95daa705dd640f8dc1c622e3bf130e307b4119dc156ee95f5eb45a2d2b7d66a1b3d2571c36a5b9a6ae637932aa2003f03b9db39be0ef05bd554286e91fe545f3ead45fdab15e94df16a4fe043f802a2fa47f9517cfab517f6ac579d37c5a93f810fe00ad29977222762aa144f493f29ef1f52a2fe82956add6d2db69e1b25a240cb80a581b70ab18fd0f3137f331676eb08e67e68f13e6463a44f95972fab5bff00a2b8e89d31fe23b8cb3d6b5ceb55039afab04bb35550ef3d90711df1f39e739c607cec8bedc6e97569ed197fd4a7caf8bc92df23cb9f5f561d24952e27ce741193c4e3dee240f13c858f41d1b68ea46b3ca69ea2e128c12fad9dfc39f08a2e18f1ea2a631b191b191b1ad6318d6b18d600d6b5ad1801ad1b003b172559946ef0dbad168b4b258ed9434f48c95c1f2b69d81a1ee68c02ef52f7222805c331c9c4d058fe1d9edc8763c085c8ad65cec96bba341a98cb660311d440eeaea198e587b7723c0e42adb7db88dd7c7159b6d79da3f172a9b1d8aaf26a2dd48f71e6eea9ad7ff33307deb4f51a22c32e4c2faca67767573758dfe59839692e167d616825f475b70aaa5cecea59a733341fdb8013ee07d4b34753d25485ad859598c8c9ae8a998d1e93280f5816bd2d3d37c73bfd8e8b169b3d29ed306a636f7cedf097654683ad1bd2dc61906f815313987f9a3247b96aaa34a6a7833fa109c03b1a59a3767d52169f729e5b23d5796beed556ee003f554903cc84fef4ae706fb18b72ad3a3c578df69853fef35982dd3368bedf3df844b4ee946d03a3aeb9064b5c066189be7454b91cc13cdfde7fee65983f72ca2cbc78eb8e36ab4da9d4e4d5649c996779374445e8c6165611011110111101111016b2ed62b2df21105ce9229dadc989e416cd093ccc52b70e1ed5b344156dc7a2a9389cfb45dc709f830dca3248ff006f06fed8cfa54727e8e35b44e770d0d05463e7415910e2f11d786157aa6ca7794eea08e86d76cffd166c7ee55d21fba65c7f20f48741bc76ebf45c3db47348ec0ff6129fb95ffb26ca7a8dd41c1abf5d5a246c73d7d7b4e71d45e202fe2c1e59a8687fb1ca6d64e93e8677320bed30a27b8f08aba6e392933feb187323478e5c3c429fd4d251d644f82ae9e1a885e30e8ea236c8c23c43c10ab7d4fd1c40229abb4e35ec9180be4b69717b2468dcf92b9c721dda1a4907b31c8b7891664724533239627b248e46b5f1be370731ec70c8735cdd883d8b92a5f416aa9ed35b05a2b1ee36aad9843107e7f41aa79e16f0e7931c7670ec273b6fc57485598d90a63a4fb999ef5150027a9b551b5ce683fe71523ae71fe50cf6ab1746da1b66d3f6ba62d0da89e315b5a7182ea9a802470381f3461bf655437c69b8eb3b8c1279c2a751c744e07b58da88e9b87d830be80d95a7b24444554088880a35ad6d2dbb69eb9461a1d5346c35f4879912c0d2e2d1dbe73789beb52558201c82320ec41dc1076c148e053dd175cfa8bc575b1ce3d55ca93ca2204ede514c77c0ef2d76ff00455c5daa80d364dbb59d9636123aabd5450fd9775b4d8f7abfd4dbb92a1ba47f9517cfab517f6ac579d37c5a93f810fe00a8ce91fe545f3ead45fdab15e94df16a4fe043f802994cbb53b111550a2fa46770eaaba3b19e1a4a1763bf10e70ad5d21696d9f4fdaa94802792115758e18cbea6a0091e491dd90d1e002aa3a49f94f78fa9517f415dd45f13a1fab53ff4daad6ec97a111155022220260144418c78a63c56510631e2b28880888808888088b2830888808888088880888808888088880b040c2ca14146f48d6b8a8750cb240d0c65d295b5d86ec1b51c4e8e470f4901c7c4ab7f4fd6bae563b157bce64aaa0a596523fd21600ff7e5567d29c919bbd9a20471456e924900e61b24e719fe52a7da2a37c5a4f4cb5dccdbe293ecc84c83dc42b4f64a9fbeb9d6ed65749de306975132b7279703aa19540fb0afa041040237046411da0ee0aa63a4eb61a7be475dc244376a46873872f28a71d4b80fb3c05589a2eecdbc69eb64ee703514ec1435833b89e9c0613f6870b87d249ec246888aa81111010903249000dc93b00077a28e6b4bab6d1a7ae530762a2a9868290677335434b7887d11c4ef520a8b4ee6e1acecb2b37ebaf735778f034cd524fb02fa01535d17db4d45eeb2e45b986d748618dc47f9cd561bb1f06839fa4ae5536ee9950dd23fca8be7d5a8bfb562bd29be2d49fc087f00545f48ff002a2f9f57a2fed58af4a6f8b527f021fc014c92ed4ec44ec554289e927e53de3ea545fd0577d17c4e87ead4ff00d36aa43a49f94f78fa9517f415df45f13a1fab53ff004daad6ec3bd1115411110111101111011110111101111016561650611110111101754c676c53ba08db24cd8e47451bdfd5b24903496b5cf00e013b1383e85da88294875beadb66a0ada8bb36576646c15f6a7fe6e3a7637258da50720119c8393c40ee4e72db6ed378b55ee9595b6ea964d11c0781b4b0bf192c998770e1ff00590b59a97495a752421d3834f5f133869eb61683234024f572379399e07d442a8eb6d9abb45568a9e29a9b7e18ee1444ba927683b365c8c7d978f6f356e245fe0f8a2aaed5d294ac11c77ab7f59b0cd4db8b439de2e825206fe0ff005297526bad13561b8bb4503dc37656324a7737d264686ffbca3a66049916b06a1d2e4710be5a31dfe5f4bffed78ea35968ba6fd65f285de14cf3527d94e1c540dfe7c578ae973b7da28aa2bebe61153c2324f37bdc7e0c71b79971e40283dcfa51b544d7b2d34351552ee1b2d57e8f4e0f63b87790fa30d5019eaf566b5b8b23025ad9da5dd54300eae8e85aed8b8efc0d1de4924f2df929dbd462aa4b9eb5d478633867ba4ed86360f3994744c1c39711d8c6e4b8f693e2affa6822a5a7a7a68470c34f0c7044dee646d0c68f728de91d2349a6a9e47bdeda8bad4b5a2aea83486b5a0f108200770c0773da4ee7b036521267711ed5f61ff1059aa69630d15b0115540e7600ebe307cc27b9e32d3e907b1551a3751bf4d5d2565671b2df56e6d3dc58f078a9a68dc5a262d1be5bb87f877f0abe30abbd71a21f7174b79b3463cbf8735b4830d15800c09222703ac1c88f9c07611e74c4f90b098f8e463248ded7b1ed6bd8e610e6bdae190e691b107b172545e99d6975d36ef21a889f536d8e4731f4731eaea28df9f38425e36df72d231e82726d4b66b1d2574630c17382294819a7ae70a69da4f670ca403ea242898d8481174f9551f0f1f94c1c1fb5d6c7c3edcad25cf59e92b531e66b943513346d4f40e6d4cee3dc4467847da700a06fa492289924b2c8c647131f248f91c1ac631a389ce738ec00ed5456afd4536a7bb43151364928e090d25aa1683c7532cae0d32f09df2f380dee18e592b96a4d6378d4d2328608a482864918d82df4d9967ab901cb7ae2d1976fb868181e24654df44689369eaeef77630dd5ccfd1e0c8736818e1be4f23210704f60d873c9b76e65290e93b0b74ed9a9685dc2eab7e6a6be46ee1f55201c401fd968c35be0df15be442ab2850dd23fca8be7d5a8bfb562bce9be2d4bfc08b97d00a9be936df2c37f1584384174a28cb5f8dbada76f532333de0701f5a9ee98d6163b95ae88555752d2dc2086382ae1aa9a38499236f09922e32016bb1918e59c1e4ad3d84b53b1682b35968ca16b8cf7ba1716824b6964354fdbbdb4c1c56f192472323923707324635f1b9a72d735c38810477aa8a33a4af94f78fa9517f415dd45f13a1fab53ff004daa91e927e53de3ea545fd0577517c4e8bead4ffd36ab5bb0f42222a82222022220222202222022220222202cac2202222022220222202e124714ac7c72b18f8de0b5ec91a1cc734f639aedb0b9a2085dd3a37d295ee7c94a27b6cce25c7c85cdea0b8f69824059ecc28b54f4537a638f91de2825676794d3cf03b1e3d597856ea6ca77914a9e8c357e7025b3119f85e5138f775395e983a2bd44f23ca6e96c85bfea23a89c8f538463deae14d94f5255fdbfa2cd3d016bee3575b7070e71e5b4b4e7c0b21f3fff00914da8adf6eb740ca6a0a6829606f28e9d8d8db9ef3c2373e2bd48aa83002222026111047afda3f4eea0e296aa07435bc386d6d2111d46dc83ce0b5c3c1c0fa957b5fd16ea089ce3415d6fac8b3b36a43e9a6f5801f1fbc2b8d14c4c8a23fc9deb9e2c7e4ca3c671c46b69f87fe7ee5b6b7f4597d95cc372b850d1c3904b28dafa89b1dd9786463deae14d93aa64686c5a4f4f69e6e6869f8aa9cde192b2a4896a9e08dc71e0000f73400b7d8088a0111106aef963b65fe864a1af638b788490cb190d9a9e60081246e2319e79db07382ab0abe8b751b2470a4aeb6554393c0ea8eba9e4c7ef3035edff00795c69b2989d853b4fd15ea2796f94dced7033b7a96544e47a9c18df7ab3ec56b96cf6ab7db24ac7d61a38cc2c9e48c44e318712c670827668c346fc805b3d91267715d6abd0174d4177adb8c171a3822a8869e211cb14ce78eaa3e024969c2b029e330c34f112098a18a3246c096b437202ed451b822220222202222022220222202222022220222ca0c22220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202cac2ca0c2222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222ca0c6c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b22206c9b2220fffd9, 'Solr (pronounced \"solar\") is an open-source enterprise-search platform, written in Java. Its major features include full-text search, hit highlighting, faceted search, real-time indexing, dynamic clustering, database integration, NoSQL features and rich document (e.g., Word, PDF) handling. Providing distributed search and index replication, Solr is designed for scalability and fault tolerance.Solr is widely used for enterprise search and analytics use cases and has an active development community and regular releases.', '2022/07/01', '2022/07/01', 'Apache Solr', '10'),
('200', 'History', NULL, 'In 2004, Solr was created by Yonik Seeley at CNET Networks as an in-house project to add search capability for the company website.\r\n<br>\r\nIn January 2006, CNET Networks decided to openly publish the source code by donating it to the Apache Software Foundation. Like any new Apache project, it entered an incubation period which helped solve organizational, legal, and financial issues.\r\n<br>\r\nIn January 2007, Solr graduated from incubation status into a standalone top-level project (TLP) and grew steadily with accumulated features, thereby attracting users, contributors, and committers. Although quite new as a public project, it powered several high-traffic websites.\r\n<br>\r\nIn September 2008, Solr 1.3 was released including distributed search capabilities and performance enhancements among many others.\r\n<br>\r\nIn January 2009, Yonik Seeley along with Grant Ingersoll and Erik Hatcher joined Lucidworks (formerly Lucid Imagination), the first company providing commercial support and training for Apache Solr search technologies.[citation needed] Since then, support offerings around Solr have been abundant.\r\n<br>\r\nNovember 2009 saw the release of Solr 1.4. This version introduced enhancements in indexing, searching and faceting along with many other improvements such as rich document processing (PDF, Word, HTML), Search Results clustering based on Carrot2 and also improved database integration. The release also features many additional plug-ins.', NULL, NULL, NULL, '10');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cmt_id` varchar(20) NOT NULL,
  `author` varchar(30) NOT NULL,
  `content` text DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cmt_id`, `author`, `content`, `createdDate`, `blog_id`) VALUES
('1d1723ed895fb084a64d', 'swatantra@swatantra.com', 'I really liked this blog. I will also this to my friends.', '2022-07-11 10:43:17', '10'),
('c373ce16b1e4e75c142a', 'manish@manish.com', 'Very nice blog. Well explained.....', '2022-07-11 10:42:00', '10'),
('fee8ac2976e010fa66e8', 'sumesh@sumesh.com', 'Concept cleared from this blog.....', '2022-07-11 10:42:26', '10');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` varchar(20) NOT NULL,
  `fullname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `msg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `fullname`, `email`, `msg`) VALUES
('265f2969af4ae07a55e8', 'Sumesh Gajmer', 'sumesh@sumesh.com', 'I want to make a blog in collaboration with your team.'),
('a3dbba133ac1e6aa125a', 'Sumesh Gajmer', 'sumesh@sumesh.com', 'I am loving it.'),
('aa1381421756d4e82181', 'Manish Shrestha', 'manish@manish.com', 'Nice One'),
('aa4f228a512a91a6a520', 'Swatantra Manandhar', 'swatantra@swatantra.com', 'So cool!!!!');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `user_id` varchar(32) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `the_password` varchar(30) DEFAULT NULL,
  `registered` int(11) DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `the_role` varchar(15) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`user_id`, `first_name`, `last_name`, `email`, `the_password`, `registered`, `created`, `updated`, `the_role`) VALUES
('22b953bb325c6b10503d', 'Sumesh', 'Gajmer', 'sumesh@sumesh.com', 'test', 0, '2022-07-09 07:27:32', '2022-07-09 07:27:32', 'user'),
('2eacae5f7661a13c9f4e', 'ram', 'shyam', 'abc@abc.com', 'test', 0, '2022-07-09 10:52:37', '2022-07-09 10:52:37', 'user'),
('895f3f18bc9510ac1b17', 'Swtantra', 'Manandhar', 'swatantra@swatantra.com', 'test', 0, '2022-07-09 07:28:51', '2022-07-09 07:28:51', 'user'),
('91874d6e143f3ab37b02', 'Manish', 'Shrestha', 'manish@manish.com', 'test', 0, '2022-07-09 07:03:35', '2022-07-09 07:03:35', 'user'),
('9363d46221212f503fd8', 'ram', 'shrestha', 'ram@ram.com', 'test', 0, '2022-07-11 11:30:35', '2022-07-11 11:30:35', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD PRIMARY KEY (`blog_detail_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmt_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD CONSTRAINT `blog_detail_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"blog\",\"table\":\"contact\"},{\"db\":\"blog\",\"table\":\"comment\"},{\"db\":\"blog\",\"table\":\"reg\"},{\"db\":\"blog\",\"table\":\"user_register\"},{\"db\":\"blog\",\"table\":\"blog\"},{\"db\":\"blog\",\"table\":\"blog_detail\"},{\"db\":\"blog\",\"table\":\"one\"},{\"db\":\"blog\",\"table\":\"two\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-07-12 09:06:53', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `the_test`
--
CREATE DATABASE IF NOT EXISTS `the_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `the_test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

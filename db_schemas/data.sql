INSERT INTO categories values 
('zdrowie'),
('produktywnosc'),
('self-improvement'),
('nauka'),
('sport');

INSERT INTO item_types (type)
VALUES ('medal'),('minecraft'),('rozne');



INSERT INTO items (item_id, name, type, cost, img_source)
VALUES (1,'Gwiazdka', 'rozne', 10, 'item_images/1.png'),
(2,'Brazowy','medal',10,'item_images/2.png'),
(3,'Srebrny','medal',50,'item_images/3.png'),
(4,'Zloty','medal',100,'item_images/4.png'),
(5,'Platynowy','medal',500,'item_images/5.png'),
(6,'Diamentowy','medal',10000,'item_images/6.png'),
(7,'Golden digger','minecraft',30,'item_images/digger.png'),
(8,'Serduszko dla Ciebie','rozne',90,'item_images/heart.png'),
(9,'Twoja hoe','minecraft',9999,'item_images/hoe.png');


INSERT INTO users (nickname, password, email, points)
VALUES ('bogacz', 'pbkdf2:sha256:150000$02e7G7ft$49ee488b2d9f814ee4bd8b86abf1ed3405681f10ef9058da5308ec91adfc5d78', 'bogaty@ddd.pl', 10000),
('patryk', 'pbkdf2:sha256:150000$Jw2t2z2H$066f1d357c987e4ba11af0e3937056adcbfd7278d72740ebfd77d4f1aed8ff41', 'patryk@patryk.pl', 5),
('mirek', 'pbkdf2:sha256:150000$c1EWMF2J$cb30d2ef446c46d419ff57a46523585ff6a1b8ce6f6a3cf1a00e07e4eef99672', 'miroslaw@gmail.to', 0),
('kajunia2312747', 'pbkdf2:sha256:150000$rsxcAWfu$dc6942eb786e98ca1622c465660f00e387c21b299b567b8157b1702f8ca8aea8', 'dds@interia.pl',55),
( 'Wandal384','Wandal3841509@interia.rus','pbkdf2:sha256:150000$Fp0subjS$c368f9f5855565e5e2b3319bec1fe71dba943d9edfa621ba174bfc42e74ee127',959 ) ,
( 'Kartoteka499','Kartoteka4991147@gmail.u','pbkdf2:sha256:150000$SHzRDOyY$ab55fe9af8c6dfcf1690b2c641fc2ea5c68bba1fda4018c32c38de70e0bcc0a4',148 ) ,
( 'konraaaaaaadz251','konraaaaaaadz2511282@gmail.u','pbkdf2:sha256:150000$KZBHX9jY$bd0d643b1aa60bcd2bcfa71bc708d0c6e5f0a1c06eee4525d021476042a039a0',698 ) ,
( 'Grzybi121','Grzybi121417@hotmail.u','pbkdf2:sha256:150000$3dGN6qKm$699cb170efc28018610c68c8ad183f1d5655f45412cf8c509ede932ab673a874',16 ) ,
( 'Spejson329','Spejson3291713@interia.u','pbkdf2:sha256:150000$RKGlmTVA$565f641a6e3db6a1416e59cbe262ced95a2acd33f415614cc0cd4bda08546ef6',899 ) ,
( 'Rumcajs158','Rumcajs158972@hotmail.u','pbkdf2:sha256:150000$7YO2HLlq$b79262b8def31b6e50300e3d3b0e60091ed6a85c1fd4b60379734b9023687d97',241 ) ,
( 'Spejson81','Spejson81696@interia.u','pbkdf2:sha256:150000$BHC9CwnQ$cda0308c2720104fe54b7f86efa7fadb315ab93ff90ac7e3d5a59a2741a20d87',842 ) ,
( 'Szef379','Szef3791065@hotmail.u','pbkdf2:sha256:150000$VmzMwu35$4774b2b6cb4e300d44f8e3158c6de174e2c103cc0d6b23944ed0cd173535dc89',41 ) ,
( 'okiennica237','okiennica23785@tlen.u','pbkdf2:sha256:150000$6zpEeJdx$5cddeca15eec66e2112e2859b6afcf3898f0bdc50da86c96f1852a304b773be1',559 ) ,
( 'Technoswinia314','Technoswinia3141932@hotmail.u','pbkdf2:sha256:150000$Sb98IrjJ$097661e72762531cb5f4c32686f9bb181d4888fca3a52637a17fc6b2c6d37522',694 ) ,
( 'stivek316','stivek316511@urr.u','pbkdf2:sha256:150000$OzvCAXie$b5e343f1c61be8fa188d2d7640cc464c50b77ac539b0234a5f291b8c42d5acce',949 ) ,
( 'szermierka130','szermierka130786@tlen.u','pbkdf2:sha256:150000$kyyM3U8M$50830918904bd427f6bf5f998200d546a1cffe6f4a6aac8c9076a9f9ee3b5a79',429 ) ,
( 'Kartoteka102','Kartoteka1021035@random.u','pbkdf2:sha256:150000$63bPVaKI$a643132b6173880e50ccb4f17d32579e28f30d26eb40a744e51d74aad8cb76c0',855 ) ,
( 'szermierka242','szermierka2421295@interia.u','pbkdf2:sha256:150000$7cRDHXhG$f136ae6cc9e17aa5e0e2a5e68d5b50bb249900a63fd27e5f5f23e8b4438cfa03',611 ) ,
( 'Rumcajs272','Rumcajs272959@random.u','pbkdf2:sha256:150000$2IlycyEg$716bf5f3a04b2a76c4b0ad3cdf05d9225308a3fea5933d9d920254e11ec776a6',521 ) ,
( 'szermierka237','szermierka237512@random.u','pbkdf2:sha256:150000$jGYlkV18$300e97cc2d81a1d5f3ddbf9091acfbdc2e38ec3f088c7497172d1688c069c9a7',699 ) ,
( 'karolina310','karolina3101608@tlen.u','pbkdf2:sha256:150000$pydPe9wR$8c358a612805b53bab31f6722b3c9d9402074a7d9206382dbefd654f7bd2fff0',4 ) ,
( 'Spejson252','Spejson252655@interia.u','pbkdf2:sha256:150000$AGNHd6kw$653a37444122edaff25aeca68b752f58a9732feba9708a65571682c19349f820',963 ) ,
( 'Wandal247','Wandal247483@hotmail.u','pbkdf2:sha256:150000$kHWVHxCn$45d076a1a8ec35f322a71504cd80903c25949ab06e9b5fe3f6c08009a88be7c7',693 ) ,
( 'petrol355','petrol3551323@tlen.u','pbkdf2:sha256:150000$Bkd7DKFQ$6c1107c88697d0630279ca10b3de9b38aaae1057aef895f9cdcf38950f52ebdd',847 ) ,
( 'konraaaaaaadz147','konraaaaaaadz147548@interia.u','pbkdf2:sha256:150000$dZYDqptk$fd4764797f18eb9f7f0387435ba38758af16d246881b19348faa8f7d58bdb2e9',377 ) ,
( 'konraaaaaaadz89','konraaaaaaadz891461@interia.u','pbkdf2:sha256:150000$CWHcpKf6$308cc3e8de94beebefdc80eb08c39226d297f64d958b63a855c685e3c865d1cc',322 ) ,
( 'dragon337','dragon337666@hotmail.u','pbkdf2:sha256:150000$3atJyhe5$f7bfb2c21cbd769f4e3e8cf1f0147824b622a9d6b8831c060b0e15d2da8d9746',316 ) ,
( 'Policja140','Policja1401387@hotmail.u','pbkdf2:sha256:150000$r6TwJUSH$94fdc0df7a7fdf374f1da2d5166937a3e8054003d0af234f3d9ffdca97a2a24f',901 ) ,
( 'Kartoteka96','Kartoteka96157@hotmail.u','pbkdf2:sha256:150000$x0QDFRe8$cbb9514b731fdda19d310068635432b465cc8f932ca4952ddd1da3a4e3724662',171 ) ,
( 'okiennica257','okiennica257531@interia.u','pbkdf2:sha256:150000$nbRKtWda$301e7c7f5158cd5bfd7f3a0236ecac7ccbc0fcb7c6b306ece700e12f14b6772f',698 ) ,
( 'okiennica52','okiennica521762@interia.u','pbkdf2:sha256:150000$EVlOkhlY$083fe7d8fe3ae88fb61b4f51545f328684bd633d1aaaf21f6194d7ca18100826',148 ) ,
( 'Grzybi437','Grzybi4371525@interia.u','pbkdf2:sha256:150000$OUHtrCXW$489fcb344a2a8fa10d6dc777c69f4014d7dda1766925ffd06598da3f9227114e',966 ) ,
( 'dragon73','dragon73319@tlen.u','pbkdf2:sha256:150000$FIx1MKIZ$449fdda576c755c9001020f4f9d67e821d464699386085a5ba4359caa1641802',172 ) ,
( 'konraaaaaaadz286','konraaaaaaadz2861574@gmail.u','pbkdf2:sha256:150000$5aOYFW1Z$c3b4f03ca2b919755f1b993625f0338398bb6175b813992f3b418325c5a46027',259 ) ,
( 'Kartoteka313','Kartoteka313640@urr.u','pbkdf2:sha256:150000$XUjkWKOl$d07fdefacc8f0d8a1ea13009dee764682fa47b6e458010e0ef705c7c25603d6e',825 ) ,
( 'Technoswinia131','Technoswinia13167@interia.u','pbkdf2:sha256:150000$vU7hLuTU$870510f0ee861cde3761c030032ef3272fd61a71611b6049567966f50e06b7cd',330 ) ,
( 'kamil404','kamil404953@random.u','pbkdf2:sha256:150000$q2p2CnHf$fa250b5066280e3ffde4bc76554edaeaf53df9cb0f8786d348a69c8ac72be481',598 ) ,
( 'szermierka214','szermierka2141311@urr.u','pbkdf2:sha256:150000$vMhmRxIw$12bed5bb4e1d5cc9e0e62d20d7e59f3dff00c64a389dd948064f7cca5c66000d',494 ) ,
( 'Kartoteka112','Kartoteka112145@hotmail.u','pbkdf2:sha256:150000$bMeSq1ze$a7dc14061d31ed41258aa10a082e428c12e694ee1a8bc33ebec16a393175e870',960 ) ,
( 'ferder123','ferder1231961@interia.u','pbkdf2:sha256:150000$pEB5tKF9$6fb21cf75c7337c2e0c1e8c67d708bd9a0a7f6e08b1ab42b7b6bc49c2b5c86e3',836 ) ,
( 'Kartoteka234','Kartoteka234538@tlen.u','pbkdf2:sha256:150000$vfSroDLv$cc6e5d3d9f549dc708e1b27d0f6a68470c4c84569c28f003c538b89428f06ae4',722 ) ,
( 'Technoswinia105','Technoswinia105860@gmail.u','pbkdf2:sha256:150000$DE5gtHUf$c2b009cca1493f776d935632cfa5f5efcd2d437c3d2105bca4e7814ab698d023',283 ) ,
( 'dragon293','dragon293269@hotmail.u','pbkdf2:sha256:150000$7orjIxRq$c00c8e9e31a407f302b0ec94bee1f8903803a9cea49042c8dd9bd264691b869e',552 ) ,
( 'okiennica246','okiennica2461868@tlen.u','pbkdf2:sha256:150000$pzODzgWY$5ab4ad8a1350eff7c3e1d2e26363e06da6efbea6e7b550d63196c7417157fd55',522 ) ,
( 'Rumcajs327','Rumcajs3271147@urr.u','pbkdf2:sha256:150000$JGFcarcT$8fe03c61d72a5ca90fcdf4f5e3c1e77350013ac3249239e830a9f22000692148',66 ) ,
( 'Vanf484','Vanf484173@interia.u','pbkdf2:sha256:150000$1PWrN0zZ$01a1b7c1f2d878a49e9c48787c4bcbce4691d58f1590a06370424bc977b9dfee',673 ) ,
( 'Wandal263','Wandal263469@random.u','pbkdf2:sha256:150000$qz5xSP43$d741f3c2cd29827d1702b9bc3532eb0850b6a004535dab45c8045cd12a3cd518',951 ) ,
( 'konraaaaaaadz259','konraaaaaaadz259181@hotmail.u','pbkdf2:sha256:150000$MB9w9a9D$592a348e0879b60252df2027947426af2124015e4778a7e198c72fe1c727d161',222 ) ,
( 'karolina182','karolina1821955@random.u','pbkdf2:sha256:150000$wUyo300s$cf97b4bee9cd3bfefa818987a106b2a16835331fb116a74aab9c9bdd2e96a436',379 ) ,
( 'petrol69','petrol69491@urr.u','pbkdf2:sha256:150000$pK1mr3YL$5536b5796e09dbde3854ec6a52aaa342ead3813b613491f113192ef00effe1ae',158 ) ,
( 'petrol165','petrol16533@urr.u','pbkdf2:sha256:150000$cZAq8XGH$d2240848d801ba0dcca1b8c62ee0b8dbbf359edeed6c84dd54b98dae06ae522b',129 ) ,
( 'konraaaaaaadz126','konraaaaaaadz1261645@tlen.u','pbkdf2:sha256:150000$xGeZ80fb$f1cf21ddf746388f8c2aa8c104f496d6b8f4d770791f83a1b9e076a77c243548',887 ) ,
( 'jacek341','jacek341461@tlen.u','pbkdf2:sha256:150000$HKfmmF3y$c6e26f19532df5012f6fc6afeb098f1154b0004ca490f4bc082ca77e8ae3254e',241 ) ,
( 'Rumcajs405','Rumcajs4051904@gmail.u','pbkdf2:sha256:150000$bFvHFYvz$8fc1ac26328856a613e9b8c1ed2a0c06de850e6e06569c70d326f35453f62eec',226 ) ,
( 'Kartoteka75','Kartoteka751774@random.u','pbkdf2:sha256:150000$jxgqTs7r$accc3d5e9e5cfedfc002170577f0680b4098ceb144da764dc097997ec30555ee',192 ) ,
( 'Lucy211','Lucy2111213@interia.u','pbkdf2:sha256:150000$MnN4nFg4$910a8c682b6070c268b2f873db672240ce823768193be549295ec3cb12c7f25a',309 ) ,
( 'Grzybi181','Grzybi1811780@random.u','pbkdf2:sha256:150000$7gqgkivs$3ee1c89e48f49a6f3d5d3236ba0614b29329343c09dc206e0b7883373cdc6890',298 ) ,
( 'Rumcajs27','Rumcajs271551@urr.u','pbkdf2:sha256:150000$GvupmOUV$cf05ad386da77114a4dfc58c34efd0828e4cf63b3e6da712742c11e2d8380b3b',657 ) ,
( 'Spejson56','Spejson5636@gmail.u','pbkdf2:sha256:150000$5BrxEgWB$475ddea1e35f49ded09ee7ab017f212fd5c12acb372125d4eac08af7d81f61cb',662 ) ,
( 'Policja61','Policja61610@random.u','pbkdf2:sha256:150000$8MerlICo$cd9c3fdd256d35fe4b6ea05adb0b9886f6b9b38ae66fbab677f57efd166e0e0c',270 ) ,
( 'dyniowy163','dyniowy163826@interia.u','pbkdf2:sha256:150000$IlpinMX7$6de33a12f158cc9b579e0fb822528926a0dd777c8af20506604f075df2047079',418 ) ,
( 'szermierka465','szermierka4651144@tlen.u','pbkdf2:sha256:150000$7btGrO97$97f6ee029cd1f369709899258e2f62e3960728c5c13d01605706ea1e46f9941b',647 ) ,
( 'okiennica109','okiennica10980@tlen.u','pbkdf2:sha256:150000$CIZnYMy0$3acf506fb826a2c05e90f797bd30efb6364eda711222fd85f0fe518fde4af72f',73 ) ,
( 'stivek365','stivek365122@random.u','pbkdf2:sha256:150000$I4DUUUNZ$aad1e42de93138d48bce936ecd4386a3a7beae127d5f5b2657a17d613d4a8c0c',885 ) ,
( 'stivek69','stivek69375@random.u','pbkdf2:sha256:150000$nRz1Qawv$d3b9853415ea43e6d6e19ebfbdfd54442f62952dd3766640e5343a40b2499a56',372 ) ,
( 'szermierka368','szermierka368612@urr.u','pbkdf2:sha256:150000$eBbnBsEV$3c0c1449714e185b1fe1b3f6ad6b4ef7114643b9ec84df58d38df8b3e7b59507',874 ) ,
( 'konraaaaaaadz88','konraaaaaaadz88320@gmail.u','pbkdf2:sha256:150000$UL3qgAcz$3b197c36355dcc32ad4c6b83ed725a96ecf5fac1a59e4ec5d5e54fb196cf3d40',460 ) ,
( 'dragon126','dragon1261156@urr.u','pbkdf2:sha256:150000$kQNzE4vh$d67f32e940de5a7571b061f80e85807d8b4bedcc8a63b24babe394838cd35192',708 ) ,
( 'jacek389','jacek3891917@random.u','pbkdf2:sha256:150000$RiUvoImY$fabd3bf0d8b1060e79bcdc5bb2d9b844e22f028c04ef3c2b42de97a46a4a6e5b',517 ) ,
( 'szermierka79','szermierka791673@random.u','pbkdf2:sha256:150000$dO1yzO3Z$c959bbb3d5986e68527aa4525697f41d1265ff7a8acc0c2191f4680ff667e120',281 ) ,
( 'stivek269','stivek2691822@gmail.u','pbkdf2:sha256:150000$9P5PEkWI$16a77c62c0623de831f4bedf8512d33f23cd3751fba94baf61c9cc74a3e39c31',531 ) ,
( 'Lucy61','Lucy6190@gmail.u','pbkdf2:sha256:150000$BP3IuRzf$fd106a35d0db5659601a292143b0e4fa2b108140165a26867ac19916e80d1dd1',162 ) ,
( 'petrol153','petrol153420@gmail.u','pbkdf2:sha256:150000$TKlaNuCd$e927e8c56e9fbc534f9d4174489c176911470f537f285e0ecec60d8723dc4b01',865 ) ,
( 'Riko304','Riko3041206@tlen.u','pbkdf2:sha256:150000$HcJI20GU$81bd188b27b5ff6b7c7adaaa1642e66ab273c9754bec58ed459279909b50f548',880 ) ,
( 'szermierka239','szermierka2391600@interia.u','pbkdf2:sha256:150000$vPa2vAuy$e5a5d7f4d1ffaaa962e43e71c21eba18e159a132afe71299047a694b0a436317',637 ) ,
( 'Vanf288','Vanf288652@interia.u','pbkdf2:sha256:150000$MmB0Sr7W$085d0c011fe08e447a1d89599139d5fa1925990e78e800eaedd22702f5c46d74',99 ) ,
( 'dyniowy31','dyniowy31532@urr.u','pbkdf2:sha256:150000$PDl3CEWz$bf091869450519d1c001b89c327dedf90055992f210eb8ae212244eb02a9684f',432 ) ,
( 'Technoswinia444','Technoswinia444574@gmail.u','pbkdf2:sha256:150000$rnvikxje$ddf590e0560ba8c2eae9779e667e3daccb5fb09ef718ffb98c5003b4c4accfa4',357 ) ,
( 'Kartoteka354','Kartoteka3541294@tlen.u','pbkdf2:sha256:150000$Dona1M3B$85f01eba3faa16ad9a1b1c000b2856995c8d6da8f21a12ebc8fd1ee03c65b8d4',811 ) ,
( 'Karku382','Karku382321@tlen.u','pbkdf2:sha256:150000$tL8abolt$b28efe0fe9a7234f13d9201279b1b8f42e78cc8543240f632667959b65bf4ff6',214 ) ,
( 'karolina279','karolina279331@gmail.u','pbkdf2:sha256:150000$bsEckCV1$5b5ca8473e0639c0f7c4ab542eaceb36ccf4d998f47417400abe7333c2adb4af',597 ) ,
( 'karolina463','karolina463510@gmail.u','pbkdf2:sha256:150000$tuDY3oSt$996042d593c325f942a8e7938f035dcb631739bbfc696e65e9ff931491434467',829 ) ,
( 'Grzybi239','Grzybi2391026@urr.u','pbkdf2:sha256:150000$mhGhlIjz$b0bd1f04d59b185de597449ae6b3844549314ccd3e856f68a8e3d4ed65bb3dc9',616 ) ,
( 'dragon106','dragon106695@hotmail.u','pbkdf2:sha256:150000$CaXK2Kmp$3befdc2b1c4f05872f65cf1d12ba6516a228c58e5c595508d6093e246d65c1cf',504 ) ,
( 'Karku481','Karku4811505@tlen.u','pbkdf2:sha256:150000$7XQqkwGQ$5d8841792823ffe69f668c769b7e9db857c2e77b84f03a01901dc22f44367ed1',941 ) ,
( 'dyniowy166','dyniowy166210@tlen.u','pbkdf2:sha256:150000$5mI5Q5lp$f710211055d635b3b58e134653ee450f1323b1157fff74c700c1afdf3255df77',824 ) ,
( 'Spejson64','Spejson6491@tlen.u','pbkdf2:sha256:150000$5XnzXz8l$22f2efdd15cbd3d52eb93c627186a5c85b809cf738272dc79abc359d73a94806',416 ) ,
( 'Kartoteka241','Kartoteka241943@interia.u','pbkdf2:sha256:150000$XsJFtfz2$8d5e5605ba3759e10d7e9fecfdda45871e14bc81fe57af6e71b1ebc989e3384b',43 ) ,
( 'Vanf71','Vanf711301@gmail.u','pbkdf2:sha256:150000$PFnm1QjV$db12a3a09e19c8afc5c51c3971bb097d4c36f31b55a00e56239498c6b671a1fa',306 ) ,
( 'jacek245','jacek245999@tlen.u','pbkdf2:sha256:150000$gvILiXSj$44cb368fc5dc1a9447ac0ce7352a84e5f329a24887a501de3fa96bb75fa9df3d',825 ) ,
( 'jacek421','jacek421765@hotmail.u','pbkdf2:sha256:150000$YPCfnYVY$6dc07d91039956a2fd7e9be6c3c3f352b1bc15ffc73193a89a1a0fbb6fba2763',325 ) ,
( 'szermierka450','szermierka450982@urr.u','pbkdf2:sha256:150000$cGjAVayy$085781d8d42ffb56a12e013145da40f7ad5448e5236e5471c2f45d86c3d0c4fa',734 ) ,
( 'Grzybi24','Grzybi241357@interia.u','pbkdf2:sha256:150000$2KI1lWJl$d9f1bcebf35d100ddb3e3019b1774261da19c4823aaeecc95ca56a119adad4ba',206 ) ,
( 'karolina234','karolina234402@gmail.u','pbkdf2:sha256:150000$BV9oSFOY$76c0d48d1ebef43d89075a47d1cc04e7b00500fc44d5f4fb92a63146d3994a36',781 ) ,
( 'Karku53','Karku531783@random.u','pbkdf2:sha256:150000$GPBvoQ15$d1085e7497bdf7817e357b5ae3c7d5ea7bd5edad62439e1be49dc504c2646b05',766 ) ,
( 'stivek43','stivek43822@random.u','pbkdf2:sha256:150000$lBczBeF7$3c23cae8d4c4f360f410d7391b2073b65af2f2c3fc2f15f4bbf2b9be49bc831c',67 ) ,
( 'Technoswinia371','Technoswinia3711623@random.u','pbkdf2:sha256:150000$u88ZPR0N$f7a4684108b254e675f5c70f2df6a2768cc0dbc5d57478eb5cbd7d6fcbc4b526',15 ) ,
( 'dragon447','dragon4471758@urr.u','pbkdf2:sha256:150000$SXisOOV0$46baf6f1f2be6aee7d3da62ae276f0b7dfbd0b9ffd4378aba269e0db60d55983',115 ) ,
( 'karolina256','karolina256628@hotmail.u','pbkdf2:sha256:150000$UFMRRsjc$7db72b8b56dfbf8cb4a1c0b5b54da61764b1c3c03519f1f9292a3c4573c6f665',439 ) ,
( 'konraaaaaaadz122','konraaaaaaadz122522@hotmail.u','pbkdf2:sha256:150000$jq9NvLfr$4eef2dde608169b16217f9836f6f6b53df33f09e05c3e8a3f8ae7040413a215b',360 ) ,
( 'ferder433','ferder4331036@urr.u','pbkdf2:sha256:150000$K8RT9y5P$039e927dc0f5a2ce5065eaf587847f328bcfe9ee1313a949fef84451c1e90e71',69 ) ,
( 'Karku351','Karku35158@urr.u','pbkdf2:sha256:150000$CO8g7ghU$0caaf730b4a30052289fda12840345cf2295345909052d3d41e592a34d5b4beb',783 ) ,
( 'dyniowy429','dyniowy429488@interia.u','pbkdf2:sha256:150000$1ms92B4a$c27456fb5739ab5799d26ff935206c5e4d8384415d70c1a36f32806ddac3ff26',462 );




INSERT INTO tasks (name, category, points)
VALUES ('Regularne picie wody', 'zdrowie', 1),
('Dzisiaj bez palenia', 'zdrowie', 2),
('Schody zamiast windy','zdrowie',1),
('Punktualność', 'produktywnosc', 1),
('Zrobione minimum', 'produktywnosc', 1),
('Perfekcyjne pomodoro', 'produktywnosc', 2),
('Nauczenie się czegoś nowego', 'self-improvement', 2),
('Nauka godzine', 'nauka', 1),
('Dzienna literatura', 'self-improvement', 1),
('Daily sport', 'sport',2),
('Aktualizacja dziennika', 'self-improvement', 1),
('Trzymana dieta', 'zdrowie', 2),
('Praca na bieząco, nie na ostatnią chwilę', 'produktywnosc', 1);



INSERT INTO form_questions (task_id, question, negative)
VALUES (1,'Czy regularnie pijesz wodę?', 'f'),
(2,'Czy palisz papierosy', '1'),
(3,'Korzystasz z windy?', '1'),
(4,'Czy jesteś punktualny?', '0'),
(5, 'Czy korzystasz z techniki pomodoro?', '0'),
(6, 'Udaje Ci się zrobić dzienne minimum?', '0'),
(7, 'Często się uczysz czegoś nowego', '0'),
(8, 'Uczysz się przynajmniej godzinę dziennie', '0'),
(9, 'Czytasz książki?', '0'),
(10, 'Uprawiasz sport?', '0'),
(11, 'Prowadzisz dziennik?', '0'),
(12, 'Zdrowo się odżywiasz?', '0'),
(13, 'Czy odkładasz wszystko na ostatnią chwilę?', '1');












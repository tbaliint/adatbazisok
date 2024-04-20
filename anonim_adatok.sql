CREATE TABLE [dbo].[Ugyfel](
	[LOGIN] [nvarchar](255) MASKED WITH (Function = 'partial(1,"XXXX",1)') NOT NULL,
	[EMAIL] [nvarchar](255) masked with (function = 'email()') NOT NULL,
	[NEV] [nvarchar](255) NOT NULL,
	[SZULEV] [int] MASKED WITH (FUNCTION = 'random(1000,1500)') NULL,
	[NEM] [nvarchar](1) NULL,
	[CIM] [nvarchar](255) masked with (function = 'default()') NULL,
 CONSTRAINT [PK_Ugyfel] PRIMARY KEY CLUSTERED 
(
	[LOGIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



insert [Ugyfel] ([LOGIN],[EMAIL],[NEV],[SZULEV],[NEM],[CIM])
select N'adam1',N'ádám.kiss@mail.hu',N'Kiss Ádám',1991,N'F',N'5630 Békés, Szolnoki út 8.' UNION ALL
select N'adam3',N'adam3@gmail.com',N'Barkóci Ádám',1970,N'F',N'3910 Tokaj, Dózsa György utca 37.' UNION ALL
select N'adam4',N'ádám.bieniek@mail.hu',N'Bieniek Ádám',1976,N'F',N'8630 Balatonboglár, Juhászföldi út 1.' UNION ALL
select N'agnes',N'agnes@gmail.com',N'Lengyel Ágnes',1979,N'N',N'5200 Törökszentmiklós, Deák Ferenc út 5.' UNION ALL
select N'agnes3',N'agnes3@gmail.com',N'Hartyánszky Ágnes',1967,N'N',N'6430 Bácsalmás, Posta köz 2.' UNION ALL
select N'AGNESH',N'AGNESH@gmail.com',N'Horváth Ágnes',1981,N'N',N'8200 Veszprém, Rákóczi utca 21.' UNION ALL
select N'AGNESK',N'AGNESK@gmail.com',N'Kovács Ágnes',1988,N'N',N'1084 Budapest, Endrődi Sándor utca 47.' UNION ALL
select N'akos',N'ákos.bíró@mail.hu',N'Bíró Ákos',1982,N'F',N'9023 Győr, Kossuth Lajos utca 47/b.' UNION ALL
select N'aladar',N'aladár.dunai@mail.hu',N'Dunai Aladár',1980,N'F',N'5931 Nagyszénás, Árpád utca 23.' UNION ALL
select N'alexandra',N'alexandra.bagóczki@mail.hu',N'Bagóczki Alexandra',1992,N'N',N'2381 Táborfalva, Petőfi utca 1/2.' UNION ALL
select N'alexis',N'alexbiro@gmail.com',N'Biró Alexander',2000,N'F',N'6914 Pitvaros, Deák F. u. 38.' UNION ALL
select N'andi',N'andrea.maródi@mail.hu',N'Maródi Andrea',1968,N'N',N'5465 Cserkeszőlő, Árpád utca 4.' UNION ALL
select N'andras2',N'andrás.tóth@mail.hu',N'Tóth András',1997,N'F',N'4071 Egyek, Petőfi utca 30.' UNION ALL
select N'andras21',N'andrás.molnár@mail.hu',N'Molnár András',1977,N'F',N'7900 Szigetvár, Rákóczi utca 67.' UNION ALL
select N'andras3',N'andrás.vígh@mail.hu',N'Vígh András',1971,N'F',N'1118 Budapest, Arany János utca 1.' UNION ALL
select N'andras4',N'andras4@gmail.com',N'Back András',1984,N'F',N'3783 Edelény, Fő út 169.' UNION ALL
select N'andras41',N'andras41@gmail.com',N'Komjáti András',1997,N'F',N'5065 Nagykörű, Kossuth út 24.' UNION ALL
select N'ANDRASE',N'ANDRASE@gmail.com',N'Erdei András',1997,N'F',N'5071 Besenyszög, Szolnoki út 8.' UNION ALL
select N'ANDRASN',N'andrás.nagy@mail.hu',N'Nagy András',1980,N'F',N'6500 Baja, Fő út 169.' UNION ALL
select N'andrea',N'andrea.kiss@mail.hu',N'Kiss Andrea',1993,N'N',N'1113 Budapest, Petőfi Sándor utca 87.' UNION ALL
select N'andrea3',N'andrea3@gmail.com',N'Szomor Andrea',1996,N'N',N'7960 Sellye, Bécsi utca 82.' UNION ALL
select N'andrea4',N'andrea4@gmail.com',N'Neizer Andrea',1981,N'N',N'1124 Budapest, Kiss u. 8.' UNION ALL
select N'ANDREAT',N'ANDREAT@gmail.com',N'Tornyos Andrea',1986,N'N',N'6131 Szank, Bécsi utca 82.' UNION ALL
select N'anett3',N'anett.pivarcsi@mail.hu',N'Pivarcsi Anett',1967,N'N',N'1149 Budapest, Fő út 60.' UNION ALL
select N'aniko',N'aniko@gmail.com',N'Tóth Anikó',1973,N'N',N'2085 Pilisvörösvár, Deák Ferenc út 5.' UNION ALL
select N'aniko4',N'aniko4@gmail.com',N'Böröcz Anikó',1978,N'N',N'2484 Agárd, Petőfi Sándor tér 1.' UNION ALL
select N'ANIKOS',N'ANIKOS@gmail.com',N'Simon Anikó',1988,N'N',N'5137 Jászkisér, Bécsi utca 82.' UNION ALL
select N'anita',N'anita.hamvay-kovács@mail.hu',N'Hamvay-Kovács Anita',1971,N'N',N'7220 Sarkad, Táncsics utca 19.' UNION ALL
select N'annamaria1',N'annamária.szűcs@mail.hu',N'Szűcs Annamária',1990,N'N',N'1191 Budapest, Rendeki utca 21.' UNION ALL
select N'ANNAMARIAR',N'ANNAMARIAR@gmail.com',N'Regős Annamária',1977,N'N',N'8283 Káptalantóti, Petőfi Sándor tér 1.' UNION ALL
select N'aron2',N'aron2@gmail.com',N'Jakab Áron',1971,N'F',N'7133 Fadd, Bajcsy-Zsilinszky utca 4.' UNION ALL
select N'ARONK',N'áron.kelemen@mail.hu',N'Kelemen Áron',1989,N'F',N'8200 Veszprém, Petőfi utca 8.' UNION ALL
select N'arpad2',N'árpád.ötvös@mail.hu',N'Ötvös Árpád',1990,N'F',N'2600 Vác, Padragi út 158.' UNION ALL
select N'ARPADH',N'árpád.horváth@mail.hu',N'Horváth Árpád',1990,N'F',N'7349 Szászvár, Dózsa György u. 1.' UNION ALL
select N'ARPADM',N'árpád.móricz@mail.hu',N'Móricz Árpád',1986,N'F',N'3910 Tokaj, Rákóczi utca 67.' UNION ALL
select N'attila',N'attila@gmail.com',N'Csóti Attila',1979,N'F',N'3000 Hatvan, Bajcsy-Zsilinszky utca 4.' UNION ALL
select N'attila1',N'attila.gulyás@mail.hu',N'Gulyás Attila',1982,N'F',N'3881 Abaújszántó, Szolnoki út 8.' UNION ALL
select N'attila4',N'attila.baróti@mail.hu',N'Baróti Attila',1975,N'F',N'7149 Báta, Arany János utca 3.' UNION ALL
select N'ATTILAO',N'ATTILAO@gmail.com',N'Opra Attila',1995,N'F',N'8283 Káptalantóti, Rákóczi út 200.' UNION ALL
select N'balazs1',N'balázs.bozsik@mail.hu',N'Bozsik Balázs',1992,N'F',N'2300 Ráckeve, Bécsi utca 82.' UNION ALL
select N'balazs2',N'balázs.szűcs@mail.hu',N'Szűcs Balázs',1984,N'F',N'3170 Szécsény, Szabadság utca 95.' UNION ALL
select N'balazs3',N'balazs3@gmail.com',N'Bakódy Balázs',1986,N'F',N'2131 Göd, Arany János utca 1.' UNION ALL
select N'balint',N'balint@gmail.com',N'Horváth Bálint',1996,N'F',N'6646 Tömörkény, Endrődi Sándor utca 47.' UNION ALL
select N'balint1',N'balint1@gmail.com',N'Molnár Bálint',1989,N'F',N'9181 Kimle, Fő út 169.' UNION ALL
select N'balint2',N'balint2@gmail.com',N'Vukasinovity Bálint',1997,N'F',N'2330 Dunaharaszti, Béke utca 7.' UNION ALL
select N'balu',N'bálint.endresz@mail.hu',N'Endresz Bálint',1976,N'F',N'3973 Cigánd, Fő út 169.' UNION ALL
select N'beata4',N'beáta.bagi@mail.hu',N'Bagi Beáta',1994,N'N',N'8477 Tüskevár, Felszabadulás utca 32.' UNION ALL
select N'BEATRIXK',N'beatrix.kerényi@mail.hu',N'Kerényi Beatrix',1972,N'N',N'7396 Magyarszék, Kossuth Lajos utca 47/b.' UNION ALL
select N'BEATRIXS',N'beatrix.szekendi@mail.hu',N'Szekendi Beatrix',1981,N'N',N'4060 Balmazújváros, Jászai tér 21.' UNION ALL
select N'BELAF',N'BELAF@gmail.com',N'Farkas Béla',1995,N'F',N'5530 Vésztő, Petőfi Sándor utca 3.' UNION ALL
select N'bence',N'bence@gmail.com',N'Győrffy Bence',1987,N'F',N'6900 Makó, Árpád utca 23.' UNION ALL
select N'BENCEB',N'bence.bajusz@mail.hu',N'Bajusz Bence',1973,N'F',N'8391 Sármellék, Fő utca 56.' UNION ALL
select N'bernadett1',N'bernadett1@gmail.com',N'Simon Bernadett',1984,N'N',N'2300 Ráckeve, Fő utca 108.' UNION ALL
select N'bernadett2',N'bernadett.kovács@mail.hu',N'Kovács Bernadett',1996,N'N',N'4200 Hajdúszoboszló, Fő út 122.' UNION ALL
select N'BERNADETTO',N'bernadett.orbán@mail.hu',N'Orbán Bernadett',1987,N'N',N'5085 Rákóczifalva, Arany János utca 1.' UNION ALL
select N'bertalan',N'bertalan@gmail.com',N'Csiger Bertalan',1977,N'F',N'1192 Budapest, Fő út 169.' UNION ALL
select N'brigitta',N'brigitta.székely@mail.hu',N'Székely Brigitta',1978,N'N',N'2462 Martonvásár, Fő utca 47.' UNION ALL
select N'brigitta3',N'brigitta.pataki@mail.hu',N'Pataki Brigitta',1991,N'N',N'2730 Albertirsa, Rendeki utca 21.' UNION ALL
select N'csongor3',N'csongor.nagymihály@mail.hu',N'Nagymihály Csongor',1984,N'F',N'9181 Kimle, Deák Ferenc út 5.' UNION ALL
select N'dani',N'daniel@gmail.com',N'Vörös Dániel',1986,N'F',N'7150 Bonyhád, Dózsa György u. 1.' UNION ALL
select N'daniel',N'dániel.rácz@mail.hu',N'Rácz Dániel',1978,N'F',N'9181 Kimle, Szabadság tér 9.' UNION ALL
select N'daniel1',N'dániel.keszler@mail.hu',N'Keszler Dániel',1969,N'F',N'3580 Tiszaújváros, Kossuth Lajos utca 6.' UNION ALL
select N'david',N'david@gmail.com',N'Ambrus Dávid',1974,N'F',N'1149 Budapest, Fő út 18.' UNION ALL
select N'david1',N'david1@gmail.com',N'Sobják Dávid',1970,N'F',N'5083 Kengyel, Arany János utca 3.' UNION ALL
select N'david4',N'david4@gmail.com',N'Berta Dávid',1990,N'F',N'3500 Miskolc, Balatoni út 12.' UNION ALL
select N'debora',N'debóra.barna@mail.hu',N'Barna Debóra',1976,N'N',N'1155 Budapest, Fő út 169.' UNION ALL
select N'denes',N'denes@gmail.com',N'Tömböly Dénes',1975,N'F',N'2400 Dunaújváros, Kossuth út 39.' UNION ALL
select N'desdemona',N'mor.otto@mail.hu',N'Mór Ottó',1968,N'F',N'9200 Mosonmagyaróvár Fő u. 12.' UNION ALL
select N'dora3',N'dóra.sarodi@mail.hu',N'Sarodi Dóra',1995,N'N',N'2855 Bokod, Fő út 18.' UNION ALL
select N'edit',N'edit.bittmann@mail.hu',N'Bittmann Edit',1984,N'N',N'6077 Orgovány, Fő utca 60.' UNION ALL
select N'emese',N'emese.kuruc@mail.hu',N'Kuruc Emese',1989,N'N',N'6700 Szeged, Rákóczi utca 67.' UNION ALL
select N'eszter',N'eszter.molnár@mail.hu',N'Molnár Eszter',1987,N'N',N'6800 Hódmezővásárhely, Fő út 77.' UNION ALL
select N'eszter2',N'eszter.balogh@mail.hu',N'Balogh Eszter',1998,N'N',N'6760 Kistelek, Kossuth utca 11.' UNION ALL
select N'eszter4',N'eszter.fülöp@mail.hu',N'Fülöp Eszter',1993,N'N',N'3643 Dédestapolcsány, Kossuth Lajos utca 47/b.' UNION ALL
select N'ESZTERE',N'eszter.érsek@mail.hu',N'Érsek Eszter',1978,N'N',N'6785 Pusztamérges, Kossuth Lajos utca 6.' UNION ALL
select N'eva',N'eva@gmail.com',N'Enyedi Éva',1967,N'N',N'4231 Bököny, Petőfi utca 8.' UNION ALL
select N'eva2',N'eva2@gmail.com',N'Perlinger Éva',1971,N'N',N'9653 Répcelak, Bécsi utca 82.' UNION ALL
select N'EVAV',N'EVAV@gmail.com',N'Viktor Éva',1980,N'N',N'6913 Csanádpalota, Arany János utca 3.' UNION ALL
select N'ferenc1',N'ferenc.orosz@mail.hu',N'Orosz Ferenc',1983,N'F',N'5061 Tiszasüly, Arany János utca 3.' UNION ALL
select N'fruzsina4',N'fruzsina4@gmail.com',N'Frank Fruzsina',1996,N'N',N'9700 Szombathely, Szabadság utca 95.' UNION ALL
select N'gabor1',N'gabor1@gmail.com',N'Köves Gábor',1973,N'F',N'6762 Sándorfalva, Árpád utca 23.' UNION ALL
select N'gabor4',N'gábor.telek@mail.hu',N'Telek Gábor',1987,N'F',N'9071 Görbeháza, Fő út 169.' UNION ALL
select N'GABORS',N'GABORS@gmail.com',N'Szöllősi Gábor',1990,N'F',N'3630 Putnok, Kossuth utca 27.' UNION ALL
select N'gabriella1',N'gabriella1@gmail.com',N'Nagy Gabriella',1982,N'N',N'1077 Budapest, Dob utca 1' UNION ALL
select N'gabriella10',N'gabriella10@gmail.com',N'Vida Gabriella',1969,N'N',N'2484 Agárd, Arany János utca 3.' UNION ALL
select N'georgij',N'georgij.nyíri@mail.hu',N'Nyíri Georgij',1983,N'F',N'8391 Sármellék, Grassalkovich út 10.' UNION ALL
select N'gusztav',N'gusztav@gmail.com',N'Bárci Gusztáv',1967,N'F',N'3643 Dédestapolcsány, Endrődi Sándor utca 47.' UNION ALL
select N'GYONGYIK',N'gyöngyi.kornseé@mail.hu',N'Kornseé Gyöngyi',1974,N'N',N'8800 Nagykanizsa, Fő út 60.' UNION ALL
select N'GYORGYO',N'GYORGYO@gmail.com',N'Oroszi György',1980,N'F',N'7220 Sarkad, Dózsa György u. 1.' UNION ALL
select N'henrik3',N'henrik.nádudvari@mail.hu',N'Nádudvari Henrik',1986,N'F',N'1077 Budapest, Tanácsköztársaság tér 1.' UNION ALL
select N'IBOLYAA',N'ibolya.andor@mail.hu',N'Andor Ibolya',1983,N'N',N'9023 Győr, Posta köz 2.' UNION ALL
select N'ilona3',N'ilona3@gmail.com',N'Bosnyák Ilona',1990,N'N',N'2483 Gárdony, Posta köz 2.' UNION ALL
select N'imre',N'imre.búza@mail.hu',N'Búza Imre',1988,N'F',N'9181 Kimle, Petőfi Sándor tér 1.' UNION ALL
select N'imre1',N'imre.papp@mail.hu',N'Papp Imre',1976,N'F',N'1077 Budapest, Szolnoki út 8.' UNION ALL
select N'istvan',N'istvan@gmail.com',N'Soós István',1986,N'F',N'2370 Dabas, Kossuth utca 27.' UNION ALL
select N'istvan1',N'istván.vizi@mail.hu',N'Vizi István',1997,N'F',N'7086 Ozora, Rákóczi utca 1.' UNION ALL
select N'ISTVANV',N'ISTVANV@gmail.com',N'Varga István',1989,N'F',N'6320 Solt, Hősök tere 11.' UNION ALL
select N'janos3',N'janos3@gmail.com',N'Harangozó János',1967,N'F',N'8700 Marcali, Petőfi Sándor tér 1.' UNION ALL
select N'JANOSG',N'JANOSG@gmail.com',N'Giliga János',1975,N'F',N'3300 Eger, Deák Ferenc út 5.' UNION ALL
select N'JANOSP',N'JANOSP@gmail.com',N'Pálinkás János',1984,N'F',N'5920 Csorvás, Padragi út 158.' UNION ALL
select N'jozsef',N'jozsef@gmail.com',N'Gergely József',1985,N'F',N'6050 Lajosmizse, Fő út 18.' UNION ALL
select N'jozsef2',N'józsef.vajda@mail.hu',N'Vajda József',1978,N'F',N'6700 Szeged, Baracsi László utca 14.' UNION ALL
select N'JOZSEFG',N'józsef.gyuris@mail.hu',N'Gyuris József',1975,N'F',N'2660 Balassagyarmat, Petőfi utca 1/2.' UNION ALL
select N'JUDITH',N'JUDITH@gmail.com',N'Hídasi Judit',1997,N'N',N'2100 Gödöllő, Fő út 169.' UNION ALL
select N'julia',N'julia@gmail.com',N'Tóth Júlia',1993,N'N',N'5310 Kisújszállás, Árpád utca 4.' UNION ALL
select N'julia4',N'julia4@gmail.com',N'Nagy Júlia',1985,N'N',N'7000 Sárbogárd, Jászai tér 21.' UNION ALL
select N'julianna4',N'julianna4@gmail.com',N'Szabó Julianna',1990,N'N',N'6700 Szeged, Kossuth Lajos utca 6.' UNION ALL
select N'kanita12',N'anita.kiss12@gmail.com',N'Kiss Anita',1975,N'N',N'2230 Gyömrő Fő tér 3.' UNION ALL
select N'kata',N'katalin.gondos@mail.hu',N'Gondos Katalin',1968,N'N',N'8237 Tihany, Kossuth Lajos utca 6.' UNION ALL
select N'katalin',N'katalin.horváth@mail.hu',N'Horváth Katalin',1968,N'N',N'2424 Előszállás, Rákóczi út 200.' UNION ALL
select N'katalin4',N'katalin4@gmail.com',N'Kertész Katalin',1986,N'N',N'2800 Tatabánya, Búvár utca 4.' UNION ALL
select N'kati',N'katalin.zatykó@mail.hu',N'Zatykó Katalin',1995,N'N',N'7511 Ötvöskónyi, Kossuth Lajos utca 6.' UNION ALL
select N'katka',N'katalin.kovács@mail.hu',N'Kovács Katalin',1975,N'N',N'8254 Kővágóörs, Petőfi utca 22.' UNION ALL
select N'klaudia2',N'klaudia.bakó@mail.hu',N'Bakó Klaudia',1982,N'N',N'8254 Kővágóörs, Kossuth Lajos utca 6.' UNION ALL
select N'kornel4',N'kornél.lukács@mail.hu',N'Lukács Kornél',1975,N'F',N'2053 Herceghalom, Bécsi utca 82.' UNION ALL
select N'kristof4',N'kristof4@gmail.com',N'Poprádi Kristóf',1984,N'F',N'8220 Balatonalmádi, Mészáros utca 7.' UNION ALL
select N'kriszti',N'kriszti@gmail.com',N'Horváth Krisztina',1978,N'N',N'6060 Tiszakécske, Árpád utca 4.' UNION ALL
select N'krisztian4',N'krisztián.czérna@mail.hu',N'Czérna Krisztián',1970,N'F',N'1107 Budapest, Dózsa György utca 37.' UNION ALL
select N'KRISZTIANM',N'KRISZTIANM@gmail.com',N'Mogyródi Krisztián',1968,N'F',N'9155 Lébény, Jászai tér 21.' UNION ALL
select N'krisztina',N'krisztina@gmail.com',N'Szedlár Krisztina',1979,N'N',N'6646 Tömörkény, Arany János utca 1.' UNION ALL
select N'krisztina1',N'krisztina.bori@mail.hu',N'Bori Krisztina',1969,N'N',N'2115 Vácszentlászló, Fő utca 47.' UNION ALL
select N'KRISZTINAG',N'KRISZTINAG@gmail.com',N'Gyárfás Krisztina',1987,N'N',N'6762 Sándorfalva, Arany János utca 1.' UNION ALL
select N'lajos',N'lajos.kiss@mail.hu',N'Kiss Lajos',1978,N'F',N'1077 Budapest, Dob utca 1' UNION ALL
select N'lala',N'lajos.nagymihály@mail.hu',N'Nagymihály Lajos',1997,N'F',N'8638 Balatonlelle, Rákóczi út 200.' UNION ALL
select N'laszlo1',N'lászló.farkas@mail.hu',N'Farkas László',1967,N'F',N'5200 Törökszentmiklós, Rendeki utca 21.' UNION ALL
select N'laszlo2',N'lászló.móra@mail.hu',N'Móra László',1975,N'F',N'9970 Szentgotthárd, Petőfi utca 1/2.' UNION ALL
select N'LASZLOA',N'lászló.antal@mail.hu',N'Antal László',1969,N'F',N'2484 Agárd, Bécsi utca 82.' UNION ALL
select N'LASZLON',N'lászló.nagy@mail.hu',N'Nagy László',1969,N'F',N'1173 Budapest, Jászai tér 21.' UNION ALL
select N'maria1',N'mária.baráth@mail.hu',N'Baráth Mária',1995,N'N',N'1047 Budapest, Posta köz 2.' UNION ALL
select N'mark',N'márk.kispál@mail.hu',N'Kispál Márk',1996,N'F',N'1086 Budapest, Juhászföldi út 1.' UNION ALL
select N'MARKH',N'márk.horváth@mail.hu',N'Horváth Márk',1997,N'F',N'4400 Nyíregyháza, Badacsonyi utca 12.' UNION ALL
select N'marton',N'marton@gmail.com',N'Kalacsi Márton',1989,N'F',N'5137 Jászkisér, Fő út 169.' UNION ALL
select N'MATEK',N'máté.koza@mail.hu',N'Koza Máté',1997,N'F',N'1011 Budapest, Központi telep 3.' UNION ALL
select N'matyas2',N'matyas2@gmail.com',N'Botka Mátyás',1972,N'F',N'2700 Cegléd, Kossuth Lajos utca 6.' UNION ALL
select N'MATYASS',N'mátyás.szilágyi@mail.hu',N'Szilágyi Mátyás',1975,N'F',N'9023 Győr, Kossuth Lajos utca 6.' UNION ALL
select N'melissza',N'nagy_peter@indamail.hu',N'Nagy Péter',1998,N'F',N'6800 Hódmezővásárhely, Oldalkosát u. 1.' UNION ALL
select N'MIHALYJ',N'mihály.juhász@mail.hu',N'Juhász Mihály',1979,N'F',N'6786 Ruzsa, Rákóczi utca 1.' UNION ALL
select N'miklos2',N'miklos2@gmail.com',N'Gondos Miklós',1995,N'F',N'2100 Gödöllő, Árpád utca 23.' UNION ALL
select N'MIKLOSB',N'miklós.balla@mail.hu',N'Balla Miklós',1979,N'F',N'4060 Balmazújváros, Szent István utca 2.' UNION ALL
select N'MONIKAM',N'mónika.mohos@mail.hu',N'Mohos Mónika',1974,N'N',N'2241 Sülysáp, Baracsi László utca 14.' UNION ALL
select N'NANDORF',N'nándor.fő@mail.hu',N'Fő Nándor',1968,N'F',N'5920 Csorvás, Bécsi utca 82.' UNION ALL
select N'nikolett3',N'nikolett3@gmail.com',N'Horváth Nikolett',1981,N'N',N'1072 Budapest, Arany János utca 1.' UNION ALL
select N'nikoletta4',N'nikoletta4@gmail.com',N'Kő Nikoletta',1972,N'N',N'5537 Zsadány, Fő út 18.' UNION ALL
select N'NIKOLETTAT',N'nikoletta.tatár@mail.hu',N'Tatár Nikoletta',1997,N'N',N'1067 Budapest, Győri utca 12.' UNION ALL
select N'norbert',N'norbert@gmail.com',N'Szűcs Norbert',1969,N'F',N'5071 Besenyszög, Győri utca 12.' UNION ALL
select N'norbert2',N'norbert.hegedűs@mail.hu',N'Hegedűs Norbert',1991,N'F',N'2081 Piliscsaba, Rendeki utca 21.' UNION ALL
select N'norbert4',N'norbert4@gmail.com',N'Mile Norbert',1983,N'F',N'3973 Cigánd, Bajcsy-Zsilinszky utca 4.' UNION ALL
select N'norbert5',N'norbert5@gmail.com',N'Béres Norbert',1975,N'F',N'8640 Fonyód, Bajcsy-Zsilinszky utca 4.' UNION ALL
select N'pal',N'pál.barabás@mail.hu',N'Barabás Pál',1968,N'F',N'1183 Budapest, Szolnoki út 8.' UNION ALL
select N'peter1',N'peter1@gmail.com',N'Kozma Péter',1976,N'F',N'6913 Csanádpalota, Központi telep 3.' UNION ALL
select N'peter2',N'peter2@gmail.com',N'Bozsó Péter',1976,N'F',N'4800 Vásárosnamény, Zombori út 2/A' UNION ALL
select N'peter3',N'peter3@gmail.com',N'Szalai Péter',1983,N'F',N'1155 Budapest, Arany János utca 3.' UNION ALL
select N'peter4',N'péter.bíró@mail.hu',N'Bíró Péter',1985,N'F',N'5137 Jászkisér, Rákóczi utca 67.' UNION ALL
select N'PETERB',N'péter.berendi@mail.hu',N'Berendi Péter',1969,N'F',N'3980 Sátoraljaújhely, Vasút utca 4/10.' UNION ALL
select N'polla',N'polla@gmail.com',N'Palágyi Polla',1994,N'N',N'2484 Agárd, Fő út 18.' UNION ALL
select N'rajmond4',N'rajmond.rácz@mail.hu',N'Rácz Rajmond',1993,N'F',N'9155 Lébény, Petőfi utca 1/2.' UNION ALL
select N'reka4',N'réka.szikszai@mail.hu',N'Szikszai Réka',1969,N'N',N'8254 Kővágóörs, Templom utca 73.' UNION ALL
select N'RENATAK',N'renáta.kardos@mail.hu',N'Kardos Renáta',1988,N'N',N'7086 Ozora, Bécsi utca 82.' UNION ALL
select N'RENATAS',N'RENATAS@gmail.com',N'Szirmai Renáta',1991,N'N',N'2053 Herceghalom, Kossuth utca 27.' UNION ALL
select N'robert2',N'robert2@gmail.com',N'Patay Róbert',1977,N'F',N'2370 Dabas, Rákóczi utca 21.' UNION ALL
select N'ROBERTI',N'róbert.iván@mail.hu',N'Iván Róbert',1967,N'F',N'2377 Örkény, Petőfi Sándor utca 3.' UNION ALL
select N'ROBERTP',N'ROBERTP@gmail.com',N'Pásztor Róbert',1972,N'F',N'5137 Jászkisér, Ady Endre út 27.' UNION ALL
select N'roland',N'roland@gmail.com',N'Tóth Roland',1968,N'F',N'2000 Szentendre, Fő út 169.' UNION ALL
select N'roland1',N'roland.ferencz@mail.hu',N'Ferencz Roland',1985,N'F',N'2424 Előszállás, Fő út 169.' UNION ALL
select N'roza2',N'roza2@gmail.com',N'Bucskó Róza',1988,N'N',N'5661 Újkígyós, Arany János utca 3.' UNION ALL
select N'sandor',N'sandor@gmail.com',N'Karasz Sándor',1970,N'F',N'8283 Káptalantóti, Kossuth Lajos utca 1/a.' UNION ALL
select N'sandor3',N'sándor.farkas@mail.hu',N'Farkas Sándor',1989,N'F',N'8640 Fonyód, Tanácsköztársaság tér 1.' UNION ALL
select N'sandor4',N'sandor4@gmail.com',N'Nagy Sándor',1997,N'F',N'4600 Kisvárda, Fő utca 47.' UNION ALL
select N'sara',N'sára.farkas@mail.hu',N'Farkas Sára',1973,N'N',N'5940 Tótkomlós, Felszabadulás utca 32.' UNION ALL
select N'SEBASTIANF',N'SEBASTIANF@gmail.com',N'Foltényi Sebastián',1992,N'F',N'7960 Sellye, Grassalkovich út 10.' UNION ALL
select N'sebestyen',N'sebestyen@gmail.com',N'Rab Sebestyén',1992,N'F',N'7130 Tolna, Központi telep 3.' UNION ALL
select N'szabolcs',N'szabolcs.bodor@mail.hu',N'Bodor Szabolcs',1990,N'F',N'6786 Ruzsa, Ady Endre út 27.' UNION ALL
select N'SZABOLCSM',N'szabolcs.miklós@mail.hu',N'Miklós Szabolcs',1980,N'F',N'1102 Budapest, Fő út 169.' UNION ALL
select N'SZILARDS',N'szilárd.szalai@mail.hu',N'Szalai Szilárd',1967,N'F',N'1077 Budapest, Fő út 18.' UNION ALL
select N'szilvia1',N'szilvia.tari@mail.hu',N'Tari Szilvia',1971,N'N',N'6080 Szabadszállás, Bécsi utca 82.' UNION ALL
select N'tamara2',N'tamara.miklós@mail.hu',N'Miklós Tamara',1980,N'N',N'3910 Tokaj, Kossuth út 39.' UNION ALL
select N'tamas',N'tamás.antal@mail.hu',N'Antal Tamás',1984,N'F',N'4440 Tiszavasvári, Posta köz 2.' UNION ALL
select N'TAMASF',N'TAMASF@gmail.com',N'Fényes Tamás',1997,N'F',N'9023 Győr, Arany János utca 1.' UNION ALL
select N'tibor',N'tibor.gombos@mail.hu',N'Gombos Tibor',1993,N'F',N'7100 Szekszárd, Kossuth utca 77.' UNION ALL
select N'tibor2',N'tibor2@gmail.com',N'Dániel Tibor',1985,N'F',N'6646 Tömörkény, Árpád utca 23.' UNION ALL
select N'tihamer',N'tihamér.kazy@mail.hu',N'Kazy Tihamér',1991,N'F',N'2370 Dabas, Fő utca 60.' UNION ALL
select N'timea',N'timea@gmail.com',N'Papós Tímea',1996,N'N',N'1035 Budapest,  Kossuth út 77.' UNION ALL
select N'timea2',N'tímea.dusha@mail.hu',N'Dusha Tímea',1975,N'N',N'5920 Csorvás, Kossuth utca 8.' UNION ALL
select N'tunde',N'tunde@gmail.com',N'Turcsik Tünde',1974,N'N',N'7130 Tolna, Fő út 122.' UNION ALL
select N'valentin',N'valentin.feró@mail.hu',N'Feró Valentin',1986,N'F',N'3895 Gönc, Búvár utca 4.' UNION ALL
select N'veronika4',N'veronika4@gmail.com',N'Tankó Veronika',1983,N'N',N'6412 Balotaszállás, Rendeki utca 21.' UNION ALL
select N'VIKTORIAU',N'viktoria.urbán@mail.hu',N'Urbán Viktoria',1996,N'N',N'3860 Encs, Népboltsor  2.' UNION ALL
select N'VIKTORK',N'viktor.keresztúri@mail.hu',N'Keresztúri Viktor',1989,N'F',N'2532 Tokodaltáró, Nagy Lajos tér 4.' UNION ALL
select N'vivien3',N'vivien3@gmail.com',N'Boros Vivien',1991,N'N',N'2117 Isaszeg, Fő út 122.' UNION ALL
select N'zoltan',N'zoltán.fodor@mail.hu',N'Fodor Zoltán',1979,N'F',N'3441 Mezőkeresztes, Fő utca 23.' UNION ALL
select N'zoltan4',N'zoltan4@gmail.com',N'Barna Zoltán',1986,N'F',N'8313 Balatongyörök, Jászai tér 21.' UNION ALL
select N'ZOLTANP',N'zoltán.pintér@mail.hu',N'Pintér Zoltán',1977,N'F',N'6050 Lajosmizse, Fő út 18.' UNION ALL
select N'ZOLTANT',N'zoltán.tóth@mail.hu',N'Tóth Zoltán',1985,N'F',N'4244 Újfehértó, Posta köz 2.' UNION ALL
select N'zsofi1',N'zsofi1@gmail.com',N'Molnár Zsófi',1983,N'N',N'2730 Albertirsa, Árpád utca 23.' UNION ALL
select N'zsolt1',N'zsolt.pulai@mail.hu',N'Pulai Zsolt',1988,N'F',N'8391 Sármellék, Fő utca 60.' UNION ALL
select N'ZSOLTJ',N'ZSOLTJ@gmail.com',N'Józsa Zsolt',1983,N'F',N'8315 Gyenesdiás, Bajcsy-Zsilinszky utca 4.' UNION ALL
select N'zsuzsa',N'zsuzsanna@gmail.com',N'Pusztai Zsuzsanna',1980,N'N',N'6783 Ásotthalom, Badacsonyi utca 12.' UNION ALL
select N'zsuzsa3',N'zsuzsa.varsányi@mail.hu',N'Varsányi Zsuzsa',1979,N'N',N'8600 Siófok, Árpád utca 4.' UNION ALL
select N'zsuzsanna',N'zsuzsanna.barta@mail.hu',N'Barta Zsuzsanna',1994,N'N',N'4172 Biharnagybajom, Dózsa György utca 37.' UNION ALL
select N'ZSUZSAV',N'zsuzsa.vajda@mail.hu',N'Vajda Zsuzsa',1976,N'N',N'6786 Ruzsa, Kossuth utca 77.';


SELECT *
from Ugyfel

create user felhasznalo without login
grant select on Ugyfel to felhasznalo


execute as user = 'felhasznalo'
select * 
from Ugyfel

revert
select * 
from Ugyfel
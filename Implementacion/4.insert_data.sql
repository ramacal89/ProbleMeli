/*
 Calvo Ramiro - 2020/11/26 - ProbleMeli
 INSERT DATA
*/
USE [Test]
--piscu.database.windows.net--
 BEGIN TRAN
 --Genders--
 IF NOT EXISTS (SELECT * FROM [dbo].[Gender])
	BEGIN
		INSERT INTO [dbo].[Gender] VALUES ('Masculino');
		INSERT INTO [dbo].[Gender] VALUES ('Femenino');
		INSERT INTO [dbo].[Gender] VALUES ('No Binario');
		INSERT INTO [dbo].[Gender] VALUES ('No Especificar');
	END
 --Category--
  IF NOT EXISTS (SELECT * FROM [dbo].[Category])
	BEGIN
		INSERT INTO [dbo].[Category] VALUES (null,'Tecnología', getdate(),getdate(),1);
		INSERT INTO [dbo].[Category] VALUES (1,'Celulares y Teléfonos', getdate(),getdate(),1);
		INSERT INTO [dbo].[Category] VALUES (2,'Celulares y Smartphones', getdate(),getdate(),1);
		INSERT INTO [dbo].[Category] VALUES (null,'Computacion', getdate(),getdate(),1);
		INSERT INTO [dbo].[Category] VALUES (4,'Perifericos', getdate(),getdate(),1);
		INSERT INTO [dbo].[Category] VALUES (5,'Mouse', getdate(),getdate(),1);
	END
  IF NOT EXISTS (SELECT * FROM [dbo].[CategoryDupli])
	BEGIN
		INSERT INTO [dbo].[CategoryDupli] VALUES (1,null,'Tecnología', getdate(),getdate(),1);
		INSERT INTO [dbo].[CategoryDupli] VALUES (2,1,'Celulares y Teléfonos', getdate(),getdate(),1);
		INSERT INTO [dbo].[CategoryDupli] VALUES (3,2,'Celulares y Smartphones', getdate(),getdate(),1);
		INSERT INTO [dbo].[CategoryDupli] VALUES (4,null,'Computacion', getdate(),getdate(),1);
		INSERT INTO [dbo].[CategoryDupli] VALUES (5,4,'Perifericos', getdate(),getdate(),1);
		INSERT INTO [dbo].[CategoryDupli] VALUES (5,4,'Perifericos', getdate(),getdate()-1,1);
		INSERT INTO [dbo].[CategoryDupli] VALUES (6,5,'Mouse', getdate(),getdate(),1);
	END
	
 --Customers--
 IF NOT EXISTS (SELECT * FROM [dbo].[Customer])
	BEGIN
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'a.tortor@Uttincidunt.ca','Iñaki','Guzmán','1366 Ipsum Avenue','1990-07-13','16490614 3641',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ac.risus@volutpatNulla.ca','Octavio','Saavedra','8949 Dictum Avenue','1994-03-07','16680526 6787',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'aliquam.arcu.Aliquam@adipiscinglobortis.edu','Emiliano','Fernández','773-1441 Molestie Road','1966-08-23','16150704 6348',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'aliquam.eu.accumsan@euismod.com','Elliot','Herrera','9008 Interdum Rd.','1982-04-27','16091130 5142',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'aliquet.libero.Integer@ac.org','Matthew','Martínez','P.O. Box 737, 4813 Sit St.','1973-10-05','16140405 4254',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'aliquet@eratvel.ca','Fabrizzio','Gómez','318-6671 Mus. Street','1984-03-31','16691030 0281',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'amet.metus.Aliquam@magnaDuisdignissim.org','Henrry','Silva','P.O. Box 795, 3428 Aenean Ave','2000-10-17','16801224 7659',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'amet.ultricies.sem@etipsumcursus.edu','Wilfredo','Saavedra','3218 Sodales Avenue','1972-02-13','16260405 9580',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'amet@Fuscealiquet.co.uk','Emanuel','Gallardo','P.O. Box 400, 491 Nulla. St.','1972-10-08','16810904 8820',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ante.ipsum.primis@sagittissemperNam.net','Maxi','Carrasco','Ap #335-5595 A St.','1975-09-27','16851020 1232',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'at.iaculis.quis@Nulladignissim.org','Eliam','Palma','775-5853 Arcu. St.','1984-03-13','16981111 9610',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'at.lacus@feugiatnec.co.uk','Stefano38','Palma','P.O. Box 591, 7643 Elit Street','1967-01-06','16200101 7785',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'at@consequat.co.uk','Lian','Jiménez','394-545 Vestibulum Rd.','1991-10-19','16111118 5011',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'at@sit.ca','Kenneth','García','Ap #213-6174 Lacus. Rd.','1973-05-21','16410629 5191',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'augue.porttitor.interdum@Donecvitae.ca','Exzequiel','Gallardo','205-5574 Vulputate, Av.','1961-09-05','16080911 1529',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'convallis.ante@imperdieteratnonummy.net','Mateo','Toro','2985 Ut, Ave','1993-03-30','16950811 8677',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Cras.vehicula@egetdictum.ca','Benjamin','Yáñez','9290 Et Av.','1972-04-08','16261218 9726',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Cras.vehicula@enimCurabiturmassa.net','Andriu','Araya','5940 Ac Rd.','1974-01-19','16150401 1782',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Cras.vulputate.velit@Aliquameratvolutpat.co.uk','Gregory','Guzmán','1223 Lectus Ave','1969-12-12','16581101 4785',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'cursus.Nunc.mauris@Cum.org','Axl','Peña','368-3734 Aliquam Rd.','1967-03-24','16580106 7470',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'cursus@nonduinec.co.uk','Benjamín','Sepúlveda','5871 Neque. St.','1974-03-04','16761014 1579',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'diam.at.pretium@atlacus.edu','Naim','Venegas','331-1595 Purus. Avenue','1993-01-31','16431004 5952',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'diam.Proin.dolor@sit.co.uk','Lautaro','Ortiz','797-9462 Phasellus Rd.','1966-01-02','16121227 5034',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'diam@arcuSed.ca','Jesus','Poblete','6798 At St.','1987-02-19','16800522 7726',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'dignissim.Maecenas@arcuVivamus.edu','Kenneth','Fuentes','894-1366 A Av.','1966-09-07','16210206 9339',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'dolor.Quisque.tincidunt@tellussem.co.uk','Julio','Cárdenas','9527 Fusce Av.','2001-07-17','16320409 6436',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Donec.elementum.lorem@semmagna.org','Mario','Vidal','407-1615 Ornare, Rd.','1993-08-29','16621208 6646',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Duis.volutpat@sedtortor.co.uk','Maicol','Olivares','P.O. Box 353, 6758 Metus. Rd.','1998-08-17','16260421 7196',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'eget@diamloremauctor.ca','Isaías','Bustos','P.O. Box 590, 7401 Ut Rd.','1996-09-13','16920109 3128',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'elementum.at.egestas@acfermentumvel.net','Marck','Jiménez','P.O. Box 921, 2645 Enim. St.','1975-08-22','16070404 6804',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'elit@felisadipiscingfringilla.ca','Goran','Aravena','2720 Arcu. Rd.','1960-10-27','16000101 1824',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'enim@justoProinnon.org','Deivid','Ruiz','461-9674 Eros Ave','1993-02-13','16130609 0067',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'eros@mauris.ca','Mattias','Rodríguez','992-3450 Velit St.','1960-07-20','16030919 8638',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'eros@tempusmauriserat.ca','Geremías','Bravo','P.O. Box 316, 3395 Elit, Road','1980-04-04','16931106 7210',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'est@etrutrumeu.co.uk','Maikol','Cárdenas','P.O. Box 352, 184 Tortor, St.','1971-05-22','16340308 2534',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'eu.arcu.Morbi@dui.net','Vincent','Cáceres','P.O. Box 218, 2231 Scelerisque St.','1994-03-19','16290301 8535',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'eu.nibh.vulputate@nisi.edu','Andrés','Toro','P.O. Box 635, 209 Dignissim St.','1969-07-07','16571014 8007',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'eu.sem@eu.co.uk','Eluney','Gallardo','798-6994 Vel Street','1999-02-16','16250315 7923',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'fames.ac.turpis@consequatnec.co.uk','Mitchell','Riquelme','P.O. Box 670, 9786 Dictum Rd.','1988-07-04','16031223 0436',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'felis@Mauris.edu','Joan','Jiménez','3908 Integer Av.','1984-07-13','16421104 8196',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'fringilla.cursus.purus@nequenonquam.co.uk','Milton','Ortiz','Ap #500-5734 Donec Rd.','2000-06-07','16030629 7482',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Fusce.diam@fermentum.org','Angel','Ortega','520-3427 Imperdiet Rd.','1960-03-03','16700813 2396',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'gravida@Aenean.edu','Arthur','Venegas','Ap #423-9238 Interdum. Ave','1994-12-22','16370113 7832',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'id.libero.Donec@aclibero.com','Ian','Vargas','P.O. Box 640, 5817 Pede. Street','1960-07-23','16320617 2300',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'imperdiet.nec@Pellentesque.org','Cristiàn','Olivares','200-3153 Eget, Street','1961-01-08','16880515 9699',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'in@blandit.org','Maximiliano','Torres','374-989 Vivamus Av.','1979-06-14','16811108 1280',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ipsum.Curabitur.consequat@tinciduntDonec.org','Jeison','Tapia','Ap #482-3796 Pellentesque Rd.','1998-04-19','16070812 7543',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ipsum.dolor.sit@sitametluctus.com','Vincent','Castro','Ap #442-543 Ultricies St.','1973-12-20','16670922 1136',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ipsum.non@Donecelementumlorem.edu','Nikolas','Valdés','P.O. Box 100, 8127 Integer Av.','1965-08-01','16030207 3564',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'lectus.a@Etiamligula.co.uk','Erick','Herrera','970-9830 Non Ave','1997-01-27','16641213 1358',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ligula@convallis.net','Gerson','Pizarro','Ap #681-7407 Quisque St.','1981-04-29','16010413 2188',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ligula@dolor.org','Juliano','Pino','P.O. Box 104, 5002 Mauris St.','1986-12-10','16360919 9884',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'luctus.felis@lectusCumsociis.edu','Alberto','Contreras','603-5306 Id St.','1978-05-11','16081107 6777',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'luctus.ipsum.leo@ante.net','Gilberto','Godoy','4728 Mi Ave','1973-09-26','16071223 0432',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'malesuada.fames.ac@luctus.org','Randy','Ruiz','P.O. Box 835, 609 Risus Road','1982-03-19','16640320 7480',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'massa.Vestibulum.accumsan@enim.co.uk','Pascual','Valenzuela','623-9098 Vitae St.','1991-11-17','16201108 8669',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'mauris.Morbi.non@amet.ca','Christofer','Soto','Ap #720-2814 Nullam Avenue','1969-12-21','16781118 0038',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'metus.In.nec@sollicitudinamalesuada.ca','Gerardo','Gutiérrez','P.O. Box 316, 7797 Fusce St.','1979-03-04','16000604 4739',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'mi@lorem.com','Teo','Hernández','9373 Risus Avenue','1975-02-18','16140120 1924',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'mollis@sedconsequat.org','Eduardo','Farías','8938 Risus. Ave','1995-12-21','16830318 6285',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'mus.Proin.vel@Nunc.ca','Milovan','Jiménez','Ap #965-2713 Egestas. Road','1980-09-27','16641007 4311',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'neque.et.nunc@faucibus.net','Ander','Pérez','3450 Porttitor Av.','1999-10-09','16120725 5363',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'neque.In@lorem.co.uk','Yamir','Godoy','P.O. Box 374, 6573 Sed, Av.','1969-11-29','16260428 9203',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'nisl.sem.consequat@blanditenim.ca','Franz','Torres','8609 Tempus Ave','1981-10-13','16521128 7452',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'nisl.sem.consequat@idliberoDonec.org','Jhoan','González','Ap #637-4032 Proin St.','1997-06-01','16560515 1637',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'nisl@lectus.com','Antwan','Alarcón','1773 Orci. St.','1989-11-27','16680908 7569',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'non.quam.Pellentesque@ornareliberoat.com','Luckas','Jara','2560 Pede Road','1984-09-22','16580219 7854',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Nulla.tempor.augue@tempus.org','Gilberto','Leiva','125-5418 Aenean Ave','1961-02-13','16200517 9615',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'nunc.nulla.vulputate@lobortisnisi.org','Jairo','Molina','P.O. Box 762, 1055 Arcu. Avenue','1970-04-07','16900806 8596',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'odio.auctor@interdumfeugiatSed.net','Yostin','Vera','200-1558 Malesuada St.','1962-04-22','16010219 8900',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'odio.sagittis.semper@placerat.org','Isaak','Soto','875-2993 Morbi Rd.','1978-08-29','16000828 6163',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'pede.Nunc@egetlacusMauris.net','Allan','Morales','202-6743 Pede Av.','1997-02-03','16460505 0691',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Phasellus.nulla.Integer@Etiamgravidamolestie.net','Joakin','Soto','546-6455 Varius Ave','1983-03-27','16740322 0457',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'placerat.Cras.dictum@Etiamvestibulum.org','Caleb','Martínez','170-443 Purus Rd.','1970-04-11','16270916 4038',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'porttitor.interdum@Aliquamvulputateullamcorper.ca','Jesús','Salazar','Ap #246-4739 Nulla St.','1991-03-09','16300419 3888',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'posuere.enim@atvelit.edu','Junior','Bustamante','Ap #915-1151 Sagittis Rd.','1994-12-02','16240724 6707',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'purus.Maecenas.libero@ligulaelitpretium.com','Manuel','Cortés','392-142 At Avenue','1988-09-01','16470628 1674',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'purus@magna.com','Henry','Parra','P.O. Box 630, 7037 Rutrum St.','1961-10-30','16660330 9573',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Quisque.libero@justo.ca','Paulo','Sáez','P.O. Box 373, 4316 Id, Rd.','1983-07-30','16780920 6910',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'risus.Duis@eleifend.edu','Mirko','Cortés','Ap #349-5604 Fringilla, Road','2001-12-30','16990102 7152',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'risus@nullaante.edu','George','Molina','P.O. Box 779, 7308 Quis Street','1976-11-20','16071211 9783',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Sed.dictum@aceleifend.edu','Robin','Carvajal','408-9684 Id, Street','1966-02-12','16251010 2870',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'sem.Nulla.interdum@cursus.com','Raul','Campos','186-5183 Ultrices Rd.','1967-11-24','16330203 0139',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'tempus.lorem@Quisqueornare.co.uk','Jorge','Alvarado','119-892 Magnis St.','1980-02-07','16331128 0329',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'tincidunt.congue.turpis@ametmassa.co.uk','Eddie','Paredes','3454 Elit, Road','1998-11-21','16561103 8000',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'tincidunt.congue@orciPhasellusdapibus.co.uk','Eydan','Vásquez','809-113 Nisi. Ave','1972-06-30','16800717 7564',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'tincidunt@Sednullaante.ca','Ezekiel','Donoso','Ap #120-7266 Nibh. Avenue','1978-11-03','16360209 7366',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'turpis.vitae@sedhendrerit.com','Yojhan','Lagos','2805 Facilisi. Rd.','1979-10-09','16030506 8710',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ullamcorper.Duis@famesacturpis.org','Alexis','Moreno','Ap #971-9207 Lacus. Rd.','1997-05-20','16090101 3250',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ullamcorper@pellentesquea.org','Danko','Castillo','Ap #693-7742 Faucibus. St.','1985-09-22','16940405 4315',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'ut.ipsum.ac@tellus.net','Daud','Silva','496-2397 Id, Avenue','1997-01-05','16091102 4263',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Ut@aliquet.ca','Roberto','Salinas','Ap #239-755 Ipsum Street','2001-12-16','16891121 5328',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'varius.et.euismod@dignissimlacusAliquam.com','Allen','Bustos','Ap #158-4641 Ac Rd.','1965-02-26','16121109 3917',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'vel@euenim.com','Ian','Flores','P.O. Box 225, 7913 Sapien. St.','1970-12-22','16121116 0914',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'Vestibulum@dictumProin.com','Tobías','Espinoza','P.O. Box 133, 5721 Consectetuer Rd.','1979-01-21','16510105 1364',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'vitae.erat@eget.ca','Robin','Vargas','Ap #519-1280 Velit. Rd.','1971-05-15','16110313 2351',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'vitae.orci@acfacilisis.co.uk','Sandro','Torres','3987 Magna Ave','1976-10-01','16700715 3062',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'viverra@id.net','Damir','Ortega','276-5269 Vehicula Road','1961-02-26','16811002 3127',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'vulputate.nisi.sem@velarcueu.co.uk','Jahir','Herrera','531-7338 Euismod St.','1999-09-29','16521015 5973',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (1, 'vulputate@Nullam.net','Mattia','Godoy','7661 Donec Rd.','1985-04-06','16890209 9798',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'laoreet@tinciduntnunc.ca','Carolina','Orellana','P.O. Box 499, 3955 Sapien, Street','1974-04-09','16830124 1264',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'feugiat.Lorem.ipsum@aliquetlibero.net','Issidora','Vargas','Ap #169-4804 Quam, Ave','1984-06-21','16740407 7351',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'tellus.justo.sit@Duis.edu','Julia','Gutiérrez','P.O. Box 760, 5492 Diam. Street','1965-04-11','16430425 3331',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ipsum@leoelementumsem.ca','Alaniz','Salazar','Ap #410-4848 Sed Rd.','2001-01-21','16930811 5212',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'consequat.auctor.nunc@erat.ca','Jael','Orellana','8973 Dolor Street','1969-11-04','16331225 6385',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ante.ipsum.primis@dui.org','Helena','Olivares','Ap #276-4605 Ullamcorper Rd.','1999-12-31','16480812 7353',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'tincidunt.aliquam.arcu@mollisDuis.org','Amy','Aguilera','659-2718 Auctor Ave','1968-11-02','16830920 3670',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Sed.auctor.odio@magnamalesuadavel.ca','Skarleth','García','3724 Ante Rd.','1996-05-28','16240624 9488',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'scelerisque.dui.Suspendisse@ac.edu','Selena','Álvarez','6181 Urna. Rd.','1992-11-16','16470303 0082',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ultrices.iaculis@Vestibulumaccumsan.co.uk','Keyla','Sepúlveda','Ap #403-7885 Nulla Road','1993-01-15','16750206 8195',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Integer.sem@ornaresagittisfelis.org','Barbara','Gallardo','581-1791 Praesent Avenue','1977-10-17','16740916 7231',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'et.magnis@dapibusligula.ca','Nazareth','Martínez','788-778 A St.','1977-11-04','16981021 6813',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'risus.Duis@egestasAliquamnec.ca','Margarita','Peña','Ap #381-8935 Ipsum Rd.','1990-09-28','16840221 7619',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'semper.rutrum@justo.com','Sabina','Orellana','645-6385 Dui Road','1998-08-21','16241222 0333',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'vulputate@aliquetmetusurna.edu','Thais','Castro','Ap #575-6938 Cursus, Avenue','1964-05-19','16481204 8488',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'erat.nonummy.ultricies@tellussemmollis.ca','Maylin','Venegas','Ap #890-1639 Ipsum Rd.','1997-09-23','16261020 2331',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'fames.ac@ridiculusmusProin.edu','Yanella','Díaz','8885 Enim. Avenue','1989-10-07','16750801 2833',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'In.condimentum@lobortisnisinibh.co.uk','Lidia','Farías','551-2515 Orci St.','1986-11-24','16340202 0923',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'parturient@Nullatempor.edu','Sharon','San Martín','8989 Dapibus Road','1965-06-02','16500510 1208',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'arcu.et.pede@dignissim.net','Ruth','Peña','965-6513 Nunc Av.','1965-04-04','16500121 7743',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'arcu@ultricies.ca','Rafaella','Espinoza','596-3031 Tempor Rd.','1988-04-08','16780102 0798',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'diam.vel@Donecvitaeerat.edu','Keily','Vargas','601-2904 Tincidunt. Rd.','1982-02-19','16140518 8135',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'felis@ipsum.org','Katrina','Castro','4535 Magna. St.','1960-07-09','16090630 4381',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'sollicitudin.orci@SednequeSed.co.uk','Noemy','Vera','Ap #843-7830 Pellentesque. Rd.','1961-09-06','16900813 5650',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Integer.sem.elit@ridiculusmus.edu','Blanca','Bustamante','Ap #624-2277 In, Av.','1995-08-26','16210911 7131',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Duis.sit@non.org','Cristel','Toro','Ap #382-4570 Facilisis. Road','1991-07-24','16450726 7070',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ut.dolor@faucibus.com','Lorenza','Lagos','492-822 Eu Street','1986-03-07','16710208 9872',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'risus.Donec.egestas@malesuadavel.edu','Marcia','Jiménez','Ap #484-9579 Eu St.','1996-08-11','16190301 0997',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'turpis.egestas.Fusce@ametluctus.ca','Rosa','Hernández','Ap #373-9167 Eget Avenue','2000-01-04','16010307 8614',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ullamcorper.Duis.cursus@penatibuset.org','Luz','Guzmán','455-201 Aliquam St.','1990-06-10','16640814 1874',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'lorem@idmollis.com','Mercedes','Sánchez','7688 Semper Ave','1997-04-15','16280220 6322',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'magna@sagittisaugue.com','Dennise','Cáceres','410 Nunc Av.','1995-08-01','16640112 1543',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Nullam.lobortis.quam@consectetueradipiscing.ca','Gisella','Rojas','214-2207 Donec St.','1987-05-21','16470625 3004',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'sed.sem@et.edu','Piera','Olivares','P.O. Box 518, 3453 Metus St.','1978-10-19','16590410 2471',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'commodo.auctor@sodalespurusin.edu','Karen','Vega','Ap #853-3467 Et Avenue','1988-07-30','16810216 1604',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ac@asollicitudinorci.co.uk','Melody','Cárdenas','P.O. Box 686, 2953 Montes, Avenue','1994-10-30','16940206 2641',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'id.mollis.nec@vitaediamProin.net','Alaniz','Salazar','Ap #284-8152 Ante Rd.','1961-06-30','16380206 2079',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'fringilla.ornare@luctus.ca','Tabatha','Fernández','1569 Enim. Avenue','1964-07-04','16100504 9919',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'nunc.sed.pede@nequevenenatis.net','Sofía','Díaz','Ap #458-7056 Ultrices. Road','1963-03-10','16430608 4122',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'magna@pellentesqueafacilisis.co.uk','Amaya','Vera','P.O. Box 837, 9054 Lobortis St.','1976-08-28','16260511 1281',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'pellentesque@Donecelementum.org','Norma','González','P.O. Box 300, 1580 Augue Rd.','2000-12-07','16881130 6862',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'a.auctor.non@adipiscingnonluctus.org','Marthyna','Palma','P.O. Box 228, 5002 At, Rd.','1987-08-08','16220717 6534',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'tincidunt.nunc.ac@convallis.org','Karen','Pizarro','P.O. Box 824, 4306 Urna. Ave','1972-09-03','16960915 0033',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'augue.ac.ipsum@Quisqueornaretortor.edu','Karlita','Cáceres','3981 Neque. Avenue','1966-12-23','16281029 4625',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'mi.Aliquam.gravida@velitin.com','Marta','Vargas','P.O. Box 126, 7979 Diam Ave','1961-07-30','16330902 9084',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Quisque.fringilla@tinciduntaliquamarcu.org','Guadalupe','Sandoval','Ap #697-4544 Pharetra Street','1970-05-20','16190313 6651',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'lorem.luctus@porttitorerosnec.co.uk','Aynara','Donoso','453-2663 Enim, Rd.','1964-12-04','16691102 2538',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Nulla@placeratCrasdictum.ca','Emilia','Bravo','P.O. Box 115, 8195 Luctus Av.','1988-05-12','16581226 8281',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Quisque@mifringilla.ca','Karen','Molina','P.O. Box 440, 9750 Eget Ave','1981-01-21','16960418 6198',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'orci@ligulaconsectetuerrhoncus.net','Anahi','Alarcón','1118 Vitae, Rd.','1969-06-29','16880819 6961',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'In@diamDuismi.ca','Francisca','Torres','4105 Aliquam Av.','1985-09-29','16000705 6708',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Nulla.dignissim@Duisami.com','Scarlette','Hernández','P.O. Box 365, 8312 Justo Street','1993-05-07','16240903 4291',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'eu.ligula.Aenean@fermentumarcuVestibulum.net','Dominic','Jiménez','Ap #429-7464 Dolor Street','1965-04-08','16551005 5105',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Maecenas@amet.edu','Milena','Herrera','Ap #585-2469 Sollicitudin St.','1982-07-09','16540805 6322',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'sit.amet@sociisnatoquepenatibus.org','Sarah','Vásquez','651-4345 Egestas. Rd.','1986-01-08','16561003 8985',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'feugiat.metus@arcuMorbi.edu','Dennise','Cárdenas','6632 Sodales Road','1996-05-17','16350701 0217',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ipsum.nunc@egetdictumplacerat.co.uk','Lauryn','Herrera','Ap #347-2538 Dignissim Street','1971-09-29','16371004 6362',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'erat.eget@interdumenim.ca','Charlotte','Olivares','P.O. Box 462, 2535 Rutrum, Avenue','1997-10-01','16680513 2666',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'mus.Proin@molestietellus.net','Nazareth','Henríquez','3269 Tempus St.','1984-10-01','16851117 3901',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ante@Proindolor.org','Genesis','Herrera','P.O. Box 504, 9922 At Rd.','1990-11-30','16470705 3056',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'bibendum@Fuscediam.ca','Kiara','Bravo','Ap #601-9242 Fusce Road','1993-10-12','16410829 4853',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'eget.tincidunt.dui@posuerecubiliaCurae.org','Mya','Pérez','868-7253 Vitae Rd.','1961-10-10','16590216 3780',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'nisl.arcu.iaculis@magnisdis.co.uk','Rebeca','Contreras','Ap #802-2481 In, Street','1966-12-30','16920420 8046',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'vitae@egestasrhoncus.ca','Dayra','Vera','161-7149 Vehicula Rd.','1971-05-07','16310418 0769',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ante.Maecenas.mi@magnaLorem.co.uk','Julieta','Martínez','Ap #673-9409 Nullam St.','1997-12-13','16440707 9724',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'felis@purusgravida.com','Anthonella','Rojas','8225 Curabitur Ave','1971-02-01','16020206 0398',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'leo@etmagnisdis.edu','Giselle','Contreras','Ap #295-4585 Elit Street','1961-09-27','16620615 5977',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Quisque.libero.lacus@auctorodio.org','Mariapaz','Sanhueza','P.O. Box 421, 7086 Porttitor Street','1990-04-28','16471216 4054',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'amet.ornare.lectus@pulvinararcuet.org','Makarena','Lagos','P.O. Box 304, 7790 Nulla Avenue','2000-05-13','16500402 2785',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'sed.sem.egestas@mollislectuspede.com','Tania','Lagos','Ap #993-3844 Scelerisque, Ave','1961-08-21','16590602 8906',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'fermentum.metus.Aenean@eratin.edu','Tabita','Bustos','820-6021 Duis Rd.','1999-07-26','16190201 7506',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'lobortis.tellus@enim.org','Pascalle','Muñoz','8978 Eleifend. Rd.','1982-12-03','16790429 3706',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'velit.eget.laoreet@sagittis.com','Betzabeth','Valenzuela','Ap #330-283 Penatibus Street','1962-05-29','16420811 1015',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Etiam.bibendum@Proin.ca','Priscila','Flores','P.O. Box 956, 7322 Dolor. St.','1965-06-30','16451021 3251',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'ultricies.ligula@sit.edu','Scarlet','Valdés','Ap #603-8693 Pede, Street','2000-12-16','16940804 1912',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'adipiscing.non.luctus@diamvelarcu.ca','Kathia','Soto','1430 Bibendum Street','1987-09-01','16260518 8164',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'justo@ipsumCurabiturconsequat.net','Escarleth','Sanhueza','Ap #370-1023 Vel, Rd.','1991-08-02','16770705 9957',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'eu@euerosNam.com','Elsa','Vidal','526-1006 Morbi St.','1985-06-10','16180426 1707',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'sed.sem.egestas@Nuncpulvinararcu.net','Jhendelyn','Cárdenas','4283 Dolor. Av.','1970-09-25','16541006 0502',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'adipiscing.enim@neceleifendnon.edu','Tania','Rojas','Ap #541-8484 Duis Road','1965-01-16','16920722 7761',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'enim@sed.com','Naomy','Álvarez','Ap #565-8302 Praesent Street','1975-12-01','16640915 1625',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'pharetra.nibh@rhoncusProinnisl.org','Susan','González','557-4796 Eleifend, Av.','2000-02-29','16610528 4464',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'tempor.lorem.eget@fringilla.ca','Amaral','González','5581 Arcu. Rd.','1984-06-03','16240621 3385',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'luctus.et.ultrices@ametconsectetuer.com','Jasmine','Leiva','Ap #747-3724 Morbi Street','1989-09-24','16781012 0480',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Praesent@molestietellusAenean.co.uk','Elisabet','Gallardo','Ap #101-4384 Nibh. Av.','1995-11-10','16540826 9784',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Nulla.eget@apurus.org','Anita','Díaz','P.O. Box 889, 6902 Est. Street','1987-04-15','16490710 6498',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'sed@est.net','Viviana','Bustamante','Ap #611-5704 Dui. St.','1971-11-22','16480828 4964',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Morbi.metus@Nam.org','Madeleine','Vidal','2127 Vivamus Avenue','1978-04-11','16410712 2329',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'at@Aliquamerat.org','Masiel','Fernández','Ap #663-9837 Mi Street','1961-01-12','16781128 7296',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Cras.convallis.convallis@ut.net','Andrea','Poblete','Ap #710-6634 Cras Rd.','1968-01-30','16061115 4014',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'mauris@Namnulla.ca','Simoney','Araya','P.O. Box 151, 4696 Tempus St.','1964-01-19','16201027 4807',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'Maecenas.malesuada.fringilla@pretiumaliquet.co.uk','Marian','Carrasco','Ap #163-3566 Auctor Avenue','1986-06-11','16701204 9941',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'mus.Proin.vel@Cras.co.uk','Claudia','Torres','P.O. Box 198, 3967 Turpis. Road','1982-05-03','16570103 4315',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'consequat@risus.net','Elena','Sáez','4976 Fringilla Road','1968-05-25','16631126 6453',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'congue.elit.sed@nonummyutmolestie.net','Noemí','Soto','542-130 Odio Ave','1961-01-15','16450714 8478',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'amet@CurabiturdictumPhasellus.org','Siomara','Gómez','3481 Dictum St.','1969-05-30','16720428 9008',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'sapien@nibhenim.co.uk','Tonka','Carrasco','573-1180 Aliquet Rd.','1971-03-05','16400904 2765',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'et.libero.Proin@Nulla.co.uk','Isidora','Vera','Ap #244-8073 Mi Road','1963-05-19','16171018 6410',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'gravida.Aliquam.tincidunt@sedsemegestas.net','Denisse','Martínez','Ap #396-5863 Cursus Ave','1964-07-01','16180907 4527',getdate());
	INSERT INTO [dbo].[Customer] (GenderId,Email,FirstName,LastName,Address,BirthDate,PhoneNumber,CreationDate)  VALUES (2, 'quis.diam@ultricesmauris.net','Maria','Soto','4276 Non, Ave','1997-10-01','16170405 2735',getdate());
	
	UPDATE Customer SET BirthDate =  CONVERT(date, getdate()) where id = FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1)

	END
IF NOT EXISTS (SELECT * FROM [dbo].[Product])
   BEGIN
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'iPhone 11 64 GB Negro',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'iPhone 11 Pro 64 GB Plata',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'iPhone 11 Pro Max 64 GB Gris espacial',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'iPhone 12 64 GB negro',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'iPhone 7 32 GB oro rosa',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'iPhone SE (2nd Generation) 64 GB blanco',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'iPhone XR 64 GB negro',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'LG K20 16 GB aurora black 1 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'LG K40S 32 GB aurora black 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'LG K50S 32 GB aurora black 3 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'LG Q60 64 GB aurora black 3 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'MÁS VENDIDO',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto E6 Play 32 GB negro 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto E6 Plus 32 GB bright cherry 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto E6s (2020) 32 GB gravity gradient 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto E6s (2020) Special Edition 64 GB gravity gradient 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto G8 Plus 64 GB cosmic blue 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto G8 Power 64 GB vulcan 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto G8 Power Lite 64 GB turquesa 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Moto G9 Play 64 GB rosa spring 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Motorola Edge 128 GB rojo plum 6 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Motorola Edge Special Edition 256 GB rojo plum 6 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Motorola One Fusion 128 GB emerald green 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Motorola One Hyper 128 GB deepsea blue 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Motorola One Macro 64 GB space blue 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A01 32 GB azul 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A01 Core 16 GB negro 1 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A10 32 GB negro 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A10s 32 GB azul 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A11 64 GB negro 3 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A20s 32 GB negro 3 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A21s 64 GB blanco 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A30s 64 GB prism crush black 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A31 128 GB prism crush blue 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A51 128 GB prism crush black 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy A71 128 GB prism crush silver 6 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy J2 Core 16 GB negro 1 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy Note20 256 GB bronce místico 8 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy S10 128 GB negro prisma 8 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy S20 128 GB cosmic gray 8 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Samsung Galaxy S20+ 128 GB cloud blue 8 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Xiaomi Redmi 9 Dual SIM 32 GB carbon grey 3 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Xiaomi Redmi 9A Dual SIM 32 GB verde majestuoso 2 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Xiaomi Redmi Note 8 Dual SIM 64 GB Space black 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Xiaomi Redmi Note 8 Pro Dual SIM 64 GB gris mineral 6 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Xiaomi Redmi Note 9 Dual SIM 128 GB verde bosque 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Xiaomi Redmi Note 9 Pro (64 Mpx) Dual SIM 64 GB gris interestelar 6 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'Xiaomi Redmi Note 9S Dual SIM 64 GB gris interestelar 4 GB RAM',1);
	INSERT INTO [dbo].[Product] VALUES (ROUND(RAND()*1000000000,0),'ZTE Blade A3 Lite 16 GB negro 1 GB RAM',1);
	END
IF NOT EXISTS (SELECT * FROM [dbo].[Item])
   BEGIN
		DECLARE @FromDate datetime = '2020-01-01';
		DECLARE @ToDate datetime = '2020-11-11';
		DECLARE @FromDate2 datetime = '2018-01-01';
		DECLARE @ToDate2 datetime = '2020-08-26';
		DECLARE @cnt INT = 0;

		WHILE @cnt < 20
		BEGIN
		   INSERT INTO [dbo].[Item] VALUES (3,FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1),FLOOR(RAND()*((SELECT COUNT(ID) FROM Product)-1)+1),'No te pierdas este telefono Unico Maquinola',FLOOR(RAND()*(100000-30000)+30000),dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate, @ToDate)),@FromDate),dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2))
		   INSERT INTO [dbo].[Item] VALUES (3,FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1),FLOOR(RAND()*((SELECT COUNT(ID) FROM Product)-1)+1),'No te pierdas este telefono Unico Loco',FLOOR(RAND()*(100000-30000)+30000),dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate, @ToDate)),@FromDate),dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2))
		   INSERT INTO [dbo].[Item] VALUES (3,FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1),FLOOR(RAND()*((SELECT COUNT(ID) FROM Product)-1)+1),'No te pierdas este telefono Unico Loquillo',FLOOR(RAND()*(100000-30000)+30000),dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate, @ToDate)),@FromDate),dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2))
		   INSERT INTO [dbo].[Item] VALUES (3,FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1),FLOOR(RAND()*((SELECT COUNT(ID) FROM Product)-1)+1),'No te pierdas este telefono Unico Maquinola',FLOOR(RAND()*(100000-30000)+30000),null,dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2))
		   INSERT INTO [dbo].[Item] VALUES (3,FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1),FLOOR(RAND()*((SELECT COUNT(ID) FROM Product)-1)+1),'No te pierdas este telefono Unico Loco',FLOOR(RAND()*(100000-30000)+30000),null,dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2))
		   INSERT INTO [dbo].[Item] VALUES (3,FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1),FLOOR(RAND()*((SELECT COUNT(ID) FROM Product)-1)+1),'No te pierdas este telefono Unico Loquillo',FLOOR(RAND()*(100000-30000)+30000),null,dateadd(day,rand(checksum(newid()))*(1+datediff(day, @FromDate2, @ToDate2)),@FromDate2))

		   SET @cnt = @cnt + 1;
		END;
END;
IF NOT EXISTS (SELECT * FROM [dbo].[Order])
   BEGIN
		
		DECLARE @cnt2 INT = 0;

		WHILE @cnt2 < 300
		BEGIN
		   INSERT INTO [dbo].[Order] VALUES (FLOOR(RAND()*((SELECT COUNT(ID) FROM Customer)-1)+1),FLOOR(RAND()*((SELECT COUNT(ID) FROM Item)-1)+1),FLOOR(RAND()*(5-1)+1),0,getdate());
		   UPDATE [dbo].[Order] 
		      SET OrderDate = (dateadd(day,FLOOR(RAND()*(30-1)+1),'2020-01-01')),
			     [dbo].[Order].TotalAmount = [dbo].[Order].Quantity * [dbo].[Item].[Price]
			 FROM [dbo].[Item] 
		    WHERE [dbo].[Order].id = @@IDENTITY and [dbo].[Order].itemid = [dbo].[Item].id;

		   SET @cnt2 = @cnt2 + 1;
		END;

		 UPDATE [dbo].[Order] 
		   SET [dbo].[Order].OrderDate = (dateadd(day,FLOOR(RAND()*(90-1)+1),item.CreationDate)) 
		  FROM [dbo].[Item] 
		 WHERE [dbo].[Order].itemid = [dbo].[Item].id and [dbo].[Order].id > 90

		/*UPDATE [dbo].[Order] 
		   SET [dbo].[Order].OrderDate = (dateadd(day,FLOOR(RAND()*(90-1)+1),item.CreationDate)) ,
			   [dbo].[Order].TotalAmount = [dbo].[Order].Quantity * [dbo].[Item].[Price]
		  FROM [dbo].[Item] 
		 WHERE [dbo].[Order].itemid = [dbo].[Item].id;

		 UPDATE [dbo].[Order] 
		   SET OrderDate = (dateadd(day,FLOOR(RAND()*(30-1)+1),'2020-01-01'))   
		 WHERE [dbo].[Order].id = @@IDENTITY
		 */

   END;

 IF @@ERROR <> 0
	ROLLBACK
 ELSE
	COMMIT

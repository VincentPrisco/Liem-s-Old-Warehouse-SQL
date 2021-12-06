USE Liem_Warehouse

INSERT INTO Staff
VALUES 
('ST001', 'Kevin Daniel', 'Male', '2001-10-01', 'Jl. Gunung Bromo 28, Jakarta', 'Kevin123@gmail.com', 085298174641, 5000000),
('ST002', 'Melvin Joveri', 'Male', '2002-03-02', 'Jl. Lavender 13, Jakarta', 'ssaees123@gmail.com', 0852564345643, 6000000),
('ST003', 'Devin Gunawan', 'Male', '2002-05-03', 'Jl. Melati 10, Jakarta', 'Devin124@gmail.com', 085212464356, 6000000),
('ST004', 'Albert Kho', 'Male', '2003-02-11', 'Jl. Haji Kamtamso 01, Jakarta', 'asdw23@gmail.com', 085264689754, 6500000),
('ST005', 'Tasya Novita', 'Female', '2001-08-21', 'Jl. Yuliana 10, Jakarta', 'arfe567@gmail.com', 085213568646, 5700000),
('ST006', 'Kartini Baloi', 'Female', '1998-01-31', 'Jl. Gunung Jantan 28, Jakarta', 'gbd123@gmail.com', 085278976546, 5500000),
('ST007', 'Hartono Permata', 'Male', '1998-07-11', 'Jl. Pahlawan 09, Jakarta', 'hytgr123@gmail.com', 085278987656, 5500000),
('ST008', 'Michael Wong', 'Male', '1997-08-21', 'Jl. Permata 01, Jakarta', 'ujyht1@gmail.com', 085298789878, 6500000),
('ST009', 'Della Kitty', 'Female', '2002-09-22', 'Jl. Golf Residence 05, Jakarta', 'adhg12@gmail.com', 085298789098, 6500000),
('ST010', 'Julyo Tan', 'Male', '2001-11-15', 'Jl. Hutan Bakau 10, Jakarta', 'ggbfv12@gmail.com', 085233456543, 6500000),
('ST011', 'Kevin Jo', 'Male', '2001-10-17', 'Jl. Uluwatu 12, Jakarta', 'gbffd12@gmail.com', 085289878975, 6500000)

INSERT INTO Factory
VALUES 
('FC001', 'Pelita Jaya Sejahtera', 'Singaraja Street','Daniel', 5, '2020-01-05'),
('FC002', 'Sukses Abadi', 'Surya Street','Kevin', 4, '2001-01-05'),
('FC003', 'Cahaya Sejahtera', 'Singapura Street','Deddy', 4, '1998-01-05'),
('FC004', 'Pelita Surya', 'Monas Street','Dickson', 5, '1997-01-05'), 
('FC005', 'Dunia Abadi', 'Pakiningun Street','Malaka', 5, '1945-01-05'), 
('FC006', 'Neraca Mulia', 'Piyungan Street','Tan', 4, '1997-01-05'),
('FC007', 'Jagad Indonesia', 'Ukadewe Street','Suci', 4, '1998-01-05'),
('FC008', 'Servicatama Abadi', 'Sultan Hasinud Street','Dharmo', 4, '2001-01-05'), 
('FC009', 'Dharma vadana', 'Bandungan Street','Sujipto', 2, '2008-01-05'), 
('FC010', 'Sukses Sejahtera', 'Singosari Street','Suparno', 3, '2008-01-05'), 
('FC011', 'Sejahtera Abadi', 'Lautan Api Street','Prabowo', 5, '1987-01-05')

INSERT INTO Distributor
VALUES 
('DI001', 'Surya', 'Jl. Melati NO 96, Bogor', 'Sukses Abadi Company', 'Bogor', 'Suksab201@gmail.com', 085271657878),
('DI002', 'Suryajana', 'Jl. Merbabu NO 6, Bekasi', 'Jaya Abadi Company ', 'Bekasi', 'adsasd2@gmail.com', 085245643456), 
('DI003', 'Dominik', 'Jl. Agais NO 16, Bekasi', 'Sukses Sejahtera Company ', 'Bekasi', 'asd214d@gmail.com', 08522124567), 
('DI004', 'Aboy', 'Jl. Pini NO 56, Bekasi', 'Pelita Jaya Company ', 'Bekasi', 'Suksab201@gmail.com', 085223434356), 
('DI005', 'Jason', 'Jl. Bandong NO 16, Bandung', 'Servicatama Bandung Company ', 'Bandung', 'fgrf21@gmail.com', 085278909876), 
('DI006', 'Philips', 'Jl. Golfes NO 1, Tangerang', 'Neraca Dharma Company ', 'Tangerang', 'Nd9282@gmail.com', 085245676565), 
('DI007', 'Toni', 'Jl. Granul NO 2, Jakarta', 'Jaya Selalu Company ', 'Jakarta', 'Jayase12@gmail.com', 085223212347), 
('DI008', 'Jericho', 'Jl. Lautin NO 12, Bogor', 'Pelita Harapan Company ', 'Bogor', 'PH213S@gmail.com', 085299887764),
('DI009', 'Matthew', 'Jl. Gusdur NO 03, Bogor', 'Jagad Dunia Company ', 'Bogor', 'jagad12@gmail.com', 085266554464), 
('DI010', 'Agus', 'Jl. Everest NO 2, Bogor', 'Brave Stone Company ', 'Bogor', 'BSdesd@gmail.com', 085223212354),
('DI011', 'Jaja', 'Jl. Kadira NO 10, Cibubur', 'Stone Edge Company ', 'Cibubur', 'hhji@gmail.com', 085233212885)

INSERT INTO Category
VALUES 
('CT001', 'Food'), 
('CT002', 'Drink'), 
('CT003', 'Furniture'), 
('CT004', 'Dress'), 
('CT005', 'Accessoris'), 
('CT006', 'Audio'), 
('CT007', 'Laptop Accessoris'), 
('CT008', 'Handphone Accesoris'), 
('CT009', 'Beauty'), 
('CT010', 'Baby Fashion'), 
('CT011', 'Kids Fashion'), 
('CT012', 'Medicine')

INSERT INTO Item
VALUES 
('IT001','Daging Sapi',50000,100000,100,'Raw','200gr/serving','CT001'),
('IT002','Spageti',10000,13000,100,'Raw','200gr/serving','CT001'),
('IT003','Tepung',10000,12000,150,'Raw','1kg/serving','CT001'),
('IT004','Daging Babi',10000,11000,50,'Raw','200gr/serving','CT001'),
('IT005','Daging Salmon',10000,12000,100,'Raw','200gr/serving','CT001'),
('IT006','Marjan',5000,10000,100,'Liquid','No Description','CT002'),
('IT007','Sirup Mawar',5000,15000,100, 'Liquid','No Description','CT002'),
('IT008','Sirup Sirsak',5000,14000,100, 'Liquid','No Description','CT002'),
('IT009','Meja Lipat',100000,120000,100,'Plastic','No Description','CT003'),
('IT010','Kursi',100000,120000,50,'Wood','No Description','CT003'),
('IT011','Kaos Bayi',5000,8000,100,'Katun','No Description','CT010'),
('IT012','Keyboard',50000,10000,50,'Plastic','No Description','CT007'),
('IT013','Lipstick',10000,12000,100,'Kimia','No Description','CT009'),
('IT014','Casing Laptop',50000,100000,50,'Plastic','No Description','CT007'),
('IT015','Casing HP',10000,15000,100,'Plastic','No Description','CT008')

INSERT INTO Transactions
VALUES 
('TR001', '2018-03-01'),
('TR002', '2018-03-05'),
('TR003', '2019-05-01'),
('TR004', '2019-06-02'), 
('TR005', '2019-06-03'), 
('TR006', '2019-06-03'), 
('TR007', '2019-01-03'),
('TR008', '2019-02-22'), 
('TR009', '2019-03-23'), 
('TR010', '2019-04-12'), 
('TR011', '2020-01-23'), 
('TR012', '2020-02-11'), 
('TR013', '2020-02-23'), 
('TR014', '2020-02-25'), 
('TR015', '2020-03-01'), 
('TR016', '2020-03-02'), 
('TR017', '2020-03-29'), 
('TR018', '2020-03-29'),
('TR019', '2020-04-10'),
('TR020', '2020-04-16'),
('TR021', '2020-04-17')

INSERT INTO SupplyTransaction
VALUES 
('SU001','ST004','TR001','FC001','2018-03-02', 'IT007', 20),
('SU002','ST008','TR002','FC011','2018-03-06', 'IT008', 20),
('SU003','ST001','TR003','FC001','2019-06-01', 'IT001', 20),
('SU004','ST001','TR003','FC001','2019-06-01','IT004', 10),
('SU005','ST003','TR004','FC003','2019-06-03','IT003', 15),
('SU006','ST004','TR004','FC003','2019-06-03','IT002', 10),
('SU007','ST002','TR005','FC004','2019-06-05','IT005', 15),
('SU008','ST004','TR005','FC004','2019-06-05','IT006', 20),
('SU009','ST005','TR005','FC004','2019-06-05','IT007', 10),
('SU010','ST005','TR006','FC008','2019-06-06','IT008', 15),
('SU011','ST009','TR006','FC008','2019-06-06','IT009', 10),
('SU012','ST009','TR007','FC011','2019-01-25','IT010', 10),
('SU013','ST006','TR007','FC011','2019-01-25','IT011', 20),
('SU014','ST007','TR007','FC011','2019-01-25','IT012', 15),
('SU015','ST010','TR008','FC010','2019-02-25','IT013', 20),
('SU016','ST010','TR008','FC010','2019-02-25','IT010', 15),
('SU017','ST008','TR008','FC010','2019-02-25','IT011', 10),
('SU018','ST008','TR009','FC011','2019-03-24','IT013', 15),
('SU019','ST005','TR009','FC011','2019-03-24','IT003', 10),
('SU020','ST006','TR009','FC011','2019-03-24','IT007', 20),
('SU021','ST006','TR009','FC011','2019-03-24','IT008', 10),
('SU022','ST008','TR009','FC011','2019-03-24','IT003', 10),
('SU023','ST009','TR010','FC009','2019-04-15','IT005', 15),
('SU024','ST003','TR010','FC009','2019-04-15','IT002', 10),
('SU025','ST006','TR010','FC009','2019-04-15','IT008', 15),
('SU026','ST008','TR010','FC009','2019-04-15','IT002', 5),
('SU027','ST002','TR010','FC009','2019-04-15','IT005', 10),
('SU028','ST010','TR011','FC009','2020-01-25','IT002', 15),
('SU029','ST010','TR011','FC009','2020-01-25','IT004', 20)

INSERT INTO DistributeTransaction
VALUES 
('DT001', 'ST002', 'TR012', 'DI002', 'Bekasi', '2020-02-14', 'IT010', 15),
('DT002', 'ST003', 'TR012', 'DI002', 'Bekasi', '2020-02-14', 'IT008', 15),
('DT003', 'ST004', 'TR012', 'DI002', 'Bekasi', '2020-02-14', 'IT011', 15),
('DT004', 'ST004', 'TR012', 'DI002', 'Bekasi', '2020-02-14', 'IT006', 15),
('DT005', 'ST005', 'TR013', 'DI004', 'Bekasi', '2020-02-25', 'IT004', 10),
('DT006', 'ST007', 'TR013', 'DI004', 'Bekasi', '2020-02-25', 'IT007', 25),
('DT007', 'ST006', 'TR013', 'DI004', 'Bekasi', '2020-02-25', 'IT003', 10),
('DT008', 'ST006', 'TR013', 'DI004', 'Bekasi', '2020-02-25', 'IT001', 25),
('DT009', 'ST008', 'TR013', 'DI004', 'Bekasi', '2020-02-25', 'IT008', 30),
('DT010', 'ST005', 'TR014', 'DI006', 'Tangerang', '2020-02-27', 'IT012', 25),
('DT011', 'ST005', 'TR014', 'DI006', 'Tangerang', '2020-02-27', 'IT010', 15),
('DT012', 'ST005', 'TR015', 'DI003', 'Bekasi', '2020-03-05', 'IT014', 15),
('DT013', 'ST009', 'TR015', 'DI003', 'Bekasi', '2020-03-05', 'IT011', 35),
('DT014', 'ST008', 'TR015', 'DI003', 'Bekasi', '2020-03-05', 'IT005', 20),
('DT015', 'ST002', 'TR016', 'DI005', 'Bandung', '2020-03-06', 'IT008', 25),
('DT016', 'ST002', 'TR016', 'DI005', 'Bandung', '2020-03-06', 'IT009', 15),
('DT017', 'ST004', 'TR016', 'DI005', 'Bandung', '2020-03-06', 'IT010', 10),
('DT018', 'ST005', 'TR017', 'DI008', 'Bogor', '2020-04-01', 'IT004', 20),
('DT019', 'ST009', 'TR017', 'DI008', 'Bogor', '2020-04-01', 'IT005', 10),
('DT020', 'ST009', 'TR017', 'DI008', 'Bogor', '2020-04-01', 'IT009', 20),
('DT021', 'ST010', 'TR018', 'DI009', 'Bogor', '2020-04-02', 'IT013', 15),
('DT022', 'ST010', 'TR018', 'DI009', 'Bogor', '2020-04-02', 'IT014', 30),
('DT023', 'ST008', 'TR019', 'DI010', 'Bogor', '2020-04-12', 'IT008', 25),
('DT024', 'ST008', 'TR019', 'DI010', 'Bogor', '2020-04-12', 'IT010', 20),
('DT025', 'ST001', 'TR019', 'DI010', 'Bogor', '2020-04-12', 'IT009', 45),
('DT026', 'ST001', 'TR019', 'DI010', 'Bogor', '2020-04-12', 'IT008', 50),
('DT027', 'ST002', 'TR020', 'DI008', 'Bogor', '2020-04-18', 'IT008', 20),
('DT028', 'ST003', 'TR021', 'DI005', 'Bandung', '2020-04-19', 'IT006', 50)
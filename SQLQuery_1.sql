create table Publishers(
    Id int primary key identity(1,1),
    Publishers nvarchar(255) not null,
    Address nvarchar(255) not null
);

create table Publish(
    Id int primary key identity(1,1),
    Year int not null,
    Time int not null,
    IdPublishers int not null foreign key references Publishers(Id)
);

create table Books(
    Id int primary key identity(1,1),
    Name nvarchar(255) not null,
    Author nvarchar(255) not null,
    Summary ntext not null,
    Price decimal(12,4) not null check(Price >=0),
    Amount int not null default 0,
    Category nvarchar(255) not null,
    IdPublish int not null foreign key references Publish(Id)
);

drop table Books
drop table Publishers

insert into Publishers(Publishers,Address)
values(N'Tri thức',N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội'),
(N'Trẻ',N'161B Lý Chính Thắng, phường Võ Thị Sáu, Quận 3, TP. Hồ Chí Minh'),
(N'Kim Đồng',N'55 Quang Trung, Hà Nội, Việt Nam'),
(N'Tổng hợp thành phố Hồ Chí Minh',N'62 Nguyễn Thị Minh Khai, Phường Đa Kao, Quận 1, TP. HCM'),
(N'Hội nhà văn',N'65 Nguyễn Du, Quận Hai Bà Trưng, Hà Nội'),
(N'Chính trị quốc gia Sự thật',N'6/86 Duy tân, Cầu Giấy, Hà Nội'),
(N'Phụ nữ Việt Nam',N'39 Hàng Chuối, Quận Hai Bà Trưng, Hà Nội'),
(N'Lao động',N'175 Giảng Võ, Đống Đa, Hà Nội'),
(N'Nhã Nam',N'59 Đỗ Quang, Cầu Giấy, Hà Nội');
select * from Publishers;

insert into Publish(Year,Time,IdPublishers)
values(2010,1,9),(2015,2,9),(2006,4,9),
(2000,1,3),(2005,2,1),(2009,4,2),(2006,3,3),(2019,2,8),(2016,3,7),(2010,2,6),(2020,5,4),(2022,4,1),(2020,2,5),(2018,1,6),(2013,1,5),(2012,3,3);
select * from Publish;

insert into Books(Name,Author,Summary,Price,Amount,Category,IdPublish)
values(N'Trí tuệ do thái',N'Eran Katz',N'Bạn có muốn biết: Người Do Thái sáng tạo ra cái gì và nguồn gốc
trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần hé lộ
những bí ẩn về sự thông thái của người Do Thái, của một dân tộc
thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí
thức đã được giữ kín hàng nghìn năm như một bí ẩn mật mang tính
văn hóa.',79000,100,N'Khoa học xã hội',14),
(N'Truyện ngắn Vũ Trọng Phụng',N'Vũ Trọng Phụng',N'Tuyển tập truyện ngắn',52080,50,N'Khoa học xã hội',1),
(N'Abraham Lincoln -Các tác phẩm và suy ngẫm',N'R B Bernstein',N'Tổng hợp cuộc đời và sự nghiệp của Abraham Lincoln',189000,20,N'Khoa học xã hội',2),
(N'Clean code',N'Robert Cecil Martin',N'Hiện nay, lập trình viên là một trong những nghề nghiệp được nhiều người lựa chọn theo đuổi và gắn bó. Đây là công việc đòi hỏi sự tỉ mỉ, nhiều công sức nhưng mang lại giá trị cao và một tương lai công việc hứa hẹn. Là một trong số những chuyên gia giàu kinh nghiệm, điêu luyện và lành nghề trong ngành, tác giả đã đúc rút từ kinh nghiệm của mình, viết về những tình huống trong thực tế, đôi khi có thể trái ngược với lý thuyết để xây dựng nên cuốn cẩm nang này, nhằm hỗ trợ những người đang muốn trở thành một lập trình viên chuyên nghiệp.',277000,25,N'Tin học',3),
(N'Microsoft Office Word',N'IIG Việt Nam',N'Tổng hợp kỹ năng Microsoft Office',74000,19,N'Tin học',4),
(N'Luật tâm thức',N'Ngô Sa Thạch',N'Giải mã ma trận vũ trụ',320000,45,N'Khoa học vũ trụ',5),
(N'Truyện ngắn Vũ Trọng Phụng',N'Vũ Trọng Phụng',N'Tuyển tập truyện ngắn',52080,50,N'Khoa học xã hội',6),
(N'Abraham Lincoln -Các tác phẩm và suy ngẫm',N'R B Bernstein',N'Tổng hợp cuộc đời và sự nghiệp của Abraham Lincoln',189000,20,N'Khoa học xã hội',7),
(N'Clean code',N'Robert Cecil Martin',N'Hiện nay, lập trình viên là một trong những nghề nghiệp được nhiều người lựa chọn theo đuổi và gắn bó. Đây là công việc đòi hỏi sự tỉ mỉ, nhiều công sức nhưng mang lại giá trị cao và một tương lai công việc hứa hẹn. Là một trong số những chuyên gia giàu kinh nghiệm, điêu luyện và lành nghề trong ngành, tác giả đã đúc rút từ kinh nghiệm của mình, viết về những tình huống trong thực tế, đôi khi có thể trái ngược với lý thuyết để xây dựng nên cuốn cẩm nang này, nhằm hỗ trợ những người đang muốn trở thành một lập trình viên chuyên nghiệp.',277000,25,N'Tin học',8),
(N'Microsoft Office Word',N'IIG Việt Nam',N'Tổng hợp kỹ năng Microsoft Office',74000,19,N'Tin học',9),
(N'Luật tâm thức',N'Ngô Sa Thạch',N'Giải mã ma trận vũ trụ',320000,45,N'Khoa học vũ trụ',10),
(N'Truyện ngắn Vũ Trọng Phụng',N'Vũ Trọng Phụng',N'Tuyển tập truyện ngắn',52080,50,N'Khoa học xã hội',11),
(N'Abraham Lincoln -Các tác phẩm và suy ngẫm',N'R B Bernstein',N'Tổng hợp cuộc đời và sự nghiệp của Abraham Lincoln',189000,20,N'Khoa học xã hội',12),
(N'Clean code',N'Robert Cecil Martin',N'Hiện nay, lập trình viên là một trong những nghề nghiệp được nhiều người lựa chọn theo đuổi và gắn bó. Đây là công việc đòi hỏi sự tỉ mỉ, nhiều công sức nhưng mang lại giá trị cao và một tương lai công việc hứa hẹn. Là một trong số những chuyên gia giàu kinh nghiệm, điêu luyện và lành nghề trong ngành, tác giả đã đúc rút từ kinh nghiệm của mình, viết về những tình huống trong thực tế, đôi khi có thể trái ngược với lý thuyết để xây dựng nên cuốn cẩm nang này, nhằm hỗ trợ những người đang muốn trở thành một lập trình viên chuyên nghiệp.',277000,25,N'Tin học',13),
(N'Microsoft Office Word',N'IIG Việt Nam',N'Tổng hợp kỹ năng Microsoft Office',74000,19,N'Tin học',15),
(N'Luật tâm thức',N'Ngô Sa Thạch',N'Giải mã ma trận vũ trụ',320000,45,N'Khoa học vũ trụ',16);
select * from Books;

--Cau 3
select Name from Books A inner join Publish B on A.IdPublish = B.Id where Year >= 2008;
--Cau 4
select top 10 * from Books order by Price desc;
--Cau 5
select * from Books where Name like '%tin học%';
--Câu 6
select * from Books where Name like 'T%' order by Price desc;
--Câu 7
select * from Books where IdPublish in
    (select Id from Publish where IdPublishers in
        (select Id from Publishers where Publishers like N'Tri thức'));
--Câu 8
select * from Publishers where Id in
    (select IdPublishers from Publish where Id in
        (select IdPublish from Books where Name like N'Trí tuệ do thái'));
--Câu 9
select A.Id,A.Name,B.Year,C.Publishers,A.Category from Books A
inner join Publish B on A.IdPublish = B.Id
inner join Publishers C on B.IdPublishers = C.Id;
--Câu 10
select top 1 * from Books order by Price desc;
--Câu 11
select top 1 * from Books order by Amount desc;
--Câu 12
select * from Books where Author like N'Eran Katz';
--Câu 13
update Books set Price = (0.9 * Price) where IdPublish in 
    (select Id from Publish where Year <= 2008);
--Câu 14
create view data_books as
select A.Id,A.Name,B.Year,C.Publishers,A.Category from Books A
inner join Publish B on A.IdPublish = B.Id
inner join Publishers C on B.IdPublishers = C.Id;
select count(Id) as 'So_dau_sach_cua_moi_NXB' from data_books group by Publishers;
--Cau 15
select count(Id) as 'So_dau_sach_cua_moi_loai_sach' from Books group by Name;
--Cau 16
create index chi_muc on Books(Name);
--Cau 17
create view info_books as
select A.Id,A.Name,A.Author,C.Publishers,A.Price from Books A
inner join Publish B on A.IdPublish = B.Id
inner join Publishers C on B.IdPublishers = C.Id;
select * from info_books;
--Cau 18

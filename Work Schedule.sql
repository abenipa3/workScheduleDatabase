create table employee (
	[id] int identity(1,1) constraint [pk_employee_id] primary key,
	lastname varchar(200),
	firstname varchar(200)
	);

	--employeehours identifies the number of hours our employees work.
	--9/80 = 9 days for 80 hours 
	--'	' = DAILY. 

	insert into employee(lastname, firstname) values ('Mercury', 'Freddie')
	insert into employee(lastname, firstname) values ('Deacon', 'John')
	insert into employee(lastname, firstname) values ('May', 'Brian')
	insert into employee(lastname, firstname) values ('Taylor', 'Roger')
	insert into employee(lastname, firstname) values ('Hendrix', 'Jimi')
	insert into employee(lastname, firstname) values ('O''Riordan', 'Dolores')
	insert into employee(lastname, firstname) values ('McVie', 'Christine')
	insert into employee(lastname, firstname) values ('Lennox', 'Annie')
	insert into employee(lastname, firstname) values ('Adu', 'Sade')
	insert into employee(lastname, firstname) values ('Bowie', 'David')

	select * from employee;


create table [shift] (
	[id] int identity(1,1) constraint [pk_shift_id] primary key,
	shiftname varchar(200)
	);

	insert into [shift](shiftname) values ('	')			--1
	insert into [shift](shiftname) values ('TC')			--2
	insert into [shift](shiftname) values ('FLEX')			--3
	insert into [shift](shiftname) values ('ETO')			--4
	insert into [shift](shiftname) values ('ETS')			--5
	insert into [shift](shiftname) values ('ESL')			--6
	insert into [shift](shiftname) values ('HOLIDAY')		--7
	insert into [shift](shiftname) values ('JURY DUTY')		--8
	insert into [shift](shiftname) values ('TRAINING')		--9
	insert into [shift](shiftname) values ('WEEKEND')		--10

	select * from [shift];

create table schedule (
	[id] int identity(1,1) constraint [pk_schedule_id] primary key,
	employeeid int,
	[date] date,
	time_in time(0),
	time_out time(0),
	shiftid int,

	constraint [fk_schedule_shiftid_shift_id]
	foreign key ([shiftid])
	references [shift] ([id]),

	constraint [fk_schedule_employeeid_employee_id]
	foreign key ([employeeid])
	references [employee] ([id])
	);

	insert into schedule(employeeid, [date], shiftid) values (1, '12/1/2019', 10)  -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2, '12/1/2019', 10)  -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3, '12/1/2019', 10)  -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4, '12/1/2019', 10)  -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5, '12/1/2019', 10)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6, '12/1/2019', 10)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7, '12/1/2019', 10)  -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8, '12/1/2019', 10)  -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,'12/1/2019', 10)   -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/1/2019', 10) -- David Bowie


	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/2/2019', '9:00 AM', '4:00 PM', 1)  -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/2/2019', '9:00 AM', '5:45 PM', 1)  -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/2/2019', '7:30 AM', '5:15 PM', 3)  -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/2/2019', '8:00 AM', '4:30 PM', 1)  -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/2/2019', '8:30 AM', '6:15 PM', 1)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/2/2019', '7:00 AM', '4:45 PM', 1)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/2/2019', '7:00 AM', '4:45 PM', 1)  -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/2/2019', '7:30 AM', '5:15 PM', 1)  -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9, '12/2/2019', '9:00 AM', '6:00 PM', 1)   -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10,  '12/2/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie
															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/3/2019', '9:00 AM', '6:00 PM', 1)  -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/3/2019', '9:00 AM', '6:45 PM', 1)  -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/3/2019', '7:30 AM', '4:30 PM', 4)  -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/3/2019', '8:00 AM', '4:30 PM', 2)  -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/3/2019', '8:30 AM', '6:15 PM', 2)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/3/2019', '6:00 AM', '3:45 PM', 1)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/3/2019', '7:00 AM', '4:45 PM', 1)  -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/3/2019', '7:30 AM', '5:15 PM', 2)  -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9, '12/3/2019', '9:00 AM', '6:00 PM', 1)   -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10,  '12/3/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

																															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/4/2019', '9:00 AM', '6:00 PM', 1)  -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/4/2019', '9:00 AM', '6:45 PM', 1)  -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/4/2019', '7:30 AM', '4:30 PM', 4)  -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/4/2019', '8:00 AM', '4:30 PM', 1)  -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/4/2019', '8:30 AM', '6:15 PM', 1)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/4/2019', '6:00 AM', '3:45 PM', 2)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/4/2019', '7:00 AM', '4:45 PM', 2)  -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/4/2019', '7:30 AM', '5:15 PM', 1)  -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/4/2019', '9:00 AM', '6:00 PM', 2)  -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/4/2019', '7:00 AM', '4:45 PM', 2)  -- David Bowie
 
																														
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/5/2019', '9:00 AM', '6:00 PM', 1)  -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/5/2019', '9:00 AM', '6:45 PM', 1)  -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/5/2019', '7:30 AM', '4:30 PM', 4)  -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/5/2019', '8:00 AM', '4:30 PM', 1)  -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/5/2019', '8:30 AM', '6:15 PM', 1)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/5/2019', '7:00 AM', '4:45 PM', 1)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/5/2019', '7:00 AM', '4:45 PM', 1)  -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/5/2019', '7:30 AM', '5:15 PM', 1)  -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9, '12/5/2019', '9:00 AM', '6:00 PM', 1)   -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10,  '12/5/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie
	
																															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/6/2019', '9:00 AM', '6:00 PM', 1)  -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/6/2019', '9:00 AM', '6:45 PM', 1)  -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/6/2019', '7:30 AM', '4:30 PM', 4)  -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/6/2019', '8:00 AM', '4:30 PM', 2)  -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/6/2019', '8:30 AM', '6:15 PM', 2)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/6/2019', '6:00 AM', '2:30 PM', 3)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/6/2019', '7:00 AM', '4:45 PM', 1)  -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/6/2019', '7:30 AM', '5:15 PM', 2)  -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9, '12/6/2019', '9:00 AM', '6:00 PM', 1)   -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10,  '12/6/2019', '7:00 AM', '3:45 PM', 1) -- David Bowie
	
														
	insert into schedule(employeeid, [date], shiftid) values (1,  '12/7/2019', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '12/7/2019', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '12/7/2019', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '12/7/2019', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '12/7/2019', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '12/7/2019', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '12/7/2019', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '12/7/2019', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '12/7/2019', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/7/2019', 10) -- David Bowie


	insert into schedule(employeeid, [date], shiftid) values (1,  '12/8/2019', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '12/8/2019', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '12/8/2019', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '12/8/2019', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '12/8/2019', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '12/8/2019', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '12/8/2019', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '12/8/2019', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '12/8/2019', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/8/2019', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/9/2019', '9:00 AM', '4:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/9/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/9/2019', '7:30 AM', '5:15 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/9/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/9/2019', '8:30 AM', '5:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/9/2019', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/9/2019', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/9/2019', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/9/2019', '8:00 AM', '5:00 PM', 3) -- Sade Adu 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/9/2019', '7:00 AM', '4:45 PM', 3) -- David Bowie

															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/10/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/10/2019', '9:00 AM', '6:45 PM', 3) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/10/2019', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/10/2019', '8:00 AM', '4:30 PM', 2) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/10/2019', '8:30 AM', '6:15 PM', 3) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/10/2019', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/10/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/10/2019', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/10/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/10/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/11/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/11/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/11/2019', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/11/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/11/2019', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/11/2019', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/11/2019', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/11/2019', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/11/2019', '8:00 AM', '5:00 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/11/2019', '7:00 AM', '4:45 PM', 2) -- David Bowie

																										   
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/12/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/12/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/12/2019', '7:30 AM', '4:30 PM', 1)	-- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/12/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/12/2019', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/12/2019', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/12/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/12/2019', '7:30 AM', '4:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/12/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/12/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie
																															   
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/13/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/13/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/13/2019', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/13/2019', '8:00 AM', '4:30 PM', 2) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/13/2019', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/13/2019', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/13/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/13/2019', '7:30 AM', '5:15 PM', 3) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/13/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/13/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

														
	insert into schedule(employeeid, [date], shiftid) values (1,  '12/14/2019', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '12/14/2019', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '12/14/2019', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '12/14/2019', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '12/14/2019', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '12/14/2019', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '12/14/2019', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '12/14/2019', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '12/14/2019', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/14/2019', 10) -- David Bowie

	insert into schedule(employeeid, [date], shiftid) values (1,  '12/15/2019', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '12/15/2019', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '12/15/2019', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '12/15/2019', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '12/15/2019', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '12/15/2019', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '12/15/2019', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '12/15/2019', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '12/15/2019', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/15/2019', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/16/2019', '9:00 AM', '4:00 PM', 1)  -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/16/2019', '9:00 AM', '5:45 PM', 1)  -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/16/2019', '7:30 AM', '5:15 PM', 3)	 -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/16/2019', '8:00 AM', '4:30 PM', 1)  -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/16/2019', '8:30 AM', '6:15 PM', 1)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/16/2019', '7:00 AM', '4:45 PM', 1)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/16/2019', '7:00 AM', '4:45 PM', 3)  -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/16/2019', '7:30 AM', '5:15 PM', 1)  -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/16/2019', '8:00 AM', '5:00 PM', 2)  -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/16/2019', '7:00 AM', '4:45 PM', 2)  -- David Bowie

															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/17/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/17/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/17/2019', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/17/2019', '8:00 AM', '4:30 PM', 2) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/17/2019', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/17/2019', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/17/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/17/2019', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/17/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/17/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

																															 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/18/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/18/2019', '9:00 AM', '6:45 PM', 1)	-- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/18/2019', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/18/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/18/2019', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/18/2019', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/18/2019', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/18/2019', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/18/2019', '8:00 AM', '5:00 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/18/2019', '7:00 AM', '4:45 PM', 2) -- David Bowie

																														
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/19/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/19/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/19/2019', '7:30 AM', '4:30 PM', 1)	-- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/19/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/19/2019', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/19/2019', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/19/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/19/2019', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/19/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/19/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

																															  
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/20/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/20/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/20/2019', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/20/2019', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/20/2019', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/20/2019', '6:00 AM', '2:30 PM', 3) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/20/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/20/2019', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/20/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/20/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

														
	insert into schedule(employeeid, [date], shiftid) values (1, '12/21/2019', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2, '12/21/2019', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3, '12/21/2019', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4, '12/21/2019', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5, '12/21/2019', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6, '12/21/2019', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7, '12/21/2019', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8, '12/21/2019', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9, '12/21/2019', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10,'12/21/2019', 10) -- David Bowie

	insert into schedule(employeeid, [date], shiftid) values (1, '12/22/2019', 10)  -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2, '12/22/2019', 10)  -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3, '12/22/2019', 10)  -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4, '12/22/2019', 10)  -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5, '12/22/2019', 10)  -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6, '12/22/2019', 10)  -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7, '12/22/2019', 10)  -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8, '12/22/2019', 10)  -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9, '12/22/2019', 10)  -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/22/2019', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/23/2019', '9:00 AM', '4:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/23/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/23/2019', '7:30 AM', '5:15 PM', 2)	-- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/23/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/23/2019', '8:30 AM', '5:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/23/2019', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/23/2019', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/23/2019', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/23/2019', '8:00 AM', '5:00 PM', 3) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/23/2019', '7:00 AM', '4:45 PM', 3) -- David Bowie

															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/24/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/24/2019', '9:00 AM', '6:45 PM', 3) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/24/2019', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/24/2019', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/24/2019', '8:30 AM', '6:15 PM', 3) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/24/2019', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/24/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/24/2019', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/24/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/24/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

																															 
	insert into schedule(employeeid, [date], shiftid) values (1,  '12/25/2019', 7) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '12/25/2019', 7) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '12/25/2019', 7) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '12/25/2019', 7) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '12/25/2019', 7) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '12/25/2019', 7) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '12/25/2019', 7) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '12/25/2019', 7) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '12/25/2019', 7) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/25/2019', 7) -- David Bowie

																														
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/26/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/26/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/26/2019', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/26/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/26/2019', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/26/2019', '7:00 AM', '4:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/26/2019', '7:00 AM', '4:45 PM', 4) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/26/2019', '7:30 AM', '4:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/26/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/26/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

																															  
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/27/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/27/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/27/2019', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/27/2019', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/27/2019', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/27/2019', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/27/2019', '7:00 AM', '4:45 PM', 4) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/27/2019', '7:30 AM', '5:15 PM', 3) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/27/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/27/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

														
	insert into schedule(employeeid, [date], shiftid) values (1,  '12/28/2019', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '12/28/2019', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '12/28/2019', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '12/28/2019', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '12/28/2019', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '12/28/2019', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '12/28/2019', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '12/28/2019', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '12/28/2019', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/28/2019', 10) -- David Bowie

	insert into schedule(employeeid, [date], shiftid) values (1,  '12/29/2019', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '12/29/2019', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '12/29/2019', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '12/29/2019', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '12/29/2019', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '12/29/2019', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '12/29/2019', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '12/29/2019', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '12/29/2019', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '12/29/2019', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/30/2019', '9:00 AM', '4:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/30/2019', '9:00 AM', '5:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/30/2019', '7:30 AM', '5:15 PM', 3)	-- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/30/2019', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/30/2019', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/30/2019', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/30/2019', '7:00 AM', '4:45 PM', 3) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/30/2019', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/30/2019', '8:00 AM', '5:00 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/30/2019', '7:00 AM', '4:45 PM', 2) -- David Bowie

															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '12/31/2019', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '12/31/2019', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '12/31/2019', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '12/31/2019', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '12/31/2019', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '12/31/2019', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '12/31/2019', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '12/31/2019', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '12/31/2019', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '12/31/2019', '7:00 AM', '4:45 PM', 1) -- David Bowie

	
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/1/2020', '	', '	', 7) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/1/2020', '	', '	', 7) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/1/2020', '	', '	', 7) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/1/2020', '	', '	', 7) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/1/2020', '	', '	', 7) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/1/2020', '	', '	', 7) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/1/2020', '	', '	', 7) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/1/2020', '	', '	', 7) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/1/2020', '	', '	', 7) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/1/2020', '	', '	', 7) -- David Bowie


	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/2/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/2/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/2/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/2/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/2/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/2/2020', '7:00 AM', '4:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/2/2020', '7:00 AM', '4:45 PM', 4) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/2/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/2/2020', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/2/2020', '7:00 AM', '4:45 PM', 1) -- David Bowie
																											  
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/3/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/3/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/3/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/3/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/3/2020', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/3/2020', '6:00 AM', '3:45 PM', 3) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/3/2020', '7:00 AM', '4:45 PM', 4) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/3/2020', '7:30 AM', '5:15 PM', 2)--- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/3/2020', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/3/2020', '7:00 AM', '4:45 PM', 1) -- David Bowie


	insert into schedule(employeeid, [date], shiftid) values (1,  '1/4/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/4/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/4/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/4/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/4/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/4/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/4/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/4/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/4/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/4/2020', 10) -- David Bowies

	insert into schedule(employeeid, [date], shiftid) values (1,  '1/5/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/5/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/5/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/5/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/5/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/5/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/5/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/5/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/5/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/5/2020', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/6/2020', '9:00 AM', '4:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/6/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/6/2020', '7:30 AM', '5:15 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/6/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/6/2020', '8:30 AM', '5:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/6/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/6/2020', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/6/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/6/2020', '8:00 AM', '4:45 PM', 3) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/6/2020', '7:15 AM', '5:00 PM', 3) -- David Bowie

															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/7/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/7/2020', '9:00 AM', '6:45 PM', 3) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/7/2020', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/7/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/7/2020', '8:30 AM', '6:15 PM', 3) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/7/2020', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/7/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/7/2020', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/7/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/7/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie

																															 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/8/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/8/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/8/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/8/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/8/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/8/2020', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/8/2020', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/8/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/8/2020', '8:00 AM', '4:45 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/8/2020', '7:15 AM', '5:00 PM', 2) -- David Bowie

																														
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/9/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/9/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/9/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/9/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/9/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/9/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/9/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/9/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/9/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/9/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie

																															  
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/10/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/10/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/10/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/10/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/10/2020', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/10/2020', '6:00 AM', '2:30 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/10/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/10/2020', '7:30 AM', '5:15 PM', 3) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/10/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/10/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie


	insert into schedule(employeeid, [date], shiftid) values (1,  '1/11/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/11/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/11/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/11/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/11/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/11/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/11/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/11/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/11/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/11/2020', 10) -- David Bowie

	insert into schedule(employeeid, [date], shiftid) values (1,  '1/12/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/12/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/12/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/12/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/12/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/12/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/12/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/12/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/12/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/12/2020', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/13/2020', '9:00 AM', '4:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/13/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/13/2020', '7:30 AM', '5:15 PM', 3) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/13/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/13/2020', '8:30 AM', '5:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/13/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/13/2020', '7:00 AM', '4:45 PM', 3) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/13/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/13/2020', '8:00 AM', '4:45 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/13/2020', '7:15 AM', '5:00 PM', 2) -- David Bowie
															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/14/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/14/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/14/2020', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/14/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/14/2020', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/14/2020', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/14/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/14/2020', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/14/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/14/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie

																															 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/15/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/15/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/15/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/15/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/15/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/15/2020', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/15/2020', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/15/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/15/2020', '8:00 AM', '4:45 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/15/2020', '7:15 AM', '5:00 PM', 2) -- David Bowie

																														
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/16/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/16/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/16/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/16/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/16/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/16/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/16/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/16/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/16/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/16/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie
 
																															  
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/17/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/17/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/17/2020', '7:30 AM', '4:30 PM', 4) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/17/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/17/2020', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/17/2020', '6:00 AM', '3:45 PM', 3) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/17/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/17/2020', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/17/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/17/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie

														
	insert into schedule(employeeid, [date], shiftid) values (1,  '1/18/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/18/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/18/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/18/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/18/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/18/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/18/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/18/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/18/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/18/2020', 10) -- David Bowie

	insert into schedule(employeeid, [date], shiftid) values (1,  '1/19/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/19/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/19/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/19/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/19/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/19/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/19/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/19/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/19/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/19/2020', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/20/2020', '9:00 AM', '4:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/20/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/20/2020', '7:30 AM', '5:15 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/20/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/20/2020', '8:30 AM', '5:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/20/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/20/2020', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/20/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/20/2020', '8:00 AM', '4:45 PM', 3) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/20/2020', '7:15 AM', '5:00 PM', 3) -- David Bowie

															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/21/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/21/2020', '9:00 AM', '6:45 PM', 3) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/21/2020', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/21/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/21/2020', '8:30 AM', '6:15 PM', 3) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/21/2020', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/21/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/21/2020', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/21/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/21/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie

																															   
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/22/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/22/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/22/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/22/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/22/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/22/2020', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/22/2020', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/22/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/22/2020', '8:00 AM', '4:45 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/22/2020', '7:15 AM', '5:00 PM', 2) -- David Bowie

																										   
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/23/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/23/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/23/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/23/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/23/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/23/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/23/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/23/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/23/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/23/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie
	   
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/24/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/24/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/24/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/24/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/24/2020', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/24/2020', '6:00 AM', '2:30 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/24/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/24/2020', '7:30 AM', '5:15 PM', 3) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/24/2020', '8:00 AM', '5:00 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/24/2020', '7:00 AM', '4:45 PM', 1) -- David Bowie
														
	insert into schedule(employeeid, [date], shiftid) values (1,  '1/25/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/25/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/25/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/25/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/25/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/25/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/25/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/25/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/25/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/25/2020', 10) -- David Bowie

	insert into schedule(employeeid, [date], shiftid) values (1,  '1/26/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '1/26/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '1/26/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '1/26/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '1/26/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '1/26/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '1/26/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '1/26/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '1/26/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '1/26/2020', 10) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/27/2020', '9:00 AM', '4:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/27/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/27/2020', '7:30 AM', '5:15 PM', 3) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/27/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/27/2020', '8:30 AM', '5:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/27/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/27/2020', '7:00 AM', '4:45 PM', 3) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/27/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/27/2020', '8:00 AM', '4:45 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/27/2020', '7:15 AM', '5:00 PM', 2) -- David Bowie

															
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/28/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/28/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/28/2020', '7:30 AM', '4:30 PM', 2) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/28/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/28/2020', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/28/2020', '6:00 AM', '3:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/28/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/28/2020', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/28/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/28/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie
																															 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/29/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/29/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/29/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/29/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/29/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/29/2020', '6:00 AM', '3:45 PM', 2) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/29/2020', '7:00 AM', '4:45 PM', 2) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/29/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/29/2020', '8:00 AM', '4:45 PM', 2) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/29/2020', '7:15 AM', '5:00 PM', 2) -- David Bowie

	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/30/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/30/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/30/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/30/2020', '8:00 AM', '4:30 PM', 1) -- Roger Taylor 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/30/2020', '8:30 AM', '6:15 PM', 1) -- Jimi Hendrix
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/30/2020', '7:00 AM', '4:45 PM', 1) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/30/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/30/2020', '7:30 AM', '5:15 PM', 1) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/30/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/30/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie

																															  
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (1,  '1/31/2020', '9:00 AM', '6:00 PM', 1) -- Freddie Mercury
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (2,  '1/31/2020', '9:00 AM', '6:45 PM', 1) -- John Deacon
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (3,  '1/31/2020', '7:30 AM', '4:30 PM', 1) -- Brian May
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (5,  '1/31/2020', '8:00 AM', '4:30 PM', 2) -- Roger Taylor
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (4,  '1/31/2020', '8:30 AM', '6:15 PM', 2) -- Jimi Hendrix 
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (6,  '1/31/2020', '6:00 AM', '3:45 PM', 3) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (7,  '1/31/2020', '7:00 AM', '4:45 PM', 1) -- Christine McVie
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (8,  '1/31/2020', '7:30 AM', '5:15 PM', 2) -- Annie Lennox
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (9,  '1/31/2020', '8:00 AM', '4:45 PM', 1) -- Sade Adu
	insert into schedule(employeeid, [date], time_in, time_out, shiftid) values (10, '1/31/2020', '7:15 AM', '5:00 PM', 1) -- David Bowie

														
	insert into schedule(employeeid, [date], shiftid) values (1,  '2/1/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '2/1/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '2/1/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '2/1/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '2/1/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '2/1/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '2/1/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '2/1/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '2/1/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '2/1/2020', 10) -- David Bowie
																   	 
	insert into schedule(employeeid, [date], shiftid) values (1,  '2/2/2020', 10) -- Freddie Mercury
	insert into schedule(employeeid, [date], shiftid) values (2,  '2/2/2020', 10) -- John Deacon
	insert into schedule(employeeid, [date], shiftid) values (3,  '2/2/2020', 10) -- Brian May
	insert into schedule(employeeid, [date], shiftid) values (4,  '2/2/2020', 10) -- Roger Taylor
	insert into schedule(employeeid, [date], shiftid) values (5,  '2/2/2020', 10) -- Jimi Hendrix
	insert into schedule(employeeid, [date], shiftid) values (6,  '2/2/2020', 10) -- Dolores O''Riordan
	insert into schedule(employeeid, [date], shiftid) values (7,  '2/2/2020', 10) -- Christine McVie
	insert into schedule(employeeid, [date], shiftid) values (8,  '2/2/2020', 10) -- Annie Lennox
	insert into schedule(employeeid, [date], shiftid) values (9,  '2/2/2020', 10) -- Sade Adu
	insert into schedule(employeeid, [date], shiftid) values (10, '2/2/2020', 10) -- David Bowie
																													 
	select * from schedule;


----12/1/2019 to 12/31/2019
declare @startdate date = '12/1/2019';
declare @enddate date = '1/31/2020';

with calendar as
	(
	select @startdate as [day]
	union all
	select dateadd(day, 1, [day])
	from calendar
	where [day] < @enddate
	)
select distinct
	convert (date, calendar.[day], 1) as [Date],
	employee.id as Employee_ID, 
	employee.firstname+' '+employee.lastname as Employee_Name,
	ISNULL(convert (varchar(7), sch.time_in, 100), 'OFF') as Time_In,
	ISNULL(convert (varchar(7), sch.time_out, 100),'OFF') as Time_Out,
	[shi].shiftname as [Shift]
	FROM calendar
	cross join employee
	left outer join
	schedule sch on 
	(
	sch.[date]=calendar.[day]
	and sch.employeeid = employee.id
	)
	left outer join
	[shift] shi on (shi.id = sch.shiftid)
	order by 
	[date] asc, employee.[id]
	option (maxrecursion 0); --Maxrecursion 0 allows infinite recursion.

	

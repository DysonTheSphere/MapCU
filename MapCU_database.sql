--creating both tables
create table if not exists Instructions (
	InstructionCombinations integer[2],
	WrittenInstructions varchar(100000)
);

create table if not exists Rooms(
	RoomNumber integer PRIMARY KEY,
	RoomSubect varchar(4),
	RoomSection integer

);

create table if not exists Users(
	username varchar(20) PRIMARY KEY,
	password varchar(20)
);


insert into Instructions values(ARRAY[1, 2], 'Exit the ECCR section, and walk straight for 3 meters and take a right'),
(ARRAY[1,3], 'Exit the ECCR section, walk straight for approximatley 3 meters, and take a right to enter the ECCE building, then walk straight for approximatley 1 meter to arrive at your destination'),
(ARRAY[1,5], 'Exit the ECCR building, and continue past the elevator until you have reached the ECAE building. Then, take an immediate left to get to your location'),
(ARRAY[1,6], 'Exit the ECCR building, and continue past the elevator until you have reached the ECAE building. Then, take an immediate right to get to your location'),
(ARRAY[1,4], 'Exit the ECCR section, walk straight for approximatley 3 meters, and take a right to enter the ECCE building, then walk straight for approximatley 1 meter, before taking a left to arrive at your destination'),
(ARRAY[2,1], 'Take a left to exit the ECCE building then, continue straight until you arrive at ECCR, then, take a left'),
(ARRAY[2,3], 'Take a right in the same wing of ECCE, then continue straight until you have reached the destination'),
(ARRAY[2,4], 'Take a right in the same wing of ECCE, then continue straight for approximatley 1 meter, then take a left to arrive at your destination'),
(ARRAY[2,5], 'Take a left to exit the ECCE building then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a left to arrive at your destination'),
(ARRAY[2,6], 'Take a left to exit the ECCE building then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a right to arrive at your destination'),
(ARRAY[3,1], 'Take a right and continue straight in the ECCE building, then take a left to exit the ECCE building then, continue straight until you arrive at ECCR, then, take a left to arrive at your destination'),
(ARRAY[3,2], 'Take a right and continue straight in the ECCE building, then arrive at your destination'),
(ARRAY[3,4], 'Take a a left and continue straight in the ECCE building, then, take a right to arrive at your destination'),
(ARRAY[3,6], 'Take a right and continue straight in the ECCE building, then take a left to exit the ECCE building then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a right to arrive at your destination'),
(ARRAY[3,5], 'Take a right and continue straight in the ECCE building, then take a left to exit the ECCE building then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a left to arrive at your destination'),
(ARRAY[4,1], 'Continue straight for about 1 meter in the ECCE building then, take a right and continue straight until you have exited the ECCE building, continue straight until you arrive at ECCR, then, take a left to arrive at your destination'),
(ARRAY[4,2], 'First continue straight then, take the first right and continue straight in the ECCE building, then arrive at your destination'),
(ARRAY[4,3], 'Continue straight to arrive at your destination'),
(ARRAY[4,5], 'Continue straight then take the first right and the continue to the exit of the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a left to arrive at your destination'),
(ARRAY[4,6], 'Continue straight then take the first right and the continue to the exit of the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a right to arrive at your destination'),
(ARRAY[5,1], 'Exit the ECAE section on your right, then, continue straight, passing the elavators until you have arrived at the ECCR section'),
(ARRAY[5,2], 'Exit the ECAE section on your right, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE building then, take a left to arrive at your destination'),
(ARRAY[5,3], 'Exit the ECAE section on your right, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE building then, take a left to arrive at your destination, finally, continue straight for 1 meter'),
(ARRAY[5,4], 'Exit the ECAE section on your right, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE building then, take a left to arrive at your destination, afterwards, continue straight for 1 meter, then take a left to arrive at your destination'),
(ARRAY[5,6], 'View left and continue straight to arrive at your destination'),
(ARRAY[6,1], 'Exit the ECAE section on your left, then, continue straight, passing the elavators until you have arrived at the ECCR section'),
(ARRAY[6,2], 'Exit the ECAE section on your left, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE building then, take a left to arrive at your destination'),
(ARRAY[6,3], 'Exit the ECAE section on your left, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE building then, take a left to arrive at your destination, finally, continue straight for 1 meter'),
(ARRAY[6,4], 'Exit the ECAE section on your left, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE building then, take a left to arrive at your destination, afterwards, continue straight for 1 meter, then take a left to arrive at your destination'),
(ARRAY[6,5], 'View right and continue straight to arrive at your destination');


/*
subject 1: ECCR
subject 2,3,4: ECCE
subject 5,6: ECAE
Duplicates are being added an additional 0 at the end. For example if there are multiple rooms with 139, then the one after the orginal will be 1390.
DUPLICATES:
1390->section 5
1260->section 6
1530->section 6
1050->section 6
1020->section 6
1090->section 6
1500->section 2
1180->section 3
11800->section 6 (multiple 0's as there are two duplicates)
1080->section 4
1330->section 5
1310->section 6
1570->section 6
1160-> section 3
11600-> section 6
1190->section 6
1100->section 4
1370->section 5
1520->section 6
1590->section 6
1070->section 6
1040->section 6
1610->section 6
1170->section 6
1130->section 6
1000->section 6
*/
insert into Rooms values (131, 'ECCR', 1), (133, 'ECCR', 1), (137, 'ECCR', 1), (139, 'ECCR', 1), (105, 'ECCR', 1), (108, 'ECCR', 1), (110, 'ECCR', 1);
insert into Rooms values (116, 'ECCR', 1), (118, 'ECCR', 1), (150, 'ECCR', 1), (167, 'ECCE', 2), (161, 'ECCE', 2), (157, 'ECCE', 2), (168, 'ECCE', 2);
insert into Rooms values (162, 'ECCE', 2), (160, 'ECCE', 2), (159, 'ECCE', 2), (156, 'ECCE', 2), (152, 'ECCE', 2), (153, 'ECCE', 2), (1500, 'ECCE', 2);
insert into Rooms values (119, 'ECCE', 3), (1180, 'ECCE', 3), (117, 'ECCE', 3), (1160, 'ECCE', 3), (144, 'ECCE', 3), (113, 'ECCE', 3);
insert into Rooms values (114, 'ECCE', 3), (112, 'ECCE', 3), (107, 'ECCE', 3), (109, 'ECCE', 3), (100, 'ECCE', 3), (102, 'ECCE', 4), (104, 'ECCE', 4);
insert into Rooms values (106, 'ECCE', 4), (1080, 'ECCE', 4), (1100, 'ECCE', 4), (120, 'ECCE', 4), (122, 'ECCE', 4), (124, 'ECCE', 4), (126, 'ECCE', 4);
insert into Rooms values (166, 'ECAE', 5), (171, 'ECAE', 5), (1330, 'ECAE', 5), (135, 'ECAE', 5), (1370, 'ECAE', 5), (1390, 'ECAE', 5), (132, 'ECAE', 5);
insert into Rooms values (136, 'ECAE', 5), (138, 'ECAE', 5), (175, 'ECAE', 5), (177, 'ECAE', 5), (179, 'ECAE', 5), (181, 'ECAE', 5), (183, 'ECAE', 5);
insert into Rooms values (185, 'ECAE', 5), (187, 'ECAE', 5), (189, 'ECAE', 5), (172, 'ECAE', 5), (188, 'ECAE', 5), (140, 'ECAE', 5);
insert into Rooms values (142, 'ECAE', 5), (190, 'ECAE', 5), (191, 'ECAE', 5), (193, 'ECAE', 5), (194, 'ECAE', 5), (195, 'ECAE', 5), (196, 'ECAE', 5);
insert into Rooms values (197, 'ECAE', 5), (199, 'ECAE', 5), (198, 'ECAE', 5),  (1520, 'ECAE', 6), (164, 'ECAE', 6), (125, 'ECAE', 6);
insert into Rooms values (127, 'ECAE', 6), (129, 'ECAE', 6), (1310, 'ECAE', 6), (1260, 'ECAE', 6), (128, 'ECAE', 6), (130, 'ECAE', 6), (1610, 'ECAE', 6);
insert into Rooms values (1590, 'ECAE', 6), (1570, 'ECAE', 6), (155, 'ECAE', 6), (1530, 'ECAE', 6), (1170, 'ECAE', 6), (115, 'ECAE', 6), (1130, 'ECAE', 6);
insert into Rooms values (111, 'ECAE', 6), (1090, 'ECAE', 6), (1070, 'ECAE', 6), (1050, 'ECAE', 6), (103, 'ECAE', 6), (101, 'ECAE', 6), (1000, 'ECAE', 6);
insert into Rooms values (151, 'ECAE', 6), (11600, 'ECAE', 6), (11800, 'ECAE', 6), (1040, 'ECAE', 6), (121, 'ECAE', 6), (1020, 'ECAE', 6), (1190, 'ECAE', 6);

insert into Users values ('gtzinov', 'MapCU2020');

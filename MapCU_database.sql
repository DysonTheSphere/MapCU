--creating both tables
create table
if not exists Instructions
(
	InstructionCombinations integer[2],
	WrittenInstructions varchar
(100000)
);

create table
if not exists Rooms
(
	RoomNumber integer,
	RoomSubject varchar
(4),
	RoomSection integer

);

create table
if not exists Users
(
	username varchar
(20) PRIMARY KEY,
	password varchar
(20)
);


insert into Instructions
values(ARRAY
[1, 2], 'Exit the ECCR section, and walk straight for 3 meters, past the lobby, and take a right'),
(ARRAY[1,3], 'Exit the ECCR section, walk straight for approximatley 3 meters, and take a right to enter the ECCE section, then walk straight for approximatley 1 meter to arrive at your destination'),
(ARRAY[1,5], 'Exit the ECCR section, and continue past the elevator until you have reached the ECAE section. Then, take an immediate left to get to your location'),
(ARRAY[1,6], 'Exit the ECCR section, and continue past the elevator until you have reached the ECAE section. Then, take an immediate right to get to your location'),
(ARRAY[1,4], 'Exit the ECCR section, walk straight for approximatley 3 meters, and take a right to enter the ECCE section, then walk straight for approximatley 1 meter, before taking a left to arrive at your destination'),
(ARRAY[1,7], 'Exit the ECCR section, then walk past the lobby for approximatley 3 meters, then take a left into the ECEE section'),
(ARRAY[1,8], 'Exit the ECCR section, then walk past the lobby for approximatley 3 meters, then take a left into the ECEE section and continue walking straight until you have reached your destination'),
(ARRAY[1,9], 'Take the South exit of the ECCR section(exit on the opposite side of the section entrance), then, continue walking straight until you have reached your destination which will be past the ECCR section'),
(ARRAY[1,10], 'Exit the ECCR section and walk past the elevators and proceed to take a left'),
(ARRAY[2,1], 'Take a left to exit the ECCE section then, continue straight until you arrive at ECCR, then, take a left'),
(ARRAY[2,3], 'Take a right in the same wing of ECCE, then continue straight until you have reached the destination'),
(ARRAY[2,4], 'Take a right in the same wing of ECCE, then continue straight for approximatley 1 meter, then take a left to arrive at your destination'),
(ARRAY[2,5], 'Take a left to exit the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a left to arrive at your destination'),
(ARRAY[2,6], 'Take a left to exit the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a right to arrive at your destination'),
(ARRAY[2,7], 'Exit the ECCE section, then take a left, and continue to walk past the main lobby until you have arrived at your destination'),
(ARRAY[2,8], 'Exit the ECCE section, then take a left, and continue to walk past the main lobby, then walk straight within the ECEE section, until you have arrived at your destination'),
(ARRAY[2,9], 'Exit the ECCE section, then walk towards the elevators by taking another left, as you arrive at the ECCR section, continue walking straight until you have reached your destination'),
(ARRAY[2,10],'Take a left to exit the ECCE section then, continue straight until you arrive at the elevators, then, take a right and you should see a sign that states where the ECME and ECAE sections are, hence, you must proceed left to the ECME section'),
(ARRAY[3,1], 'Take a right and continue straight in the ECCE section, then take a left to exit the ECCE section then, continue straight until you arrive at ECCR, then, take a left to arrive at your destination'),
(ARRAY[3,2], 'Take a right and continue straight in the ECCE section, then arrive at your destination'),
(ARRAY[3,4], 'Take a left and continue straight in the ECCE section, then, take a right to arrive at your destination'),
(ARRAY[3,6], 'Take a right and continue straight in the ECCE section, then take a left to exit the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a right to arrive at your destination'),
(ARRAY[3,5], 'Take a right and continue straight in the ECCE section, then take a left to exit the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a left to arrive at your destination'),
(ARRAY[3,7], 'Exit the ECCE section by taking right and walking straight, then take a left, and continue to walk past the main lobby until you have arrived at your destination'),
(ARRAY[3,8], 'Exit the ECCE section by taking right and walking straight, then take a left, and continue to walk past the main lobby, then walk straight within the ECEE section, until you have arrived at your destination'),
(ARRAY[3,9], 'Exit the ECCE section by taking right and walking straight then walk towards the elevators by taking another left, as you arrive at the ECCR section, continue walking straight until you have reached your destination'),
(ARRAY[3,10], 'Exit the ECCE section by taking right and walking straight, continue straight until you arrive at the elevators, then, take a right and you should see a sign that states where the ECME and ECAE sections are, hence, you must proceed left to the ECME section, which is your desired destination'),
(ARRAY[4,1], 'Continue straight for about 1 meter in the ECCE section then, take a right and continue straight until you have exited the ECCE section, continue straight until you arrive at ECCR, then, take a left to arrive at your destination'),
(ARRAY[4,2], 'First continue straight then, take the first right and continue straight in the ECCE section, then arrive at your destination'),
(ARRAY[4,3], 'Continue straight to arrive at your destination'),
(ARRAY[4,5], 'Continue straight then take the first right and the continue to the exit of the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a left to arrive at your destination'),
(ARRAY[4,6], 'Continue straight then take the first right and the continue to the exit of the ECCE section then, continue straight until you arrive at the elevators, then, take a right and continue straight until you have reached the ECAE wing, then take a right to arrive at your destination'),
(ARRAY[4,7], 'Continue straight then take the first right and the continue to the exit of the ECCE section, then take a left, and continue to walk past the main lobby until you have arrived at your destination'),
(ARRAY[4,8], 'Continue straight then take the first right and the continue to the exit of the ECCE section, then take a left, and continue to walk past the main lobby, then walk straight within the ECEE section, until you have arrived at your destination'),
(ARRAY[4,9], 'Continue straight then take the first right and the continue to the exit of the ECCE section then, walk towards the elevators by taking another left, as you arrive at the ECCR section, continue walking straight until you have reached your destination'),
(ARRAY[4,10], 'Exit the ECCE section, continue straight until you arrive at the elevators, then, take a right and you should see a sign that states where the ECME and ECAE sections are, hence, you must proceed left to the ECME section, which is your desired destination'),
(ARRAY[5,1], 'Exit the ECAE, then, continue straight, passing the elavators until you have arrived at the ECCR section'),
(ARRAY[5,2], 'Exit the ECAE, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE section then, take a left to arrive at your destination'),
(ARRAY[5,3], 'Exit the ECAE, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE section then, take a left to arrive at your destination, finally, continue straight for 1 meter'),
(ARRAY[5,4], 'Exit the ECAE, then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE section then, take a left to arrive at your destination, afterwards, continue straight for 1 meter, then take a left to arrive at your destination'),
(ARRAY[5,6], 'View left and continue straight to arrive at your destination'),
(ARRAY[5,7], 'Exit the ECAE, then, continue walking straight towards the elevators, and take a right to enter into the lobby, next, walk for about 1 meter and take a left into the ECEE section'),
(ARRAY[5,8], 'Exit the ECAE, then, continue walking straight towards the elevators, and take a right to enter into the lobby, next, walk for about 1 meter and take a left into the ECEE section, then continue walking straight within the ECEE section to arrive at your destination'),
(ARRAY[5,9], 'Exit the ECAE then, and simply walk straight into the ECCR section then continue straight to enter the ECCS section'),
(ARRAY[5,10], 'Exit the ECAE through the west exit to arrive at your destination'),
(ARRAY[6,1], 'Exit the ECAE section then, continue straight, passing the elavators until you have arrived at the ECCR section'),
(ARRAY[6,2], 'Exit the ECAE section then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE section then, take a left to arrive at your destination'),
(ARRAY[6,3], 'Exit the ECAE section then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE section then, take a left to arrive at your destination, finally, continue straight for 1 meter'),
(ARRAY[6,4], 'Exit the ECAE section then, continue straight until you have arrived at the elevators, after that, take a left and continue straight until you have reached the ECCE section then, take a left to arrive at your destination, afterwards, continue straight for 1 meter, then take a left to arrive at your destination'),
(ARRAY[6,5], 'View right and continue straight to arrive at your destination');
(ARRAY[6,7], 'Exit the ECAE, then, continue walking straight towards the elevators, and take a right to enter into the lobby, next, walk for about 1 meter and take a left into the ECEE section'),
(ARRAY[6,8], 'Exit the ECAE, then, continue walking straight towards the elevators, and take a right to enter into the lobby, next, walk for about 1 meter and take a left into the ECEE section, then continue walking straight within the ECEE section to arrive at your destination'),
(ARRAY[6,9], 'Exit the ECAE  then, and simply walk straight into the ECCR section then continue straight to enter the ECCS section'),
(ARRAY[6,10], 'Exit the ECAE through the west exit to arrive at your destination'),
(ARRAY[7,1], 'Exit the ECEE section, then take a left and walk past the main lobby and once you have arrived at the ECCR section, take an immediate left to arrive at your destination'),
(ARRAY[7,2], 'Exit the ECEE section, then simply walk straight until you have reached the ECCE section'),
(ARRAY[7,3], 'Exit the ECEE section, then simply walk straight until you have reached the ECCE section, then continue to walk straight to reach your destination'),
(ARRAY[7,4], 'Exit the ECEE section, then simply walk straight until you have reached the ECCE section, then continue to walk straight, then take a left to arrive at your destination'),
(ARRAY[7,5], 'Exit the ECCE section, then take a left to go to the elevators, then take a right and walk straight until you have reached the ECAE section, then once inside this section, take a left'),
(ARRAY[7,6], 'Exit the ECCE section, then take a left to go to the elevators, then take a right and walk straight until you have reached the ECAE section, then once inside this section, take a right to arrive at your destination'),
(ARRAY[7,8], 'Continue walking straight within the ECEE section while viewing left'),
(ARRAY[7,9], 'Exit the ECEE section, then take a left and walk past the main lobby and once you have arrived at the ECCR section, take an immediate left, then continue to walk straight within the ECCR section until you have arrived at your destination'),
(ARRAY[7,10], 'Exit the ECEE section, take a right and walk past the lobby, take another right to walk past the elavtors then take a left to enter the ECME section'),
(ARRAY[8,1], 'Exit the ECEE section, then take a left and walk past the main lobby and once you have arrived at the ECCR section, take an immediate left to arrive at your destination'),
(ARRAY[8,2], 'Exit the ECEE section, then simply walk straight until you have reached the ECCE section'),
(ARRAY[8,3], 'Exit the ECEE section, then simply walk straight until you have reached the ECCE section, then continue to walk straight to reach your destination'),
(ARRAY[8,4], 'Exit the ECEE section, then simply walk straight until you have reached the ECCE section, then continue to walk straight, then take a left to arrive at your destination'),
(ARRAY[8,5], 'Exit the ECCE section, then take a left to go to the elevators, then take a right and walk straight until you have reached the ECAE section, then once inside this section, take a left'),
(ARRAY[8,6], 'Exit the ECCE section, then take a left to go to the elevators, then take a right and walk straight until you have reached the ECAE section, then once inside this section, take a right to arrive at your destination'),
(ARRAY[8,7], 'Continue walking straight within the ECEE section while viewing right'),
(ARRAY[8,9], 'Exit the ECEE section, then take a left and walk past the main lobby and once you have arrived at the ECCR section, take an immediate left, then continue to walk straight within the ECCR section until you have arrived at your destination'),
(ARRAY[8,10], 'Exit the ECEE section, take a right and walk past the lobby, take another right to walk past the elavtors then take a left to enter the ECME section'),
(ARRAY[9,1], 'Simply walk past the ECCS section to enter the ECCR section'),
(ARRAY[9,2], 'Exit the ECCS section, then exit the ECCR section, and walk straight for 3 meters, past the lobby, and take a right'),
(ARRAY[9,3], 'Exit the ECCS section, then exit the ECCR section, walk straight for approximatley 3 meters, and take a right to enter the ECCE section, then walk straight for approximatley 1 meter to arrive at your destination'),
(ARRAY[9,4], 'Exit the ECCS section, then exit the ECCR section, walk straight for approximatley 3 meters, and take a right to enter the ECCE section, then walk straight for approximatley 1 meter, before taking a left to arrive at your destination'),
(ARRAY[9,5], 'Exit the ECCS section, then exit the ECCR section, continue past the elevator until you have reached the ECAE section. Then, take an immediate left to get to your location'),
(ARRAY[9,6], 'Exit the ECCS section, then exit the ECCR section, continue past the elevator until you have reached the ECAE section. Then, take an immediate right to get to your location'),
(ARRAY[9,8], 'Exit the ECCS section, then exit the ECCR section, then walk past the lobby for approximatley 3 meters, then take a left into the ECEE section and continue walking straight until you have reached your destination'),
(ARRAY[9,7], 'Exit the ECCS section, then exit the ECCR section, then take a left, and continue to walk past the main lobby until you have arrived at your destination'),
(ARRAY[9,10], 'Exit the ECCS section, continue walking straight past the elevators and then take a left to enter your desired destination'),
(ARRAY[10,1], 'Exit the ECME section and continue to walk straight past the elevators and the main entrance doors to arrive at your destination in the ECCR section'),
(ARRAY[10,2], 'Exit the ECME section, and walk past the lobby and the welcome desk until then, take the next right to arrive at your destination (which is past the BOLD center)'),
(ARRAY[10,3], 'Exit the ECME section, and walk past the lobby and the welcome desk until then, take the next right, then continue walking straight to arrive at your destination'),
(ARRAY[10,4], 'Exit the ECME section, and walk past the lobby and the welcome desk until then, take the next right, then continue walking straight, and take the next right within the hallways of the ECCE section to arrive at your destination'),
(ARRAY[10,5], 'Exit the ECME section from the North exit (exit which is facing away from the elevators and main building entrance), then, take a right to arrive at your destination'),
(ARRAY[10,6], 'Exit the ECME section from the North exit (exit which is facing away from the elevators and main building entrance), then, take a left to arrive at your destination'),
(ARRAY[10,7], 'Exit the ECME section, then take a walk past the help desk and main lobby then take an immediate left, approximatley half way into the hall way'),
(ARRAY[10,8], 'Exit the ECME section, then take a walk past the help desk and main lobby then take an immediate left, approximatley half way into the hall way, then once in the ECEE section, continue straight'),
(ARRAY[10,9], 'Exit the ECME section and continue to walk straight past the elevators and the main entrance doors to arrive at your destination as you continue to walk past the ECCR section');

insert into Rooms
values
	(131, 'ECCR', 1),
	(133, 'ECCR', 1),
	(137, 'ECCR', 1),
	(139, 'ECCR', 1),
	(105, 'ECCR', 1),
	(108, 'ECCR', 1),
	(110, 'ECCR', 1);
insert into Rooms
values
	(116, 'ECCR', 1),
	(118, 'ECCR', 1),
	(150, 'ECCR', 1),
	(167, 'ECCE', 2),
	(161, 'ECCE', 2),
	(157, 'ECCE', 2),
	(168, 'ECCE', 2);
insert into Rooms
values
	(162, 'ECCE', 2),
	(160, 'ECCE', 2),
	(159, 'ECCE', 2),
	(156, 'ECCE', 2),
	(152, 'ECCE', 2),
	(153, 'ECCE', 2),
	(150, 'ECCE', 2);
insert into Rooms
values
	(119, 'ECCE', 3),
	(118, 'ECCE', 3),
	(117, 'ECCE', 3),
	(116, 'ECCE', 3),
	(144, 'ECCE', 3),
	(113, 'ECCE', 3);
insert into Rooms
values
	(114, 'ECCE', 3),
	(112, 'ECCE', 3),
	(107, 'ECCE', 3),
	(109, 'ECCE', 3),
	(100, 'ECCE', 3),
	(102, 'ECCE', 4),
	(104, 'ECCE', 4);
insert into Rooms
values
	(106, 'ECCE', 4),
	(108, 'ECCE', 4),
	(110, 'ECCE', 4),
	(120, 'ECCE', 4),
	(122, 'ECCE', 4),
	(124, 'ECCE', 4),
	(126, 'ECCE', 4);
insert into Rooms
values
	(166, 'ECAE', 5),
	(171, 'ECAE', 5),
	(133, 'ECAE', 5),
	(135, 'ECAE', 5),
	(137, 'ECAE', 5),
	(139, 'ECAE', 5),
	(132, 'ECAE', 5);
insert into Rooms
values
	(136, 'ECAE', 5),
	(138, 'ECAE', 5),
	(175, 'ECAE', 5),
	(177, 'ECAE', 5),
	(179, 'ECAE', 5),
	(181, 'ECAE', 5),
	(183, 'ECAE', 5);
insert into Rooms
values
	(185, 'ECAE', 5),
	(187, 'ECAE', 5),
	(189, 'ECAE', 5),
	(172, 'ECAE', 5),
	(188, 'ECAE', 5),
	(140, 'ECAE', 5);
insert into Rooms
values
	(142, 'ECAE', 5),
	(190, 'ECAE', 5),
	(191, 'ECAE', 5),
	(193, 'ECAE', 5),
	(194, 'ECAE', 5),
	(195, 'ECAE', 5),
	(196, 'ECAE', 5);
insert into Rooms
values
	(197, 'ECAE', 5),
	(199, 'ECAE', 5),
	(198, 'ECAE', 5),
	(152, 'ECAE', 6),
	(164, 'ECAE', 6),
	(125, 'ECAE', 6);
insert into Rooms
values
	(127, 'ECAE', 6),
	(129, 'ECAE', 6),
	(131, 'ECAE', 6),
	(126, 'ECAE', 6),
	(128, 'ECAE', 6),
	(130, 'ECAE', 6),
	(161, 'ECAE', 6);
insert into Rooms
values
	(159, 'ECAE', 6),
	(157, 'ECAE', 6),
	(155, 'ECAE', 6),
	(153, 'ECAE', 6),
	(117, 'ECAE', 6),
	(115, 'ECAE', 6),
	(113, 'ECAE', 6);
insert into Rooms
values
	(111, 'ECAE', 6),
	(109, 'ECAE', 6),
	(107, 'ECAE', 6),
	(105, 'ECAE', 6),
	(103, 'ECAE', 6),
	(101, 'ECAE', 6),
	(100, 'ECAE', 6);
insert into Rooms
values
	(151, 'ECAE', 6),
	(116, 'ECAE', 6),
	(118, 'ECAE', 6),
	(104, 'ECAE', 6),
	(121, 'ECAE', 6),
	(102, 'ECAE', 6),
	(119, 'ECAE', 6);
insert into Rooms
values
	(164, 'ECEE', 7),
	(166, 'ECEE', 7),
	(168, 'ECEE', 7),
	(123, 'ECEE', 7),
	(127, 'ECEE', 7),
	(129, 'ECEE', 7),
	(124, 'ECEE', 7);
insert into Rooms
values
	(125, 'ECEE', 7),
	(126, 'ECEE', 7),
	(128, 'ECEE', 7),
	(132, 'ECEE', 7),
	(137, 'ECEE', 7),
	(130, 'ECEE', 7),
	(140, 'ECEE', 7);
insert into Rooms
values
	(142, 'ECEE', 7),
	(146, 'ECEE', 7),
	(186, 'ECEE', 7),
	(189, 'ECEE', 7),
	(187, 'ECEE', 7),
	(185, 'ECEE', 7),
	(190, 'ECEE', 7);
insert into Rooms
values
	(170, 'ECEE', 7),
	(165, 'ECEE', 7),
	(162, 'ECEE', 8),
	(160, 'ECEE', 8),
	(158, 'ECEE', 8),
	(121, 'ECEE', 8),
	(117, 'ECEE', 8);
insert into Rooms
values
	(115, 'ECEE', 8),
	(121, 'ECEE', 8),
	(114, 'ECEE', 8),
	(116, 'ECEE', 8),
	(120, 'ECEE', 8),
	(161, 'ECEE', 8),
	(155, 'ECEE', 8);
insert into Rooms
values
	(151, 'ECEE', 8),
	(150, 'ECEE', 8),
	(109, 'ECEE', 8),
	(105, 'ECEE', 8),
	(110, 'ECEE', 8),
	(121, 'ECCS', 9),
	(112, 'ECCS', 9);
insert into Rooms
values
	(122, 'ECCS', 9),
	(111, 'ECCS', 9),
	(128, 'ECCS', 9),
	(127, 'ECCS', 9),
	(123, 'ECCS', 9),
	(102, 'ECCS', 9),
	(101, 'ECCS', 9);
insert into Rooms
values
	(112, 'ECME', 10),
	(114, 'ECME', 10),
	(120, 'ECME', 10),
	(122, 'ECME', 10),
	(124, 'ECME', 10),
	(126, 'ECME', 10),
	(128, 'ECME', 10);
insert into Rooms
values
	(130, 'ECME', 10),
	(132, 'ECME', 10),
	(134, 'ECME', 10),
	(136, 'ECME', 10),
	(137, 'ECME', 10),
	(133, 'ECME', 10),
	(145, 'ECME', 10);
insert into Rooms
values
	(147, 'ECME', 10),
	(149, 'ECME', 10),
	(157, 'ECME', 10),
	(159, 'ECME', 10),
	(165, 'ECME', 10),
	(175, 'ECME', 10),
	(155, 'ECME', 10);
insert into Rooms
values
	(108, 'ECME', 10),
	(109, 'ECME', 10),
	(107, 'ECME', 10),
	(105, 'ECME', 10),
	(102, 'ECME', 10);

insert into Users
values
	('gtzinov', 'MapCU2020');

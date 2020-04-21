--creating both tables
CREATE DATABASE finalProject

create table if not exists Instructions (
	InstructionCombinations integer[2],
	WrittenInstructions varchar(100)
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


insert into Instructions values(ARRAY[1, 2], 'Take a left to exit the section, and walk straight for 3 meters and take a left'),
(ARRAY[1, 3], 'Going from 1 to 3'), (ARRAY[4,2], 'Going from 4 to 2'), (ARRAY[1,5], 'Going from 1 to 5');

insert into Rooms values (131, 'ECCR', 1), (153, 'ECCE', 2), (129, 'ECCS', 2);

insert into Users values ('gtzinov', 'MapCU2020');


--query for finding correct instruction


/*select writtenInstructions from Instructions where instructions.InstructionCombinations[1] in
(select RoomSection from Rooms where RoomNumber = <dataObject.currentRoom>)
AND
instructions.InstructionCombinations[2] in (select RoomSection from Rooms where 		RoomNumber = <dataObject.intendedRoom);
*/

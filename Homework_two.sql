create table if not exists Musician (
	ID serial primary key,
	Name varchar(20) not null
);

create table if not exists Genre (
	ID serial primary key,
	Name varchar(20) not null
);

create table if not exists Musician_Genre (
	ID serial primary key,
	Musician_ID integer not null references Musician(ID),
	Genre_ID integer not null references Genre(ID)
);

create table if not exists Album (
	ID serial primary key,
	Name varchar(20) not null,
	Year_of_issue integer not null
);

create table if not exists Track (
	ID serial primary key,
	Name varchar(20) not null,
	Duration varchar(20) not null,
	Album_ID integer references Album(ID)
);

create table if not exists Musician_Album (
	ID serial primary key,
	Musician_ID integer not null references Musician(ID),
	Album_ID integer not null references Album(ID)
);

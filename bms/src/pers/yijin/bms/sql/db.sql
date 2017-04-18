CREATE TABLE user (
  id int(12) auto_increment,
  username varchar(40) not null,
  password varchar(50) NOT NULL,
  address  varchar(50) not null,
  age int(3),
  email varchar(50) NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table message(
	id int(12) auto_increment primary key,
	userId int(12) not null,
	theme varchar(50),
	message varchar(200),
	msgTime varchar(30),
	CONSTRAINT FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table admin(
  id int(12) auto_increment,
  username varchar(20) not null,
  password varchar(20) not null,
  primary key (id)
  )engine=InnoDB default charset=utf8;
 
create table station(
  id int(20) not null primary key auto_increment,
  stationName varchar(20) not null
  )engine=InnoDB default charset=utf8;
  
create table bus(
  id int(20) not null auto_increment,
  busName varchar(15) not null,
  startStation int(10) not null,
  endStation int(10) not null,
  bus_time varchar(30) not null,
  primary key(id)
  )engine=InnoDB default charset=utf8;
        
create table bus_station(
  id int(20) not null primary key auto_increment,
  busId int(20) not null,
  stationID int(20) not null,
  CONSTRAINT FOREIGN KEY (`busId`) REFERENCES `bus` (`id`),
  CONSTRAINT FOREIGN KEY (`stationID`) REFERENCES `station` (`id`)
  )engine=InnoDB default charset=utf8;

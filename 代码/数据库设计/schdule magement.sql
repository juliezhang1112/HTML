/*
 初始化数据库
 使用数据库
*/

/*
  DROP DATABASE IF EXISTS scheduleManage;
  CREATE DATABASE scheduleManage;
  USE scheduleManage;
*/


CREATE TABLE Users (
  user_id int4  AUTO_INCREMENT,

  name varchar(20) NOT NULL,
  department varchar(30),
  email varchar(255) UNIQUE,
  phone int4,
  userType char(10) NOT NULL,
  username varchar(30) NOT NULL UNIQUE,
  password varchar(15) NOT NULL,
  CONSTRAINT users_pk PRIMARY KEY (user_id)
);

CREATE TABLE Managers (
  ManagerID int4 AUTO_INCREMENT,

  MNUsername varchar(30) NOT NULL UNIQUE,
  MNPassword varchar(15) NOT NULL,
  MNName varchar(20),
  Phone varchar(11),

  CONSTRAINT mn_pk PRIMARY KEY (ManagerID)
);


CREATE TABLE Schedule (
  scheduleId int4 AUTO_INCREMENT,
  user_id int4,

  place char(50) DEFAULT '北京大学',
  activityDate date DEFAULT CURDATE(),
  activityTime char(4) NOT NULL,
  eventName varchar(30),
  comment varchar(255),
  CONSTRAINT schedule_pk PRIMARY KEY (scheduleId),
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE UserLogs (
  UserLogID int4 AUTO_INCREMENT,
  user_id int4,

  creationDatetime datetime NOT NULL,
  action varchar(100) NOT NULL,
  CONSTRAINT userlog_pk PRIMARY KEY (UserLogID),
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE ManagerLogs (
  ManagerLogID int4 AUTO_INCREMENT,
  ManagerID int4,

  creationDatetime datetime NOT NULL,
  action varchar(100) NOT NULL,
  CONSTRAINT mnlog_pk PRIMARY KEY (ManagerLogID),
  FOREIGN KEY (ManagerID) REFERENCES Users(ManagerID) ON DELETE CASCADE
);
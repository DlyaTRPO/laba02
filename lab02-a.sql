DROP TABLE IF EXISTS INSTALLS;
DROP TABLE IF EXISTS SOFT;
DROP TABLE IF EXISTS PCS;
DROP TABLE IF EXISTS ROOMS;
DROP TABLE IF EXISTS EMPLOYEES;

CREATE TABLE SOFT
(
id integer,
sname varchar(100) NOT NULL,
ver varchar(50) NOT NULL,
quant integer NOT NULL
);


CREATE TABLE INSTALLS
(
pc_id integer,
soft_id integer
);


CREATE TABLE PCS
(
id integer,
room_id integer NOT NULL,
note varchar(150),
id_addr varchar(150) NOT NULL,
mac_addr varchar(150) NOT NULL
);

CREATE TABLE ROOMS
(
id integer,
num integer NOT NULL,
emp_id integer NOT NULL
);

CREATE TABLE EMPLOYEES
(
id integer,
lname varchar(100) NOT NULL,
fname varchar(100) NOT NULL,
mname varchar(100)
);

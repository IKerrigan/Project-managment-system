CREATE DATABASE worktime;
USE worktime;
CREATE TABLE User
(
id int AUTO_INCREMENT,
email varchar(200) NOT NULL,
password varchar(300) NOT NULL,
name varchar(300) NOT NULL,
status varchar(100),
PRIMARY KEY (id)
);

CREATE TABLE Access
(
id int AUTO_INCREMENT,
role varchar(100) NOT NULL,
user_id int,
project_id int,
PRIMARY KEY (id)
);

CREATE TABLE Project
(
id int AUTO_INCREMENT,
name varchar(500) NOT NULL,
description varchar(1000),
PRIMARY KEY (id)
);

CREATE TABLE Metadata
(
id int AUTO_INCREMENT,
value varchar(50),
project_id int,
PRIMARY KEY (id)
);

CREATE TABLE Action
(
id int AUTO_INCREMENT,
resultTaskState bit,
actedAt datetime,
task_id int,
user_id int,
PRIMARY KEY(id)
);

CREATE TABLE Task
(
id int AUTO_INCREMENT,
name varchar(300) NOT NULL,
description varchar(500) NOT NULL,
deadline datetime NOT NULL,
project_id int,
artifact_id int,
PRIMARY KEY (id)
);

CREATE TABLE Attachement
(
id int AUTO_INCREMENT,
role varchar(100) NOT NULL,
user_id int,
project_id int,
PRIMARY KEY (id)
);

CREATE TABLE Artifact
(
id int AUTO_INCREMENT,
name varchar(300) NOT NULL,
url varchar(600),
task_id int,
PRIMARY KEY CLUSTERED (id)
);


ALTER TABLE Access
ADD FOREIGN KEY (user_id)
REFERENCES User (id)
ON DELETE No Action ON UPDATE No Action;

ALTER TABLE Access
ADD FOREIGN KEY (project_id)
REFERENCES Project (id)
ON DELETE No Action ON UPDATE No Action;

ALTER TABLE Task
ADD FOREIGN KEY (project_id)
REFERENCES Project (id)
ON DELETE No Action ON UPDATE No Action;

ALTER TABLE Task
ADD FOREIGN KEY (artifact_id)
REFERENCES Artifact (id)
ON DELETE No Action ON UPDATE No Action;

ALTER TABLE Action
ADD FOREIGN KEY (task_id)
REFERENCES Task (id)
ON DELETE No Action ON UPDATE No Action; 

ALTER TABLE Action
ADD FOREIGN KEY (user_id)
REFERENCES User (id)
ON DELETE No Action ON UPDATE No Action;

ALTER TABLE Attachement
ADD FOREIGN KEY (user_id)
REFERENCES User (id)
ON DELETE No Action ON UPDATE No Action;

ALTER TABLE Attachement
ADD FOREIGN KEY (project_id)
REFERENCES Project (id)
ON DELETE No Action ON UPDATE No Action;

ALTER TABLE Metadata
ADD FOREIGN KEY (project_id)
REFERENCES Project (id)
ON DELETE No Action ON UPDATE No Action;  

INSERT INTO User(email, password, name, status) VALUES('iryna1stefanovych@gmail.com', 'IKerrigan', 'Ірина Стефанович', null);
INSERT INTO User(email, password, name, status) VALUES('bogdanaostrovska986@gmail.com', 'OstrovskaB', 'Богдана Островська', null);
INSERT INTO User(email, password, name, status) VALUES('ivanna8589@gmail.com', 'Ivanna', 'Іванна Баранчук', null);
INSERT INTO User(email, password, name, status) VALUES('theclubmusic263@gmail.com', 'KorolevichB', 'Богдан Королевич', null);
INSERT INTO User(email, password, name, status) VALUES('maximmchk@gmail.com', 'ManchukM', 'Максим Манчук', null);
INSERT INTO User(email, password, name, status) VALUES('a.rovishin@gmail.com', 'balast', 'Андрій Ровишин', null);
INSERT INTO User(email, password, name, status) VALUES('ogk.langelius@gmail.com', 'langelius', 'Олег Гуцалюк', null);

INSERT INTO Project(name, description) VALUES('WorkTime', 'Майбутній веб-сервіс для розробки програмного забезпечення');

INSERT INTO Access(role, user_id, project_id) VALUES('TeamLead', 1, 1);
INSERT INTO Access(role, user_id, project_id) VALUES('Developer', 2, 1);
INSERT INTO Access(role, user_id, project_id) VALUES('Developer', 3, 1);
INSERT INTO Access(role, user_id, project_id) VALUES('Developer', 4, 1);
INSERT INTO Access(role, user_id, project_id) VALUES('Developer', 5, 1);
INSERT INTO Access(role, user_id, project_id) VALUES('Developer', 6, 1);
INSERT INTO Access(role, user_id, project_id) VALUES('Developer', 7, 1);

INSERT INTO Task(name, description, deadline, project_id, artifact_id) VALUES('Створити Use Cases', 'Створення Use Cases для повного функціоналу системи', '2020-11-27 23:59:59', 1, NULL);
INSERT INTO Task(name, description, deadline, project_id, artifact_id) VALUES('Створити ER model', 'Створення діаграми', '2020-12-13 23:59:59', 1, NULL);
INSERT INTO Task(name, description, deadline, project_id, artifact_id) VALUES('Створити базу даних', 'Створення бази даних з допомогою MySQL Server & Workbench', '2020-12-13 23:59:59', 1, NULL);

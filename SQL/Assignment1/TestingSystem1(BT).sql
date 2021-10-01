CREATE DATABASE TestingSystem;
USE TestingSystem;

CREATE TABLE Department (
DepartmentID				INT,
DepartmentName				VARCHAR(50)
);

CREATE TABLE Position (
positionID				INT,
positionNAME			VARCHAR(50)
);

CREATE	TABLE `Account` (
AccountID					INT,
Email						VARCHAR(50),
Username					VARCHAR(50),
DepartmentID				VARCHAR(50),
PositionID					INT,
CreateDate					DATE
);

CREATE TABLE `Group`(
GroupID					INT,
GroupName				VARCHAR(50),
CreatorID				INT,
CreateDate				DATE
);

CREATE TABLE GroupAccount (
GroupID				INT,
AccountID			INT,
JoinDate			DATE
);

CREATE TABLE CategoryQuestion (
CategoryID			INT,
CategoryName		VARCHAR(50)
);

CREATE TABLE Question (
QuestionID					INT,
Content						VARCHAR(50),
CategoryID					INT,
TypeID						INT,
CreatorID					INT,
CreateDate					DATE
);

CREATE TABLE Answer	(
ExamID			INT,
`Code`			VARCHAR(50),
Title			INT,
CategoryID		INT,
Duration		INT,
CreatorID		INT,
CreateDate		DATE
);

CREATE TABLE ExamQuestion (
ExamID		INT,
QuestionID	INT
);





















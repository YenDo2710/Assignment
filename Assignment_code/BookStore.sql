CREATE DATABASE BookStore

USE BookStore

CREATE TABLE Member (
	id				int IDENTITY(1,1)	PRIMARY KEY,
	Firstname		nvarchar(15)		NOT NULL,
	LastName		nvarchar(15)		NOT NULL,
	Username		nvarchar(15)		NOT NULL,
	[Password]		nvarchar(30)		NOT NULL,
	Phone			varchar(15)			NOT NULL				CHECK (Phone NOT LIKE '%[^0-9]%'),
	Email			varchar(50)			NOT NULL				CHECK (Email LIKE '%_@__%.__%'),
	[Description]	nvarchar(300),
	CreatedDate		datetime			NOT NULL,
	UpdateTime		datetime
)

CREATE TABLE Content (
	id				int IDENTITY(1,1)	PRIMARY KEY,
	Title			nvarchar(200)		NOT NULL,
	Brief			nvarchar(200)		NOT NULL,
	Content			ntext				NOT NULL,
	CreatedDate		datetime			NOT NULL,
	UpdateTime		datetime,
	Sort			varchar(20),
	authorID		int NOT NULL,
	FOREIGN KEY		(authorID)			REFERENCES Member (id)
)
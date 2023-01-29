/* @c:/csy2038/create_group19.sql */

******* Create Tables *******

CREATE TABLE tickets (
ticket_id		NUMBER(6),
ticket_price	NUMBER(4,2),
Ticket_date		DATE,
ticket_type		ticket_table_type)

NESTED TABLE ticket_type STORE AS ticket_table_type;

CREATE TABLE sponsors(
sponsor_id			NUMBER(6),
sponsor_name		VARCHAR(20) NOT NULL,
sponsor_surname		VARCHAR(20) NOT NULL,
dob					DATE,
phone_number		VARCHAR(15),
gender				CHAR(2),
address             REF address_type SCOPE IS addresses);

CREATE TABLE experiences(
experience_id 				NUMBER(6),
experience_name 			VARCHAR(20),
activity 					activity_varray_type
start_date					DATE
end_date					DATE


CREATE TABLE sponsor_tickets (
sponsor_tickets_id	NUMBER(6),
ticket_id			NUMBER(6) NOT NULL,
sponsor_id			NUMBER(6) NOT NULL,
experience_id 		NUMBER(6) NOT NULL,
address REF address_type SCOPE IS addresses	
);

******* Checkign Tables *******
COLUMN tname FORMAT A20;
SELECT tname FROM TAB;

******* Create Types *******

CREATE OR REPLACE TYPE address_type AS OBJECT ( 
	street VARCHAR2(25),
	city VARCHAR2(25),
	country VARCHAR2(25));
/
SHOW ERRORS;

CREATE TABLE addresses OF address_type;

SHOW ERRORS

CREATE OR REPLACE TYPE ticket_table_type AS OBJECT (
age_group		NUMBER(6),
discounts		NUMBER(4,2));
/
SHOW ERRORS

CREATE TYPE ticket_table_type AS TABLE OF ticket_type;
/
SHOW ERRORS


CREATE OR REPLACE TYPE activity_type AS OBJECT (
activity_name			VARCHAR2(250),
activity_description	VARCHAR2(250),);
/
SHOW ERRORS;

CREATE TYPE activity_varray_type AS VARRAY(50) OF activity_type;
/
SHOW ERRORS;


******* Checking Types *******

COLUMN object_name FORMAT A20;
SELECT object_name FROM user_objects WHERE object_type = 'TYPE';

******* Create Sequences *******

CREATE SEQUENCE tickets_seq START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE sponsors_seq START WITH 200 INCREMENT BY 1;
CREATE SEQUENCE experiences_seq START WITH 300 INCREMENT BY 1;
CREATE SEQUENCE sponsor_tickets_seq START WITH 400 INCREMENT BY 1;

******* Checking Sequences *******
COLUMN sequence_name FORMAT A20;
SELECT sequence_name FROM user_sequences;
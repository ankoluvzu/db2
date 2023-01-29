/* @c:/csy2038/drop_group19.sql */


******* Drop Tables *******

DROP TABLE tickets;
DROP TABLE sponsors;
DROP TABLE experiences;
DROP TABLE sponsor_tickets;

******* Drop Sequences *******

DROP SEQUENCE tickets_seq;
DROP SEQUENCE sponsors_seq;
DROP SEQUENCE experiences_seq;
DROP SEQUENCE sponsor_tickets_seq;

******* Drop Object tables *******
DROP TABLE addresses;

******* Drop Table / Varray Types *******
DROP TYPE address_type;
DROP TYPE ticket_type;
DROP TYPE activity_type;


******* Drop Primary Keys *******
ALTER TABLE tickets
DROP CONSTRAINT pk_tickets;

ALTER TABLE sponsors
DROP CONSTRAINT pk_sponsors;

ALTER TABLE experiences
DROP CONSTRAINT pk_experiences;

ALTER TABLE sponsor_tickets
DROP CONSTRAINT pk_sponsor_tickets;

******* Drop Foreign Keys *******

ALTER TABLE sponsor_tickets 
DROP CONSTRAINT fk_tickets;

ALTER TABLE sponsor_tickets 
DROP CONSTRAINT fk_sponsors;

ALTER TABLE sponsor_tickets 
DROP CONSTRAINT fk_experiences;


******* Purge Recyclebin *******
PURGE RECYCLEBIN;

******* Drop Check *******
SELECT OBJECT_NAME FROM user_objects;



/// need procedures

need TRIGGERS

// need functions
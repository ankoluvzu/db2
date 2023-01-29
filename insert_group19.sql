/* @c:/csy2038/insert_group19.sql */

******* Insert Addresses *******

INSERT INTO addresses (street, city, country)
VALUES ('68 MILKWAY ROAD', 'PRINCETON', 'UK');

INSERT INTO addresses (street, city, country)
VALUES ('108 SLOGHT ROAD', 'LONDON', 'UK');

INSERT INTO addresses (street, city, country)
VALUES ('104 KINGSPIN STREET', 'BRISTOL', 'UK');

INSERT INTO addresses (street, city, country)
VALUES ('504 REMINES STREET', 'MANCHESTER', 'UK');

INSERT INTO addresses (street, city, country)
VALUES ('652 PRINCES ROAD', 'MILTON KEYNES', 'UK');


******* Insert Addresses Checks *******
COLUMN street FORMAT A20;
COLUMN city FORMAT A20;
SELECT street, city FROM addresses;

******* Insert Tickets *******

INSERT INTO tickets
VALUES(
tickets_seq.NEXTVAL,
'19.99',
'11-MARCH-2023',
ticket_table_type(
	ticket_type('5', '100%'),
	ticket_type('11', '50%'),
	ticket_type('18', '5%')),
);

INSERT INTO tickets
VALUES(
tickets_seq.NEXTVAL,
'59.99',
'19-MAY-2023',
ticket_table_type(
	ticket_type('5', '100%'),
	ticket_type('11', '50%'),
	ticket_type('18', '10%')),
);

INSERT INTO tickets
VALUES(
tickets_seq.NEXTVAL,
'42.99',
'22-JUNE-2023',
ticket_table_type(
	ticket_type('5', '100%'),
	ticket_type('11', '50%'),
	ticket_type('18', '10%')),
);

INSERT INTO tickets
VALUES(
tickets_seq.NEXTVAL,
'59.99',
'19-MAY-2023',
ticket_table_type(
	ticket_type('5', '100%'),
	ticket_type('11', '50%'),
	ticket_type('18', '10%')),
);

INSERT INTO tickets
VALUES(
tickets_seq.NEXTVAL,
'89.99',
'05-AUGUST-2023',
ticket_table_type(
	ticket_type('5', '100%'),
	ticket_type('11', '30%'),
	ticket_type('18', '5%')),
);

******* Check Tickets Inserts *******
COLUMN age_group FORMAT A20;
SELECT ticket_id, age_group FROM tickets;

*******  Sponsors Inserts *******

INSERT INTO sponsors
VALUES (
sponsors_seq.NEXTVAL,
'MARK', 'RICHARDS','01-FEB-1994', '(617)342-5245', 'M',
REF(a)
FROM addresses a
WHERE a.street='68 MILKWAY ROAD';

INSERT INTO sponsors
VALUES (sponsors_seq.NEXTVAL,'DANTE', 'DUPRIS','13-NOV-1992', '(615)523-6523', 'M',
 REF(a)
FROM addresses a
WHERE a.street='104 KINGSPIN STREET';

INSERT INTO sponsors
VALUES (sponsors_seq.NEXTVAL, 'FELICIA', 'PRESTON','22-MAR-2001', '(611)756-9843', 'F',
 REF(a)
FROM addresses a
WHERE a.street='652 PRINCES ROAD';

INSERT INTO sponsors
VALUES (sponsors_seq.NEXTVAL,'MURIEL', 'VALDANTE','21-FEB-1986', '(618)123-3487', 'F',
 REF(a)
FROM addresses a
WHERE a.street='108 SLOGHT ROAD';

INSERT INTO sponsors
VALUES (sponsors_seq.NEXTVAL,'JIM', 'BEAN','04-APR-2005', '(613)978-3472', 'M', 
REF(a)
FROM addresses a
WHERE a.street='504 REMINES STREET';

******* Check Sponsors Inserts *******
COLUMN sponsor_name FORMAT A20;
SELECT sponsor_id, sponsor_name FROM sponsors;


*******  Experiences Inserts *******
INSERT INTO experiences
VALUES (
experiences_seq.NEXTVAL,
'WATER', ' 14-APR-2023', '19-APR-2023'
activity_varray_type(
activity_type VALUES ('SKY DIVING', 'ADVENTUROUSLY TAKING A JUMP FROM A PLANE AND ENJOY THE TRIP BACK TO EARTH');
activity_type VALUES ('WAKEBOARDING', 'MERGE WITH THE WATERS OVER OUR LAKE'));

INSERT INTO experiences
VALUES (
experiences_seq.NEXTVAL,
'SOUL', '7-AUG-2023','14-aug-2023'
activity_varray_type(
activity_type VALUES ('HORSE RIDES', 'RELAXING HORSE RIDING IN OUR PRIVATE NATURE PARK');
activity_type VALUES ('MEDITATION DAY', 'CONNECT WITH YOUR INNER SELF IN A DAY MADE JUST FOR YOUR RELAXATION'));


INSERT INTO experiences
VALUES (
experiences_seq.NEXTVAL,
'FUN', '09-MAY-2023', '16-MAY-2023'
activity_varray_type(
activity_type VALUES ('BAREFOOT FESTIVAL', 'READY TO ENJOY YOURSELF IN 4 DAYS FULL OF MUSIC, FUN AND ACTIVITIES');
activity_type VALUES ('WINTER ACTIVITIES', 'DISCOVER OUR RICH MOUNTAINS AND THE BEAUTY OF OUR VALLEYS'));


INSERT INTO experiences
VALUES (
experiences_seq.NEXTVAL,
 'ADRENALINE', '21-JULY-2023','27-JULY-2023'
activity_varray_type(
activity_type VALUES ('ROCK CLIMBING', 'WITH OUR INDOOR AND OUTDOORS TRACKS READY FOR EVEY TYPE OF CLIMBER');
activity_type VALUES ('SWIMMING DAYS', 'WE OFFER YOU OUR BEAUTFUL LAKE, YOU BRING THE FUN AND JOY'));


INSERT INTO experiences
VALUES (
experiences_seq.NEXTVAL,
'NATURE', '21-SEPT-2023','27-SEPT-2023'
activity_varray_type(
activity_type VALUES ('CAMPING WEEK', 'WINTER IS COMING AND ALL YOU NEED IS YOURSELF ON OUR 15 KM SLOPES');
activity_type VALUES ('SKY RETREAT', 'ADVENTUROUSLY TAKING A JUMP FROM A PLANE AND ENJOY THE TRIP BACK TO EARTH'));


*******  Experiences Inserts Checks *******
COLUMN firstname FORMAT A20;
SELECT customer_id, firstname FROM customers;


*******  Sponsor_tickets Inserts  *******
INSERT INTO sponsor_tickets
SELECT sponsor_tickets_seq.NEXTVAL,
101,
201,
301,
REF(a)
FROM addresses a
WHERE street = '68 MILKWAY ROAD';

INSERT INTO sponsor_tickets
SELECT sponsor_tickets_seq.NEXTVAL,
102,
202,
302,
REF(a)
FROM addresses a
WHERE street = '104 KINGSPIN STREET';

INSERT INTO sponsor_tickets
SELECT sponsor_tickets_seq.NEXTVAL,
103,
203,
303,
REF(a)
FROM addresses a
WHERE street = '652 PRINCES ROAD';

INSERT INTO sponsor_tickets
SELECT sponsor_tickets_seq.NEXTVAL,
104,
204,
304,
REF(a)
FROM addresses a
WHERE street = '108 SLOGHT ROAD';

INSERT INTO sponsor_tickets
SELECT sponsor_tickets_seq.NEXTVAL,
105,
205,
305,
REF(a)
FROM addresses a
WHERE street = '504 REMINES STREET';

*******  Sponsor_tickets Inserts Checks  *******

COLUMN s.address.street FORMAT A20;
SELECT s.sponsor_tickets_id, s.ticket_id, s.experience_id, s.address.street FROM sponsor_tickets s;
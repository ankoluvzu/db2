/* @c:/csy2038/alter_group19.sql */

******* Primary Keys *******

ALTER TABLE tickets
ADD CONSTRAINT pk_tickets
PRIMARY KEY (ticket_id);

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY (sponsors_id);

ALTER TABLE experiences
ADD CONSTRAINT pk_experiences
PRIMARY KEY (experience_id);

ALTER TABLE sponsor_tickets
ADD CONSTRAINT pk_sponsor_tickets
PRIMARY KEY (sponsor_tickets_id);

******* Foreign Keys *******

ALTER TABLE sponsor_tickets 
ADD CONSTRAINT fk_sponsors
FOREIGN KEY (sponsor_id)
REFERENCES sponsors(sponsor_id);


ALTER TABLE sponsor_tickets 
ADD CONSTRAINT fk_tickets
FOREIGN KEY (ticket_id)
REFERENCES tickets(ticket_id);

ALTER TABLE sponsor_tickets 
ADD CONSTRAINT fk_experience_id
FOREIGN KEY (experience_id)
REFERENCES experiences(experience_id);

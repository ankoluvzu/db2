/* @c:/csy2038/queries_group19.sql */

******* Pull data of the sponsors and their address *******

COLUMN sponsor_id HEADING 'Sponsor ID'
COLUMN sponsor_name HEADING 'First Name' FORMAT A10
COLUMN sponsor_lastname HEADING 'Last Name' FORMAT A10
COLUMN address.street HEADING 'Street' FORMAT A20
COLUMN address.city HEADING 'City' FORMAT A10
COLUMN address.country HEADING 'Country' FORMAT A10
SELECT s.sponsor_id, s.sponsor_name, s.sponsor_lastname, s.address.street, s.address.city, s.address.country
FROM sponsors s
ORDER BY sponsor_id;
--Expected results - show the sponsor name id and address details. 
--Result - success: 
--List of sponsor ID and all address details returned

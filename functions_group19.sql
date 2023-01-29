/* @c:/csy2038/functions_group19.sql */

SET SERVEROUTPUT ON;

******* Create Functions *******


CREATE OR REPLACE FUNCTION func_time(in_start_day experiences.start_day%TYPE)
RETURN DATE IS

vn_start_day DATE;

BEGIN

SELECT	start_day
INTO vn_start_day
FROM experiences
WHERE start_day < end_day;

RETURN vn_start_day;

END func_duration;
/

SHOW ERRORS


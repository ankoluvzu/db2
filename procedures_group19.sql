/* @c:/csy2038/procedures_group19.sql */


******* Create Procedure For Function *******

CREATE OR REPLACE PROCEDURE proc_day_func (in_start_day expereiences.start.day%TYPE) 
IS
vn_day NUMBER(2);
vn_start_day DATE;
vn_end_day expereiences.end_day%TYPE;
vn_id expereiences.experience_id%TYPE;

BEGIN
vn_start_day := func_day(in_start_day);

SELECT
expereience_id,
start_day,
end_day,
(expereiences.end_day - experiences.start_day)

INTO vn_id, sn_start_day, vn_end_day,vn_duration
FROM experiences;

DBMS_OUTPUT.PUT_LINE ('The amount of days for this experience is ' ||vn_duration || ' days');
END proc_day_func;
/

SHOW ERRORS;


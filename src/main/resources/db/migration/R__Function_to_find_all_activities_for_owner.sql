CREATE OR REPLACE FUNCTION find_all_activity_for_owner(ownername varchar(500)) returns setof activity AS $$
    select * from activity where wonername = owner_id
$$ LANGUAGE SQL;
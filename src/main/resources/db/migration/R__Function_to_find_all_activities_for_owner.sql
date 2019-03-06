CREATE OR REPLACE FUNCTION find_all_activities_for_owner(ownername varchar(500)) returns setof activity AS $$
    select act.* from activity act JOIN "user" owner on owner_id = owner.id where owner.username = ownername;
$$ LANGUAGE SQL;
create function increment(i integer) returns integer as $$
begin
    return i + 1;
end;
$$ language plpgsql;


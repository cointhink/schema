-- +goose Up
alter table accounts add time_zone text;
update accounts set time_zone='';
alter table accounts add schedule_credits integer;
update accounts set schedule_credits = 2;
-- +goose Down
alter table accounts drop schedule_credits;
alter table accounts drop time_zone;

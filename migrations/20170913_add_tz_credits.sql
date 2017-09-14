-- +goose Up
alter table accounts add time_zone text;
alter table accounts add schedule_credits integer;
-- +goose Down
alter table accounts drop schedule_credits;
alter table accounts drop time_zone;

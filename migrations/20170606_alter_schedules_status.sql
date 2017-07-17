-- +goose Up
alter table schedules drop status;
-- +goose Down
alter table schedules add status varchar(128);

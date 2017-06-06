-- +goose Up
alter table schedules drop status;
alter table schedules add status int not null default 0;
-- +goose Down
alter table schedules drop status;
alter table schedules add status varchar(128);

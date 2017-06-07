-- +goose Up
alter table schedules add schedule_id varchar(128);
-- +goose Down
alter table schedules drop schedule_id;

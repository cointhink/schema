-- +goose Up
alter table schedules add executor text;
update schedules set executor = 'container';
-- +goose Down
alter table schedules drop executor;

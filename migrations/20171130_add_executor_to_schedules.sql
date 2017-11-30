-- +goose Up
alter table schedules add executor int not null default 0;
-- +goose Down
alter table schedules drop executor;

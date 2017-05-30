-- +goose Up
alter table schedules add initial_state text;
-- +goose Down
alter table schedules drop initial_state;

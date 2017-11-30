-- +goose Up
alter table schedules add enabled_until timestamp;
-- update schedules set enabled_until = created_at + interval '1' month where enabled_until is null
-- +goose Down
alter table schedules drop enabled_until;

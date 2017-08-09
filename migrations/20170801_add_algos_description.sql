-- +goose Up
alter table algorithms add description text;
-- +goose Down
alter table algorithms drop description;

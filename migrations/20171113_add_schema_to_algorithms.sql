-- +goose Up
alter table algorithms add schema text;
-- +goose Down
alter table algorithms drop schema;

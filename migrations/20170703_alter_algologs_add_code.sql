-- +goose Up
alter table algologs add code text;
-- +goose Down
alter table algologs drop code;

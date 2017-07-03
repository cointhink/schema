-- +goose Up
alter table algoruns add code text;
-- +goose Down
alter table algoruns drop code;

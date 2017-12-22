-- +goose Up
alter table accounts add stripe text;
-- +goose Down
alter table algoruns drop stripe;

-- +goose Up
update tokens set algorun_id = '';
-- +goose Down

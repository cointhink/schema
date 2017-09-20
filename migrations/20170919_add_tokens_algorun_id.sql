-- +goose Up
alter table tokens add algorun_id varchar(128);
-- +goose Down
alter table tokens drop algorun_id;

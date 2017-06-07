-- +goose Up
alter table algoruns add schedule_id varchar(128);
-- +goose Down
alter table algoruns drop schedule_id;

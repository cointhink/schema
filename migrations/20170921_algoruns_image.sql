-- +goose Up
alter table algoruns add image varchar(128);
-- +goose Down
alter table algoruns drop image;

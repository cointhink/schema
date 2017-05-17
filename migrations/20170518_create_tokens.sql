-- +goose Up
create table tokens (
  token varchar(128) primary key,
  account_id varchar(128)
);

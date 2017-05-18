-- +goose Up
create table tokens (
  token varchar(128) primary key,
  created_at timestamp default now(),
  account_id varchar(128) references accounts
);
-- +goose Down
drop table tokens;

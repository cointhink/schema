-- +goose Up
create table algorithms (
  id varchar(128) primary key,
  created_at timestamp default now(),
  account_id varchar(128) references accounts ,
  status varchar(128),
  language varchar(128),
  code text
);
-- +goose Down
drop table algorithms;

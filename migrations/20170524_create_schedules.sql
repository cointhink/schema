-- +goose Up
create table schedules (
  id varchar(128) primary key,
  created_at timestamp default now(),
  account_id varchar(128) references accounts ,
  algorithm_id varchar(128) references algorithms ,
  status varchar(128) references accounts
);
-- +goose Down
drop table schedules;

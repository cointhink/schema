-- +goose Up
create table algoevents (
  id varchar(128) primary key,
  created_at timestamp default now(),
  algorithm_id varchar(128) references algorithms,
  type varchar(128),
  message text
);
-- +goose Down
drop table algoevents;

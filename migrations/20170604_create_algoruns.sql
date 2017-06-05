-- +goose Up
create table algoruns (
  id varchar(128) primary key,
  created_at timestamp default now(),
  algorithm_id varchar(128) references algorithms ,
  status varchar(128)
);
-- +goose Down
drop table algoruns;

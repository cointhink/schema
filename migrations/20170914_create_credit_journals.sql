-- +goose Up
create table credit_journals (
  id varchar(128) primary key,
  created_at timestamp default now(),
  account_id varchar(128) references accounts ,
  schedule_id varchar(128),
  status varchar(128),
  stripe_tx varchar(128),
  credit_adjustment int,
  total_usd numeric(8,2)
);
-- +goose Down
drop table credit_journals;

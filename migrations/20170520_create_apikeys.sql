-- +goose Up
create table apikeys (
  id varchar(128) primary key,
  created_at timestamp default now(),
  account_id varchar(128) references accounts,
  exchange_id varchar(128) references exchanges,
  key_encrypted text not null unique,
  name text
);

-- +goose Down
drop table apikeys;

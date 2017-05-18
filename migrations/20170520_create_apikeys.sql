-- +goose Up
create table apikeys (
  id varchar(128) primary key,
  created_at timestamp default (now() at time zone 'utc'),
  exchange_id varchar(128) references exchanges,
  key_encrypted text not null unique,
  name text
);

-- +goose Down
drop table apikeys;

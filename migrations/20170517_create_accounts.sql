-- +goose Up
create table accounts (
  id varchar(128) primary key,
  created_at timestamp default (now() at time zone 'utc'),
  fullname text,
  email text not null unique,
  username text
);

-- +goose Down
drop table accounts;

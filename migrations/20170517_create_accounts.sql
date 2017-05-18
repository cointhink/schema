-- +goose Up
create table accounts (
  id varchar(128) primary key,
  created_at timestamp default now(),
  fullname text,
  email text not null unique,
  username text
);

-- +goose Down
drop table accounts;

-- +goose Up
create table exchanges (
  id varchar(128) primary key,
  created_at timestamp default (now() at time zone 'utc'),
  slug text not null unique,
  name text
);
-- +goose Down
drop table exchanges;

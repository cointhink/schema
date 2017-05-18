-- +goose Up
create table exchanges (
  id varchar(128) primary key,
  slug text not null unique,
  name text
);
-- +goose Down
drop table exchanges;

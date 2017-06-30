-- +goose Up
alter table algoevents rename to algologs;
alter table algologs add event varchar(128);
-- +goose Down
alter table algologs drop event;
alter table algologs rename to algoevents;

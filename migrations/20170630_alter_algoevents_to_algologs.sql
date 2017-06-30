-- +goose Up
alter table algoevents rename to algologs;
alter table algologs add event varchar(128);
alter table algologs rename type to level;
-- +goose Down
alter table algologs rename level to type;
alter table algologs drop event;
alter table algologs rename to algoevents;

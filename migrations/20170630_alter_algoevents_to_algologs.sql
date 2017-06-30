-- +goose Up
alter table algoevents rename to algologs;
-- +goose Down
alter table algologs rename to algoevents;

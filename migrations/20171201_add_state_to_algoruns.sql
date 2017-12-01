-- +goose Up
alter table algoruns add state text;
update algoruns set state = '{}';
-- +goose Down
alter table algoruns drop state;

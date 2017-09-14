-- +goose Up
update accounts set time_zone='';
update accounts set schedule_credits = 2;
insert into credit_journals (id, created_at, account_id, credit_adjustment, total_usd)
select concat('credit_journals-',substr(md5(random()::text), 0, 10)), now(), id, 2, 0 from accounts;
-- +goose Down

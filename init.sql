create table if not exists auth_user (
    id bigserial primary key,
    login text not null,
    password text not null
                                     );

insert into auth_user (login, password)
values ('chris', '$2a$10$xzYpKFy48SanpwyfxPp/p.lqQDHaeCBgZjm/xgpc74CGzIBUftffy'); -- encoded 'the-password'
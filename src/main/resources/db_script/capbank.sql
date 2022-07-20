drop DATABASE if exists capbank;
create database capbank;
use capbank;

CREATE TABLE users(
                      user_id INT NOT NULL auto_increment PRIMARY KEY,
                      first_name varchar(50) not null,
                      last_name varchar(50) not null,
                      email varchar(255) not null UNIQUE,
                      password varchar(255) not null,
                      token varchar(255) null,
                      code INT NUll,
                      verified INT DEFAULT 0,
                      verified_at datetime,
                      created_at timestamp,
                      updated_at timestamp default now()
);

create table accounts(
                         account_id int not null auto_increment primary key,
                         user_id int,
                         account_number varchar(100) not null,
                         account_name varchar(50) not null,
                         account_type varchar(50) not null,
                         balance decimal(18, 2) default 0.00,
                         created_at timestamp,
                         updated_at timestamp default now(),
                         foreign key(user_id) references users(user_id) on delete cascade
);

create table transactions(
                             transaction_id int not null auto_increment primary key,
                             account_id int,
                             transaction_type varchar(50) not null,
                             amount decimal(18, 2),
                             source varchar(50) not null,
                             status varchar(50) not null,
                             reason_code varchar(100) not null,
                             created_at timestamp,
                             FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE -- figured out how to comment and auto uppercase lol
);

create TABLE payments(
                         payment_id INT not null AUTO_INCREMENT PRIMARY key,
                         account_id INT,
                         holder varchar(50) not null,
                         holder_acc_no varchar(255) not null,
                         amount DECIMAL(18, 2) NULL,
                         memo varchar(100) null,
                         status varchar(50) not null,
                         reason_code varchar(100) not null,
                         created_at timestamp,
                         FOREIGN KEY(account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);

-- view for trans history
create view v_transactions
as
select
    t.transaction_id,
    a.account_id,
    u.user_id,
    t.transaction_type,
    t.amount,
    t.source,
    t.status,
    t.reason_code,
    t.created_at
FROM
    transactions AS t
        INNER JOIN
    accounts AS a
    ON
            t.account_id = a.account_id
        INNER JOIN
    users as u
    ON
            a.user_id = u.user_id
;


-- view for pay history
create view v_payments
as
select
    p.payment_id,
    a.account_id,
    u.user_id,
    p.holder,
    p.holder_acc_no,
    p.amount,
    p.status,
    p.memo,
    p.reason_code,
    p.created_at
FROM
    payments as p
        inner join
    accounts as a
    on
            p.account_id = a.account_id
        inner join
    users as u
    on
            a.user_id = u.user_id
;

select * from v_transactions;

select * from v_payments;
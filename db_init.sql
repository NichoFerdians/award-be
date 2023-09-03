
create table `users` (
  `id` int unsigned not null auto_increment,
  `name` varchar(100) default null,
  `email` varchar(100) default null,
  `created_by` int unsigned default null,
  `created_at` datetime default null,
  primary key (`id`)
) engine = InnoDB auto_increment = 1 default CHARSET = latin1;

INSERT INTO `users`
(name, email)
VALUES('test', 'test@mail.com');

create table `awards` (
  `id` int unsigned not null auto_increment,
  `name` varchar(100),
  `type` varchar(20),
  `point_needed` int unsigned ,
  `image_url` varchar(100),
  `created_by` int unsigned default null,
  `created_at` datetime default null,
  primary key (`id`)
) engine = InnoDB auto_increment = 1 default CHARSET = latin1;


INSERT INTO `awards`
(name, `type`, point_needed, image_url)
values
('Promo 1', 'vouchers', 100000, ''),
('Promo 2', 'products', 200000, ''),
('Promo 3', 'giftcards', 300000,''),
('Promo 4', 'vouchers', 100000, ''),
('Promo 5', 'vouchers', 100000, ''),
('Promo 6', 'vouchers', 100000, ''),
('Promo 7', 'vouchers', 100000, ''),
('Promo 8', 'products', 100000,''),
('Promo 9', 'products', 100000, ''),
('Promo 10', 'products', 100000, ''),
('Promo 11', 'products', 100000, ''),
('Promo 12', 'products', 100000, ''),
('Promo 13', 'products', 100000, ''),
('Promo 14', 'giftcards', 100000, ''),
('Promo 15', 'giftcards', 100000, ''),
('Promo 16', 'giftcards', 100000, ''),
('Promo 17', 'giftcards', 100000, ''),
('Promo 18', 'giftcards', 100000, ''),
('Promo 19', 'giftcards', 100000, ''),
('Promo 20', 'giftcards', 100000, '');


select *
from awards a

select *
from users u

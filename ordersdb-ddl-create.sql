create table orders (
                        order_id bigserial primary key,
                        odatetime timestamp not null,
                        client_id int not null
);



create table orderproducts (
                               order_product_id bigserial primary key,
                               order_id bigint  references orders(order_id) not null,
                               product_id int not null,
                               quantity real not null,
                               unit_price real not null
)

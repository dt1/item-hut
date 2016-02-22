drop schema if exists incoming cascade;

create schema incoming;

create table incoming.orders (
       incoming_order_id serial primary key,
       invoice varchar not null,
       vendor_id varchar not null,
       order_date date,
       eta date,
       completed boolean default false,
       invoice_file varchar,
       foreign key (vendor_id)
               references vendor.vendors (vendor_id)
);

create table incoming.order_products (
       incoming_order_id int,
       upc bigint,
       qty int check(qty > 0),
       primary key(incoming_order_id, upc),
       foreign key (upc)
               references product.sku_upc (upc),
       foreign key (incoming_order_id)
               references incoming.orders (incoming_order_id)
);

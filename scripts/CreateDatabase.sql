DROP DATABASE IF EXISTS introtosql WITH (FORCE);

CREATE DATABASE introtosql;

CREATE TABLE IF NOT EXISTS public.first_table
(
    "id" SERIAL PRIMARY KEY,
    "order_date" date NOT NULL,
    "region" character varying,
    "rep" character varying NOT NULL,
    "item" character varying NOT NULL
);

INSERT INTO first_table(
 order_date, region, rep, item)
 VALUES ('01/06/2020','East','Jones','Pencil'),
  ('01/23/2020','Central','Kivell','Binder'),
  ('02/09/2020','Central','Jardine','Pencil'),
  ('02/26/2020','Central','Gill','Pen'),
  ('03/15/2020','West','Sorvino','Pencil');

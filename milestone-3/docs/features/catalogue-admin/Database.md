# Catalogue Foundation Database Design

## products

- id uuid PK
- name varchar(200)
- slug varchar(220) unique
- short_description varchar(500)
- description text
- status varchar(30)
- primary_category_id uuid FK
- published_at timestamptz
- created_at
- created_by
- updated_at
- updated_by
- version

## product_variants

- id uuid PK
- product_id uuid FK
- sku varchar(100) unique
- size_code varchar(50)
- colour_code varchar(80)
- status varchar(30)
- standard_price numeric(19,2)
- sale_price numeric(19,2) nullable
- currency_code char(3)
- created_at
- updated_at
- version

## categories

- id uuid PK
- parent_id uuid nullable FK
- name varchar(150)
- slug varchar(170) unique
- display_order integer
- status varchar(30)
- version

## product_media

- id uuid PK
- product_id uuid FK
- variant_id uuid nullable FK
- blob_path varchar(500)
- public_url varchar(1000)
- media_type varchar(50)
- alt_text varchar(300)
- display_order integer
- is_primary boolean
- created_at

## inventory_items

- id uuid PK
- variant_id uuid unique FK
- on_hand_quantity integer
- reserved_quantity integer
- low_stock_threshold integer
- version bigint

Constraints:

- price >= 0
- sale_price is null or sale_price < standard_price
- stock values >= 0
- no circular category hierarchy

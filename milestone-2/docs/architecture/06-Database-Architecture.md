# Database Architecture Standards

## 1. Platform

PostgreSQL is the system of record for transactional business data.

## 2. Naming

- snake_case table and column names
- plural table names
- explicit foreign-key names
- explicit unique constraints
- timestamps in UTC
- monetary values as numeric/decimal, never floating point

## 3. Identifier Strategy

Use UUID primary keys for business entities.

Human-readable identifiers such as order numbers are separate unique fields.

## 4. Audit Columns

Recommended standard:

```text
id
created_at
created_by
updated_at
updated_by
version
```

Add `deleted_at` only where soft deletion is justified.

## 5. Soft Delete

Use soft delete selectively.

Suitable:

- Products
- Categories
- Customer addresses

Not suitable as a substitute for lifecycle status:

- Orders
- Payments
- Inventory movements

## 6. Optimistic Locking

Use a version column for mutable aggregates where concurrent updates are possible.

## 7. Money

Store:

- amount
- currency code

Example:

```text
total_amount numeric(19,2)
currency_code char(3)
```

## 8. Inventory

Inventory must record movements rather than only overwriting a single quantity.

Recommended concepts:

- inventory_item
- inventory_balance
- inventory_reservation
- inventory_movement

## 9. Order Snapshots

Order items retain:

- Product name
- Variant description
- SKU
- Unit price
- Discount
- Tax where applicable
- Quantity

## 10. Indexing

Index:

- Foreign keys
- Unique identifiers
- Searchable status/date combinations
- SKU
- Email normalization
- Order number
- Provider transaction reference

Review indexes against actual query plans.

## 11. Migrations

All schema changes use versioned migrations.

Production schema changes must not depend on manual SQL.

## 12. Data Retention

Retention must be documented by domain and informed by:

- Legal obligations
- Financial records
- Privacy principles
- Operational requirements
- Security risk

## 13. Backup

- Automated backups
- Point-in-time restore where available
- Documented restoration test
- Restricted backup access

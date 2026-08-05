# API Architecture Standards

## 1. Base Path

```text
/api/v1
```

## 2. Resource Naming

Use plural nouns:

```text
/api/v1/products
/api/v1/orders
/api/v1/customers/{customerId}/addresses
```

Avoid action verbs unless modelling a command is clearer:

```text
POST /api/v1/orders/{orderId}/cancel
POST /api/v1/payments/{paymentId}/refunds
```

## 3. Methods

- GET: read
- POST: create or command
- PUT: full replacement when supported
- PATCH: partial update
- DELETE: logical or physical deletion only where valid

## 4. Pagination

Default:

```text
page=0
size=24
sort=createdAt,desc
```

Response:

```json
{
  "items": [],
  "page": 0,
  "size": 24,
  "totalItems": 0,
  "totalPages": 0
}
```

Cursor pagination may be introduced for large feeds.

## 5. Filtering

Use explicit query parameters:

```text
category=hoodies
size=M
colour=black
minPrice=500
maxPrice=2000
```

## 6. Versioning

Version in URI for public API stability.

Breaking changes require a new major API version.

## 7. Error Handling

Use consistent Problem Details with:

- HTTP status
- machine-readable code
- human-readable detail
- field errors
- correlation ID

## 8. Idempotency

Required for:

- Payment initiation where provider supports it
- Payment callbacks
- Order confirmation
- Refund requests
- Other duplicate-sensitive commands

Use an `Idempotency-Key` header or provider transaction identifier.

## 9. Authentication

- Bearer access token for authenticated APIs
- Administrative endpoints require explicit roles/permissions
- Guest checkout uses controlled checkout/session identifiers

## 10. Rate Limiting

Apply stricter limits to:

- Login
- Password reset
- Registration
- Voucher validation
- Search abuse
- Payment callbacks where provider origin validation permits

## 11. API Documentation

OpenAPI 3.1 shall define:

- Paths
- Schemas
- Authentication
- Examples
- Error responses
- Descriptions
- Deprecation markers

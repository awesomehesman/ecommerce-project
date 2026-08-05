# Backend Architecture

## 1. Runtime

- Java 21+
- Spring Boot 3.x
- Spring Security
- Spring Data JPA
- Bean Validation
- Flyway or Liquibase
- OpenAPI generation
- Structured logging

## 2. Package Strategy

Use package-by-feature.

```text
com.company.ecommerce
  identity/
  customers/
  catalogue/
  pricing/
  inventory/
  cart/
  checkout/
  payments/
  orders/
  shipping/
  notifications/
  cms/
  admin/
  reporting/
  shared/
```

Each module may contain:

```text
api/
application/
domain/
infrastructure/
```

## 3. Layer Responsibilities

### API

- HTTP transport
- Request parsing
- Authentication context
- DTO validation
- Response mapping

### Application

- Use-case orchestration
- Transaction boundaries
- Authorization checks
- Calling domain services and repositories
- Publishing events

### Domain

- Business rules
- Aggregates
- Value objects
- Domain services
- Domain events

### Infrastructure

- JPA entities and repositories
- External providers
- Email
- Storage
- Cache
- Messaging
- Technical configuration

## 4. Transaction Rules

- Transactions must be defined at application-service boundaries.
- Payment callbacks must be idempotent.
- Order creation and inventory reservation must use an explicit consistency strategy.
- External network calls should not remain inside long-running database transactions.
- Retry logic must distinguish transient from permanent failure.

## 5. DTO Rules

- API DTOs are not domain entities.
- Persistence entities are not exposed directly.
- Request and response models are versionable.
- Mapping should be explicit.

## 6. Error Model

Use RFC 9457-style Problem Details where practical.

Example:

```json
{
  "type": "https://example.com/problems/out-of-stock",
  "title": "Product variant is unavailable",
  "status": 409,
  "detail": "The selected size is no longer available.",
  "instance": "/api/v1/cart/items",
  "code": "CART_VARIANT_OUT_OF_STOCK",
  "correlationId": "..."
}
```

## 7. Validation

- Syntax and shape: API layer
- Business eligibility: application/domain layer
- Referential integrity: database constraints
- Security decisions: authorization layer

## 8. Caching

Initial candidates:

- Published product summaries
- Category trees
- Configuration reference data
- Shipping configuration

Do not cache:

- Authoritative payment status without short TTL and reconciliation
- Mutable checkout totals without validation
- Inventory availability without a consistency strategy

## 9. Event Strategy

Initially use in-process domain/application events with an outbox-ready design.

External asynchronous delivery may later use Service Bus or another broker.

## 10. Testing

- Unit tests for domain rules
- Slice tests for controllers and repositories
- Integration tests with PostgreSQL/Testcontainers
- Contract tests for external providers
- End-to-end checkout tests

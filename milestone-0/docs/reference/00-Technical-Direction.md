# Initial Technical Direction

## Architecture Style

The initial platform will use a modular monolith.

### Rationale

- Lower operational complexity than microservices
- Easier transactional consistency for orders, payments, and inventory
- Faster delivery for a small team
- Lower cloud cost
- Clear domain modules can still be separated later

## Proposed Modules

- Identity and Access
- Customers
- Catalogue
- Pricing and Promotions
- Inventory
- Cart
- Checkout
- Payments
- Orders
- Shipping
- Notifications
- Administration
- Reporting

## Frontend

Angular will use:

- Standalone components
- Lazy-loaded feature routes
- Signals for local synchronous state
- RxJS for asynchronous streams
- Typed reactive forms
- Route guards
- HTTP interceptors
- Central error handling
- Design tokens
- Accessibility-first reusable components

## Backend

Spring Boot will use:

- Package-by-feature or domain-module structure
- Controllers for transport
- Application services for use cases
- Domain services where required
- Repositories for persistence
- DTO boundaries
- Bean validation
- Problem Details-compatible errors
- Idempotency for payment-sensitive operations
- Transaction boundaries for inventory and order consistency

## Database

PostgreSQL will store:

- Customers
- Products
- Categories
- Variants
- Inventory
- Carts
- Promotions
- Addresses
- Orders
- Payments
- Audit data

Images and documents will not be stored as relational BLOBs unless a future requirement explicitly justifies it.
